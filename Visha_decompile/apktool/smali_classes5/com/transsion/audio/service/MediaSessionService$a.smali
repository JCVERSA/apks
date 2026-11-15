.class public Lcom/transsion/audio/service/MediaSessionService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/player/MusicPlayManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/service/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/service/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/service/MediaSessionService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayItemChanged mediaItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioSessionService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {p1}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {p1}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "musicPlayManager.getPlayerState(): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {p1}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/transsion/audio/service/MediaSessionService;->j(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-virtual {p1, v1}, Lcom/transsion/audio/service/MediaSessionService;->j(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-virtual {p1, v3}, Lcom/transsion/audio/service/MediaSessionService;->j(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-virtual {p1, v2}, Lcom/transsion/audio/service/MediaSessionService;->j(I)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepare mPlayMediaItem ="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v2}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepare getDuration ="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v2}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audio/player/MusicPlayManager;->R()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {p1}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/audio/service/MediaSessionService;->l(Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/audio/service/MediaSessionService;->f(Lcom/transsion/audio/service/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    iget-object p1, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {p1}, Lcom/transsion/audio/service/MediaSessionService;->f(Lcom/transsion/audio/service/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->isActive()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {p0}, Lcom/transsion/audio/service/MediaSessionService;->f(Lcom/transsion/audio/service/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onPlayerStateUpdate(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerStateUpdate state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/service/MediaSessionService;->j(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/service/MediaSessionService;->j(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-virtual {p0, v1}, Lcom/transsion/audio/service/MediaSessionService;->j(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-virtual {p0, v0}, Lcom/transsion/audio/service/MediaSessionService;->j(I)V

    :goto_0
    return-void
.end method

.method public onUpdateAll(Lcom/transsion/audio/player/MusicPlayManager;)V
    .locals 0

    return-void
.end method

.method public seekTo(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v0}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "musicPlayManager.getPlayerState() seekTo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {v1}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", seekTo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", getCurrentPosition = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {p1}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioSessionService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-static {p1}, Lcom/transsion/audio/service/MediaSessionService;->e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/service/MediaSessionService;->j(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/service/MediaSessionService;->j(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-virtual {p0, v1}, Lcom/transsion/audio/service/MediaSessionService;->j(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService$a;->b:Lcom/transsion/audio/service/MediaSessionService;

    invoke-virtual {p0, v0}, Lcom/transsion/audio/service/MediaSessionService;->j(I)V

    :goto_0
    return-void
.end method
