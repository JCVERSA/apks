.class public abstract Lcom/google/android/exoplayer2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/t;


# instance fields
.field public final a:Lcom/google/android/exoplayer2/a0$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/a0$d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/a0$d;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/a0$d;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/exoplayer2/n;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/c;->h(Ljava/util/List;)V

    return-void
.end method

.method public final e()I
    .locals 3

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentTimeline()Lcom/google/android/exoplayer2/a0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c;->g()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getShuffleModeEnabled()Z

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/exoplayer2/a0;->i(IIZ)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final f()I
    .locals 3

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentTimeline()Lcom/google/android/exoplayer2/a0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c;->g()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getShuffleModeEnabled()Z

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/exoplayer2/a0;->p(IIZ)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final g()I
    .locals 1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getRepeatMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public final getContentDuration()J
    .locals 2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentTimeline()Lcom/google/android/exoplayer2/a0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a0$d;->g()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final h(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/google/android/exoplayer2/t;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method

.method public final hasNextMediaItem()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c;->e()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasPreviousMediaItem()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c;->f()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCurrentMediaItemDynamic()Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentTimeline()Lcom/google/android/exoplayer2/a0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object p0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/a0$d;->j:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCurrentMediaItemLive()Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentTimeline()Lcom/google/android/exoplayer2/a0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a0$d;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCurrentMediaItemSeekable()Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentTimeline()Lcom/google/android/exoplayer2/a0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object p0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/a0$d;->i:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPlaying()Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getPlaybackSuppressionReason()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/t;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final play()V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/t;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final seekTo(J)V
    .locals 1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-interface {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/t;->seekTo(IJ)V

    return-void
.end method
