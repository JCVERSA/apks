package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.metadata.Metadata;
import defpackage.f7c;
import defpackage.pva;
import defpackage.y45;
import java.util.List;

public final class w60 implements com.google.android.exoplayer2.t.d {
    private final ql a;
    private final b70 b;
    private final gi1 c;
    private final ri1 d;
    private final li1 e;
    private final k52 f;
    private final uh1 g;

    public w60(ql qlVar, b70 b70Var, gi1 gi1Var, ri1 ri1Var, li1 li1Var, k52 k52Var, uh1 uh1Var) {
        y45.j(qlVar, "bindingControllerHolder");
        y45.j(b70Var, "exoPlayerProvider");
        y45.j(gi1Var, "playbackStateChangedListener");
        y45.j(ri1Var, "playerStateChangedListener");
        y45.j(li1Var, "playerErrorListener");
        y45.j(k52Var, "timelineChangedListener");
        y45.j(uh1Var, "playbackChangesHandler");
        this.a = qlVar;
        this.b = b70Var;
        this.c = gi1Var;
        this.d = ri1Var;
        this.e = li1Var;
        this.f = k52Var;
        this.g = uh1Var;
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
    public void onAvailableCommandsChanged(com.google.android.exoplayer2.t.b bVar) {
        super.onAvailableCommandsChanged(bVar);
    }

    @Override
    public void onCues(defpackage.qm1 qm1Var) {
        super.onCues(qm1Var);
    }

    @Override
    public void onDeviceInfoChanged(com.google.android.exoplayer2.h hVar) {
        super.onDeviceInfoChanged(hVar);
    }

    @Override
    public void onDeviceVolumeChanged(int i, boolean z) {
        super.onDeviceVolumeChanged(i, z);
    }

    @Override
    public void onEvents(com.google.android.exoplayer2.t tVar, com.google.android.exoplayer2.t.c cVar) {
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
    public void onMediaItemTransition(@Nullable com.google.android.exoplayer2.n nVar, int i) {
        super.onMediaItemTransition(nVar, i);
    }

    @Override
    public void onMediaMetadataChanged(com.google.android.exoplayer2.o oVar) {
        super.onMediaMetadataChanged(oVar);
    }

    @Override
    public void onMetadata(Metadata metadata) {
        super.onMetadata(metadata);
    }

    @Override
    public final void onPlayWhenReadyChanged(boolean z, int i) {
        com.google.android.exoplayer2.t tVarA = this.b.a();
        if (!this.a.b() || tVarA == null) {
            return;
        }
        this.d.a(z, tVarA.getPlaybackState());
    }

    @Override
    public void onPlaybackParametersChanged(com.google.android.exoplayer2.s sVar) {
        super.onPlaybackParametersChanged(sVar);
    }

    @Override
    public final void onPlaybackStateChanged(int i) {
        com.google.android.exoplayer2.t tVarA = this.b.a();
        if (!this.a.b() || tVarA == null) {
            return;
        }
        this.c.a(i, tVarA);
    }

    @Override
    public void onPlaybackSuppressionReasonChanged(int i) {
        super.onPlaybackSuppressionReasonChanged(i);
    }

    @Override
    public final void onPlayerError(PlaybackException playbackException) {
        y45.j(playbackException, "error");
        this.e.a(playbackException);
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
    public void onPlaylistMetadataChanged(com.google.android.exoplayer2.o oVar) {
        super.onPlaylistMetadataChanged(oVar);
    }

    @Override
    @Deprecated
    public void onPositionDiscontinuity(int i) {
        super.onPositionDiscontinuity(i);
    }

    @Override
    public final void onRenderedFirstFrame() {
        com.google.android.exoplayer2.t tVarA = this.b.a();
        if (tVarA != null) {
            onPlaybackStateChanged(tVarA.getPlaybackState());
        }
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
    public final void onTimelineChanged(com.google.android.exoplayer2.a0 a0Var, int i) {
        y45.j(a0Var, "timeline");
        this.f.a(a0Var);
    }

    @Override
    public void onTrackSelectionParametersChanged(pva pvaVar) {
        super.onTrackSelectionParametersChanged(pvaVar);
    }

    @Override
    public void onTracksChanged(com.google.android.exoplayer2.b0 b0Var) {
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
    @Deprecated
    public void onCues(List list) {
        super.onCues(list);
    }

    @Override
    public final void onPositionDiscontinuity(com.google.android.exoplayer2.t.e eVar, com.google.android.exoplayer2.t.e eVar2, int i) {
        y45.j(eVar, "oldPosition");
        y45.j(eVar2, "newPosition");
        this.g.a();
    }
}
