.class public final Lcom/yandex/mobile/ads/impl/w60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/t$d;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ql;

.field private final b:Lcom/yandex/mobile/ads/impl/b70;

.field private final c:Lcom/yandex/mobile/ads/impl/gi1;

.field private final d:Lcom/yandex/mobile/ads/impl/ri1;

.field private final e:Lcom/yandex/mobile/ads/impl/li1;

.field private final f:Lcom/yandex/mobile/ads/impl/k52;

.field private final g:Lcom/yandex/mobile/ads/impl/uh1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ql;Lcom/yandex/mobile/ads/impl/b70;Lcom/yandex/mobile/ads/impl/gi1;Lcom/yandex/mobile/ads/impl/ri1;Lcom/yandex/mobile/ads/impl/li1;Lcom/yandex/mobile/ads/impl/k52;Lcom/yandex/mobile/ads/impl/uh1;)V
    .locals 1

    const-string v0, "bindingControllerHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exoPlayerProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playbackStateChangedListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerStateChangedListener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerErrorListener"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timelineChangedListener"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playbackChangesHandler"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/w60;->a:Lcom/yandex/mobile/ads/impl/ql;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/w60;->b:Lcom/yandex/mobile/ads/impl/b70;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/w60;->c:Lcom/yandex/mobile/ads/impl/gi1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/w60;->d:Lcom/yandex/mobile/ads/impl/ri1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/w60;->e:Lcom/yandex/mobile/ads/impl/li1;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/w60;->f:Lcom/yandex/mobile/ads/impl/k52;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/w60;->g:Lcom/yandex/mobile/ads/impl/uh1;

    return-void
.end method


# virtual methods
.method public bridge synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/a;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/a;)V

    return-void
.end method

.method public bridge synthetic onAudioSessionIdChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onAudioSessionIdChanged(I)V

    return-void
.end method

.method public bridge synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/t$b;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onAvailableCommandsChanged(Lcom/google/android/exoplayer2/t$b;)V

    return-void
.end method

.method public bridge synthetic onCues(Ljava/util/List;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onCues(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCues(Lqm1;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onCues(Lqm1;)V

    return-void
.end method

.method public bridge synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/h;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onDeviceInfoChanged(Lcom/google/android/exoplayer2/h;)V

    return-void
.end method

.method public bridge synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/t$d;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method public bridge synthetic onEvents(Lcom/google/android/exoplayer2/t;Lcom/google/android/exoplayer2/t$c;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/t$d;->onEvents(Lcom/google/android/exoplayer2/t;Lcom/google/android/exoplayer2/t$c;)V

    return-void
.end method

.method public bridge synthetic onIsLoadingChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onIsLoadingChanged(Z)V

    return-void
.end method

.method public bridge synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onIsPlayingChanged(Z)V

    return-void
.end method

.method public bridge synthetic onLoadingChanged(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onLoadingChanged(Z)V

    return-void
.end method

.method public bridge synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/t$d;->onMaxSeekToPreviousPositionChanged(J)V

    return-void
.end method

.method public bridge synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/n;I)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/t$d;->onMediaItemTransition(Lcom/google/android/exoplayer2/n;I)V

    return-void
.end method

.method public bridge synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/o;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/o;)V

    return-void
.end method

.method public bridge synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public final onPlayWhenReadyChanged(ZI)V
    .locals 1

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/w60;->b:Lcom/yandex/mobile/ads/impl/b70;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/b70;->a()Lcom/google/android/exoplayer2/t;

    move-result-object p2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w60;->a:Lcom/yandex/mobile/ads/impl/ql;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ql;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w60;->d:Lcom/yandex/mobile/ads/impl/ri1;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/t;->getPlaybackState()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ri1;->a(ZI)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/s;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/s;)V

    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w60;->b:Lcom/yandex/mobile/ads/impl/b70;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b70;->a()Lcom/google/android/exoplayer2/t;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/w60;->a:Lcom/yandex/mobile/ads/impl/ql;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ql;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w60;->c:Lcom/yandex/mobile/ads/impl/gi1;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/gi1;->a(ILcom/google/android/exoplayer2/t;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method public final onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w60;->e:Lcom/yandex/mobile/ads/impl/li1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/li1;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/PlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public bridge synthetic onPlayerStateChanged(ZI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/t$d;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method public bridge synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/o;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/o;)V

    return-void
.end method

.method public bridge synthetic onPositionDiscontinuity(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onPositionDiscontinuity(I)V

    return-void
.end method

.method public final onPositionDiscontinuity(Lcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$e;I)V
    .locals 0

    .line 2
    const-string p3, "oldPosition"

    invoke-static {p1, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newPosition"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w60;->g:Lcom/yandex/mobile/ads/impl/uh1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/uh1;->a()V

    return-void
.end method

.method public final onRenderedFirstFrame()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w60;->b:Lcom/yandex/mobile/ads/impl/b70;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b70;->a()Lcom/google/android/exoplayer2/t;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/t;->getPlaybackState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/w60;->onPlaybackStateChanged(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onRepeatModeChanged(I)V

    return-void
.end method

.method public bridge synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/t$d;->onSeekBackIncrementChanged(J)V

    return-void
.end method

.method public bridge synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/t$d;->onSeekForwardIncrementChanged(J)V

    return-void
.end method

.method public bridge synthetic onSeekProcessed()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Lcom/google/android/exoplayer2/t$d;->onSeekProcessed()V

    return-void
.end method

.method public bridge synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method public bridge synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method public bridge synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/t$d;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method public final onTimelineChanged(Lcom/google/android/exoplayer2/a0;I)V
    .locals 0

    const-string p2, "timeline"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w60;->f:Lcom/yandex/mobile/ads/impl/k52;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/k52;->a(Lcom/google/android/exoplayer2/a0;)V

    return-void
.end method

.method public bridge synthetic onTrackSelectionParametersChanged(Lpva;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onTrackSelectionParametersChanged(Lpva;)V

    return-void
.end method

.method public bridge synthetic onTracksChanged(Lcom/google/android/exoplayer2/b0;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onTracksChanged(Lcom/google/android/exoplayer2/b0;)V

    return-void
.end method

.method public bridge synthetic onVideoSizeChanged(Lf7c;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onVideoSizeChanged(Lf7c;)V

    return-void
.end method

.method public bridge synthetic onVolumeChanged(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onVolumeChanged(F)V

    return-void
.end method
