package com.mbridge.msdk.playercommon.exoplayer2.analytics;

import android.net.NetworkInfo;
import android.view.Surface;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlaybackException;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.PlaybackParameters;
import com.mbridge.msdk.playercommon.exoplayer2.decoder.DecoderCounters;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.Metadata;
import com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelectionArray;
import java.io.IOException;

public abstract class DefaultAnalyticsListener implements AnalyticsListener {
    @Override
    public void onAudioSessionId(AnalyticsListener.EventTime eventTime, int i10) {
    }

    @Override
    public void onAudioUnderrun(AnalyticsListener.EventTime eventTime, int i10, long j10, long j11) {
    }

    @Override
    public void onBandwidthEstimate(AnalyticsListener.EventTime eventTime, int i10, long j10, long j11) {
    }

    @Override
    public void onDecoderDisabled(AnalyticsListener.EventTime eventTime, int i10, DecoderCounters decoderCounters) {
    }

    @Override
    public void onDecoderEnabled(AnalyticsListener.EventTime eventTime, int i10, DecoderCounters decoderCounters) {
    }

    @Override
    public void onDecoderInitialized(AnalyticsListener.EventTime eventTime, int i10, String str, long j10) {
    }

    @Override
    public void onDecoderInputFormatChanged(AnalyticsListener.EventTime eventTime, int i10, Format format) {
    }

    @Override
    public void onDownstreamFormatChanged(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    @Override
    public void onDrmKeysLoaded(AnalyticsListener.EventTime eventTime) {
    }

    @Override
    public void onDrmKeysRemoved(AnalyticsListener.EventTime eventTime) {
    }

    @Override
    public void onDrmKeysRestored(AnalyticsListener.EventTime eventTime) {
    }

    @Override
    public void onDrmSessionManagerError(AnalyticsListener.EventTime eventTime, Exception exc) {
    }

    @Override
    public void onDroppedVideoFrames(AnalyticsListener.EventTime eventTime, int i10, long j10) {
    }

    @Override
    public void onLoadCanceled(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    @Override
    public void onLoadCompleted(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    @Override
    public void onLoadError(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData, IOException iOException, boolean z10) {
    }

    @Override
    public void onLoadStarted(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    @Override
    public void onLoadingChanged(AnalyticsListener.EventTime eventTime, boolean z10) {
    }

    @Override
    public void onMediaPeriodCreated(AnalyticsListener.EventTime eventTime) {
    }

    @Override
    public void onMediaPeriodReleased(AnalyticsListener.EventTime eventTime) {
    }

    @Override
    public void onMetadata(AnalyticsListener.EventTime eventTime, Metadata metadata) {
    }

    @Override
    public void onNetworkTypeChanged(AnalyticsListener.EventTime eventTime, NetworkInfo networkInfo) {
    }

    @Override
    public void onPlaybackParametersChanged(AnalyticsListener.EventTime eventTime, PlaybackParameters playbackParameters) {
    }

    @Override
    public void onPlayerError(AnalyticsListener.EventTime eventTime, ExoPlaybackException exoPlaybackException) {
    }

    @Override
    public void onPlayerStateChanged(AnalyticsListener.EventTime eventTime, boolean z10, int i10) {
    }

    @Override
    public void onPositionDiscontinuity(AnalyticsListener.EventTime eventTime, int i10) {
    }

    @Override
    public void onReadingStarted(AnalyticsListener.EventTime eventTime) {
    }

    @Override
    public void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime, Surface surface) {
    }

    @Override
    public void onRepeatModeChanged(AnalyticsListener.EventTime eventTime, int i10) {
    }

    @Override
    public void onSeekProcessed(AnalyticsListener.EventTime eventTime) {
    }

    @Override
    public void onSeekStarted(AnalyticsListener.EventTime eventTime) {
    }

    @Override
    public void onShuffleModeChanged(AnalyticsListener.EventTime eventTime, boolean z10) {
    }

    @Override
    public void onTimelineChanged(AnalyticsListener.EventTime eventTime, int i10) {
    }

    @Override
    public void onTracksChanged(AnalyticsListener.EventTime eventTime, TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
    }

    @Override
    public void onUpstreamDiscarded(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    @Override
    public void onVideoSizeChanged(AnalyticsListener.EventTime eventTime, int i10, int i11, int i12, float f10) {
    }

    @Override
    public void onViewportSizeChange(AnalyticsListener.EventTime eventTime, int i10, int i11) {
    }
}
