package androidx.media3.exoplayer.analytics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.ParserException;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BackgroundExecutor;
import androidx.media3.common.util.NetworkTypeObserver;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.FileDataSource;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.datasource.UdpDataSource;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManager;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.UnsupportedDrmException;
import androidx.media3.exoplayer.mediacodec.MediaCodecDecoderException;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.collect.ImmutableList;
import defpackage.aj6;
import defpackage.bi6;
import defpackage.bj6;
import defpackage.dgb;
import defpackage.dj6;
import defpackage.ej6;
import defpackage.fj6;
import defpackage.li6;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.Executor;

@RequiresApi(31)
@UnstableApi
public final class MediaMetricsListener implements AnalyticsListener, PlaybackSessionManager.Listener {

    @Nullable
    private String activeSessionId;
    private int audioUnderruns;
    private final Context context;

    @Nullable
    private Format currentAudioFormat;

    @Nullable
    private Format currentTextFormat;

    @Nullable
    private Format currentVideoFormat;
    private int discontinuityReason;
    private int droppedFrames;
    private boolean hasFatalError;
    private int ioErrorType;
    private boolean isSeeking;

    @Nullable
    private PlaybackMetrics.Builder metricsBuilder;

    @Nullable
    private PendingFormatUpdate pendingAudioFormat;

    @Nullable
    private PlaybackException pendingPlayerError;

    @Nullable
    private PendingFormatUpdate pendingTextFormat;

    @Nullable
    private PendingFormatUpdate pendingVideoFormat;
    private final PlaybackSession playbackSession;
    private int playedFrames;
    private boolean reportedEventsForCurrentSession;
    private final PlaybackSessionManager sessionManager;
    private final Executor backgroundExecutor = BackgroundExecutor.get();
    private final Timeline.Window window = new Timeline.Window();
    private final Timeline.Period period = new Timeline.Period();
    private final HashMap<String, Long> bandwidthBytes = new HashMap<>();
    private final HashMap<String, Long> bandwidthTimeMs = new HashMap<>();
    private final long startTimeMs = SystemClock.elapsedRealtime();
    private int currentPlaybackState = 0;
    private int currentNetworkType = 0;

    public static final class ErrorInfo {
        public final int errorCode;
        public final int subErrorCode;

        public ErrorInfo(int i, int i2) {
            this.errorCode = i;
            this.subErrorCode = i2;
        }
    }

    public static final class PendingFormatUpdate {
        public final Format format;
        public final int selectionReason;
        public final String sessionId;

        public PendingFormatUpdate(Format format, int i, String str) {
            this.format = format;
            this.selectionReason = i;
            this.sessionId = str;
        }
    }

    private MediaMetricsListener(Context context, PlaybackSession playbackSession) {
        this.context = context.getApplicationContext();
        this.playbackSession = playbackSession;
        DefaultPlaybackSessionManager defaultPlaybackSessionManager = new DefaultPlaybackSessionManager();
        this.sessionManager = defaultPlaybackSessionManager;
        defaultPlaybackSessionManager.setListener(this);
    }

    private boolean canReportPendingFormatUpdate(@Nullable PendingFormatUpdate pendingFormatUpdate) {
        return pendingFormatUpdate != null && pendingFormatUpdate.sessionId.equals(this.sessionManager.getActiveSessionId());
    }

    @Nullable
    public static MediaMetricsListener create(Context context) {
        MediaMetricsManager mediaMetricsManagerA = li6.a(context.getSystemService("media_metrics"));
        if (mediaMetricsManagerA == null) {
            return null;
        }
        return new MediaMetricsListener(context, mediaMetricsManagerA.createPlaybackSession());
    }

    private void finishCurrentSession() {
        PlaybackMetrics.Builder builder = this.metricsBuilder;
        if (builder != null && this.reportedEventsForCurrentSession) {
            builder.setAudioUnderrunCount(this.audioUnderruns);
            this.metricsBuilder.setVideoFramesDropped(this.droppedFrames);
            this.metricsBuilder.setVideoFramesPlayed(this.playedFrames);
            Long l = this.bandwidthTimeMs.get(this.activeSessionId);
            this.metricsBuilder.setNetworkTransferDurationMillis(l == null ? 0L : l.longValue());
            Long l2 = this.bandwidthBytes.get(this.activeSessionId);
            this.metricsBuilder.setNetworkBytesRead(l2 == null ? 0L : l2.longValue());
            this.metricsBuilder.setStreamSource((l2 == null || l2.longValue() <= 0) ? 0 : 1);
            final PlaybackMetrics playbackMetricsBuild = this.metricsBuilder.build();
            this.backgroundExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$finishCurrentSession$4(playbackMetricsBuild);
                }
            });
        }
        this.metricsBuilder = null;
        this.activeSessionId = null;
        this.audioUnderruns = 0;
        this.droppedFrames = 0;
        this.playedFrames = 0;
        this.currentVideoFormat = null;
        this.currentAudioFormat = null;
        this.currentTextFormat = null;
        this.reportedEventsForCurrentSession = false;
    }

    @SuppressLint({"SwitchIntDef"})
    private static int getDrmErrorCode(int i) {
        switch (Util.getErrorCodeForMediaDrmErrorCode(i)) {
            case 6002:
                return 24;
            case 6003:
                return 28;
            case 6004:
                return 25;
            case 6005:
                return 26;
            default:
                return 27;
        }
    }

    @Nullable
    private static DrmInitData getDrmInitData(ImmutableList<Tracks.Group> immutableList) {
        DrmInitData drmInitData;
        dgb it = immutableList.iterator();
        while (it.hasNext()) {
            Tracks.Group group = (Tracks.Group) it.next();
            for (int i = 0; i < group.length; i++) {
                if (group.isTrackSelected(i) && (drmInitData = group.getTrackFormat(i).drmInitData) != null) {
                    return drmInitData;
                }
            }
        }
        return null;
    }

    private static int getDrmType(DrmInitData drmInitData) {
        for (int i = 0; i < drmInitData.schemeDataCount; i++) {
            UUID uuid = drmInitData.get(i).uuid;
            if (uuid.equals(C.WIDEVINE_UUID)) {
                return 3;
            }
            if (uuid.equals(C.PLAYREADY_UUID)) {
                return 2;
            }
            if (uuid.equals(C.CLEARKEY_UUID)) {
                return 6;
            }
        }
        return 1;
    }

    private static ErrorInfo getErrorInfo(PlaybackException playbackException, Context context, boolean z) {
        int i;
        boolean z2;
        if (playbackException.errorCode == 1001) {
            return new ErrorInfo(20, 0);
        }
        if (playbackException instanceof ExoPlaybackException) {
            ExoPlaybackException exoPlaybackException = (ExoPlaybackException) playbackException;
            z2 = exoPlaybackException.type == 1;
            i = exoPlaybackException.rendererFormatSupport;
        } else {
            i = 0;
            z2 = false;
        }
        Throwable th = (Throwable) Assertions.checkNotNull(playbackException.getCause());
        if (!(th instanceof IOException)) {
            if (z2 && (i == 0 || i == 1)) {
                return new ErrorInfo(35, 0);
            }
            if (z2 && i == 3) {
                return new ErrorInfo(15, 0);
            }
            if (z2 && i == 2) {
                return new ErrorInfo(23, 0);
            }
            if (th instanceof MediaCodecRenderer.DecoderInitializationException) {
                return new ErrorInfo(13, Util.getErrorCodeFromPlatformDiagnosticsInfo(((MediaCodecRenderer.DecoderInitializationException) th).diagnosticInfo));
            }
            if (th instanceof MediaCodecDecoderException) {
                return new ErrorInfo(14, ((MediaCodecDecoderException) th).errorCode);
            }
            if (th instanceof OutOfMemoryError) {
                return new ErrorInfo(14, 0);
            }
            if (th instanceof AudioSink.InitializationException) {
                return new ErrorInfo(17, ((AudioSink.InitializationException) th).audioTrackState);
            }
            if (th instanceof AudioSink.WriteException) {
                return new ErrorInfo(18, ((AudioSink.WriteException) th).errorCode);
            }
            if (!(th instanceof MediaCodec.CryptoException)) {
                return new ErrorInfo(22, 0);
            }
            int errorCode = ((MediaCodec.CryptoException) th).getErrorCode();
            return new ErrorInfo(getDrmErrorCode(errorCode), errorCode);
        }
        if (th instanceof HttpDataSource.InvalidResponseCodeException) {
            return new ErrorInfo(5, ((HttpDataSource.InvalidResponseCodeException) th).responseCode);
        }
        if ((th instanceof HttpDataSource.InvalidContentTypeException) || (th instanceof ParserException)) {
            return new ErrorInfo(z ? 10 : 11, 0);
        }
        boolean z3 = th instanceof HttpDataSource.HttpDataSourceException;
        if (z3 || (th instanceof UdpDataSource.UdpDataSourceException)) {
            if (NetworkTypeObserver.getInstance(context).getNetworkType() == 1) {
                return new ErrorInfo(3, 0);
            }
            Throwable cause = th.getCause();
            if (cause instanceof UnknownHostException) {
                return new ErrorInfo(6, 0);
            }
            if (cause instanceof SocketTimeoutException) {
                return new ErrorInfo(7, 0);
            }
            return (z3 && ((HttpDataSource.HttpDataSourceException) th).type == 1) ? new ErrorInfo(4, 0) : new ErrorInfo(8, 0);
        }
        if (playbackException.errorCode == 1002) {
            return new ErrorInfo(21, 0);
        }
        if (!(th instanceof DrmSession.DrmSessionException)) {
            if (!(th instanceof FileDataSource.FileDataSourceException) || !(th.getCause() instanceof FileNotFoundException)) {
                return new ErrorInfo(9, 0);
            }
            Throwable cause2 = ((Throwable) Assertions.checkNotNull(th.getCause())).getCause();
            return ((cause2 instanceof ErrnoException) && ((ErrnoException) cause2).errno == OsConstants.EACCES) ? new ErrorInfo(32, 0) : new ErrorInfo(31, 0);
        }
        Throwable th2 = (Throwable) Assertions.checkNotNull(th.getCause());
        if (th2 instanceof MediaDrm.MediaDrmStateException) {
            int errorCodeFromPlatformDiagnosticsInfo = Util.getErrorCodeFromPlatformDiagnosticsInfo(((MediaDrm.MediaDrmStateException) th2).getDiagnosticInfo());
            return new ErrorInfo(getDrmErrorCode(errorCodeFromPlatformDiagnosticsInfo), errorCodeFromPlatformDiagnosticsInfo);
        }
        if (Util.SDK_INT >= 23 && (th2 instanceof MediaDrmResetException)) {
            return new ErrorInfo(27, 0);
        }
        if (th2 instanceof NotProvisionedException) {
            return new ErrorInfo(24, 0);
        }
        if (th2 instanceof DeniedByServerException) {
            return new ErrorInfo(29, 0);
        }
        if (th2 instanceof UnsupportedDrmException) {
            return new ErrorInfo(23, 0);
        }
        return th2 instanceof DefaultDrmSessionManager.MissingSchemeDataException ? new ErrorInfo(28, 0) : new ErrorInfo(30, 0);
    }

    private static Pair<String, String> getLanguageAndRegion(String str) {
        String[] strArrSplit = Util.split(str, "-");
        return Pair.create(strArrSplit[0], strArrSplit.length >= 2 ? strArrSplit[1] : null);
    }

    private static int getNetworkType(Context context) {
        switch (NetworkTypeObserver.getInstance(context).getNetworkType()) {
            case 0:
                return 0;
            case 1:
                return 9;
            case 2:
                return 2;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
            case 8:
            default:
                return 1;
            case 7:
                return 3;
            case 9:
                return 8;
            case 10:
                return 7;
        }
    }

    private static int getStreamType(MediaItem mediaItem) {
        MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
        if (localConfiguration == null) {
            return 0;
        }
        int iInferContentTypeForUriAndMimeType = Util.inferContentTypeForUriAndMimeType(localConfiguration.uri, localConfiguration.mimeType);
        if (iInferContentTypeForUriAndMimeType == 0) {
            return 3;
        }
        if (iInferContentTypeForUriAndMimeType != 1) {
            return iInferContentTypeForUriAndMimeType != 2 ? 1 : 4;
        }
        return 5;
    }

    private static int getTrackChangeReason(int i) {
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 3 ? 1 : 4;
        }
        return 3;
    }

    public void lambda$finishCurrentSession$4(PlaybackMetrics playbackMetrics) {
        this.playbackSession.reportPlaybackMetrics(playbackMetrics);
    }

    public void lambda$maybeReportNetworkChange$1(NetworkEvent networkEvent) {
        this.playbackSession.reportNetworkEvent(networkEvent);
    }

    public void lambda$maybeReportPlaybackError$0(PlaybackErrorEvent playbackErrorEvent) {
        this.playbackSession.reportPlaybackErrorEvent(playbackErrorEvent);
    }

    public void lambda$maybeReportPlaybackStateChange$2(PlaybackStateEvent playbackStateEvent) {
        this.playbackSession.reportPlaybackStateEvent(playbackStateEvent);
    }

    public void lambda$reportTrackChangeEvent$3(TrackChangeEvent trackChangeEvent) {
        this.playbackSession.reportTrackChangeEvent(trackChangeEvent);
    }

    private void maybeAddSessions(AnalyticsListener.Events events) {
        for (int i = 0; i < events.size(); i++) {
            int i2 = events.get(i);
            AnalyticsListener.EventTime eventTime = events.getEventTime(i2);
            if (i2 == 0) {
                this.sessionManager.updateSessionsWithTimelineChange(eventTime);
            } else if (i2 == 11) {
                this.sessionManager.updateSessionsWithDiscontinuity(eventTime, this.discontinuityReason);
            } else {
                this.sessionManager.updateSessions(eventTime);
            }
        }
    }

    private void maybeReportNetworkChange(long j) {
        int networkType = getNetworkType(this.context);
        if (networkType != this.currentNetworkType) {
            this.currentNetworkType = networkType;
            final NetworkEvent networkEventBuild = bj6.a().setNetworkType(networkType).setTimeSinceCreatedMillis(j - this.startTimeMs).build();
            this.backgroundExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$maybeReportNetworkChange$1(networkEventBuild);
                }
            });
        }
    }

    private void maybeReportPlaybackError(long j) {
        PlaybackException playbackException = this.pendingPlayerError;
        if (playbackException == null) {
            return;
        }
        ErrorInfo errorInfo = getErrorInfo(playbackException, this.context, this.ioErrorType == 4);
        final PlaybackErrorEvent playbackErrorEventBuild = ej6.a().setTimeSinceCreatedMillis(j - this.startTimeMs).setErrorCode(errorInfo.errorCode).setSubErrorCode(errorInfo.subErrorCode).setException(playbackException).build();
        this.backgroundExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$maybeReportPlaybackError$0(playbackErrorEventBuild);
            }
        });
        this.reportedEventsForCurrentSession = true;
        this.pendingPlayerError = null;
    }

    private void maybeReportPlaybackStateChange(Player player, AnalyticsListener.Events events, long j) {
        if (player.getPlaybackState() != 2) {
            this.isSeeking = false;
        }
        if (player.getPlayerError() == null) {
            this.hasFatalError = false;
        } else if (events.contains(10)) {
            this.hasFatalError = true;
        }
        int iResolveNewPlaybackState = resolveNewPlaybackState(player);
        if (this.currentPlaybackState != iResolveNewPlaybackState) {
            this.currentPlaybackState = iResolveNewPlaybackState;
            this.reportedEventsForCurrentSession = true;
            final PlaybackStateEvent playbackStateEventBuild = fj6.a().setState(this.currentPlaybackState).setTimeSinceCreatedMillis(j - this.startTimeMs).build();
            this.backgroundExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$maybeReportPlaybackStateChange$2(playbackStateEventBuild);
                }
            });
        }
    }

    private void maybeReportTrackChanges(Player player, AnalyticsListener.Events events, long j) {
        if (events.contains(2)) {
            Tracks currentTracks = player.getCurrentTracks();
            boolean zIsTypeSelected = currentTracks.isTypeSelected(2);
            boolean zIsTypeSelected2 = currentTracks.isTypeSelected(1);
            boolean zIsTypeSelected3 = currentTracks.isTypeSelected(3);
            if (zIsTypeSelected || zIsTypeSelected2 || zIsTypeSelected3) {
                if (!zIsTypeSelected) {
                    maybeUpdateVideoFormat(j, null, 0);
                }
                if (!zIsTypeSelected2) {
                    maybeUpdateAudioFormat(j, null, 0);
                }
                if (!zIsTypeSelected3) {
                    maybeUpdateTextFormat(j, null, 0);
                }
            }
        }
        if (canReportPendingFormatUpdate(this.pendingVideoFormat)) {
            PendingFormatUpdate pendingFormatUpdate = this.pendingVideoFormat;
            Format format = pendingFormatUpdate.format;
            if (format.height != -1) {
                maybeUpdateVideoFormat(j, format, pendingFormatUpdate.selectionReason);
                this.pendingVideoFormat = null;
            }
        }
        if (canReportPendingFormatUpdate(this.pendingAudioFormat)) {
            PendingFormatUpdate pendingFormatUpdate2 = this.pendingAudioFormat;
            maybeUpdateAudioFormat(j, pendingFormatUpdate2.format, pendingFormatUpdate2.selectionReason);
            this.pendingAudioFormat = null;
        }
        if (canReportPendingFormatUpdate(this.pendingTextFormat)) {
            PendingFormatUpdate pendingFormatUpdate3 = this.pendingTextFormat;
            maybeUpdateTextFormat(j, pendingFormatUpdate3.format, pendingFormatUpdate3.selectionReason);
            this.pendingTextFormat = null;
        }
    }

    private void maybeUpdateAudioFormat(long j, @Nullable Format format, int i) {
        if (Objects.equals(this.currentAudioFormat, format)) {
            return;
        }
        if (this.currentAudioFormat == null && i == 0) {
            i = 1;
        }
        this.currentAudioFormat = format;
        reportTrackChangeEvent(0, j, format, i);
    }

    private void maybeUpdateMetricsBuilderValues(Player player, AnalyticsListener.Events events) {
        DrmInitData drmInitData;
        if (events.contains(0)) {
            AnalyticsListener.EventTime eventTime = events.getEventTime(0);
            if (this.metricsBuilder != null) {
                maybeUpdateTimelineMetadata(eventTime.timeline, eventTime.mediaPeriodId);
            }
        }
        if (events.contains(2) && this.metricsBuilder != null && (drmInitData = getDrmInitData(player.getCurrentTracks().getGroups())) != null) {
            bi6.a(Util.castNonNull(this.metricsBuilder)).setDrmType(getDrmType(drmInitData));
        }
        if (events.contains(1011)) {
            this.audioUnderruns++;
        }
    }

    private void maybeUpdateTextFormat(long j, @Nullable Format format, int i) {
        if (Objects.equals(this.currentTextFormat, format)) {
            return;
        }
        if (this.currentTextFormat == null && i == 0) {
            i = 1;
        }
        this.currentTextFormat = format;
        reportTrackChangeEvent(2, j, format, i);
    }

    private void maybeUpdateTimelineMetadata(Timeline timeline, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        int indexOfPeriod;
        PlaybackMetrics.Builder builder = this.metricsBuilder;
        if (mediaPeriodId == null || (indexOfPeriod = timeline.getIndexOfPeriod(mediaPeriodId.periodUid)) == -1) {
            return;
        }
        timeline.getPeriod(indexOfPeriod, this.period);
        timeline.getWindow(this.period.windowIndex, this.window);
        builder.setStreamType(getStreamType(this.window.mediaItem));
        Timeline.Window window = this.window;
        if (window.durationUs != C.TIME_UNSET && !window.isPlaceholder && !window.isDynamic && !window.isLive()) {
            builder.setMediaDurationMillis(this.window.getDurationMs());
        }
        builder.setPlaybackType(this.window.isLive() ? 2 : 1);
        this.reportedEventsForCurrentSession = true;
    }

    private void maybeUpdateVideoFormat(long j, @Nullable Format format, int i) {
        if (Objects.equals(this.currentVideoFormat, format)) {
            return;
        }
        if (this.currentVideoFormat == null && i == 0) {
            i = 1;
        }
        this.currentVideoFormat = format;
        reportTrackChangeEvent(1, j, format, i);
    }

    private void reportTrackChangeEvent(int i, long j, @Nullable Format format, int i2) {
        TrackChangeEvent.Builder timeSinceCreatedMillis = aj6.a(i).setTimeSinceCreatedMillis(j - this.startTimeMs);
        if (format != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(getTrackChangeReason(i2));
            String str = format.containerMimeType;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = format.sampleMimeType;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = format.codecs;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i3 = format.bitrate;
            if (i3 != -1) {
                timeSinceCreatedMillis.setBitrate(i3);
            }
            int i4 = format.width;
            if (i4 != -1) {
                timeSinceCreatedMillis.setWidth(i4);
            }
            int i5 = format.height;
            if (i5 != -1) {
                timeSinceCreatedMillis.setHeight(i5);
            }
            int i6 = format.channelCount;
            if (i6 != -1) {
                timeSinceCreatedMillis.setChannelCount(i6);
            }
            int i7 = format.sampleRate;
            if (i7 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i7);
            }
            String str4 = format.language;
            if (str4 != null) {
                Pair<String, String> languageAndRegion = getLanguageAndRegion(str4);
                timeSinceCreatedMillis.setLanguage((String) languageAndRegion.first);
                Object obj = languageAndRegion.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f = format.frameRate;
            if (f != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.reportedEventsForCurrentSession = true;
        final TrackChangeEvent trackChangeEventBuild = timeSinceCreatedMillis.build();
        this.backgroundExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$reportTrackChangeEvent$3(trackChangeEventBuild);
            }
        });
    }

    private int resolveNewPlaybackState(Player player) {
        int playbackState = player.getPlaybackState();
        if (this.isSeeking) {
            return 5;
        }
        if (this.hasFatalError) {
            return 13;
        }
        if (playbackState == 4) {
            return 11;
        }
        if (playbackState == 2) {
            int i = this.currentPlaybackState;
            if (i == 0 || i == 2 || i == 12) {
                return 2;
            }
            if (player.getPlayWhenReady()) {
                return player.getPlaybackSuppressionReason() != 0 ? 10 : 6;
            }
            return 7;
        }
        if (playbackState == 3) {
            if (player.getPlayWhenReady()) {
                return player.getPlaybackSuppressionReason() != 0 ? 9 : 3;
            }
            return 4;
        }
        if (playbackState != 1 || this.currentPlaybackState == 0) {
            return this.currentPlaybackState;
        }
        return 12;
    }

    public LogSessionId getLogSessionId() {
        return this.playbackSession.getSessionId();
    }

    @Override
    public void onAdPlaybackStarted(AnalyticsListener.EventTime eventTime, String str, String str2) {
    }

    @Override
    public void onBandwidthEstimate(AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
        if (mediaPeriodId != null) {
            String sessionForMediaPeriodId = this.sessionManager.getSessionForMediaPeriodId(eventTime.timeline, (MediaSource.MediaPeriodId) Assertions.checkNotNull(mediaPeriodId));
            Long l = this.bandwidthBytes.get(sessionForMediaPeriodId);
            Long l2 = this.bandwidthTimeMs.get(sessionForMediaPeriodId);
            this.bandwidthBytes.put(sessionForMediaPeriodId, Long.valueOf((l == null ? 0L : l.longValue()) + j));
            this.bandwidthTimeMs.put(sessionForMediaPeriodId, Long.valueOf((l2 != null ? l2.longValue() : 0L) + ((long) i)));
        }
    }

    @Override
    public void onDownstreamFormatChanged(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
        if (eventTime.mediaPeriodId == null) {
            return;
        }
        PendingFormatUpdate pendingFormatUpdate = new PendingFormatUpdate((Format) Assertions.checkNotNull(mediaLoadData.trackFormat), mediaLoadData.trackSelectionReason, this.sessionManager.getSessionForMediaPeriodId(eventTime.timeline, (MediaSource.MediaPeriodId) Assertions.checkNotNull(eventTime.mediaPeriodId)));
        int i = mediaLoadData.trackType;
        if (i != 0) {
            if (i == 1) {
                this.pendingAudioFormat = pendingFormatUpdate;
                return;
            } else if (i != 2) {
                if (i != 3) {
                    return;
                }
                this.pendingTextFormat = pendingFormatUpdate;
                return;
            }
        }
        this.pendingVideoFormat = pendingFormatUpdate;
    }

    @Override
    public void onEvents(Player player, AnalyticsListener.Events events) {
        if (events.size() == 0) {
            return;
        }
        maybeAddSessions(events);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        maybeUpdateMetricsBuilderValues(player, events);
        maybeReportPlaybackError(jElapsedRealtime);
        maybeReportTrackChanges(player, events, jElapsedRealtime);
        maybeReportNetworkChange(jElapsedRealtime);
        maybeReportPlaybackStateChange(player, events, jElapsedRealtime);
        if (events.contains(AnalyticsListener.EVENT_PLAYER_RELEASED)) {
            this.sessionManager.finishAllSessions(events.getEventTime(AnalyticsListener.EVENT_PLAYER_RELEASED));
        }
    }

    @Override
    public void onLoadError(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
        this.ioErrorType = mediaLoadData.dataType;
    }

    @Override
    public void onPlayerError(AnalyticsListener.EventTime eventTime, PlaybackException playbackException) {
        this.pendingPlayerError = playbackException;
    }

    @Override
    public void onPositionDiscontinuity(AnalyticsListener.EventTime eventTime, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
        if (i == 1) {
            this.isSeeking = true;
        }
        this.discontinuityReason = i;
    }

    @Override
    public void onSessionActive(AnalyticsListener.EventTime eventTime, String str) {
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
        if (mediaPeriodId == null || !mediaPeriodId.isAd()) {
            finishCurrentSession();
            this.activeSessionId = str;
            this.metricsBuilder = dj6.a().setPlayerName(MediaLibraryInfo.TAG).setPlayerVersion(MediaLibraryInfo.VERSION);
            maybeUpdateTimelineMetadata(eventTime.timeline, eventTime.mediaPeriodId);
        }
    }

    @Override
    public void onSessionCreated(AnalyticsListener.EventTime eventTime, String str) {
    }

    @Override
    public void onSessionFinished(AnalyticsListener.EventTime eventTime, String str, boolean z) {
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
        if ((mediaPeriodId == null || !mediaPeriodId.isAd()) && str.equals(this.activeSessionId)) {
            finishCurrentSession();
        }
        this.bandwidthTimeMs.remove(str);
        this.bandwidthBytes.remove(str);
    }

    @Override
    public void onVideoDisabled(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        this.droppedFrames += decoderCounters.droppedBufferCount;
        this.playedFrames += decoderCounters.renderedOutputBufferCount;
    }

    @Override
    public void onVideoSizeChanged(AnalyticsListener.EventTime eventTime, VideoSize videoSize) {
        PendingFormatUpdate pendingFormatUpdate = this.pendingVideoFormat;
        if (pendingFormatUpdate != null) {
            Format format = pendingFormatUpdate.format;
            if (format.height == -1) {
                this.pendingVideoFormat = new PendingFormatUpdate(format.buildUpon().setWidth(videoSize.width).setHeight(videoSize.height).build(), pendingFormatUpdate.selectionReason, pendingFormatUpdate.sessionId);
            }
        }
    }
}
