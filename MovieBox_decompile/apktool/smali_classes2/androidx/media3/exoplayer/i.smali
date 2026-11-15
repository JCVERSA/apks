.class public abstract Landroidx/media3/exoplayer/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/w3;
.implements Landroidx/media3/exoplayer/y3;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:I

.field private final c:Landroidx/media3/exoplayer/s2;

.field private d:Landroidx/media3/exoplayer/z3;

.field private e:I

.field private f:Lx1/f4;

.field private g:Landroidx/media3/common/util/i;

.field private h:I

.field private i:Lf2/u;

.field private j:[Landroidx/media3/common/r;

.field private k:J

.field private l:J

.field private m:J

.field private n:Z

.field private o:Z

.field private p:Landroidx/media3/common/e0;

.field private q:Landroidx/media3/exoplayer/y3$a;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/i;->a:Ljava/lang/Object;

    .line 10
    .line 11
    iput p1, p0, Landroidx/media3/exoplayer/i;->b:I

    .line 12
    .line 13
    new-instance p1, Landroidx/media3/exoplayer/s2;

    .line 14
    .line 15
    invoke-direct {p1}, Landroidx/media3/exoplayer/s2;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/media3/exoplayer/i;->c:Landroidx/media3/exoplayer/s2;

    .line 19
    .line 20
    const-wide/high16 v0, -0x8000000000000000L

    .line 21
    .line 22
    iput-wide v0, p0, Landroidx/media3/exoplayer/i;->m:J

    .line 23
    .line 24
    sget-object p1, Landroidx/media3/common/e0;->a:Landroidx/media3/common/e0;

    .line 25
    .line 26
    iput-object p1, p0, Landroidx/media3/exoplayer/i;->p:Landroidx/media3/common/e0;

    .line 27
    .line 28
    return-void
.end method

.method private O(JZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/i;->n:Z

    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/media3/exoplayer/i;->l:J

    .line 5
    .line 6
    iput-wide p1, p0, Landroidx/media3/exoplayer/i;->m:J

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/i;->F(JZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected final A()Landroidx/media3/common/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/i;->p:Landroidx/media3/common/e0;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final B()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->hasReadStreamToEnd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/exoplayer/i;->n:Z

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/i;->i:Lf2/u;

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lf2/u;

    .line 17
    .line 18
    invoke-interface {v0}, Lf2/u;->isReady()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    return v0
.end method

.method protected abstract C()V
.end method

.method protected D(ZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method protected E()V
    .locals 0

    .line 1
    return-void
.end method

.method protected abstract F(JZ)V
.end method

.method protected G()V
    .locals 0

    .line 1
    return-void
.end method

.method protected final H()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/i;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/i;->q:Landroidx/media3/exoplayer/y3$a;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/y3$a;->b(Landroidx/media3/exoplayer/w3;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v1
.end method

.method protected I()V
    .locals 0

    .line 1
    return-void
.end method

.method protected J()V
    .locals 0

    .line 1
    return-void
.end method

.method protected K()V
    .locals 0

    .line 1
    return-void
.end method

.method protected L([Landroidx/media3/common/r;JJLandroidx/media3/exoplayer/source/r$b;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected M(Landroidx/media3/common/e0;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected final N(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/i;->i:Lf2/u;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lf2/u;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Lf2/u;->c(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

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
    invoke-virtual {p2}, Landroidx/media3/decoder/a;->isEndOfStream()Z

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
    iput-wide p1, p0, Landroidx/media3/exoplayer/i;->m:J

    .line 25
    .line 26
    iget-boolean p1, p0, Landroidx/media3/exoplayer/i;->n:Z

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
    iget-wide v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 34
    .line 35
    iget-wide v2, p0, Landroidx/media3/exoplayer/i;->k:J

    .line 36
    .line 37
    add-long/2addr v0, v2

    .line 38
    iput-wide v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 39
    .line 40
    iget-wide p1, p0, Landroidx/media3/exoplayer/i;->m:J

    .line 41
    .line 42
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    iput-wide p1, p0, Landroidx/media3/exoplayer/i;->m:J

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
    iget-object p2, p1, Landroidx/media3/exoplayer/s2;->b:Landroidx/media3/common/r;

    .line 53
    .line 54
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Landroidx/media3/common/r;

    .line 59
    .line 60
    iget-wide v0, p2, Landroidx/media3/common/r;->t:J

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
    invoke-virtual {p2}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-wide v1, p2, Landroidx/media3/common/r;->t:J

    .line 76
    .line 77
    iget-wide v3, p0, Landroidx/media3/exoplayer/i;->k:J

    .line 78
    .line 79
    add-long/2addr v1, v3

    .line 80
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/r$b;->y0(J)Landroidx/media3/common/r$b;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iput-object p2, p1, Landroidx/media3/exoplayer/s2;->b:Landroidx/media3/common/r;

    .line 89
    .line 90
    :cond_3
    :goto_1
    return p3
.end method

.method protected P(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/i;->i:Lf2/u;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lf2/u;

    .line 8
    .line 9
    iget-wide v1, p0, Landroidx/media3/exoplayer/i;->k:J

    .line 10
    .line 11
    sub-long/2addr p1, v1

    .line 12
    invoke-interface {v0, p1, p2}, Lf2/u;->skipData(J)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public synthetic c()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/v3;->a(Landroidx/media3/exoplayer/w3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic d(FF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/v3;->c(Landroidx/media3/exoplayer/w3;FF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final disable()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/i;->h:I

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
    invoke-static {v2}, Landroidx/media3/common/util/a;->g(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/i;->c:Landroidx/media3/exoplayer/s2;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/media3/exoplayer/s2;->a()V

    .line 15
    .line 16
    .line 17
    iput v1, p0, Landroidx/media3/exoplayer/i;->h:I

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Landroidx/media3/exoplayer/i;->i:Lf2/u;

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/media3/exoplayer/i;->j:[Landroidx/media3/common/r;

    .line 23
    .line 24
    iput-boolean v1, p0, Landroidx/media3/exoplayer/i;->n:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->C()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/i;->m:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/i;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p0, Landroidx/media3/exoplayer/i;->q:Landroidx/media3/exoplayer/y3$a;

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v1
.end method

.method public final g(Landroidx/media3/exoplayer/z3;[Landroidx/media3/common/r;Lf2/u;JZZJJLandroidx/media3/exoplayer/source/r$b;)V
    .locals 10

    .line 1
    move-object v8, p0

    .line 2
    move/from16 v9, p6

    .line 3
    .line 4
    iget v0, v8, Landroidx/media3/exoplayer/i;->h:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 13
    .line 14
    .line 15
    move-object v0, p1

    .line 16
    iput-object v0, v8, Landroidx/media3/exoplayer/i;->d:Landroidx/media3/exoplayer/z3;

    .line 17
    .line 18
    iput v1, v8, Landroidx/media3/exoplayer/i;->h:I

    .line 19
    .line 20
    move/from16 v0, p7

    .line 21
    .line 22
    invoke-virtual {p0, v9, v0}, Landroidx/media3/exoplayer/i;->D(ZZ)V

    .line 23
    .line 24
    .line 25
    move-object v0, p0

    .line 26
    move-object v1, p2

    .line 27
    move-object v2, p3

    .line 28
    move-wide/from16 v3, p8

    .line 29
    .line 30
    move-wide/from16 v5, p10

    .line 31
    .line 32
    move-object/from16 v7, p12

    .line 33
    .line 34
    invoke-virtual/range {v0 .. v7}, Landroidx/media3/exoplayer/i;->l([Landroidx/media3/common/r;Lf2/u;JJLandroidx/media3/exoplayer/source/r$b;)V

    .line 35
    .line 36
    .line 37
    move-wide/from16 v0, p8

    .line 38
    .line 39
    invoke-direct {p0, v0, v1, v9}, Landroidx/media3/exoplayer/i;->O(JZ)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final getCapabilities()Landroidx/media3/exoplayer/y3;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getMediaClock()Landroidx/media3/exoplayer/x2;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/i;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStream()Lf2/u;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/i;->i:Lf2/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/i;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/i;->m:J

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

.method public final i(ILx1/f4;Landroidx/media3/common/util/i;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/i;->e:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media3/exoplayer/i;->f:Lx1/f4;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/media3/exoplayer/i;->g:Landroidx/media3/common/util/i;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->E()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final isCurrentStreamFinal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/i;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public final l([Landroidx/media3/common/r;Lf2/u;JJLandroidx/media3/exoplayer/source/r$b;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/i;->n:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Landroidx/media3/exoplayer/i;->i:Lf2/u;

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/media3/exoplayer/i;->m:J

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
    iput-wide p3, p0, Landroidx/media3/exoplayer/i;->m:J

    .line 19
    .line 20
    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/i;->j:[Landroidx/media3/common/r;

    .line 21
    .line 22
    iput-wide p5, p0, Landroidx/media3/exoplayer/i;->k:J

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
    move-object v6, p7

    .line 29
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/i;->L([Landroidx/media3/common/r;JJLandroidx/media3/exoplayer/source/r$b;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public synthetic m(JJ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/v3;->b(Landroidx/media3/exoplayer/w3;JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method public final maybeThrowStreamError()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/i;->i:Lf2/u;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lf2/u;

    .line 8
    .line 9
    invoke-interface {v0}, Lf2/u;->maybeThrowError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final n(Landroidx/media3/common/e0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/i;->p:Landroidx/media3/common/e0;

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/media3/exoplayer/i;->p:Landroidx/media3/common/e0;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/i;->M(Landroidx/media3/common/e0;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final o(Landroidx/media3/exoplayer/y3$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/i;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/i;->q:Landroidx/media3/exoplayer/y3$a;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method

.method protected final q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/exoplayer/i;->r(Ljava/lang/Throwable;Landroidx/media3/common/r;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method protected final r(Ljava/lang/Throwable;Landroidx/media3/common/r;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 9

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/media3/exoplayer/i;->o:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroidx/media3/exoplayer/i;->o:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_0
    invoke-interface {p0, p2}, Landroidx/media3/exoplayer/y3;->a(Landroidx/media3/common/r;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Landroidx/media3/exoplayer/x3;->i(I)I

    .line 16
    .line 17
    .line 18
    move-result v1
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iput-boolean v0, p0, Landroidx/media3/exoplayer/i;->o:Z

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
    iput-boolean v0, p0, Landroidx/media3/exoplayer/i;->o:Z

    .line 25
    .line 26
    throw p1

    .line 27
    :catch_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/i;->o:Z

    .line 28
    .line 29
    :cond_0
    const/4 v1, 0x4

    .line 30
    goto :goto_0

    .line 31
    :goto_1
    invoke-interface {p0}, Landroidx/media3/exoplayer/w3;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->v()I

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
    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForRenderer(Ljava/lang/Throwable;Ljava/lang/String;ILandroidx/media3/common/r;IZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method public final release()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/i;->h:I

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
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->G()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/i;->h:I

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
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/i;->c:Landroidx/media3/exoplayer/s2;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/exoplayer/s2;->a()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->I()V

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
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/i;->O(JZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method protected final s()Landroidx/media3/common/util/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/i;->g:Landroidx/media3/common/util/i;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/common/util/i;

    .line 8
    .line 9
    return-object v0
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/i;->n:Z

    .line 3
    .line 4
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/i;->h:I

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
    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    iput v0, p0, Landroidx/media3/exoplayer/i;->h:I

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->J()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/i;->h:I

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
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 11
    .line 12
    .line 13
    iput v2, p0, Landroidx/media3/exoplayer/i;->h:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->K()V

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

.method protected final t()Landroidx/media3/exoplayer/z3;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/i;->d:Landroidx/media3/exoplayer/z3;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/z3;

    .line 8
    .line 9
    return-object v0
.end method

.method protected final u()Landroidx/media3/exoplayer/s2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/i;->c:Landroidx/media3/exoplayer/s2;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/s2;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/i;->c:Landroidx/media3/exoplayer/s2;

    .line 7
    .line 8
    return-object v0
.end method

.method protected final v()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/i;->e:I

    .line 2
    .line 3
    return v0
.end method

.method protected final w()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/i;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method protected final x()Lx1/f4;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/i;->f:Lx1/f4;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lx1/f4;

    .line 8
    .line 9
    return-object v0
.end method

.method protected final y()[Landroidx/media3/common/r;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/i;->j:[Landroidx/media3/common/r;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/media3/common/r;

    .line 8
    .line 9
    return-object v0
.end method

.method protected final z()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/i;->k:J

    .line 2
    .line 3
    return-wide v0
.end method
