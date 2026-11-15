.class final Landroidx/media3/exoplayer/video/x;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/x$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/video/x$a;

.field private final b:Landroidx/media3/exoplayer/video/u;

.field private final c:Landroidx/media3/exoplayer/video/u$a;

.field private final d:Landroidx/media3/common/util/o0;

.field private final e:Landroidx/media3/common/util/o0;

.field private final f:Landroidx/media3/common/util/w;

.field private g:J

.field private h:J

.field private i:J

.field private j:Landroidx/media3/common/m0;

.field private k:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/x$a;Landroidx/media3/exoplayer/video/u;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/video/x;->a:Landroidx/media3/exoplayer/video/x$a;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/video/x;->b:Landroidx/media3/exoplayer/video/u;

    .line 7
    .line 8
    new-instance p1, Landroidx/media3/exoplayer/video/u$a;

    .line 9
    .line 10
    invoke-direct {p1}, Landroidx/media3/exoplayer/video/u$a;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/video/x;->c:Landroidx/media3/exoplayer/video/u$a;

    .line 14
    .line 15
    new-instance p1, Landroidx/media3/common/util/o0;

    .line 16
    .line 17
    invoke-direct {p1}, Landroidx/media3/common/util/o0;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/media3/exoplayer/video/x;->d:Landroidx/media3/common/util/o0;

    .line 21
    .line 22
    new-instance p1, Landroidx/media3/common/util/o0;

    .line 23
    .line 24
    invoke-direct {p1}, Landroidx/media3/common/util/o0;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroidx/media3/exoplayer/video/x;->e:Landroidx/media3/common/util/o0;

    .line 28
    .line 29
    new-instance p1, Landroidx/media3/common/util/w;

    .line 30
    .line 31
    invoke-direct {p1}, Landroidx/media3/common/util/w;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Landroidx/media3/exoplayer/video/x;->f:Landroidx/media3/common/util/w;

    .line 35
    .line 36
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/x;->g:J

    .line 42
    .line 43
    sget-object v0, Landroidx/media3/common/m0;->e:Landroidx/media3/common/m0;

    .line 44
    .line 45
    iput-object v0, p0, Landroidx/media3/exoplayer/video/x;->j:Landroidx/media3/common/m0;

    .line 46
    .line 47
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/x;->h:J

    .line 48
    .line 49
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/x;->i:J

    .line 50
    .line 51
    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/x;->f:Landroidx/media3/common/util/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/w;->f()J

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/video/x;->a:Landroidx/media3/exoplayer/video/x$a;

    .line 7
    .line 8
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/x$a;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static c(Landroidx/media3/common/util/o0;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/o0;->l()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-lez v0, :cond_0

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
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    .line 12
    .line 13
    .line 14
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/o0;->l()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-le v0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/media3/common/util/o0;->i()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/o0;->i()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method private e(J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/x;->e:Landroidx/media3/common/util/o0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/o0;->j(J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Long;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/x;->k:J

    .line 16
    .line 17
    cmp-long p2, v0, v2

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/x;->k:J

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method private f(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/x;->d:Landroidx/media3/common/util/o0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/o0;->j(J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/media3/common/m0;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget-object p2, Landroidx/media3/common/m0;->e:Landroidx/media3/common/m0;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroidx/media3/common/m0;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    iget-object p2, p0, Landroidx/media3/exoplayer/video/x;->j:Landroidx/media3/common/m0;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroidx/media3/common/m0;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    iput-object p1, p0, Landroidx/media3/exoplayer/video/x;->j:Landroidx/media3/common/m0;

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method private k(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/x;->f:Landroidx/media3/common/util/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/w;->f()J

    .line 4
    .line 5
    .line 6
    move-result-wide v4

    .line 7
    invoke-direct {p0, v4, v5}, Landroidx/media3/exoplayer/video/x;->f(J)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/exoplayer/video/x;->a:Landroidx/media3/exoplayer/video/x$a;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/media3/exoplayer/video/x;->j:Landroidx/media3/common/m0;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/video/x$a;->onVideoSizeChanged(Landroidx/media3/common/m0;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const-wide/16 v0, -0x1

    .line 23
    .line 24
    :goto_0
    move-wide v2, v0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/video/x;->c:Landroidx/media3/exoplayer/video/u$a;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/u$a;->g()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/video/x;->a:Landroidx/media3/exoplayer/video/x$a;

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/media3/exoplayer/video/x;->b:Landroidx/media3/exoplayer/video/u;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/u;->i()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-interface/range {v1 .. v6}, Landroidx/media3/exoplayer/video/x$a;->b(JJZ)V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/x;->f:Landroidx/media3/common/util/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/w;->b()V

    .line 4
    .line 5
    .line 6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/x;->g:J

    .line 12
    .line 13
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/x;->h:J

    .line 14
    .line 15
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/x;->i:J

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/video/x;->e:Landroidx/media3/common/util/o0;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/media3/common/util/o0;->l()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/media3/exoplayer/video/x;->e:Landroidx/media3/common/util/o0;

    .line 28
    .line 29
    invoke-static {v0}, Landroidx/media3/exoplayer/video/x;->c(Landroidx/media3/common/util/o0;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Long;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Landroidx/media3/exoplayer/video/x;->e:Landroidx/media3/common/util/o0;

    .line 39
    .line 40
    invoke-virtual {v3, v1, v2, v0}, Landroidx/media3/common/util/o0;->a(JLjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/x;->d:Landroidx/media3/common/util/o0;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/media3/common/util/o0;->l()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-lez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/media3/exoplayer/video/x;->d:Landroidx/media3/common/util/o0;

    .line 52
    .line 53
    invoke-static {v0}, Landroidx/media3/exoplayer/video/x;->c(Landroidx/media3/common/util/o0;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroidx/media3/common/m0;

    .line 58
    .line 59
    iget-object v3, p0, Landroidx/media3/exoplayer/video/x;->d:Landroidx/media3/common/util/o0;

    .line 60
    .line 61
    invoke-virtual {v3, v1, v2, v0}, Landroidx/media3/common/util/o0;->a(JLjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method public d()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/x;->i:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/x;->h:J

    .line 13
    .line 14
    cmp-long v0, v2, v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
.end method

.method public g(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/x;->f:Landroidx/media3/common/util/w;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/w;->a(J)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/x;->g:J

    .line 7
    .line 8
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/x;->i:J

    .line 14
    .line 15
    return-void
.end method

.method public h(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/x;->e:Landroidx/media3/common/util/o0;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/media3/exoplayer/video/x;->g:J

    .line 4
    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v3, v1, v3

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/16 v3, 0x1

    .line 18
    .line 19
    add-long/2addr v1, v3

    .line 20
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, v1, v2, p1}, Landroidx/media3/common/util/o0;->a(JLjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public i(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/x;->d:Landroidx/media3/common/util/o0;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/media3/exoplayer/video/x;->g:J

    .line 4
    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v3, v1, v3

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/16 v3, 0x1

    .line 18
    .line 19
    add-long/2addr v1, v3

    .line 20
    :goto_0
    new-instance v3, Landroidx/media3/common/m0;

    .line 21
    .line 22
    invoke-direct {v3, p1, p2}, Landroidx/media3/common/m0;-><init>(II)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/common/util/o0;->a(JLjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public j(JJ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :goto_0
    iget-object v1, v0, Landroidx/media3/exoplayer/video/x;->f:Landroidx/media3/common/util/w;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/media3/common/util/w;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_6

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/media3/exoplayer/video/x;->f:Landroidx/media3/common/util/w;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/media3/common/util/w;->d()J

    .line 14
    .line 15
    .line 16
    move-result-wide v14

    .line 17
    invoke-direct {v0, v14, v15}, Landroidx/media3/exoplayer/video/x;->e(J)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, v0, Landroidx/media3/exoplayer/video/x;->b:Landroidx/media3/exoplayer/video/u;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/u;->j()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v2, v0, Landroidx/media3/exoplayer/video/x;->b:Landroidx/media3/exoplayer/video/u;

    .line 29
    .line 30
    iget-wide v9, v0, Landroidx/media3/exoplayer/video/x;->k:J

    .line 31
    .line 32
    const/4 v12, 0x0

    .line 33
    iget-object v13, v0, Landroidx/media3/exoplayer/video/x;->c:Landroidx/media3/exoplayer/video/u$a;

    .line 34
    .line 35
    const/4 v11, 0x0

    .line 36
    move-wide v3, v14

    .line 37
    move-wide/from16 v5, p1

    .line 38
    .line 39
    move-wide/from16 v7, p3

    .line 40
    .line 41
    invoke-virtual/range {v2 .. v13}, Landroidx/media3/exoplayer/video/u;->c(JJJJZZLandroidx/media3/exoplayer/video/u$a;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v2, 0x1

    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    if-eq v1, v2, :cond_4

    .line 49
    .line 50
    const/4 v2, 0x2

    .line 51
    if-eq v1, v2, :cond_3

    .line 52
    .line 53
    const/4 v2, 0x3

    .line 54
    if-eq v1, v2, :cond_3

    .line 55
    .line 56
    const/4 v2, 0x4

    .line 57
    if-eq v1, v2, :cond_2

    .line 58
    .line 59
    const/4 v2, 0x5

    .line 60
    if-ne v1, v2, :cond_1

    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v2

    .line 73
    :cond_2
    iput-wide v14, v0, Landroidx/media3/exoplayer/video/x;->h:J

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    iput-wide v14, v0, Landroidx/media3/exoplayer/video/x;->h:J

    .line 77
    .line 78
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/video/x;->a()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    iput-wide v14, v0, Landroidx/media3/exoplayer/video/x;->h:J

    .line 83
    .line 84
    if-nez v1, :cond_5

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    const/4 v2, 0x0

    .line 88
    :goto_1
    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/video/x;->k(Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_6
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/x;->g:J

    .line 2
    .line 3
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/x;->i:J

    .line 4
    .line 5
    return-void
.end method
