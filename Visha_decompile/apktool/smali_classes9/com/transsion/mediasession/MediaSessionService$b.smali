.class public Lcom/transsion/mediasession/MediaSessionService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/player/VideoPlayManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mediasession/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/mediasession/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/transsion/mediasession/MediaSessionService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p1}, Lcom/transsion/mediasession/MediaSessionService;->p(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y0()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/mediasession/MediaSessionService;->r(Lcom/transsion/mediasession/MediaSessionService;Z)V

    iget-object p1, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p1}, Lcom/transsion/mediasession/MediaSessionService;->p(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p0}, Lcom/transsion/mediasession/MediaSessionService;->h(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p1, p0}, Lcom/transsion/mediasession/MediaSessionService;->u(Lcom/transsion/mediasession/MediaSessionService;Z)V

    return-void
.end method

.method public onPlayerStateUpdate(I)V
    .locals 12

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/mediasession/MediaSessionService;->p(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y0()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/mediasession/MediaSessionService;->r(Lcom/transsion/mediasession/MediaSessionService;Z)V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/mediasession/MediaSessionService;->h(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/mediasession/MediaSessionService;->p(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    invoke-static {v0, v1}, Lcom/transsion/mediasession/MediaSessionService;->u(Lcom/transsion/mediasession/MediaSessionService;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current video:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/mediasession/MediaSessionService;->p(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->e0()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerStateUpdate state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isListenVideoMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/mediasession/MediaSessionService;->h(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPlayAudioMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/mediasession/MediaSessionService;->i(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCustomPipMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/mediasession/MediaSessionService;->p(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x0()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsVideoPlayerWorking:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/mediasession/MediaSessionService;->k(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAudioPlayerWorking:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/mediasession/MediaSessionService;->g(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v4, "[video]---------->>>>>>"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VishaMediaSessionService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object v4, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v4, v3}, Lcom/transsion/mediasession/MediaSessionService;->v(Lcom/transsion/mediasession/MediaSessionService;Z)V

    iget-object v4, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v4, v2}, Lcom/transsion/mediasession/MediaSessionService;->q(Lcom/transsion/mediasession/MediaSessionService;Z)V

    :cond_2
    iget-object v4, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v4}, Lcom/transsion/mediasession/MediaSessionService;->k(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v4, p1}, Lcom/transsion/mediasession/MediaSessionService;->K(Lcom/transsion/mediasession/MediaSessionService;I)V

    :cond_3
    iget-object v4, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v4}, Lcom/transsion/mediasession/MediaSessionService;->o(Lcom/transsion/mediasession/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->isActive()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v4}, Lcom/transsion/mediasession/MediaSessionService;->o(Lcom/transsion/mediasession/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    :cond_4
    iget-object v4, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v4}, Lcom/transsion/mediasession/MediaSessionService;->A(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v4}, Lcom/transsion/mediasession/MediaSessionService;->k(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v4}, Lcom/transsion/mediasession/MediaSessionService;->n(Lcom/transsion/mediasession/MediaSessionService;)Lc37;

    move-result-object v4

    invoke-virtual {v4}, Lc37;->z()Z

    move-result v4

    if-nez v4, :cond_5

    if-ne p1, v0, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p1, v2}, Lcom/transsion/mediasession/MediaSessionService;->t(Lcom/transsion/mediasession/MediaSessionService;Z)V

    iget-object p1, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p1, v3}, Lcom/transsion/mediasession/MediaSessionService;->J(Lcom/transsion/mediasession/MediaSessionService;Z)V

    iget-object p1, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p1}, Lcom/transsion/mediasession/MediaSessionService;->o(Lcom/transsion/mediasession/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->isActive()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p0}, Lcom/transsion/mediasession/MediaSessionService;->o(Lcom/transsion/mediasession/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/mediasession/MediaSessionService;->n(Lcom/transsion/mediasession/MediaSessionService;)Lc37;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/mediasession/MediaSessionService;->k(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "player state:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsListenVideoMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v2}, Lcom/transsion/mediasession/MediaSessionService;->h(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsPlayVideoModeInBackground:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v4}, Lcom/transsion/mediasession/MediaSessionService;->j(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "cancelNotification---->>>"

    filled-new-array {v4, p1, v0, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-virtual {p0, v3, v3}, Lcom/transsion/mediasession/MediaSessionService;->a(ZZ)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onUpdateNotification(I)V
    .locals 2

    const-string v0, "onUpdateNotification"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VishaMediaSessionService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/mediasession/MediaSessionService;->p(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y0()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/mediasession/MediaSessionService;->r(Lcom/transsion/mediasession/MediaSessionService;Z)V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/mediasession/MediaSessionService;->p(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x0()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/mediasession/MediaSessionService;->u(Lcom/transsion/mediasession/MediaSessionService;Z)V

    invoke-virtual {p0, p1}, Lcom/transsion/mediasession/MediaSessionService$b;->onPlayerStateUpdate(I)V

    return-void
.end method

.method public seekTo(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/mediasession/MediaSessionService;->p(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/mediasession/MediaSessionService;->A(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video getPlayerState() seekTo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/mediasession/MediaSessionService;->p(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->g0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VishaMediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$b;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p0, p1}, Lcom/transsion/mediasession/MediaSessionService;->H(Lcom/transsion/mediasession/MediaSessionService;I)V

    :cond_1
    return-void
.end method
