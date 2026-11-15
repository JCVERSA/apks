.class public final Lcom/google/android/exoplayer2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnd6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/g$a;
    }
.end annotation


# instance fields
.field public final b:Lbw9;

.field public final c:Lcom/google/android/exoplayer2/g$a;

.field public d:Lcom/google/android/exoplayer2/w;

.field public e:Lnd6;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/g$a;Ley0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/g;->c:Lcom/google/android/exoplayer2/g$a;

    new-instance p1, Lbw9;

    invoke-direct {p1, p2}, Lbw9;-><init>(Ley0;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/g;->b:Lbw9;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/g;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/w;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->d:Lcom/google/android/exoplayer2/w;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/g;->e:Lnd6;

    iput-object p1, p0, Lcom/google/android/exoplayer2/g;->d:Lcom/google/android/exoplayer2/w;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/g;->f:Z

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/s;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->e:Lnd6;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lnd6;->b(Lcom/google/android/exoplayer2/s;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/g;->e:Lnd6;

    invoke-interface {p1}, Lnd6;->getPlaybackParameters()Lcom/google/android/exoplayer2/s;

    move-result-object p1

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/g;->b:Lbw9;

    invoke-virtual {p0, p1}, Lbw9;->b(Lcom/google/android/exoplayer2/s;)V

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/w;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/w;->getMediaClock()Lnd6;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->e:Lnd6;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->e:Lnd6;

    iput-object p1, p0, Lcom/google/android/exoplayer2/g;->d:Lcom/google/android/exoplayer2/w;

    iget-object p0, p0, Lcom/google/android/exoplayer2/g;->b:Lbw9;

    invoke-virtual {p0}, Lbw9;->getPlaybackParameters()Lcom/google/android/exoplayer2/s;

    move-result-object p0

    invoke-interface {v0, p0}, Lnd6;->b(Lcom/google/android/exoplayer2/s;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Multiple renderer media clocks enabled."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public d(J)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/g;->b:Lbw9;

    invoke-virtual {p0, p1, p2}, Lbw9;->a(J)V

    return-void
.end method

.method public final e(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->d:Lcom/google/android/exoplayer2/w;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/w;->isEnded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->d:Lcom/google/android/exoplayer2/w;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/w;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/g;->d:Lcom/google/android/exoplayer2/w;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/w;->hasReadStreamToEnd()Z

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
    return p0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/g;->g:Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/g;->b:Lbw9;

    invoke-virtual {p0}, Lbw9;->c()V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/g;->g:Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/g;->b:Lbw9;

    invoke-virtual {p0}, Lbw9;->d()V

    return-void
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/s;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->e:Lnd6;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnd6;->getPlaybackParameters()Lcom/google/android/exoplayer2/s;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/g;->b:Lbw9;

    invoke-virtual {p0}, Lbw9;->getPlaybackParameters()Lcom/google/android/exoplayer2/s;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getPositionUs()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->f:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/g;->b:Lbw9;

    invoke-virtual {p0}, Lbw9;->getPositionUs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/g;->e:Lnd6;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnd6;

    invoke-interface {p0}, Lnd6;->getPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public h(Z)J
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/g;->i(Z)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g;->getPositionUs()J

    move-result-wide p0

    return-wide p0
.end method

.method public final i(Z)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/g;->e(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/g;->f:Z

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/g;->g:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/g;->b:Lbw9;

    invoke-virtual {p0}, Lbw9;->c()V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/g;->e:Lnd6;

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnd6;

    invoke-interface {p1}, Lnd6;->getPositionUs()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/g;->f:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->b:Lbw9;

    invoke-virtual {v2}, Lbw9;->getPositionUs()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/g;->b:Lbw9;

    invoke-virtual {p0}, Lbw9;->d()V

    return-void

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/g;->f:Z

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/g;->g:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->b:Lbw9;

    invoke-virtual {v2}, Lbw9;->c()V

    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->b:Lbw9;

    invoke-virtual {v2, v0, v1}, Lbw9;->a(J)V

    invoke-interface {p1}, Lnd6;->getPlaybackParameters()Lcom/google/android/exoplayer2/s;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->b:Lbw9;

    invoke-virtual {v0}, Lbw9;->getPlaybackParameters()Lcom/google/android/exoplayer2/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->b:Lbw9;

    invoke-virtual {v0, p1}, Lbw9;->b(Lcom/google/android/exoplayer2/s;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/g;->c:Lcom/google/android/exoplayer2/g$a;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/g$a;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/s;)V

    :cond_4
    return-void
.end method
