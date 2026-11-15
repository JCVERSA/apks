package androidx.media3.exoplayer.rtsp;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.StreamKey;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.SampleQueue;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.net.BindException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.net.SocketFactory;

final class RtspMediaPeriod implements MediaPeriod {
    private static final int PORT_BINDING_MAX_RETRY_COUNT = 3;
    private final Allocator allocator;
    private MediaPeriod.Callback callback;
    private final Handler handler = Util.createHandlerForCurrentLooper();
    private final InternalListener internalListener;
    private boolean isUsingRtpTcp;
    private final Listener listener;
    private boolean loadingFinished;
    private boolean notifyDiscontinuity;
    private long pendingSeekPositionUs;
    private long pendingSeekPositionUsForTcpRetry;

    @Nullable
    private RtspMediaSource.RtspPlaybackException playbackException;
    private int portBindingRetryCount;

    @Nullable
    private IOException preparationError;
    private boolean prepared;
    private boolean released;
    private long requestedSeekPositionUs;
    private final RtpDataChannel.Factory rtpDataChannelFactory;
    private final RtspClient rtspClient;
    private final List<RtspLoaderWrapper> rtspLoaderWrappers;
    private final List<RtpLoadInfo> selectedLoadInfos;
    private ImmutableList<TrackGroup> trackGroups;
    private boolean trackSelected;

    public final class ExtractorOutputImpl implements ExtractorOutput {
        private final TrackOutput trackOutput;

        @Override
        public void endTracks() {
            Handler handler = RtspMediaPeriod.this.handler;
            final RtspMediaPeriod rtspMediaPeriod = RtspMediaPeriod.this;
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    RtspMediaPeriod.access$500(rtspMediaPeriod);
                }
            });
        }

        @Override
        public void seekMap(SeekMap seekMap) {
        }

        @Override
        public TrackOutput track(int i, int i2) {
            return this.trackOutput;
        }

        private ExtractorOutputImpl(TrackOutput trackOutput) {
            this.trackOutput = trackOutput;
        }
    }

    public final class InternalListener implements Loader.Callback<RtpDataLoadable>, SampleQueue.UpstreamFormatChangedListener, RtspClient.SessionInfoListener, RtspClient.PlaybackEventListener {
        private InternalListener() {
        }

        @Override
        public void onLoadCanceled(RtpDataLoadable rtpDataLoadable, long j, long j2, boolean z) {
        }

        @Override
        public void onPlaybackError(RtspMediaSource.RtspPlaybackException rtspPlaybackException) {
            if (!(rtspPlaybackException instanceof RtspMediaSource.RtspUdpUnsupportedTransportException) || RtspMediaPeriod.this.isUsingRtpTcp) {
                RtspMediaPeriod.this.playbackException = rtspPlaybackException;
            } else {
                RtspMediaPeriod.this.retryWithRtpTcp();
            }
        }

        @Override
        public void onPlaybackStarted(long j, ImmutableList<RtspTrackTiming> immutableList) {
            ArrayList arrayList = new ArrayList(immutableList.size());
            for (int i = 0; i < immutableList.size(); i++) {
                arrayList.add((String) Assertions.checkNotNull(immutableList.get(i).uri.getPath()));
            }
            for (int i2 = 0; i2 < RtspMediaPeriod.this.selectedLoadInfos.size(); i2++) {
                if (!arrayList.contains(((RtpLoadInfo) RtspMediaPeriod.this.selectedLoadInfos.get(i2)).getTrackUri().getPath())) {
                    RtspMediaPeriod.this.listener.onSeekingUnsupported();
                    if (RtspMediaPeriod.this.isSeekPending()) {
                        RtspMediaPeriod.this.notifyDiscontinuity = true;
                        RtspMediaPeriod.this.pendingSeekPositionUs = C.TIME_UNSET;
                        RtspMediaPeriod.this.requestedSeekPositionUs = C.TIME_UNSET;
                        RtspMediaPeriod.this.pendingSeekPositionUsForTcpRetry = C.TIME_UNSET;
                    }
                }
            }
            for (int i3 = 0; i3 < immutableList.size(); i3++) {
                RtspTrackTiming rtspTrackTiming = immutableList.get(i3);
                RtpDataLoadable loadableByTrackUri = RtspMediaPeriod.this.getLoadableByTrackUri(rtspTrackTiming.uri);
                if (loadableByTrackUri != null) {
                    loadableByTrackUri.setTimestamp(rtspTrackTiming.rtpTimestamp);
                    loadableByTrackUri.setSequenceNumber(rtspTrackTiming.sequenceNumber);
                    if (RtspMediaPeriod.this.isSeekPending() && RtspMediaPeriod.this.pendingSeekPositionUs == RtspMediaPeriod.this.requestedSeekPositionUs) {
                        loadableByTrackUri.seekToUs(j, rtspTrackTiming.rtpTimestamp);
                    }
                }
            }
            if (!RtspMediaPeriod.this.isSeekPending()) {
                if (RtspMediaPeriod.this.pendingSeekPositionUsForTcpRetry == C.TIME_UNSET || !RtspMediaPeriod.this.isUsingRtpTcp) {
                    return;
                }
                RtspMediaPeriod rtspMediaPeriod = RtspMediaPeriod.this;
                rtspMediaPeriod.seekToUs(rtspMediaPeriod.pendingSeekPositionUsForTcpRetry);
                RtspMediaPeriod.this.pendingSeekPositionUsForTcpRetry = C.TIME_UNSET;
                return;
            }
            if (RtspMediaPeriod.this.pendingSeekPositionUs == RtspMediaPeriod.this.requestedSeekPositionUs) {
                RtspMediaPeriod.this.pendingSeekPositionUs = C.TIME_UNSET;
                RtspMediaPeriod.this.requestedSeekPositionUs = C.TIME_UNSET;
            } else {
                RtspMediaPeriod.this.pendingSeekPositionUs = C.TIME_UNSET;
                RtspMediaPeriod rtspMediaPeriod2 = RtspMediaPeriod.this;
                rtspMediaPeriod2.seekToUs(rtspMediaPeriod2.requestedSeekPositionUs);
            }
        }

        @Override
        public void onRtspSetupCompleted() {
            long jUsToMs;
            if (RtspMediaPeriod.this.pendingSeekPositionUs != C.TIME_UNSET) {
                jUsToMs = Util.usToMs(RtspMediaPeriod.this.pendingSeekPositionUs);
            } else {
                jUsToMs = RtspMediaPeriod.this.pendingSeekPositionUsForTcpRetry != C.TIME_UNSET ? Util.usToMs(RtspMediaPeriod.this.pendingSeekPositionUsForTcpRetry) : 0L;
            }
            RtspMediaPeriod.this.rtspClient.startPlayback(jUsToMs);
        }

        @Override
        public void onSessionTimelineRequestFailed(String str, @Nullable Throwable th) {
            RtspMediaPeriod.this.preparationError = th == null ? new IOException(str) : new IOException(str, th);
        }

        @Override
        public void onSessionTimelineUpdated(RtspSessionTiming rtspSessionTiming, ImmutableList<RtspMediaTrack> immutableList) {
            for (int i = 0; i < immutableList.size(); i++) {
                RtspMediaTrack rtspMediaTrack = immutableList.get(i);
                RtspMediaPeriod rtspMediaPeriod = RtspMediaPeriod.this;
                RtspLoaderWrapper rtspLoaderWrapper = rtspMediaPeriod.new RtspLoaderWrapper(rtspMediaTrack, i, rtspMediaPeriod.rtpDataChannelFactory);
                RtspMediaPeriod.this.rtspLoaderWrappers.add(rtspLoaderWrapper);
                rtspLoaderWrapper.startLoading();
            }
            RtspMediaPeriod.this.listener.onSourceInfoRefreshed(rtspSessionTiming);
        }

        @Override
        public void onUpstreamFormatChanged(Format format) {
            Handler handler = RtspMediaPeriod.this.handler;
            final RtspMediaPeriod rtspMediaPeriod = RtspMediaPeriod.this;
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    RtspMediaPeriod.access$500(rtspMediaPeriod);
                }
            });
        }

        @Override
        public void onLoadCompleted(RtpDataLoadable rtpDataLoadable, long j, long j2) {
            if (RtspMediaPeriod.this.getBufferedPositionUs() == 0) {
                if (RtspMediaPeriod.this.isUsingRtpTcp) {
                    return;
                }
                RtspMediaPeriod.this.retryWithRtpTcp();
                return;
            }
            for (int i = 0; i < RtspMediaPeriod.this.rtspLoaderWrappers.size(); i++) {
                RtspLoaderWrapper rtspLoaderWrapper = (RtspLoaderWrapper) RtspMediaPeriod.this.rtspLoaderWrappers.get(i);
                if (rtspLoaderWrapper.loadInfo.loadable == rtpDataLoadable) {
                    rtspLoaderWrapper.cancelLoad();
                    break;
                }
            }
            RtspMediaPeriod.this.rtspClient.signalPlaybackEnded();
        }

        @Override
        public Loader.LoadErrorAction onLoadError(RtpDataLoadable rtpDataLoadable, long j, long j2, IOException iOException, int i) {
            if (!RtspMediaPeriod.this.prepared) {
                RtspMediaPeriod.this.preparationError = iOException;
            } else if (!(iOException.getCause() instanceof BindException)) {
                RtspMediaPeriod.this.playbackException = new RtspMediaSource.RtspPlaybackException(rtpDataLoadable.rtspMediaTrack.uri.toString(), iOException);
            } else if (RtspMediaPeriod.access$1208(RtspMediaPeriod.this) < 3) {
                return Loader.RETRY;
            }
            return Loader.DONT_RETRY;
        }
    }

    public interface Listener {
        default void onSeekingUnsupported() {
        }

        void onSourceInfoRefreshed(RtspSessionTiming rtspSessionTiming);
    }

    public final class RtpLoadInfo {
        private final RtpDataLoadable loadable;
        public final RtspMediaTrack mediaTrack;

        @Nullable
        private String transport;

        public RtpLoadInfo(RtspMediaTrack rtspMediaTrack, int i, TrackOutput trackOutput, RtpDataChannel.Factory factory) {
            this.mediaTrack = rtspMediaTrack;
            this.loadable = new RtpDataLoadable(i, rtspMediaTrack, new RtpDataLoadable.EventListener() {
                @Override
                public final void onTransportReady(String str, RtpDataChannel rtpDataChannel) {
                    this.a.lambda$new$0(str, rtpDataChannel);
                }
            }, new ExtractorOutputImpl(trackOutput), factory);
        }

        public void lambda$new$0(String str, RtpDataChannel rtpDataChannel) {
            this.transport = str;
            RtspMessageChannel.InterleavedBinaryDataListener interleavedBinaryDataListener = rtpDataChannel.getInterleavedBinaryDataListener();
            if (interleavedBinaryDataListener != null) {
                RtspMediaPeriod.this.rtspClient.registerInterleavedDataChannel(rtpDataChannel.getLocalPort(), interleavedBinaryDataListener);
                RtspMediaPeriod.this.isUsingRtpTcp = true;
            }
            RtspMediaPeriod.this.maybeSetupTracks();
        }

        public Uri getTrackUri() {
            return this.loadable.rtspMediaTrack.uri;
        }

        public String getTransport() {
            Assertions.checkStateNotNull(this.transport);
            return this.transport;
        }

        public boolean isTransportReady() {
            return this.transport != null;
        }
    }

    public final class RtspLoaderWrapper {
        private boolean canceled;
        public final RtpLoadInfo loadInfo;
        private final Loader loader;
        private boolean released;
        private final SampleQueue sampleQueue;

        public RtspLoaderWrapper(RtspMediaTrack rtspMediaTrack, int i, RtpDataChannel.Factory factory) {
            this.loader = new Loader("ExoPlayer:RtspMediaPeriod:RtspLoaderWrapper " + i);
            SampleQueue sampleQueueCreateWithoutDrm = SampleQueue.createWithoutDrm(RtspMediaPeriod.this.allocator);
            this.sampleQueue = sampleQueueCreateWithoutDrm;
            this.loadInfo = RtspMediaPeriod.this.new RtpLoadInfo(rtspMediaTrack, i, sampleQueueCreateWithoutDrm, factory);
            sampleQueueCreateWithoutDrm.setUpstreamFormatChangeListener(RtspMediaPeriod.this.internalListener);
        }

        public void cancelLoad() {
            if (this.canceled) {
                return;
            }
            this.loadInfo.loadable.cancelLoad();
            this.canceled = true;
            RtspMediaPeriod.this.updateLoadingFinished();
        }

        public long getBufferedPositionUs() {
            return this.sampleQueue.getLargestQueuedTimestampUs();
        }

        public boolean isSampleQueueReady() {
            return this.sampleQueue.isReady(this.canceled);
        }

        public int read(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
            return this.sampleQueue.read(formatHolder, decoderInputBuffer, i, this.canceled);
        }

        public void release() {
            if (this.released) {
                return;
            }
            this.loader.release();
            this.sampleQueue.release();
            this.released = true;
        }

        public void resumeLoad() {
            Assertions.checkState(this.canceled);
            this.canceled = false;
            RtspMediaPeriod.this.updateLoadingFinished();
            startLoading();
        }

        public void seekTo(long j) {
            if (this.canceled) {
                return;
            }
            this.loadInfo.loadable.resetForSeek();
            this.sampleQueue.reset();
            this.sampleQueue.setStartTimeUs(j);
        }

        public int skipData(long j) {
            int skipCount = this.sampleQueue.getSkipCount(j, this.canceled);
            this.sampleQueue.skip(skipCount);
            return skipCount;
        }

        public void startLoading() {
            this.loader.startLoading(this.loadInfo.loadable, RtspMediaPeriod.this.internalListener, 0);
        }
    }

    public final class SampleStreamImpl implements SampleStream {
        private final int track;

        public SampleStreamImpl(int i) {
            this.track = i;
        }

        @Override
        public boolean isReady() {
            return RtspMediaPeriod.this.isReady(this.track);
        }

        @Override
        public void maybeThrowError() throws RtspMediaSource.RtspPlaybackException {
            if (RtspMediaPeriod.this.playbackException != null) {
                throw RtspMediaPeriod.this.playbackException;
            }
        }

        @Override
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
            return RtspMediaPeriod.this.readData(this.track, formatHolder, decoderInputBuffer, i);
        }

        @Override
        public int skipData(long j) {
            return RtspMediaPeriod.this.skipData(this.track, j);
        }
    }

    public RtspMediaPeriod(Allocator allocator, RtpDataChannel.Factory factory, Uri uri, Listener listener, String str, SocketFactory socketFactory, boolean z) {
        this.allocator = allocator;
        this.rtpDataChannelFactory = factory;
        this.listener = listener;
        InternalListener internalListener = new InternalListener();
        this.internalListener = internalListener;
        this.rtspClient = new RtspClient(internalListener, internalListener, str, uri, socketFactory, z);
        this.rtspLoaderWrappers = new ArrayList();
        this.selectedLoadInfos = new ArrayList();
        this.pendingSeekPositionUs = C.TIME_UNSET;
        this.requestedSeekPositionUs = C.TIME_UNSET;
        this.pendingSeekPositionUsForTcpRetry = C.TIME_UNSET;
    }

    public static int access$1208(RtspMediaPeriod rtspMediaPeriod) {
        int i = rtspMediaPeriod.portBindingRetryCount;
        rtspMediaPeriod.portBindingRetryCount = i + 1;
        return i;
    }

    public static void access$500(RtspMediaPeriod rtspMediaPeriod) {
        rtspMediaPeriod.maybeFinishPrepare();
    }

    private static ImmutableList<TrackGroup> buildTrackGroups(ImmutableList<RtspLoaderWrapper> immutableList) {
        ImmutableList.a aVar = new ImmutableList.a();
        for (int i = 0; i < immutableList.size(); i++) {
            aVar.a(new TrackGroup(Integer.toString(i), (Format) Assertions.checkNotNull(immutableList.get(i).sampleQueue.getUpstreamFormat())));
        }
        return aVar.e();
    }

    @Nullable
    public RtpDataLoadable getLoadableByTrackUri(Uri uri) {
        for (int i = 0; i < this.rtspLoaderWrappers.size(); i++) {
            if (!this.rtspLoaderWrappers.get(i).canceled) {
                RtpLoadInfo rtpLoadInfo = this.rtspLoaderWrappers.get(i).loadInfo;
                if (rtpLoadInfo.getTrackUri().equals(uri)) {
                    return rtpLoadInfo.loadable;
                }
            }
        }
        return null;
    }

    public boolean isSeekPending() {
        return this.pendingSeekPositionUs != C.TIME_UNSET;
    }

    public void maybeFinishPrepare() {
        if (this.released || this.prepared) {
            return;
        }
        for (int i = 0; i < this.rtspLoaderWrappers.size(); i++) {
            if (this.rtspLoaderWrappers.get(i).sampleQueue.getUpstreamFormat() == null) {
                return;
            }
        }
        this.prepared = true;
        this.trackGroups = buildTrackGroups(ImmutableList.copyOf((Collection) this.rtspLoaderWrappers));
        ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onPrepared(this);
    }

    public void maybeSetupTracks() {
        boolean zIsTransportReady = true;
        for (int i = 0; i < this.selectedLoadInfos.size(); i++) {
            zIsTransportReady &= this.selectedLoadInfos.get(i).isTransportReady();
        }
        if (zIsTransportReady && this.trackSelected) {
            this.rtspClient.setupSelectedTracks(this.selectedLoadInfos);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void retryWithRtpTcp() {
        this.isUsingRtpTcp = true;
        this.rtspClient.retryWithRtpTcp();
        RtpDataChannel.Factory factoryCreateFallbackDataChannelFactory = this.rtpDataChannelFactory.createFallbackDataChannelFactory();
        if (factoryCreateFallbackDataChannelFactory == null) {
            this.playbackException = new RtspMediaSource.RtspPlaybackException("No fallback data channel factory for TCP retry");
            return;
        }
        ArrayList arrayList = new ArrayList(this.rtspLoaderWrappers.size());
        ArrayList arrayList2 = new ArrayList(this.selectedLoadInfos.size());
        for (int i = 0; i < this.rtspLoaderWrappers.size(); i++) {
            RtspLoaderWrapper rtspLoaderWrapper = this.rtspLoaderWrappers.get(i);
            if (rtspLoaderWrapper.canceled) {
                arrayList.add(rtspLoaderWrapper);
            } else {
                RtspLoaderWrapper rtspLoaderWrapper2 = new RtspLoaderWrapper(rtspLoaderWrapper.loadInfo.mediaTrack, i, factoryCreateFallbackDataChannelFactory);
                arrayList.add(rtspLoaderWrapper2);
                rtspLoaderWrapper2.startLoading();
                if (this.selectedLoadInfos.contains(rtspLoaderWrapper.loadInfo)) {
                    arrayList2.add(rtspLoaderWrapper2.loadInfo);
                }
            }
        }
        ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.rtspLoaderWrappers);
        this.rtspLoaderWrappers.clear();
        this.rtspLoaderWrappers.addAll(arrayList);
        this.selectedLoadInfos.clear();
        this.selectedLoadInfos.addAll(arrayList2);
        for (int i2 = 0; i2 < immutableListCopyOf.size(); i2++) {
            ((RtspLoaderWrapper) immutableListCopyOf.get(i2)).cancelLoad();
        }
    }

    private boolean seekInsideBufferUs(long j) {
        for (int i = 0; i < this.rtspLoaderWrappers.size(); i++) {
            if (!this.rtspLoaderWrappers.get(i).sampleQueue.seekTo(j, false)) {
                return false;
            }
        }
        return true;
    }

    private boolean suppressRead() {
        return this.notifyDiscontinuity;
    }

    public void updateLoadingFinished() {
        this.loadingFinished = true;
        for (int i = 0; i < this.rtspLoaderWrappers.size(); i++) {
            this.loadingFinished &= this.rtspLoaderWrappers.get(i).canceled;
        }
    }

    @Override
    public boolean continueLoading(LoadingInfo loadingInfo) {
        return isLoading();
    }

    @Override
    public void discardBuffer(long j, boolean z) {
        if (isSeekPending()) {
            return;
        }
        for (int i = 0; i < this.rtspLoaderWrappers.size(); i++) {
            RtspLoaderWrapper rtspLoaderWrapper = this.rtspLoaderWrappers.get(i);
            if (!rtspLoaderWrapper.canceled) {
                rtspLoaderWrapper.sampleQueue.discardTo(j, z, true);
            }
        }
    }

    @Override
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        return j;
    }

    @Override
    public long getBufferedPositionUs() {
        if (this.loadingFinished || this.rtspLoaderWrappers.isEmpty()) {
            return Long.MIN_VALUE;
        }
        long j = this.requestedSeekPositionUs;
        if (j != C.TIME_UNSET) {
            return j;
        }
        boolean z = true;
        long jMin = Long.MAX_VALUE;
        for (int i = 0; i < this.rtspLoaderWrappers.size(); i++) {
            RtspLoaderWrapper rtspLoaderWrapper = this.rtspLoaderWrappers.get(i);
            if (!rtspLoaderWrapper.canceled) {
                jMin = Math.min(jMin, rtspLoaderWrapper.getBufferedPositionUs());
                z = false;
            }
        }
        if (z || jMin == Long.MIN_VALUE) {
            return 0L;
        }
        return jMin;
    }

    @Override
    public long getNextLoadPositionUs() {
        return getBufferedPositionUs();
    }

    @Override
    public List getStreamKeys(List list) {
        return getStreamKeys((List<ExoTrackSelection>) list);
    }

    @Override
    public TrackGroupArray getTrackGroups() {
        Assertions.checkState(this.prepared);
        return new TrackGroupArray((TrackGroup[]) ((ImmutableList) Assertions.checkNotNull(this.trackGroups)).toArray(new TrackGroup[0]));
    }

    @Override
    public boolean isLoading() {
        return !this.loadingFinished && (this.rtspClient.getState() == 2 || this.rtspClient.getState() == 1);
    }

    public boolean isReady(int i) {
        return !suppressRead() && this.rtspLoaderWrappers.get(i).isSampleQueueReady();
    }

    @Override
    public void maybeThrowPrepareError() throws IOException {
        IOException iOException = this.preparationError;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override
    public void prepare(MediaPeriod.Callback callback, long j) {
        this.callback = callback;
        try {
            this.rtspClient.start();
        } catch (IOException e) {
            this.preparationError = e;
            Util.closeQuietly(this.rtspClient);
        }
    }

    public int readData(int i, FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i2) {
        if (suppressRead()) {
            return -3;
        }
        return this.rtspLoaderWrappers.get(i).read(formatHolder, decoderInputBuffer, i2);
    }

    @Override
    public long readDiscontinuity() {
        if (!this.notifyDiscontinuity) {
            return C.TIME_UNSET;
        }
        this.notifyDiscontinuity = false;
        return 0L;
    }

    @Override
    public void reevaluateBuffer(long j) {
    }

    public void release() {
        for (int i = 0; i < this.rtspLoaderWrappers.size(); i++) {
            this.rtspLoaderWrappers.get(i).release();
        }
        Util.closeQuietly(this.rtspClient);
        this.released = true;
    }

    @Override
    public long seekToUs(long j) {
        if (getBufferedPositionUs() == 0 && !this.isUsingRtpTcp) {
            this.pendingSeekPositionUsForTcpRetry = j;
            return j;
        }
        discardBuffer(j, false);
        this.requestedSeekPositionUs = j;
        if (isSeekPending()) {
            int state = this.rtspClient.getState();
            if (state == 1) {
                return j;
            }
            if (state != 2) {
                throw new IllegalStateException();
            }
            this.pendingSeekPositionUs = j;
            this.rtspClient.seekToUs(j);
            return j;
        }
        if (seekInsideBufferUs(j)) {
            return j;
        }
        this.pendingSeekPositionUs = j;
        if (this.loadingFinished) {
            for (int i = 0; i < this.rtspLoaderWrappers.size(); i++) {
                this.rtspLoaderWrappers.get(i).resumeLoad();
            }
            if (this.isUsingRtpTcp) {
                this.rtspClient.startPlayback(Util.usToMs(j));
            } else {
                this.rtspClient.seekToUs(j);
            }
        } else {
            this.rtspClient.seekToUs(j);
        }
        for (int i2 = 0; i2 < this.rtspLoaderWrappers.size(); i2++) {
            this.rtspLoaderWrappers.get(i2).seekTo(j);
        }
        return j;
    }

    @Override
    public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        for (int i = 0; i < exoTrackSelectionArr.length; i++) {
            if (sampleStreamArr[i] != null && (exoTrackSelectionArr[i] == null || !zArr[i])) {
                sampleStreamArr[i] = null;
            }
        }
        this.selectedLoadInfos.clear();
        for (int i2 = 0; i2 < exoTrackSelectionArr.length; i2++) {
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i2];
            if (exoTrackSelection != null) {
                TrackGroup trackGroup = exoTrackSelection.getTrackGroup();
                int iIndexOf = ((ImmutableList) Assertions.checkNotNull(this.trackGroups)).indexOf(trackGroup);
                this.selectedLoadInfos.add(((RtspLoaderWrapper) Assertions.checkNotNull(this.rtspLoaderWrappers.get(iIndexOf))).loadInfo);
                if (this.trackGroups.contains(trackGroup) && sampleStreamArr[i2] == null) {
                    sampleStreamArr[i2] = new SampleStreamImpl(iIndexOf);
                    zArr2[i2] = true;
                }
            }
        }
        for (int i3 = 0; i3 < this.rtspLoaderWrappers.size(); i3++) {
            RtspLoaderWrapper rtspLoaderWrapper = this.rtspLoaderWrappers.get(i3);
            if (!this.selectedLoadInfos.contains(rtspLoaderWrapper.loadInfo)) {
                rtspLoaderWrapper.cancelLoad();
            }
        }
        this.trackSelected = true;
        if (j != 0) {
            this.requestedSeekPositionUs = j;
            this.pendingSeekPositionUs = j;
            this.pendingSeekPositionUsForTcpRetry = j;
        }
        maybeSetupTracks();
        return j;
    }

    public int skipData(int i, long j) {
        if (suppressRead()) {
            return -3;
        }
        return this.rtspLoaderWrappers.get(i).skipData(j);
    }

    @Override
    public ImmutableList<StreamKey> getStreamKeys(List<ExoTrackSelection> list) {
        return ImmutableList.of();
    }
}
