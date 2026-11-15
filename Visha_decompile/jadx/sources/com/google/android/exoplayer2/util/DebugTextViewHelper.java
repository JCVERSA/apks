package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.a0;
import com.google.android.exoplayer2.b0;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n;
import com.google.android.exoplayer2.o;
import com.google.android.exoplayer2.s;
import com.google.android.exoplayer2.t;
import defpackage.f7c;
import defpackage.pva;
import defpackage.qm1;
import java.util.List;

public abstract class DebugTextViewHelper {

    public final class Updater implements t.d, Runnable {
        final DebugTextViewHelper this$0;

        private Updater(DebugTextViewHelper debugTextViewHelper) {
        }

        @Override
        public void onAudioAttributesChanged(com.google.android.exoplayer2.audio.a aVar) {
            super.onAudioAttributesChanged(aVar);
        }

        @Override
        public void onAudioSessionIdChanged(int i) {
            super.onAudioSessionIdChanged(i);
        }

        @Override
        public void onAvailableCommandsChanged(t.b bVar) {
            super.onAvailableCommandsChanged(bVar);
        }

        @Override
        public void onCues(qm1 qm1Var) {
            super.onCues(qm1Var);
        }

        @Override
        public void onDeviceInfoChanged(h hVar) {
            super.onDeviceInfoChanged(hVar);
        }

        @Override
        public void onDeviceVolumeChanged(int i, boolean z) {
            super.onDeviceVolumeChanged(i, z);
        }

        @Override
        public void onEvents(t tVar, t.c cVar) {
            super.onEvents(tVar, cVar);
        }

        @Override
        public void onIsLoadingChanged(boolean z) {
            super.onIsLoadingChanged(z);
        }

        @Override
        public void onIsPlayingChanged(boolean z) {
            super.onIsPlayingChanged(z);
        }

        @Override
        @Deprecated
        public void onLoadingChanged(boolean z) {
            super.onLoadingChanged(z);
        }

        @Override
        public void onMaxSeekToPreviousPositionChanged(long j) {
            super.onMaxSeekToPreviousPositionChanged(j);
        }

        @Override
        public void onMediaItemTransition(@Nullable n nVar, int i) {
            super.onMediaItemTransition(nVar, i);
        }

        @Override
        public void onMediaMetadataChanged(o oVar) {
            super.onMediaMetadataChanged(oVar);
        }

        @Override
        public void onMetadata(Metadata metadata) {
            super.onMetadata(metadata);
        }

        @Override
        public void onPlayWhenReadyChanged(boolean z, int i) {
            throw null;
        }

        @Override
        public void onPlaybackParametersChanged(s sVar) {
            super.onPlaybackParametersChanged(sVar);
        }

        @Override
        public void onPlaybackStateChanged(int i) {
            throw null;
        }

        @Override
        public void onPlaybackSuppressionReasonChanged(int i) {
            super.onPlaybackSuppressionReasonChanged(i);
        }

        @Override
        public void onPlayerError(PlaybackException playbackException) {
            super.onPlayerError(playbackException);
        }

        @Override
        public void onPlayerErrorChanged(@Nullable PlaybackException playbackException) {
            super.onPlayerErrorChanged(playbackException);
        }

        @Override
        @Deprecated
        public void onPlayerStateChanged(boolean z, int i) {
            super.onPlayerStateChanged(z, i);
        }

        @Override
        public void onPlaylistMetadataChanged(o oVar) {
            super.onPlaylistMetadataChanged(oVar);
        }

        @Override
        @Deprecated
        public void onPositionDiscontinuity(int i) {
            super.onPositionDiscontinuity(i);
        }

        @Override
        public void onRenderedFirstFrame() {
            super.onRenderedFirstFrame();
        }

        @Override
        public void onRepeatModeChanged(int i) {
            super.onRepeatModeChanged(i);
        }

        @Override
        public void onSeekBackIncrementChanged(long j) {
            super.onSeekBackIncrementChanged(j);
        }

        @Override
        public void onSeekForwardIncrementChanged(long j) {
            super.onSeekForwardIncrementChanged(j);
        }

        @Override
        @Deprecated
        public void onSeekProcessed() {
            super.onSeekProcessed();
        }

        @Override
        public void onShuffleModeEnabledChanged(boolean z) {
            super.onShuffleModeEnabledChanged(z);
        }

        @Override
        public void onSkipSilenceEnabledChanged(boolean z) {
            super.onSkipSilenceEnabledChanged(z);
        }

        @Override
        public void onSurfaceSizeChanged(int i, int i2) {
            super.onSurfaceSizeChanged(i, i2);
        }

        @Override
        public void onTimelineChanged(a0 a0Var, int i) {
            super.onTimelineChanged(a0Var, i);
        }

        @Override
        public void onTrackSelectionParametersChanged(pva pvaVar) {
            super.onTrackSelectionParametersChanged(pvaVar);
        }

        @Override
        public void onTracksChanged(b0 b0Var) {
            super.onTracksChanged(b0Var);
        }

        @Override
        public void onVideoSizeChanged(f7c f7cVar) {
            super.onVideoSizeChanged(f7cVar);
        }

        @Override
        public void onVolumeChanged(float f) {
            super.onVolumeChanged(f);
        }

        @Override
        public void run() {
            throw null;
        }

        @Override
        @Deprecated
        public void onCues(List list) {
            super.onCues(list);
        }

        @Override
        public void onPositionDiscontinuity(t.e eVar, t.e eVar2, int i) {
            throw null;
        }
    }
}
