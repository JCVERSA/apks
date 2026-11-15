.class public final Lwk6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/h;

.field public final b:Ljava/lang/Object;

.field public final c:[Lh19;

.field public d:Z

.field public e:Z

.field public f:Lyk6;

.field public g:Z

.field public final h:[Z

.field public final i:[Lks8;

.field public final j:Lrva;

.field public final k:Lcom/google/android/exoplayer2/q;

.field public l:Lwk6;

.field public m:Leva;

.field public n:Lsva;

.field public o:J


# direct methods
.method public constructor <init>([Lks8;JLrva;Lcb;Lcom/google/android/exoplayer2/q;Lyk6;Lsva;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwk6;->i:[Lks8;

    iput-wide p2, p0, Lwk6;->o:J

    iput-object p4, p0, Lwk6;->j:Lrva;

    iput-object p6, p0, Lwk6;->k:Lcom/google/android/exoplayer2/q;

    iget-object v0, p7, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-object p2, v0, Lxk6;->a:Ljava/lang/Object;

    iput-object p2, p0, Lwk6;->b:Ljava/lang/Object;

    iput-object p7, p0, Lwk6;->f:Lyk6;

    sget-object p2, Leva;->e:Leva;

    iput-object p2, p0, Lwk6;->m:Leva;

    iput-object p8, p0, Lwk6;->n:Lsva;

    array-length p2, p1

    new-array p2, p2, [Lh19;

    iput-object p2, p0, Lwk6;->c:[Lh19;

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lwk6;->h:[Z

    iget-wide v3, p7, Lyk6;->b:J

    iget-wide v5, p7, Lyk6;->d:J

    move-object v1, p6

    move-object v2, p5

    invoke-static/range {v0 .. v6}, Lwk6;->e(Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/q;Lcb;JJ)Lcom/google/android/exoplayer2/source/h;

    move-result-object p1

    iput-object p1, p0, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    return-void
.end method

.method public static e(Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/q;Lcb;JJ)Lcom/google/android/exoplayer2/source/h;
    .locals 7

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/google/android/exoplayer2/q;->h(Lcom/google/android/exoplayer2/source/i$b;Lcb;J)Lcom/google/android/exoplayer2/source/h;

    move-result-object v1

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p5, p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/exoplayer2/source/b;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/b;-><init>(Lcom/google/android/exoplayer2/source/h;ZJJ)V

    move-object v1, p0

    :cond_0
    return-object v1
.end method

.method public static u(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/source/h;)V
    .locals 1

    :try_start_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/exoplayer2/source/b;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/source/h;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/q;->y(Lcom/google/android/exoplayer2/source/h;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/q;->y(Lcom/google/android/exoplayer2/source/h;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "MediaPeriodHolder"

    const-string v0, "Period release failed."

    invoke-static {p1, v0, p0}, Lop5;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public A()V
    .locals 5

    iget-object v0, p0, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    instance-of v1, v0, Lcom/google/android/exoplayer2/source/b;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lwk6;->f:Lyk6;

    iget-wide v1, p0, Lyk6;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    :cond_0
    check-cast v0, Lcom/google/android/exoplayer2/source/b;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/google/android/exoplayer2/source/b;->k(JJ)V

    :cond_1
    return-void
.end method

.method public a(Lsva;JZ)J
    .locals 7

    iget-object v0, p0, Lwk6;->i:[Lks8;

    array-length v0, v0

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lwk6;->b(Lsva;JZ[Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public b(Lsva;JZ[Z)J
    .locals 13

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v1, Lsva;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lwk6;->h:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Lwk6;->n:Lsva;

    invoke-virtual {p1, v6, v3}, Lsva;->b(Lsva;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lwk6;->c:[Lh19;

    invoke-virtual {p0, v3}, Lwk6;->g([Lh19;)V

    invoke-virtual {p0}, Lwk6;->f()V

    iput-object v1, v0, Lwk6;->n:Lsva;

    invoke-virtual {p0}, Lwk6;->h()V

    iget-object v6, v0, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    iget-object v7, v1, Lsva;->c:[Lqi3;

    iget-object v8, v0, Lwk6;->h:[Z

    iget-object v9, v0, Lwk6;->c:[Lh19;

    move-object/from16 v10, p5

    move-wide v11, p2

    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/source/h;->a([Lqi3;[Z[Lh19;[ZJ)J

    move-result-wide v3

    iget-object v6, v0, Lwk6;->c:[Lh19;

    invoke-virtual {p0, v6}, Lwk6;->c([Lh19;)V

    iput-boolean v2, v0, Lwk6;->e:Z

    move v6, v2

    :goto_2
    iget-object v7, v0, Lwk6;->c:[Lh19;

    array-length v8, v7

    if-ge v6, v8, :cond_5

    aget-object v7, v7, v6

    if-eqz v7, :cond_2

    invoke-virtual {p1, v6}, Lsva;->c(I)Z

    move-result v7

    invoke-static {v7}, Lzi;->g(Z)V

    iget-object v7, v0, Lwk6;->i:[Lks8;

    aget-object v7, v7, v6

    invoke-interface {v7}, Lks8;->getTrackType()I

    move-result v7

    const/4 v8, -0x2

    if-eq v7, v8, :cond_4

    iput-boolean v5, v0, Lwk6;->e:Z

    goto :goto_4

    :cond_2
    iget-object v7, v1, Lsva;->c:[Lqi3;

    aget-object v7, v7, v6

    if-nez v7, :cond_3

    move v7, v5

    goto :goto_3

    :cond_3
    move v7, v2

    :goto_3
    invoke-static {v7}, Lzi;->g(Z)V

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    return-wide v3
.end method

.method public final c([Lh19;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lwk6;->i:[Lks8;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-interface {v1}, Lks8;->getTrackType()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lwk6;->n:Lsva;

    invoke-virtual {v1, v0}, Lsva;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lu93;

    invoke-direct {v1}, Lu93;-><init>()V

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(J)V
    .locals 1

    invoke-virtual {p0}, Lwk6;->r()Z

    move-result v0

    invoke-static {v0}, Lzi;->g(Z)V

    invoke-virtual {p0, p1, p2}, Lwk6;->y(J)J

    move-result-wide p1

    iget-object p0, p0, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/source/h;->continueLoading(J)Z

    return-void
.end method

.method public final f()V
    .locals 3

    invoke-virtual {p0}, Lwk6;->r()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lwk6;->n:Lsva;

    iget v2, v1, Lsva;->a:I

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lsva;->c(I)Z

    move-result v1

    iget-object v2, p0, Lwk6;->n:Lsva;

    iget-object v2, v2, Lsva;->c:[Lqi3;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lqi3;->disable()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final g([Lh19;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lwk6;->i:[Lks8;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-interface {v1}, Lks8;->getTrackType()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 3

    invoke-virtual {p0}, Lwk6;->r()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lwk6;->n:Lsva;

    iget v2, v1, Lsva;->a:I

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lsva;->c(I)Z

    move-result v1

    iget-object v2, p0, Lwk6;->n:Lsva;

    iget-object v2, v2, Lsva;->c:[Lqi3;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lqi3;->enable()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public i()J
    .locals 5

    iget-boolean v0, p0, Lwk6;->d:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lwk6;->f:Lyk6;

    iget-wide v0, p0, Lyk6;->b:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lwk6;->e:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/h;->getBufferedPositionUs()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object p0, p0, Lwk6;->f:Lyk6;

    iget-wide v3, p0, Lyk6;->e:J

    :cond_2
    return-wide v3
.end method

.method public j()Lwk6;
    .locals 0

    iget-object p0, p0, Lwk6;->l:Lwk6;

    return-object p0
.end method

.method public k()J
    .locals 2

    iget-boolean v0, p0, Lwk6;->d:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/h;->getNextLoadPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Lwk6;->o:J

    return-wide v0
.end method

.method public m()J
    .locals 4

    iget-object v0, p0, Lwk6;->f:Lyk6;

    iget-wide v0, v0, Lyk6;->b:J

    iget-wide v2, p0, Lwk6;->o:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public n()Leva;
    .locals 0

    iget-object p0, p0, Lwk6;->m:Leva;

    return-object p0
.end method

.method public o()Lsva;
    .locals 0

    iget-object p0, p0, Lwk6;->n:Lsva;

    return-object p0
.end method

.method public p(FLcom/google/android/exoplayer2/a0;)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwk6;->d:Z

    iget-object v0, p0, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/h;->getTrackGroups()Leva;

    move-result-object v0

    iput-object v0, p0, Lwk6;->m:Leva;

    invoke-virtual {p0, p1, p2}, Lwk6;->v(FLcom/google/android/exoplayer2/a0;)Lsva;

    move-result-object p1

    iget-object p2, p0, Lwk6;->f:Lyk6;

    iget-wide v0, p2, Lyk6;->b:J

    iget-wide v2, p2, Lyk6;->e:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v2, v4

    if-eqz p2, :cond_0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lwk6;->a(Lsva;JZ)J

    move-result-wide p1

    iget-wide v0, p0, Lwk6;->o:J

    iget-object v2, p0, Lwk6;->f:Lyk6;

    iget-wide v3, v2, Lyk6;->b:J

    sub-long/2addr v3, p1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lwk6;->o:J

    invoke-virtual {v2, p1, p2}, Lyk6;->b(J)Lyk6;

    move-result-object p1

    iput-object p1, p0, Lwk6;->f:Lyk6;

    return-void
.end method

.method public q()Z
    .locals 4

    iget-boolean v0, p0, Lwk6;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lwk6;->e:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/h;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final r()Z
    .locals 0

    iget-object p0, p0, Lwk6;->l:Lwk6;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public s(J)V
    .locals 1

    invoke-virtual {p0}, Lwk6;->r()Z

    move-result v0

    invoke-static {v0}, Lzi;->g(Z)V

    iget-boolean v0, p0, Lwk6;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    invoke-virtual {p0, p1, p2}, Lwk6;->y(J)J

    move-result-wide p0

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/source/h;->reevaluateBuffer(J)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    invoke-virtual {p0}, Lwk6;->f()V

    iget-object v0, p0, Lwk6;->k:Lcom/google/android/exoplayer2/q;

    iget-object p0, p0, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    invoke-static {v0, p0}, Lwk6;->u(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/source/h;)V

    return-void
.end method

.method public v(FLcom/google/android/exoplayer2/a0;)Lsva;
    .locals 3

    iget-object v0, p0, Lwk6;->j:Lrva;

    iget-object v1, p0, Lwk6;->i:[Lks8;

    invoke-virtual {p0}, Lwk6;->n()Leva;

    move-result-object v2

    iget-object p0, p0, Lwk6;->f:Lyk6;

    iget-object p0, p0, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v0, v1, v2, p0, p2}, Lrva;->g([Lks8;Leva;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0;)Lsva;

    move-result-object p0

    iget-object p2, p0, Lsva;->c:[Lqi3;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lqi3;->onPlaybackSpeed(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public w(Lwk6;)V
    .locals 1

    iget-object v0, p0, Lwk6;->l:Lwk6;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lwk6;->f()V

    iput-object p1, p0, Lwk6;->l:Lwk6;

    invoke-virtual {p0}, Lwk6;->h()V

    return-void
.end method

.method public x(J)V
    .locals 0

    iput-wide p1, p0, Lwk6;->o:J

    return-void
.end method

.method public y(J)J
    .locals 2

    invoke-virtual {p0}, Lwk6;->l()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public z(J)J
    .locals 2

    invoke-virtual {p0}, Lwk6;->l()J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method
