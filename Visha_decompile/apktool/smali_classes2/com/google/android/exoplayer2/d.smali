.class public abstract Lcom/google/android/exoplayer2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/w;
.implements Lks8;


# instance fields
.field public final b:I

.field public final c:Lo44;

.field public d:Lls8;

.field public e:I

.field public f:Lta8;

.field public g:I

.field public h:Lh19;

.field public i:[Lcom/google/android/exoplayer2/k;

.field public j:J

.field public k:J

.field public l:J

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/d;->b:I

    new-instance p1, Lo44;

    invoke-direct {p1}, Lo44;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/d;->c:Lo44;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer2/d;->l:J

    return-void
.end method


# virtual methods
.method public final c([Lcom/google/android/exoplayer2/k;Lh19;JJ)V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d;->m:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lzi;->g(Z)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/d;->h:Lh19;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/d;->l:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iput-wide p3, p0, Lcom/google/android/exoplayer2/d;->l:J

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/d;->i:[Lcom/google/android/exoplayer2/k;

    iput-wide p5, p0, Lcom/google/android/exoplayer2/d;->j:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/d;->t([Lcom/google/android/exoplayer2/k;JJ)V

    return-void
.end method

.method public final d(ILta8;)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/d;->e:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/d;->f:Lta8;

    return-void
.end method

.method public final disable()V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/d;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lzi;->g(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/d;->c:Lo44;

    invoke-virtual {v0}, Lo44;->a()V

    iput v1, p0, Lcom/google/android/exoplayer2/d;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/d;->h:Lh19;

    iput-object v0, p0, Lcom/google/android/exoplayer2/d;->i:[Lcom/google/android/exoplayer2/k;

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/d;->m:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->n()V

    return-void
.end method

.method public final e(Lls8;[Lcom/google/android/exoplayer2/k;Lh19;JZZJJ)V
    .locals 9

    move-object v7, p0

    move v8, p6

    iget v0, v7, Lcom/google/android/exoplayer2/d;->g:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lzi;->g(Z)V

    move-object v0, p1

    iput-object v0, v7, Lcom/google/android/exoplayer2/d;->d:Lls8;

    iput v1, v7, Lcom/google/android/exoplayer2/d;->g:I

    move/from16 v0, p7

    invoke-virtual {p0, p6, v0}, Lcom/google/android/exoplayer2/d;->o(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/d;->c([Lcom/google/android/exoplayer2/k;Lh19;JJ)V

    move-wide v0, p4

    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/exoplayer2/d;->v(JZ)V

    return-void
.end method

.method public final f(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k;I)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/d;->g(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 9

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/d;->n:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, p2}, Lks8;->a(Lcom/google/android/exoplayer2/k;)I

    move-result v1

    invoke-static {v1}, Lks8;->getFormatSupport(I)I

    move-result v1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/d;->n:Z

    :goto_0
    move v6, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/d;->n:Z

    throw p1

    :catch_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/d;->n:Z

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :goto_1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/w;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->j()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/exoplayer2/k;IZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    return-object p0
.end method

.method public final getCapabilities()Lks8;
    .locals 0

    return-object p0
.end method

.method public getMediaClock()Lnd6;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getReadingPositionUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/d;->l:J

    return-wide v0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/d;->g:I

    return p0
.end method

.method public final getStream()Lh19;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/d;->h:Lh19;

    return-object p0
.end method

.method public final getTrackType()I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/d;->b:I

    return p0
.end method

.method public final h()Lls8;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/d;->d:Lls8;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lls8;

    return-object p0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/d;->l:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i()Lo44;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/d;->c:Lo44;

    invoke-virtual {v0}, Lo44;->a()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/d;->c:Lo44;

    return-object p0
.end method

.method public final isCurrentStreamFinal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/d;->m:Z

    return p0
.end method

.method public final j()I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/d;->e:I

    return p0
.end method

.method public final k()Lta8;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/d;->f:Lta8;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lta8;

    return-object p0
.end method

.method public final l()[Lcom/google/android/exoplayer2/k;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/d;->i:[Lcom/google/android/exoplayer2/k;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/exoplayer2/k;

    return-object p0
.end method

.method public final m()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->hasReadStreamToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/d;->m:Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/d;->h:Lh19;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh19;

    invoke-interface {p0}, Lh19;->isReady()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final maybeThrowStreamError()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/d;->h:Lh19;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh19;

    invoke-interface {p0}, Lh19;->maybeThrowError()V

    return-void
.end method

.method public abstract n()V
.end method

.method public o(ZZ)V
    .locals 0

    return-void
.end method

.method public abstract p(JZ)V
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public final reset()V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/d;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lzi;->g(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/d;->c:Lo44;

    invoke-virtual {v0}, Lo44;->a()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->q()V

    return-void
.end method

.method public final resetPosition(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/d;->v(JZ)V

    return-void
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/d;->m:Z

    return-void
.end method

.method public final start()V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/d;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lzi;->g(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/d;->g:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->r()V

    return-void
.end method

.method public final stop()V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/d;->g:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lzi;->g(Z)V

    iput v2, p0, Lcom/google/android/exoplayer2/d;->g:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->s()V

    return-void
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract t([Lcom/google/android/exoplayer2/k;JJ)V
.end method

.method public final u(Lo44;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/d;->h:Lh19;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh19;

    invoke-interface {v0, p1, p2, p3}, Lh19;->a(Lo44;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    invoke-virtual {p2}, Lwk0;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/exoplayer2/d;->l:J

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/d;->m:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_1
    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/d;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:J

    iget-wide p1, p0, Lcom/google/android/exoplayer2/d;->l:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/d;->l:J

    goto :goto_1

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    iget-object p2, p1, Lo44;->b:Lcom/google/android/exoplayer2/k;

    invoke-static {p2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/k;

    iget-wide v0, p2, Lcom/google/android/exoplayer2/k;->q:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/k;->b()Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    iget-wide v1, p2, Lcom/google/android/exoplayer2/k;->q:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/d;->j:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/k$b;->i0(J)Lcom/google/android/exoplayer2/k$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object p0

    iput-object p0, p1, Lo44;->b:Lcom/google/android/exoplayer2/k;

    :cond_3
    :goto_1
    return p3
.end method

.method public final v(JZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/d;->m:Z

    iput-wide p1, p0, Lcom/google/android/exoplayer2/d;->k:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/d;->l:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/d;->p(JZ)V

    return-void
.end method

.method public w(J)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/d;->h:Lh19;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh19;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/d;->j:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lh19;->skipData(J)I

    move-result p0

    return p0
.end method
