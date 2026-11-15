.class public final Lcom/cloud/hisavana/sdk/a0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/t$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/a0;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/a0;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/a0;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/a0$b;->b:Lcom/cloud/hisavana/sdk/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIsPlayingChanged(Z)V
    .locals 4

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a0$b;->b:Lcom/cloud/hisavana/sdk/a0;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/a0;->j(Lcom/cloud/hisavana/sdk/a0;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIsPlayingChanged isPlaying="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a0$b;->b:Lcom/cloud/hisavana/sdk/a0;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/a0;->k(Lcom/cloud/hisavana/sdk/a0;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a0$b;->b:Lcom/cloud/hisavana/sdk/a0;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/a0;->g(Lcom/cloud/hisavana/sdk/a0;Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a0$b;->b:Lcom/cloud/hisavana/sdk/a0;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/a0;->f(Lcom/cloud/hisavana/sdk/a0;)Lxnd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lxnd;->d()V

    :cond_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0$b;->b:Lcom/cloud/hisavana/sdk/a0;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/a0;->f(Lcom/cloud/hisavana/sdk/a0;)Lxnd;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lxnd;->onIsPlayingChanged(Z)V

    :cond_1
    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a0$b;->b:Lcom/cloud/hisavana/sdk/a0;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/a0;->j(Lcom/cloud/hisavana/sdk/a0;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_ENDED"

    invoke-virtual {p1, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/a0$b;->b:Lcom/cloud/hisavana/sdk/a0;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/a0;->i(Lcom/cloud/hisavana/sdk/a0;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a0$b;->b:Lcom/cloud/hisavana/sdk/a0;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/a0;->f(Lcom/cloud/hisavana/sdk/a0;)Lxnd;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/t;->getDuration()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/t;->getDuration()J

    move-result-wide v4

    const/16 v6, 0x64

    invoke-interface/range {v1 .. v6}, Lxnd;->b(JJI)V

    :cond_2
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0$b;->b:Lcom/cloud/hisavana/sdk/a0;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/a0;->f(Lcom/cloud/hisavana/sdk/a0;)Lxnd;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lxnd;->onComplete()V

    goto :goto_0

    :cond_3
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a0$b;->b:Lcom/cloud/hisavana/sdk/a0;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/a0;->j(Lcom/cloud/hisavana/sdk/a0;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_READY"

    invoke-virtual {p1, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/a0$b;->b:Lcom/cloud/hisavana/sdk/a0;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/a0;->f(Lcom/cloud/hisavana/sdk/a0;)Lxnd;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lxnd;->e()V

    :cond_4
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0$b;->b:Lcom/cloud/hisavana/sdk/a0;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/a0;->l(Lcom/cloud/hisavana/sdk/a0;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0$b;->b:Lcom/cloud/hisavana/sdk/a0;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/a0;->j(Lcom/cloud/hisavana/sdk/a0;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "STATE_BUFFERING"

    invoke-virtual {p1, p0, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a0$b;->b:Lcom/cloud/hisavana/sdk/a0;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/a0;->j(Lcom/cloud/hisavana/sdk/a0;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a0$b;->b:Lcom/cloud/hisavana/sdk/a0;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/a0;->d(Lcom/cloud/hisavana/sdk/a0;Lcom/google/android/exoplayer2/PlaybackException;)Lcom/cloud/hisavana/sdk/p;

    move-result-object p1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0$b;->b:Lcom/cloud/hisavana/sdk/a0;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/a0;->f(Lcom/cloud/hisavana/sdk/a0;)Lxnd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lxnd;->a(Lcom/cloud/hisavana/sdk/p;)V

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Lf7c;)V
    .locals 1

    const-string/jumbo v0, "videoSize"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0$b;->b:Lcom/cloud/hisavana/sdk/a0;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/a0;->l(Lcom/cloud/hisavana/sdk/a0;)V

    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a0$b;->b:Lcom/cloud/hisavana/sdk/a0;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/a0;->f(Lcom/cloud/hisavana/sdk/a0;)Lxnd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lxnd;->onVolumeChanged(F)V

    :cond_0
    return-void
.end method
