package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.TrackGroup;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.MoreExecutors;
import defpackage.im5;
import defpackage.j94;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

final class ExternallyLoadedMediaPeriod implements MediaPeriod {
    private final ExternalLoader externalLoader;
    private final AtomicBoolean loadingFinished;
    private im5 loadingFuture;
    private final AtomicReference<Throwable> loadingThrowable;
    private final byte[] sampleData;
    private final TrackGroupArray tracks;
    private final Uri uri;

    public final class SampleStreamImpl implements SampleStream {
        private static final int STREAM_STATE_END_OF_STREAM = 2;
        private static final int STREAM_STATE_SEND_FORMAT = 0;
        private static final int STREAM_STATE_SEND_SAMPLE = 1;
        private int streamState = 0;

        public SampleStreamImpl() {
        }

        @Override
        public boolean isReady() {
            return ExternallyLoadedMediaPeriod.this.loadingFinished.get();
        }

        @Override
        public void maybeThrowError() throws IOException {
            Throwable th = (Throwable) ExternallyLoadedMediaPeriod.this.loadingThrowable.get();
            if (th != null) {
                throw new IOException(th);
            }
        }

        @Override
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
            int i2 = this.streamState;
            if (i2 == 2) {
                decoderInputBuffer.addFlag(4);
                return -4;
            }
            if ((i & 2) != 0 || i2 == 0) {
                formatHolder.format = ExternallyLoadedMediaPeriod.this.tracks.get(0).getFormat(0);
                this.streamState = 1;
                return -5;
            }
            if (!ExternallyLoadedMediaPeriod.this.loadingFinished.get()) {
                return -3;
            }
            int length = ExternallyLoadedMediaPeriod.this.sampleData.length;
            decoderInputBuffer.addFlag(1);
            decoderInputBuffer.timeUs = 0L;
            if ((i & 4) == 0) {
                decoderInputBuffer.ensureSpaceForWrite(length);
                decoderInputBuffer.data.put(ExternallyLoadedMediaPeriod.this.sampleData, 0, length);
            }
            if ((i & 1) == 0) {
                this.streamState = 2;
            }
            return -4;
        }

        @Override
        public int skipData(long j) {
            return 0;
        }
    }

    public ExternallyLoadedMediaPeriod(Uri uri, String str, ExternalLoader externalLoader) {
        this.uri = uri;
        Format formatBuild = new Format.Builder().setSampleMimeType(str).build();
        this.externalLoader = externalLoader;
        this.tracks = new TrackGroupArray(new TrackGroup(formatBuild));
        this.sampleData = uri.toString().getBytes(StandardCharsets.UTF_8);
        this.loadingFinished = new AtomicBoolean();
        this.loadingThrowable = new AtomicReference<>();
    }

    @Override
    public boolean continueLoading(LoadingInfo loadingInfo) {
        return !this.loadingFinished.get();
    }

    @Override
    public void discardBuffer(long j, boolean z) {
    }

    @Override
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        return j;
    }

    @Override
    public long getBufferedPositionUs() {
        return this.loadingFinished.get() ? Long.MIN_VALUE : 0L;
    }

    @Override
    public long getNextLoadPositionUs() {
        return this.loadingFinished.get() ? Long.MIN_VALUE : 0L;
    }

    @Override
    public TrackGroupArray getTrackGroups() {
        return this.tracks;
    }

    @Override
    public boolean isLoading() {
        return !this.loadingFinished.get();
    }

    @Override
    public void maybeThrowPrepareError() {
    }

    @Override
    public void prepare(MediaPeriod.Callback callback, long j) {
        callback.onPrepared(this);
        im5 im5VarLoad = this.externalLoader.load(new ExternalLoader.LoadRequest(this.uri));
        this.loadingFuture = im5VarLoad;
        Futures.a(im5VarLoad, new j94() {
            @Override
            public void onFailure(Throwable th) {
                ExternallyLoadedMediaPeriod.this.loadingThrowable.set(th);
            }

            @Override
            public void onSuccess(@Nullable Object obj) {
                ExternallyLoadedMediaPeriod.this.loadingFinished.set(true);
            }
        }, MoreExecutors.a());
    }

    @Override
    public long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    @Override
    public void reevaluateBuffer(long j) {
    }

    public void releasePeriod() {
        im5 im5Var = this.loadingFuture;
        if (im5Var != null) {
            im5Var.cancel(false);
        }
    }

    @Override
    public long seekToUs(long j) {
        return j;
    }

    @Override
    public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        for (int i = 0; i < exoTrackSelectionArr.length; i++) {
            if (sampleStreamArr[i] != null && (exoTrackSelectionArr[i] == null || !zArr[i])) {
                sampleStreamArr[i] = null;
            }
            if (sampleStreamArr[i] == null && exoTrackSelectionArr[i] != null) {
                sampleStreamArr[i] = new SampleStreamImpl();
                zArr2[i] = true;
            }
        }
        return j;
    }
}
