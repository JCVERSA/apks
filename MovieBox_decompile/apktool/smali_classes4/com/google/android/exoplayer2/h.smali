.class public abstract Lcom/google/android/exoplayer2/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/y2;
.implements Lcom/google/android/exoplayer2/a3;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/exoplayer2/q1;

.field private c:Lcom/google/android/exoplayer2/b3;

.field private d:I

.field private e:Lg9/u1;

.field private f:I

.field private g:Lv9/s;

.field private h:[Lcom/google/android/exoplayer2/p1;

.field private i:J

.field private j:J

.field private k:J

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/h;->a:I

    .line 5
    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/q1;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/google/android/exoplayer2/q1;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/h;->b:Lcom/google/android/exoplayer2/q1;

    .line 12
    .line 13
    const-wide/high16 v0, -0x8000000000000000L

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/google/android/exoplayer2/h;->k:J

    .line 16
    .line 17
    return-void
.end method

.method private x(JZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h;->l:Z

    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/exoplayer2/h;->j:J

    .line 5
    .line 6
    iput-wide p1, p0, Lcom/google/android/exoplayer2/h;->k:J

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/h;->r(JZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/exoplayer2/b3;[Lcom/google/android/exoplayer2/p1;Lv9/s;JZZJJ)V
    .locals 9

    .line 1
    move-object v7, p0

    .line 2
    move v8, p6

    .line 3
    iget v0, v7, Lcom/google/android/exoplayer2/h;->f:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 12
    .line 13
    .line 14
    move-object v0, p1

    .line 15
    iput-object v0, v7, Lcom/google/android/exoplayer2/h;->c:Lcom/google/android/exoplayer2/b3;

    .line 16
    .line 17
    iput v1, v7, Lcom/google/android/exoplayer2/h;->f:I

    .line 18
    .line 19
    move/from16 v0, p7

    .line 20
    .line 21
    invoke-virtual {p0, p6, v0}, Lcom/google/android/exoplayer2/h;->q(ZZ)V

    .line 22
    .line 23
    .line 24
    move-object v0, p0

    .line 25
    move-object v1, p2

    .line 26
    move-object v2, p3

    .line 27
    move-wide/from16 v3, p8

    .line 28
    .line 29
    move-wide/from16 v5, p10

    .line 30
    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/h;->f([Lcom/google/android/exoplayer2/p1;Lv9/s;JJ)V

    .line 32
    .line 33
    .line 34
    move-wide v0, p4

    .line 35
    invoke-direct {p0, p4, p5, p6}, Lcom/google/android/exoplayer2/h;->x(JZ)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public synthetic d(FF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x2;->a(Lcom/google/android/exoplayer2/y2;FF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final disable()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/h;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v1

    .line 9
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->b:Lcom/google/android/exoplayer2/q1;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/q1;->a()V

    .line 15
    .line 16
    .line 17
    iput v1, p0, Lcom/google/android/exoplayer2/h;->f:I

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/google/android/exoplayer2/h;->g:Lv9/s;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/exoplayer2/h;->h:[Lcom/google/android/exoplayer2/p1;

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/h;->l:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->p()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/h;->k:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final f([Lcom/google/android/exoplayer2/p1;Lv9/s;JJ)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h;->l:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/exoplayer2/h;->g:Lv9/s;

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/google/android/exoplayer2/h;->k:J

    .line 11
    .line 12
    const-wide/high16 v2, -0x8000000000000000L

    .line 13
    .line 14
    cmp-long p2, v0, v2

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    iput-wide p3, p0, Lcom/google/android/exoplayer2/h;->k:J

    .line 19
    .line 20
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/h;->h:[Lcom/google/android/exoplayer2/p1;

    .line 21
    .line 22
    iput-wide p5, p0, Lcom/google/android/exoplayer2/h;->i:J

    .line 23
    .line 24
    move-object v0, p0

    .line 25
    move-object v1, p1

    .line 26
    move-wide v2, p3

    .line 27
    move-wide v4, p5

    .line 28
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/h;->v([Lcom/google/android/exoplayer2/p1;JJ)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method protected final g(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/p1;I)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/h;->i(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/p1;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final getCapabilities()Lcom/google/android/exoplayer2/a3;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getMediaClock()Lcom/google/android/exoplayer2/util/u;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/h;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStream()Lv9/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->g:Lv9/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/h;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final h(ILg9/u1;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/h;->d:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/h;->e:Lg9/u1;

    .line 4
    .line 5
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/h;->k:J

    .line 2
    .line 3
    const-wide/high16 v2, -0x8000000000000000L

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method protected final i(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/p1;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 9

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h;->m:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h;->m:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_0
    invoke-interface {p0, p2}, Lcom/google/android/exoplayer2/a3;->a(Lcom/google/android/exoplayer2/p1;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Lcom/google/android/exoplayer2/z2;->f(I)I

    .line 16
    .line 17
    .line 18
    move-result v1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h;->m:Z

    .line 20
    .line 21
    :goto_0
    move v6, v1

    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h;->m:Z

    .line 25
    .line 26
    throw p1

    .line 27
    :catch_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h;->m:Z

    .line 28
    .line 29
    :cond_0
    const/4 v1, 0x4

    .line 30
    goto :goto_0

    .line 31
    :goto_1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/y2;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->l()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    move-object v2, p1

    .line 40
    move-object v5, p2

    .line 41
    move v7, p3

    .line 42
    move v8, p4

    .line 43
    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/exoplayer2/p1;IZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method public final isCurrentStreamFinal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method protected final j()Lcom/google/android/exoplayer2/b3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->c:Lcom/google/android/exoplayer2/b3;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/b3;

    .line 8
    .line 9
    return-object v0
.end method

.method protected final k()Lcom/google/android/exoplayer2/q1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->b:Lcom/google/android/exoplayer2/q1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/q1;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->b:Lcom/google/android/exoplayer2/q1;

    .line 7
    .line 8
    return-object v0
.end method

.method protected final l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/h;->d:I

    .line 2
    .line 3
    return v0
.end method

.method protected final m()Lg9/u1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->e:Lg9/u1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lg9/u1;

    .line 8
    .line 9
    return-object v0
.end method

.method public final maybeThrowStreamError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->g:Lv9/s;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lv9/s;

    .line 8
    .line 9
    invoke-interface {v0}, Lv9/s;->maybeThrowError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected final n()[Lcom/google/android/exoplayer2/p1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->h:[Lcom/google/android/exoplayer2/p1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/exoplayer2/p1;

    .line 8
    .line 9
    return-object v0
.end method

.method protected final o()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->hasReadStreamToEnd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h;->l:Z

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->g:Lv9/s;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lv9/s;

    .line 17
    .line 18
    invoke-interface {v0}, Lv9/s;->isReady()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    return v0
.end method

.method protected abstract p()V
.end method

.method protected q(ZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method protected abstract r(JZ)V
.end method

.method public final reset()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/h;->f:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->b:Lcom/google/android/exoplayer2/q1;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/q1;->a()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->s()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final resetPosition(J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/h;->x(JZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method protected s()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h;->l:Z

    .line 3
    .line 4
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/h;->f:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/google/android/exoplayer2/h;->f:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->t()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/h;->f:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 11
    .line 12
    .line 13
    iput v2, p0, Lcom/google/android/exoplayer2/h;->f:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->u()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method protected t()V
    .locals 0

    .line 1
    return-void
.end method

.method protected u()V
    .locals 0

    .line 1
    return-void
.end method

.method protected abstract v([Lcom/google/android/exoplayer2/p1;JJ)V
.end method

.method protected final w(Lcom/google/android/exoplayer2/q1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->g:Lv9/s;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lv9/s;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Lv9/s;->a(Lcom/google/android/exoplayer2/q1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    const/4 v0, -0x4

    .line 14
    if-ne p3, v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const-wide/high16 p1, -0x8000000000000000L

    .line 23
    .line 24
    iput-wide p1, p0, Lcom/google/android/exoplayer2/h;->k:J

    .line 25
    .line 26
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/h;->l:Z

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, -0x3

    .line 32
    :goto_0
    return v0

    .line 33
    :cond_1
    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    .line 34
    .line 35
    iget-wide v2, p0, Lcom/google/android/exoplayer2/h;->i:J

    .line 36
    .line 37
    add-long/2addr v0, v2

    .line 38
    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    .line 39
    .line 40
    iget-wide p1, p0, Lcom/google/android/exoplayer2/h;->k:J

    .line 41
    .line 42
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    iput-wide p1, p0, Lcom/google/android/exoplayer2/h;->k:J

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/4 p2, -0x5

    .line 50
    if-ne p3, p2, :cond_3

    .line 51
    .line 52
    iget-object p2, p1, Lcom/google/android/exoplayer2/q1;->b:Lcom/google/android/exoplayer2/p1;

    .line 53
    .line 54
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Lcom/google/android/exoplayer2/p1;

    .line 59
    .line 60
    iget-wide v0, p2, Lcom/google/android/exoplayer2/p1;->p:J

    .line 61
    .line 62
    const-wide v2, 0x7fffffffffffffffL

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    cmp-long v0, v0, v2

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/p1;->b()Lcom/google/android/exoplayer2/p1$b;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-wide v1, p2, Lcom/google/android/exoplayer2/p1;->p:J

    .line 76
    .line 77
    iget-wide v3, p0, Lcom/google/android/exoplayer2/h;->i:J

    .line 78
    .line 79
    add-long/2addr v1, v3

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/p1$b;->i0(J)Lcom/google/android/exoplayer2/p1$b;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iput-object p2, p1, Lcom/google/android/exoplayer2/q1;->b:Lcom/google/android/exoplayer2/p1;

    .line 89
    .line 90
    :cond_3
    :goto_1
    return p3
.end method

.method protected y(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->g:Lv9/s;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lv9/s;

    .line 8
    .line 9
    iget-wide v1, p0, Lcom/google/android/exoplayer2/h;->i:J

    .line 10
    .line 11
    sub-long/2addr p1, v1

    .line 12
    invoke-interface {v0, p1, p2}, Lv9/s;->skipData(J)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method
