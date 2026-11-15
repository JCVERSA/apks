.class public final Lcom/yandex/mobile/ads/impl/v60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/pl;

.field private final b:Lcom/yandex/mobile/ads/impl/a70;

.field private final c:Lcom/yandex/mobile/ads/impl/fi1;

.field private final d:Lcom/yandex/mobile/ads/impl/qi1;

.field private final e:Lcom/yandex/mobile/ads/impl/ki1;

.field private final f:Lcom/yandex/mobile/ads/impl/j52;

.field private final g:Lcom/yandex/mobile/ads/impl/th1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/pl;Lcom/yandex/mobile/ads/impl/a70;Lcom/yandex/mobile/ads/impl/fi1;Lcom/yandex/mobile/ads/impl/qi1;Lcom/yandex/mobile/ads/impl/ki1;Lcom/yandex/mobile/ads/impl/j52;Lcom/yandex/mobile/ads/impl/th1;)V
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/v60;->a:Lcom/yandex/mobile/ads/impl/pl;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/v60;->b:Lcom/yandex/mobile/ads/impl/a70;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/v60;->c:Lcom/yandex/mobile/ads/impl/fi1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/v60;->d:Lcom/yandex/mobile/ads/impl/qi1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/v60;->e:Lcom/yandex/mobile/ads/impl/ki1;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/v60;->f:Lcom/yandex/mobile/ads/impl/j52;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/v60;->g:Lcom/yandex/mobile/ads/impl/th1;

    return-void
.end method


# virtual methods
.method public final onPlayWhenReadyChanged(ZI)V
    .locals 1

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/v60;->b:Lcom/yandex/mobile/ads/impl/a70;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/a70;->a()Landroidx/media3/common/Player;

    move-result-object p2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v60;->a:Lcom/yandex/mobile/ads/impl/pl;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v60;->d:Lcom/yandex/mobile/ads/impl/qi1;

    invoke-interface {p2}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/qi1;->a(ZI)V

    :cond_0
    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v60;->b:Lcom/yandex/mobile/ads/impl/a70;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/a70;->a()Landroidx/media3/common/Player;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/v60;->a:Lcom/yandex/mobile/ads/impl/pl;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/pl;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v60;->c:Lcom/yandex/mobile/ads/impl/fi1;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/fi1;->a(ILandroidx/media3/common/Player;)V

    :cond_0
    return-void
.end method

.method public final onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v60;->e:Lcom/yandex/mobile/ads/impl/ki1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ki1;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0

    const-string p3, "oldPosition"

    invoke-static {p1, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newPosition"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v60;->g:Lcom/yandex/mobile/ads/impl/th1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/th1;->a()V

    return-void
.end method

.method public final onRenderedFirstFrame()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v60;->b:Lcom/yandex/mobile/ads/impl/a70;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/a70;->a()Landroidx/media3/common/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/v60;->onPlaybackStateChanged(I)V

    :cond_0
    return-void
.end method

.method public final onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 0

    const-string p2, "timeline"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v60;->f:Lcom/yandex/mobile/ads/impl/j52;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/j52;->a(Landroidx/media3/common/Timeline;)V

    return-void
.end method
