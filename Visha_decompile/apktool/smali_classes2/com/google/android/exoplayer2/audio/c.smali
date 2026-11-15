.class public final Lcom/google/android/exoplayer2/audio/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/c$a;
    }
.end annotation


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:Z

.field public E:J

.field public F:J

.field public final a:Lcom/google/android/exoplayer2/audio/c$a;

.field public final b:[J

.field public c:Landroid/media/AudioTrack;

.field public d:I

.field public e:I

.field public f:Lo10;

.field public g:I

.field public h:Z

.field public i:J

.field public j:F

.field public k:Z

.field public l:J

.field public m:J

.field public n:Ljava/lang/reflect/Method;

.field public o:J

.field public p:Z

.field public q:Z

.field public r:J

.field public s:J

.field public t:J

.field public u:J

.field public v:I

.field public w:I

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/c$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/audio/c$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c;->a:Lcom/google/android/exoplayer2/audio/c$a;

    sget p1, Lblb;->a:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_0

    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c;->n:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c;->b:[J

    return-void
.end method

.method public static o(I)Z
    .locals 2

    sget v0, Lblb;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    iget p0, p0, Lcom/google/android/exoplayer2/audio/c;->g:I

    int-to-long v0, p0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public c(J)I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c;->e()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/audio/c;->d:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    sub-long/2addr p1, v0

    long-to-int p1, p1

    iget p0, p0, Lcom/google/android/exoplayer2/audio/c;->e:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public d(Z)J
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/c;->c:Landroid/media/AudioTrack;

    invoke-static {v1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/c;->m()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-object v5, v0, Lcom/google/android/exoplayer2/audio/c;->f:Lo10;

    invoke-static {v5}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo10;

    invoke-virtual {v5}, Lo10;->d()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lo10;->b()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/google/android/exoplayer2/audio/c;->b(J)J

    move-result-wide v7

    invoke-virtual {v5}, Lo10;->c()J

    move-result-wide v9

    sub-long v9, v1, v9

    iget v5, v0, Lcom/google/android/exoplayer2/audio/c;->j:F

    invoke-static {v9, v10, v5}, Lblb;->T(JF)J

    move-result-wide v9

    add-long/2addr v7, v9

    goto :goto_1

    :cond_1
    iget v5, v0, Lcom/google/android/exoplayer2/audio/c;->w:I

    if-nez v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/c;->f()J

    move-result-wide v7

    goto :goto_0

    :cond_2
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/c;->l:J

    add-long/2addr v7, v1

    :goto_0
    if-nez p1, :cond_3

    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/c;->o:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    :cond_3
    :goto_1
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/audio/c;->D:Z

    if-eq v5, v6, :cond_4

    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/c;->C:J

    iput-wide v9, v0, Lcom/google/android/exoplayer2/audio/c;->F:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/c;->B:J

    iput-wide v9, v0, Lcom/google/android/exoplayer2/audio/c;->E:J

    :cond_4
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/c;->F:J

    sub-long v9, v1, v9

    const-wide/32 v11, 0xf4240

    cmp-long v5, v9, v11

    if-gez v5, :cond_5

    iget-wide v13, v0, Lcom/google/android/exoplayer2/audio/c;->E:J

    iget v5, v0, Lcom/google/android/exoplayer2/audio/c;->j:F

    invoke-static {v9, v10, v5}, Lblb;->T(JF)J

    move-result-wide v15

    add-long/2addr v13, v15

    mul-long/2addr v9, v3

    div-long/2addr v9, v11

    mul-long/2addr v7, v9

    sub-long v9, v3, v9

    mul-long/2addr v9, v13

    add-long/2addr v7, v9

    div-long/2addr v7, v3

    :cond_5
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/audio/c;->k:Z

    if-nez v3, :cond_6

    iget-wide v3, v0, Lcom/google/android/exoplayer2/audio/c;->B:J

    cmp-long v5, v7, v3

    if-lez v5, :cond_6

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/audio/c;->k:Z

    sub-long v3, v7, v3

    invoke-static {v3, v4}, Lblb;->P0(J)J

    move-result-wide v3

    iget v5, v0, Lcom/google/android/exoplayer2/audio/c;->j:F

    invoke-static {v3, v4, v5}, Lblb;->Y(JF)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v3, v4}, Lblb;->P0(J)J

    move-result-wide v3

    sub-long/2addr v9, v3

    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/c;->a:Lcom/google/android/exoplayer2/audio/c$a;

    invoke-interface {v3, v9, v10}, Lcom/google/android/exoplayer2/audio/c$a;->onPositionAdvancing(J)V

    :cond_6
    iput-wide v1, v0, Lcom/google/android/exoplayer2/audio/c;->C:J

    iput-wide v7, v0, Lcom/google/android/exoplayer2/audio/c;->B:J

    iput-boolean v6, v0, Lcom/google/android/exoplayer2/audio/c;->D:Z

    return-wide v7
.end method

.method public final e()J
    .locals 11

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/c;->x:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/c;->x:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/c;->g:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/c;->A:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/c;->z:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    if-ne v1, v2, :cond_1

    return-wide v5

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v7, v0

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c;->h:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    cmp-long v0, v7, v5

    if-nez v0, :cond_2

    iget-wide v9, p0, Lcom/google/android/exoplayer2/audio/c;->s:J

    iput-wide v9, p0, Lcom/google/android/exoplayer2/audio/c;->u:J

    :cond_2
    iget-wide v9, p0, Lcom/google/android/exoplayer2/audio/c;->u:J

    add-long/2addr v7, v9

    :cond_3
    sget v0, Lblb;->a:I

    const/16 v2, 0x1d

    if-gt v0, v2, :cond_6

    cmp-long v0, v7, v5

    if-nez v0, :cond_5

    iget-wide v9, p0, Lcom/google/android/exoplayer2/audio/c;->s:J

    cmp-long v0, v9, v5

    if-lez v0, :cond_5

    const/4 v0, 0x3

    if-ne v1, v0, :cond_5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/c;->y:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/c;->y:J

    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/c;->s:J

    return-wide v0

    :cond_5
    iput-wide v3, p0, Lcom/google/android/exoplayer2/audio/c;->y:J

    :cond_6
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/c;->s:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_7

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/c;->t:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/c;->t:J

    :cond_7
    iput-wide v7, p0, Lcom/google/android/exoplayer2/audio/c;->s:J

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/c;->t:J

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    add-long/2addr v7, v0

    return-wide v7
.end method

.method public final f()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c;->e()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/c;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(J)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/c;->z:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/c;->x:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/c;->A:J

    return-void
.end method

.method public h(J)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c;->e()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c;->a()Z

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

.method public i()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/c;->c:Landroid/media/AudioTrack;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/c;->y:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/c;->y:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public k(J)Z
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/c;->h:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/c;->p:Z

    return v3

    :cond_0
    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c;->e()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    return v3

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/c;->p:Z

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/c;->h(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/c;->p:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    if-eq v0, v2, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/c;->a:Lcom/google/android/exoplayer2/audio/c$a;

    iget p2, p0, Lcom/google/android/exoplayer2/audio/c;->e:I

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/c;->i:J

    invoke-static {v0, v1}, Lblb;->P0(J)J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/audio/c$a;->onUnderrun(IJ)V

    :cond_2
    return v2
.end method

.method public final l(JJ)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->f:Lo10;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo10;

    invoke-virtual {v0, p1, p2}, Lo10;->e(J)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lo10;->c()J

    move-result-wide v5

    invoke-virtual {v0}, Lo10;->b()J

    move-result-wide v3

    sub-long v1, v5, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v7, 0x4c4b40

    cmp-long v1, v1, v7

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/c;->a:Lcom/google/android/exoplayer2/audio/c$a;

    move-wide v7, p1

    move-wide v9, p3

    invoke-interface/range {v2 .. v10}, Lcom/google/android/exoplayer2/audio/c$a;->onSystemTimeUsMismatch(JJJJ)V

    invoke-virtual {v0}, Lo10;->f()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/google/android/exoplayer2/audio/c;->b(J)J

    move-result-wide v1

    sub-long/2addr v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/c;->a:Lcom/google/android/exoplayer2/audio/c$a;

    move-wide v7, p1

    move-wide v9, p3

    invoke-interface/range {v2 .. v10}, Lcom/google/android/exoplayer2/audio/c$a;->onPositionFramesMismatch(JJJJ)V

    invoke-virtual {v0}, Lo10;->f()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lo10;->a()V

    :goto_0
    return-void
.end method

.method public final m()V
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget-wide v6, p0, Lcom/google/android/exoplayer2/audio/c;->m:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x7530

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/c;->b:[J

    iget v7, p0, Lcom/google/android/exoplayer2/audio/c;->v:I

    sub-long v8, v0, v4

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v6, 0xa

    rem-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/audio/c;->v:I

    iget v7, p0, Lcom/google/android/exoplayer2/audio/c;->w:I

    if-ge v7, v6, :cond_1

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/android/exoplayer2/audio/c;->w:I

    :cond_1
    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/c;->m:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/c;->l:J

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/audio/c;->w:I

    if-ge v2, v3, :cond_2

    iget-wide v6, p0, Lcom/google/android/exoplayer2/audio/c;->l:J

    iget-object v8, p0, Lcom/google/android/exoplayer2/audio/c;->b:[J

    aget-wide v8, v8, v2

    int-to-long v10, v3

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/c;->l:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/c;->h:Z

    if-eqz v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/audio/c;->l(JJ)V

    invoke-virtual {p0, v4, v5}, Lcom/google/android/exoplayer2/audio/c;->n(J)V

    return-void
.end method

.method public final n(J)V
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/c;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->n:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/c;->r:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0x7a120

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/c;->c:Landroid/media/AudioTrack;

    invoke-static {v2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/c;->i:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/c;->o:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/c;->o:J

    const-wide/32 v6, 0x4c4b40

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->a:Lcom/google/android/exoplayer2/audio/c$a;

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/audio/c$a;->onInvalidLatency(J)V

    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/c;->o:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/c;->n:Ljava/lang/reflect/Method;

    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/c;->r:J

    :cond_1
    return-void
.end method

.method public p()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c;->r()V

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/c;->x:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/c;->f:Lo10;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo10;

    invoke-virtual {p0}, Lo10;->g()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public q()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c;->r()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->c:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->f:Lo10;

    return-void
.end method

.method public final r()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/c;->l:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer2/audio/c;->w:I

    iput v2, p0, Lcom/google/android/exoplayer2/audio/c;->v:I

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/c;->m:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/c;->C:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/c;->F:J

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/c;->k:Z

    return-void
.end method

.method public s(Landroid/media/AudioTrack;ZIII)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c;->c:Landroid/media/AudioTrack;

    iput p4, p0, Lcom/google/android/exoplayer2/audio/c;->d:I

    iput p5, p0, Lcom/google/android/exoplayer2/audio/c;->e:I

    new-instance v0, Lo10;

    invoke-direct {v0, p1}, Lo10;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->f:Lo10;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/audio/c;->g:I

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    invoke-static {p3}, Lcom/google/android/exoplayer2/audio/c;->o(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/c;->h:Z

    invoke-static {p3}, Lblb;->m0(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/c;->q:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_1

    div-int/2addr p5, p4

    int-to-long p2, p5

    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/audio/c;->b(J)J

    move-result-wide p2

    goto :goto_1

    :cond_1
    move-wide p2, v0

    :goto_1
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/c;->i:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/c;->s:J

    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/c;->t:J

    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/c;->u:J

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/c;->p:Z

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/c;->x:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/c;->y:J

    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/c;->r:J

    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/c;->o:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/exoplayer2/audio/c;->j:F

    return-void
.end method

.method public t(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/c;->j:F

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/c;->f:Lo10;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lo10;->g()V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/c;->f:Lo10;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo10;

    invoke-virtual {p0}, Lo10;->g()V

    return-void
.end method
