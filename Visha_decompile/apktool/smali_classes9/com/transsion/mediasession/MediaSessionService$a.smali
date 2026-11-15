.class public Lcom/transsion/mediasession/MediaSessionService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/player/MusicPlayManager$d;


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

    iput-object p1, p0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    return-void
.end method

.method public onPlayerStateUpdate(I)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlayerStateUpdate state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIsListenVideoMode "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v4}, Lcom/transsion/mediasession/MediaSessionService;->h(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mIsBackgroundPlayVideoMode "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v4}, Lcom/transsion/mediasession/MediaSessionService;->j(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mIsPlayAudioMode "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v4}, Lcom/transsion/mediasession/MediaSessionService;->i(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mIsVideoPlayerWorking:"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v4}, Lcom/transsion/mediasession/MediaSessionService;->k(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mIsAudioPlayerWorking:"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v4}, Lcom/transsion/mediasession/MediaSessionService;->g(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v4, "[audio]->>>>>>>>>>>>>>>>>>>>>>>> "

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "VishaMediaSessionService"

    invoke-static {v4, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_0

    iget-object v7, v0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v7, v2}, Lcom/transsion/mediasession/MediaSessionService;->v(Lcom/transsion/mediasession/MediaSessionService;Z)V

    iget-object v7, v0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v7, v5}, Lcom/transsion/mediasession/MediaSessionService;->q(Lcom/transsion/mediasession/MediaSessionService;Z)V

    :cond_0
    iget-object v7, v0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v7}, Lcom/transsion/mediasession/MediaSessionService;->g(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v7}, Lcom/transsion/mediasession/MediaSessionService;->n(Lcom/transsion/mediasession/MediaSessionService;)Lc37;

    move-result-object v7

    invoke-virtual {v7}, Lc37;->z()Z

    move-result v7

    if-nez v7, :cond_1

    if-ne v1, v6, :cond_2

    :cond_1
    iget-object v6, v0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v6, v5}, Lcom/transsion/mediasession/MediaSessionService;->t(Lcom/transsion/mediasession/MediaSessionService;Z)V

    iget-object v6, v0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v6, v1}, Lcom/transsion/mediasession/MediaSessionService;->I(Lcom/transsion/mediasession/MediaSessionService;I)V

    iget-object v6, v0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v6, v2}, Lcom/transsion/mediasession/MediaSessionService;->J(Lcom/transsion/mediasession/MediaSessionService;Z)V

    iget-object v2, v0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v2}, Lcom/transsion/mediasession/MediaSessionService;->o(Lcom/transsion/mediasession/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->isActive()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v2}, Lcom/transsion/mediasession/MediaSessionService;->o(Lcom/transsion/mediasession/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v2}, Lcom/transsion/mediasession/MediaSessionService;->h(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v2}, Lcom/transsion/mediasession/MediaSessionService;->j(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v2}, Lcom/transsion/mediasession/MediaSessionService;->i(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v2}, Lcom/transsion/mediasession/MediaSessionService;->k(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/mediasession/MediaSessionService;->g(Lcom/transsion/mediasession/MediaSessionService;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v16, "[audio]->>>>>>>>>>>>>>>>>>>>>>>> "

    filled-new-array/range {v16 .. v22}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateAll(Lcom/transsion/audio/player/MusicPlayManager;)V
    .locals 0

    return-void
.end method

.method public seekTo(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/mediasession/MediaSessionService;->m(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "musicPlayManager.getPlayerState() seekTo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/mediasession/MediaSessionService;->m(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", seekTo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getCurrentPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/mediasession/MediaSessionService;->m(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VishaMediaSessionService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$a;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p0, p1}, Lcom/transsion/mediasession/MediaSessionService;->B(Lcom/transsion/mediasession/MediaSessionService;I)V

    return-void
.end method
