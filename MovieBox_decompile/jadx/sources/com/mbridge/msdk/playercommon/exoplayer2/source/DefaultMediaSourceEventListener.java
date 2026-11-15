package com.mbridge.msdk.playercommon.exoplayer2.source;

import androidx.annotation.Nullable;
import java.io.IOException;

public abstract class DefaultMediaSourceEventListener implements MediaSourceEventListener {
    @Override
    public void onDownstreamFormatChanged(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    @Override
    public void onLoadCanceled(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    @Override
    public void onLoadCompleted(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    @Override
    public void onLoadError(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData, IOException iOException, boolean z10) {
    }

    @Override
    public void onLoadStarted(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    @Override
    public void onMediaPeriodCreated(int i10, MediaSource.MediaPeriodId mediaPeriodId) {
    }

    @Override
    public void onMediaPeriodReleased(int i10, MediaSource.MediaPeriodId mediaPeriodId) {
    }

    @Override
    public void onReadingStarted(int i10, MediaSource.MediaPeriodId mediaPeriodId) {
    }

    @Override
    public void onUpstreamDiscarded(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }
}
