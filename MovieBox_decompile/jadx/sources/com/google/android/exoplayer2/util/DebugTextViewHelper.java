package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.o2;
import com.google.android.exoplayer2.p2;
import com.google.android.exoplayer2.q3;
import com.google.android.exoplayer2.r2;
import com.google.android.exoplayer2.w1;
import java.util.List;

public abstract class DebugTextViewHelper {

    private final class Updater implements p2.d, Runnable {
        final DebugTextViewHelper this$0;

        private Updater(DebugTextViewHelper debugTextViewHelper) {
        }

        public void onAudioAttributesChanged(com.google.android.exoplayer2.audio.e eVar) {
            r2.a(this, eVar);
        }

        public void onAudioSessionIdChanged(int i10) {
            r2.b(this, i10);
        }

        @Override
        public void onAvailableCommandsChanged(p2.b bVar) {
            r2.c(this, bVar);
        }

        @Override
        public void onCues(da.f fVar) {
            r2.d(this, fVar);
        }

        @Override
        public void onDeviceInfoChanged(com.google.android.exoplayer2.r rVar) {
            r2.f(this, rVar);
        }

        @Override
        public void onDeviceVolumeChanged(int i10, boolean z10) {
            r2.g(this, i10, z10);
        }

        @Override
        public void onEvents(p2 p2Var, p2.c cVar) {
            r2.h(this, p2Var, cVar);
        }

        @Override
        public void onIsLoadingChanged(boolean z10) {
            r2.i(this, z10);
        }

        @Override
        public void onIsPlayingChanged(boolean z10) {
            r2.j(this, z10);
        }

        @Override
        @Deprecated
        public void onLoadingChanged(boolean z10) {
            r2.k(this, z10);
        }

        public void onMaxSeekToPreviousPositionChanged(long j10) {
            r2.l(this, j10);
        }

        @Override
        public void onMediaItemTransition(@Nullable w1 w1Var, int i10) {
            r2.m(this, w1Var, i10);
        }

        @Override
        public void onMediaMetadataChanged(b2 b2Var) {
            r2.n(this, b2Var);
        }

        @Override
        public void onMetadata(Metadata metadata) {
            r2.o(this, metadata);
        }

        @Override
        public void onPlayWhenReadyChanged(boolean z10, int i10) {
            throw null;
        }

        @Override
        public void onPlaybackParametersChanged(o2 o2Var) {
            r2.q(this, o2Var);
        }

        @Override
        public void onPlaybackStateChanged(int i10) {
            throw null;
        }

        @Override
        public void onPlaybackSuppressionReasonChanged(int i10) {
            r2.s(this, i10);
        }

        @Override
        public void onPlayerError(PlaybackException playbackException) {
            r2.t(this, playbackException);
        }

        @Override
        public void onPlayerErrorChanged(@Nullable PlaybackException playbackException) {
            r2.u(this, playbackException);
        }

        @Override
        @Deprecated
        public void onPlayerStateChanged(boolean z10, int i10) {
            r2.v(this, z10, i10);
        }

        public void onPlaylistMetadataChanged(b2 b2Var) {
            r2.w(this, b2Var);
        }

        @Override
        @Deprecated
        public void onPositionDiscontinuity(int i10) {
            r2.x(this, i10);
        }

        @Override
        public void onRenderedFirstFrame() {
            r2.z(this);
        }

        @Override
        public void onRepeatModeChanged(int i10) {
            r2.A(this, i10);
        }

        public void onSeekBackIncrementChanged(long j10) {
            r2.B(this, j10);
        }

        public void onSeekForwardIncrementChanged(long j10) {
            r2.C(this, j10);
        }

        @Override
        @Deprecated
        public void onSeekProcessed() {
            r2.D(this);
        }

        @Override
        public void onShuffleModeEnabledChanged(boolean z10) {
            r2.E(this, z10);
        }

        @Override
        public void onSkipSilenceEnabledChanged(boolean z10) {
            r2.F(this, z10);
        }

        @Override
        public void onSurfaceSizeChanged(int i10, int i11) {
            r2.G(this, i10, i11);
        }

        @Override
        public void onTimelineChanged(l3 l3Var, int i10) {
            r2.H(this, l3Var, i10);
        }

        @Override
        public void onTrackSelectionParametersChanged(na.z zVar) {
            r2.I(this, zVar);
        }

        @Override
        public void onTracksChanged(q3 q3Var) {
            r2.J(this, q3Var);
        }

        @Override
        public void onVideoSizeChanged(com.google.android.exoplayer2.video.y yVar) {
            r2.K(this, yVar);
        }

        @Override
        public void onVolumeChanged(float f10) {
            r2.L(this, f10);
        }

        @Override
        public void run() {
            throw null;
        }

        @Override
        @Deprecated
        public void onCues(List list) {
            r2.e(this, list);
        }

        @Override
        public void onPositionDiscontinuity(p2.e eVar, p2.e eVar2, int i10) {
            throw null;
        }
    }
}
