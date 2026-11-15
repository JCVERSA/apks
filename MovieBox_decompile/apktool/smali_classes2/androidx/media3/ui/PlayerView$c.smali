.class final Landroidx/media3/ui/PlayerView$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/common/a0$d;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/media3/ui/PlayerControlView$m;
.implements Landroidx/media3/ui/PlayerControlView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Landroidx/media3/common/e0$b;

.field private b:Ljava/lang/Object;

.field final synthetic c:Landroidx/media3/ui/PlayerView;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroidx/media3/common/e0$b;

    .line 7
    .line 8
    invoke-direct {p1}, Landroidx/media3/common/e0$b;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/ui/PlayerView$c;->a:Landroidx/media3/common/e0$b;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public l(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->m(Landroidx/media3/ui/PlayerView;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->o(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/PlayerView$d;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public synthetic onAudioSessionIdChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/b0;->b(Landroidx/media3/common/a0$d;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Landroidx/media3/common/a0$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/b0;->c(Landroidx/media3/common/a0$d;Landroidx/media3/common/a0$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->l(Landroidx/media3/ui/PlayerView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/b0;->d(Landroidx/media3/common/a0$d;Ljava/util/List;)V

    return-void
.end method

.method public onCues(Lu1/b;)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerView;->c(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerView;->c(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/SubtitleView;

    move-result-object v0

    iget-object p1, p1, Lu1/b;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public synthetic onDeviceInfoChanged(Landroidx/media3/common/m;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/b0;->f(Landroidx/media3/common/a0$d;Landroidx/media3/common/m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/b0;->g(Landroidx/media3/common/a0$d;IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onEvents(Landroidx/media3/common/a0;Landroidx/media3/common/a0$c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/b0;->h(Landroidx/media3/common/a0$d;Landroidx/media3/common/a0;Landroidx/media3/common/a0$c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/b0;->i(Landroidx/media3/common/a0$d;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/b0;->j(Landroidx/media3/common/a0$d;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/b0;->k(Landroidx/media3/common/a0$d;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onMediaItemTransition(Landroidx/media3/common/t;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/b0;->m(Landroidx/media3/common/a0$d;Landroidx/media3/common/t;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onMediaMetadataChanged(Landroidx/media3/common/v;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/b0;->n(Landroidx/media3/common/a0$d;Landroidx/media3/common/v;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onMetadata(Landroidx/media3/common/x;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/b0;->o(Landroidx/media3/common/a0$d;Landroidx/media3/common/x;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->g(Landroidx/media3/ui/PlayerView;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->i(Landroidx/media3/ui/PlayerView;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Landroidx/media3/common/z;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/b0;->q(Landroidx/media3/common/a0$d;Landroidx/media3/common/z;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->g(Landroidx/media3/ui/PlayerView;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->h(Landroidx/media3/ui/PlayerView;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->i(Landroidx/media3/ui/PlayerView;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/b0;->s(Landroidx/media3/common/a0$d;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/b0;->t(Landroidx/media3/common/a0$d;Landroidx/media3/common/PlaybackException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/b0;->u(Landroidx/media3/common/a0$d;Landroidx/media3/common/PlaybackException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/b0;->v(Landroidx/media3/common/a0$d;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/b0;->x(Landroidx/media3/common/a0$d;I)V

    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;I)V
    .locals 0

    .line 2
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->j(Landroidx/media3/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->k(Landroidx/media3/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->hideController()V

    :cond_0
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/ui/PlayerView;->v(Landroidx/media3/ui/PlayerView;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/media3/ui/PlayerView;->v(Landroidx/media3/ui/PlayerView;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 20
    .line 21
    invoke-static {v0}, Landroidx/media3/ui/PlayerView;->w(Landroidx/media3/ui/PlayerView;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 28
    .line 29
    invoke-static {v0}, Landroidx/media3/ui/PlayerView;->d(Landroidx/media3/ui/PlayerView;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 34
    .line 35
    invoke-static {v0}, Landroidx/media3/ui/PlayerView;->e(Landroidx/media3/ui/PlayerView;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/b0;->A(Landroidx/media3/common/a0$d;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/b0;->D(Landroidx/media3/common/a0$d;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/b0;->E(Landroidx/media3/common/a0$d;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 3

    .line 1
    sget p1, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 p2, 0x22

    .line 4
    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 8
    .line 9
    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->r(Landroidx/media3/ui/PlayerView;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    instance-of p1, p1, Landroid/view/SurfaceView;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 18
    .line 19
    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->s(Landroidx/media3/ui/PlayerView;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 26
    .line 27
    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->u(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/PlayerView$f;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroidx/media3/ui/PlayerView$f;

    .line 36
    .line 37
    iget-object p2, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 38
    .line 39
    invoke-static {p2}, Landroidx/media3/ui/PlayerView;->t(Landroidx/media3/ui/PlayerView;)Landroid/os/Handler;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iget-object v0, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 44
    .line 45
    invoke-static {v0}, Landroidx/media3/ui/PlayerView;->r(Landroidx/media3/ui/PlayerView;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/view/SurfaceView;

    .line 50
    .line 51
    iget-object v1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 52
    .line 53
    new-instance v2, Landroidx/media3/ui/i0;

    .line 54
    .line 55
    invoke-direct {v2, v1}, Landroidx/media3/ui/i0;-><init>(Landroidx/media3/ui/PlayerView;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2, v0, v2}, Landroidx/media3/ui/PlayerView$f;->f(Landroid/os/Handler;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public synthetic onTimelineChanged(Landroidx/media3/common/e0;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/b0;->G(Landroidx/media3/common/a0$d;Landroidx/media3/common/e0;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Landroidx/media3/common/h0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/b0;->H(Landroidx/media3/common/a0$d;Landroidx/media3/common/h0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTracksChanged(Landroidx/media3/common/i0;)V
    .locals 4

    .line 1
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->n(Landroidx/media3/ui/PlayerView;)Landroidx/media3/common/a0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/media3/common/a0;

    .line 12
    .line 13
    const/16 v0, 0x11

    .line 14
    .line 15
    invoke-interface {p1, v0}, Landroidx/media3/common/a0;->i(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Landroidx/media3/common/e0;->a:Landroidx/media3/common/e0;

    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iput-object v2, p0, Landroidx/media3/ui/PlayerView$c;->b:Ljava/lang/Object;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v1, 0x1e

    .line 39
    .line 40
    invoke-interface {p1, v1}, Landroidx/media3/common/a0;->i(I)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-interface {p1}, Landroidx/media3/common/a0;->getCurrentTracks()Landroidx/media3/common/i0;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroidx/media3/common/i0;->b()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    invoke-interface {p1}, Landroidx/media3/common/a0;->getCurrentPeriodIndex()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iget-object v1, p0, Landroidx/media3/ui/PlayerView$c;->a:Landroidx/media3/common/e0$b;

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    invoke-virtual {v0, p1, v1, v2}, Landroidx/media3/common/e0;->g(ILandroidx/media3/common/e0$b;Z)Landroidx/media3/common/e0$b;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p1, p1, Landroidx/media3/common/e0$b;->b:Ljava/lang/Object;

    .line 68
    .line 69
    iput-object p1, p0, Landroidx/media3/ui/PlayerView$c;->b:Ljava/lang/Object;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object v1, p0, Landroidx/media3/ui/PlayerView$c;->b:Ljava/lang/Object;

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/4 v3, -0x1

    .line 81
    if-eq v1, v3, :cond_3

    .line 82
    .line 83
    iget-object v3, p0, Landroidx/media3/ui/PlayerView$c;->a:Landroidx/media3/common/e0$b;

    .line 84
    .line 85
    invoke-virtual {v0, v1, v3}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget v0, v0, Landroidx/media3/common/e0$b;->c:I

    .line 90
    .line 91
    invoke-interface {p1}, Landroidx/media3/common/a0;->u()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-ne p1, v0, :cond_3

    .line 96
    .line 97
    return-void

    .line 98
    :cond_3
    iput-object v2, p0, Landroidx/media3/ui/PlayerView$c;->b:Ljava/lang/Object;

    .line 99
    .line 100
    :cond_4
    :goto_1
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    invoke-static {p1, v0}, Landroidx/media3/ui/PlayerView;->f(Landroidx/media3/ui/PlayerView;Z)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/m0;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/common/m0;->e:Landroidx/media3/common/m0;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/media3/common/m0;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->n(Landroidx/media3/ui/PlayerView;)Landroidx/media3/common/a0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 18
    .line 19
    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->n(Landroidx/media3/ui/PlayerView;)Landroidx/media3/common/a0;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Landroidx/media3/common/a0;->getPlaybackState()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v0, 0x1

    .line 28
    if-ne p1, v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 32
    .line 33
    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->q(Landroidx/media3/ui/PlayerView;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/b0;->K(Landroidx/media3/common/a0$d;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/ui/PlayerView$c;->c:Landroidx/media3/ui/PlayerView;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/ui/PlayerView;->p(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/PlayerView$e;

    .line 4
    .line 5
    .line 6
    return-void
.end method
