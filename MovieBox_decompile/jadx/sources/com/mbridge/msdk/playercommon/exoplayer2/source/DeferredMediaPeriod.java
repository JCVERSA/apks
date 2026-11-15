package com.mbridge.msdk.playercommon.exoplayer2.source;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.SeekParameters;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.Allocator;
import java.io.IOException;

public final class DeferredMediaPeriod implements MediaPeriod, MediaPeriod.Callback {
    private final Allocator allocator;
    private MediaPeriod.Callback callback;

    public final MediaSource.MediaPeriodId f35954id;

    @Nullable
    private PrepareErrorListener listener;
    private MediaPeriod mediaPeriod;
    public final MediaSource mediaSource;
    private boolean notifiedPrepareError;
    private long preparePositionOverrideUs = C.TIME_UNSET;
    private long preparePositionUs;

    public interface PrepareErrorListener {
        void onPrepareError(MediaSource.MediaPeriodId mediaPeriodId, IOException iOException);
    }

    public DeferredMediaPeriod(MediaSource mediaSource, MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator) {
        this.f35954id = mediaPeriodId;
        this.allocator = allocator;
        this.mediaSource = mediaSource;
    }

    @Override
    public boolean continueLoading(long j10) {
        MediaPeriod mediaPeriod = this.mediaPeriod;
        return mediaPeriod != null && mediaPeriod.continueLoading(j10);
    }

    public void createPeriod() {
        MediaPeriod mediaPeriodCreatePeriod = this.mediaSource.createPeriod(this.f35954id, this.allocator);
        this.mediaPeriod = mediaPeriodCreatePeriod;
        if (this.callback != null) {
            mediaPeriodCreatePeriod.prepare(this, this.preparePositionUs);
        }
    }

    @Override
    public void discardBuffer(long j10, boolean z10) {
        this.mediaPeriod.discardBuffer(j10, z10);
    }

    @Override
    public long getAdjustedSeekPositionUs(long j10, SeekParameters seekParameters) {
        return this.mediaPeriod.getAdjustedSeekPositionUs(j10, seekParameters);
    }

    @Override
    public long getBufferedPositionUs() {
        return this.mediaPeriod.getBufferedPositionUs();
    }

    @Override
    public long getNextLoadPositionUs() {
        return this.mediaPeriod.getNextLoadPositionUs();
    }

    @Override
    public TrackGroupArray getTrackGroups() {
        return this.mediaPeriod.getTrackGroups();
    }

    @Override
    public void maybeThrowPrepareError() throws IOException {
        try {
            MediaPeriod mediaPeriod = this.mediaPeriod;
            if (mediaPeriod != null) {
                mediaPeriod.maybeThrowPrepareError();
            } else {
                this.mediaSource.maybeThrowSourceInfoRefreshError();
            }
        } catch (IOException e10) {
            PrepareErrorListener prepareErrorListener = this.listener;
            if (prepareErrorListener == null) {
                throw e10;
            }
            if (this.notifiedPrepareError) {
                return;
            }
            this.notifiedPrepareError = true;
            prepareErrorListener.onPrepareError(this.f35954id, e10);
        }
    }

    @Override
    public void onPrepared(MediaPeriod mediaPeriod) {
        this.callback.onPrepared(this);
    }

    @Override
    public void prepare(MediaPeriod.Callback callback, long j10) {
        this.callback = callback;
        this.preparePositionUs = j10;
        MediaPeriod mediaPeriod = this.mediaPeriod;
        if (mediaPeriod != null) {
            mediaPeriod.prepare(this, j10);
        }
    }

    @Override
    public long readDiscontinuity() {
        return this.mediaPeriod.readDiscontinuity();
    }

    @Override
    public void reevaluateBuffer(long j10) {
        this.mediaPeriod.reevaluateBuffer(j10);
    }

    public void releasePeriod() {
        MediaPeriod mediaPeriod = this.mediaPeriod;
        if (mediaPeriod != null) {
            this.mediaSource.releasePeriod(mediaPeriod);
        }
    }

    @Override
    public long seekToUs(long j10) {
        return this.mediaPeriod.seekToUs(j10);
    }

    @Override
    public long selectTracks(TrackSelection[] trackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j10) {
        long j11;
        long j12 = this.preparePositionOverrideUs;
        if (j12 == C.TIME_UNSET || j10 != 0) {
            j11 = j10;
        } else {
            this.preparePositionOverrideUs = C.TIME_UNSET;
            j11 = j12;
        }
        return this.mediaPeriod.selectTracks(trackSelectionArr, zArr, sampleStreamArr, zArr2, j11);
    }

    public void setDefaultPreparePositionUs(long j10) {
        if (this.preparePositionUs != 0 || j10 == 0) {
            return;
        }
        this.preparePositionOverrideUs = j10;
        this.preparePositionUs = j10;
    }

    public void setPrepareErrorListener(PrepareErrorListener prepareErrorListener) {
        this.listener = prepareErrorListener;
    }

    @Override
    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
        this.callback.onContinueLoadingRequested(this);
    }
}
