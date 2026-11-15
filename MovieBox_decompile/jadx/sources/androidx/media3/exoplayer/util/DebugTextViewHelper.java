package androidx.media3.exoplayer.util;

import androidx.annotation.Nullable;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.a0;
import androidx.media3.common.b0;
import androidx.media3.common.e0;
import androidx.media3.common.h0;
import androidx.media3.common.i0;
import androidx.media3.common.m;
import androidx.media3.common.m0;
import androidx.media3.common.t;
import androidx.media3.common.v;
import androidx.media3.common.x;
import androidx.media3.common.z;
import java.util.List;

public abstract class DebugTextViewHelper {

    private final class Updater implements a0.d, Runnable {
        final DebugTextViewHelper this$0;

        private Updater(DebugTextViewHelper debugTextViewHelper) {
        }

        public void onAudioAttributesChanged(androidx.media3.common.c cVar) {
            b0.a(this, cVar);
        }

        @Override
        public void onAudioSessionIdChanged(int i10) {
            b0.b(this, i10);
        }

        @Override
        public void onAvailableCommandsChanged(a0.b bVar) {
            b0.c(this, bVar);
        }

        @Override
        @Deprecated
        public void onCues(List list) {
            b0.d(this, list);
        }

        @Override
        public void onDeviceInfoChanged(m mVar) {
            b0.f(this, mVar);
        }

        @Override
        public void onDeviceVolumeChanged(int i10, boolean z10) {
            b0.g(this, i10, z10);
        }

        @Override
        public void onEvents(a0 a0Var, a0.c cVar) {
            b0.h(this, a0Var, cVar);
        }

        @Override
        public void onIsLoadingChanged(boolean z10) {
            b0.i(this, z10);
        }

        @Override
        public void onIsPlayingChanged(boolean z10) {
            b0.j(this, z10);
        }

        @Override
        @Deprecated
        public void onLoadingChanged(boolean z10) {
            b0.k(this, z10);
        }

        public void onMaxSeekToPreviousPositionChanged(long j10) {
            b0.l(this, j10);
        }

        @Override
        public void onMediaItemTransition(@Nullable t tVar, int i10) {
            b0.m(this, tVar, i10);
        }

        @Override
        public void onMediaMetadataChanged(v vVar) {
            b0.n(this, vVar);
        }

        @Override
        public void onMetadata(x xVar) {
            b0.o(this, xVar);
        }

        @Override
        public void onPlayWhenReadyChanged(boolean z10, int i10) {
            throw null;
        }

        @Override
        public void onPlaybackParametersChanged(z zVar) {
            b0.q(this, zVar);
        }

        @Override
        public void onPlaybackStateChanged(int i10) {
            throw null;
        }

        @Override
        public void onPlaybackSuppressionReasonChanged(int i10) {
            b0.s(this, i10);
        }

        @Override
        public void onPlayerError(PlaybackException playbackException) {
            b0.t(this, playbackException);
        }

        @Override
        public void onPlayerErrorChanged(@Nullable PlaybackException playbackException) {
            b0.u(this, playbackException);
        }

        @Override
        @Deprecated
        public void onPlayerStateChanged(boolean z10, int i10) {
            b0.v(this, z10, i10);
        }

        public void onPlaylistMetadataChanged(v vVar) {
            b0.w(this, vVar);
        }

        @Override
        @Deprecated
        public void onPositionDiscontinuity(int i10) {
            b0.x(this, i10);
        }

        @Override
        public void onRenderedFirstFrame() {
            b0.z(this);
        }

        @Override
        public void onRepeatModeChanged(int i10) {
            b0.A(this, i10);
        }

        public void onSeekBackIncrementChanged(long j10) {
            b0.B(this, j10);
        }

        public void onSeekForwardIncrementChanged(long j10) {
            b0.C(this, j10);
        }

        @Override
        public void onShuffleModeEnabledChanged(boolean z10) {
            b0.D(this, z10);
        }

        @Override
        public void onSkipSilenceEnabledChanged(boolean z10) {
            b0.E(this, z10);
        }

        @Override
        public void onSurfaceSizeChanged(int i10, int i11) {
            b0.F(this, i10, i11);
        }

        @Override
        public void onTimelineChanged(e0 e0Var, int i10) {
            b0.G(this, e0Var, i10);
        }

        @Override
        public void onTrackSelectionParametersChanged(h0 h0Var) {
            b0.H(this, h0Var);
        }

        @Override
        public void onTracksChanged(i0 i0Var) {
            b0.I(this, i0Var);
        }

        @Override
        public void onVideoSizeChanged(m0 m0Var) {
            b0.J(this, m0Var);
        }

        @Override
        public void onVolumeChanged(float f10) {
            b0.K(this, f10);
        }

        @Override
        public void run() {
            throw null;
        }

        @Override
        public void onCues(u1.b bVar) {
            b0.e(this, bVar);
        }

        @Override
        public void onPositionDiscontinuity(a0.e eVar, a0.e eVar2, int i10) {
            throw null;
        }
    }
}
