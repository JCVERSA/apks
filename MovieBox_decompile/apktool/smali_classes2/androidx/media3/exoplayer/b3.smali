.class final Landroidx/media3/exoplayer/b3;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroidx/media3/common/e0$b;

.field private final b:Landroidx/media3/common/e0$c;

.field private final c:Lx1/a;

.field private final d:Landroidx/media3/common/util/p;

.field private final e:Landroidx/media3/exoplayer/y2$a;

.field private f:J

.field private g:I

.field private h:Z

.field private i:Landroidx/media3/exoplayer/ExoPlayer$c;

.field private j:Landroidx/media3/exoplayer/y2;

.field private k:Landroidx/media3/exoplayer/y2;

.field private l:Landroidx/media3/exoplayer/y2;

.field private m:Landroidx/media3/exoplayer/y2;

.field private n:Landroidx/media3/exoplayer/y2;

.field private o:I

.field private p:Ljava/lang/Object;

.field private q:J

.field private r:Ljava/util/List;


# direct methods
.method public constructor <init>(Lx1/a;Landroidx/media3/common/util/p;Landroidx/media3/exoplayer/y2$a;Landroidx/media3/exoplayer/ExoPlayer$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/b3;->c:Lx1/a;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/b3;->d:Landroidx/media3/common/util/p;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/b3;->e:Landroidx/media3/exoplayer/y2$a;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/exoplayer/b3;->i:Landroidx/media3/exoplayer/ExoPlayer$c;

    .line 11
    .line 12
    new-instance p1, Landroidx/media3/common/e0$b;

    .line 13
    .line 14
    invoke-direct {p1}, Landroidx/media3/common/e0$b;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 18
    .line 19
    new-instance p1, Landroidx/media3/common/e0$c;

    .line 20
    .line 21
    invoke-direct {p1}, Landroidx/media3/common/e0$c;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    .line 25
    .line 26
    new-instance p1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    .line 32
    .line 33
    return-void
.end method

.method private A(Ljava/lang/Object;Landroidx/media3/common/e0;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 2
    .line 3
    invoke-virtual {p2, p1, v0}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/media3/common/e0$b;->c()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object p2, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/media3/common/e0$b;->p()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-lez p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Landroidx/media3/common/e0$b;->s(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    if-gt p1, v0, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroidx/media3/common/e0$b;->f(I)J

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    const-wide/high16 v1, -0x8000000000000000L

    .line 37
    .line 38
    cmp-long p1, p1, v1

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    :cond_1
    :goto_0
    return v0
.end method

.method private C(Landroidx/media3/exoplayer/source/r$b;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget p1, p1, Landroidx/media3/exoplayer/source/r$b;->e:I

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return p1
.end method

.method private D(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;Z)Z
    .locals 6

    .line 1
    iget-object p2, p2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object p2, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 8
    .line 9
    invoke-virtual {p1, v1, p2}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget p2, p2, Landroidx/media3/common/e0$b;->c:I

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-boolean p2, p2, Landroidx/media3/common/e0$c;->i:Z

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 26
    .line 27
    iget-object v3, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    .line 28
    .line 29
    iget v4, p0, Landroidx/media3/exoplayer/b3;->g:I

    .line 30
    .line 31
    iget-boolean v5, p0, Landroidx/media3/exoplayer/b3;->h:Z

    .line 32
    .line 33
    move-object v0, p1

    .line 34
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/e0;->r(ILandroidx/media3/common/e0$b;Landroidx/media3/common/e0$c;IZ)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    if-eqz p3, :cond_0

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    :goto_0
    return p1
.end method

.method private E(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Z
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/b3;->C(Landroidx/media3/exoplayer/source/r$b;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 12
    .line 13
    invoke-virtual {p1, v0, v2}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroidx/media3/common/e0$b;->c:I

    .line 18
    .line 19
    iget-object p2, p2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iget-object v2, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    .line 26
    .line 27
    invoke-virtual {p1, v0, v2}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget p1, p1, Landroidx/media3/common/e0$c;->o:I

    .line 32
    .line 33
    if-ne p1, p2, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    :cond_1
    return v1
.end method

.method private static H(Landroidx/media3/common/e0$b;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/e0$b;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/media3/common/e0$b;->r(I)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_5

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/e0$b;->p()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {p0, v3}, Landroidx/media3/common/e0$b;->s(I)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_5

    .line 26
    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    invoke-virtual {p0, v3, v4}, Landroidx/media3/common/e0$b;->e(J)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/4 v6, -0x1

    .line 34
    if-eq v5, v6, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    iget-wide v5, p0, Landroidx/media3/common/e0$b;->d:J

    .line 38
    .line 39
    cmp-long v5, v5, v3

    .line 40
    .line 41
    if-nez v5, :cond_2

    .line 42
    .line 43
    return v2

    .line 44
    :cond_2
    add-int/lit8 v5, v0, -0x1

    .line 45
    .line 46
    invoke-virtual {p0, v5}, Landroidx/media3/common/e0$b;->r(I)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_3

    .line 51
    .line 52
    const/4 v5, 0x2

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    move v5, v2

    .line 55
    :goto_0
    sub-int/2addr v0, v5

    .line 56
    move v5, v1

    .line 57
    :goto_1
    if-gt v5, v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0, v5}, Landroidx/media3/common/e0$b;->i(I)J

    .line 60
    .line 61
    .line 62
    move-result-wide v6

    .line 63
    add-long/2addr v3, v6

    .line 64
    add-int/lit8 v5, v5, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    iget-wide v5, p0, Landroidx/media3/common/e0$b;->d:J

    .line 68
    .line 69
    cmp-long p0, v5, v3

    .line 70
    .line 71
    if-gtz p0, :cond_5

    .line 72
    .line 73
    move v1, v2

    .line 74
    :cond_5
    :goto_2
    return v1
.end method

.method private synthetic I(Lcom/google/common/collect/ImmutableList$a;Landroidx/media3/exoplayer/source/r$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->c:Lx1/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1, p2}, Lx1/a;->q(Ljava/util/List;Landroidx/media3/exoplayer/source/r$b;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private K()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    .line 6
    .line 7
    :goto_0
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v2, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 10
    .line 11
    iget-object v2, v2, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget-object v1, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 28
    .line 29
    iget-object v1, v1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 30
    .line 31
    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/b3;->d:Landroidx/media3/common/util/p;

    .line 32
    .line 33
    new-instance v3, Landroidx/media3/exoplayer/a3;

    .line 34
    .line 35
    invoke-direct {v3, p0, v0, v1}, Landroidx/media3/exoplayer/a3;-><init>(Landroidx/media3/exoplayer/b3;Lcom/google/common/collect/ImmutableList$a;Landroidx/media3/exoplayer/source/r$b;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v2, v3}, Landroidx/media3/common/util/p;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private M(Ljava/util/List;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/media3/exoplayer/y2;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->x()V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Landroidx/media3/exoplayer/b3;->n:Landroidx/media3/exoplayer/y2;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/media3/exoplayer/b3;->J()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private P(Landroidx/media3/exoplayer/z2;)Landroidx/media3/exoplayer/y2;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/media3/exoplayer/y2;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/y2;->d(Landroidx/media3/exoplayer/z2;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroidx/media3/exoplayer/y2;

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    return-object p1
.end method

.method private static Q(Landroidx/media3/common/e0;Ljava/lang/Object;JJLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroidx/media3/exoplayer/source/r$b;
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p7}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 2
    .line 3
    .line 4
    iget v0, p7, Landroidx/media3/common/e0$b;->c:I

    .line 5
    .line 6
    invoke-virtual {p0, v0, p6}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    move-object v2, p1

    .line 14
    :goto_0
    invoke-static {p7}, Landroidx/media3/exoplayer/b3;->H(Landroidx/media3/common/e0$b;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget p1, p6, Landroidx/media3/common/e0$c;->o:I

    .line 21
    .line 22
    if-gt v0, p1, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, v0, p7, p1}, Landroidx/media3/common/e0;->g(ILandroidx/media3/common/e0$b;Z)Landroidx/media3/common/e0$b;

    .line 26
    .line 27
    .line 28
    iget-object p1, p7, Landroidx/media3/common/e0$b;->b:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0, v2, p7}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p7, p2, p3}, Landroidx/media3/common/e0$b;->e(J)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const/4 p0, -0x1

    .line 45
    if-ne v3, p0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p7, p2, p3}, Landroidx/media3/common/e0$b;->d(J)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    new-instance p1, Landroidx/media3/exoplayer/source/r$b;

    .line 52
    .line 53
    invoke-direct {p1, v2, p4, p5, p0}, Landroidx/media3/exoplayer/source/r$b;-><init>(Ljava/lang/Object;JI)V

    .line 54
    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_1
    invoke-virtual {p7, v3}, Landroidx/media3/common/e0$b;->l(I)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    new-instance p0, Landroidx/media3/exoplayer/source/r$b;

    .line 62
    .line 63
    move-object v1, p0

    .line 64
    move-wide v5, p4

    .line 65
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/r$b;-><init>(Ljava/lang/Object;IIJ)V

    .line 66
    .line 67
    .line 68
    return-object p0
.end method

.method private S(Landroidx/media3/common/e0;Ljava/lang/Object;)J
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroidx/media3/common/e0$b;->c:I

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->p:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 21
    .line 22
    invoke-virtual {p1, v1, v3}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget v1, v1, Landroidx/media3/common/e0$b;->c:I

    .line 27
    .line 28
    if-ne v1, v0, :cond_0

    .line 29
    .line 30
    iget-wide p1, p0, Landroidx/media3/exoplayer/b3;->q:J

    .line 31
    .line 32
    return-wide p1

    .line 33
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    .line 34
    .line 35
    :goto_0
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object v3, v1, Landroidx/media3/exoplayer/y2;->b:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    iget-object p1, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 46
    .line 47
    iget-object p1, p1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 48
    .line 49
    iget-wide p1, p1, Landroidx/media3/exoplayer/source/r$b;->d:J

    .line 50
    .line 51
    return-wide p1

    .line 52
    :cond_1
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    .line 58
    .line 59
    :goto_1
    if-eqz v1, :cond_4

    .line 60
    .line 61
    iget-object v3, v1, Landroidx/media3/exoplayer/y2;->b:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-virtual {p1, v3}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eq v3, v2, :cond_3

    .line 68
    .line 69
    iget-object v4, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 70
    .line 71
    invoke-virtual {p1, v3, v4}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iget v3, v3, Landroidx/media3/common/e0$b;->c:I

    .line 76
    .line 77
    if-ne v3, v0, :cond_3

    .line 78
    .line 79
    iget-object p1, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 80
    .line 81
    iget-object p1, p1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 82
    .line 83
    iget-wide p1, p1, Landroidx/media3/exoplayer/source/r$b;->d:J

    .line 84
    .line 85
    return-wide p1

    .line 86
    :cond_3
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/b3;->T(Ljava/lang/Object;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v0

    .line 95
    const-wide/16 v2, -0x1

    .line 96
    .line 97
    cmp-long p1, v0, v2

    .line 98
    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    return-wide v0

    .line 102
    :cond_5
    iget-wide v0, p0, Landroidx/media3/exoplayer/b3;->f:J

    .line 103
    .line 104
    const-wide/16 v2, 0x1

    .line 105
    .line 106
    add-long/2addr v2, v0

    .line 107
    iput-wide v2, p0, Landroidx/media3/exoplayer/b3;->f:J

    .line 108
    .line 109
    iget-object p1, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    .line 110
    .line 111
    if-nez p1, :cond_6

    .line 112
    .line 113
    iput-object p2, p0, Landroidx/media3/exoplayer/b3;->p:Ljava/lang/Object;

    .line 114
    .line 115
    iput-wide v0, p0, Landroidx/media3/exoplayer/b3;->q:J

    .line 116
    .line 117
    :cond_6
    return-wide v0
.end method

.method private T(Ljava/lang/Object;)J
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/media3/exoplayer/y2;

    .line 17
    .line 18
    iget-object v2, v1, Landroidx/media3/exoplayer/y2;->b:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object p1, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 27
    .line 28
    iget-object p1, p1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 29
    .line 30
    iget-wide v0, p1, Landroidx/media3/exoplayer/source/r$b;->d:J

    .line 31
    .line 32
    return-wide v0

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-wide/16 v0, -0x1

    .line 37
    .line 38
    return-wide v0
.end method

.method private V(Landroidx/media3/common/e0;)I
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->b:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    move v2, v1

    .line 14
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 15
    .line 16
    iget-object v4, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    .line 17
    .line 18
    iget v5, p0, Landroidx/media3/exoplayer/b3;->g:I

    .line 19
    .line 20
    iget-boolean v6, p0, Landroidx/media3/exoplayer/b3;->h:Z

    .line 21
    .line 22
    move-object v1, p1

    .line 23
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/e0;->d(ILandroidx/media3/common/e0$b;Landroidx/media3/common/e0$c;IZ)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroidx/media3/exoplayer/y2;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 40
    .line 41
    iget-boolean v1, v1, Landroidx/media3/exoplayer/z2;->h:Z

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const/4 v3, -0x1

    .line 55
    if-eq v2, v3, :cond_4

    .line 56
    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    iget-object v3, v1, Landroidx/media3/exoplayer/y2;->b:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-virtual {p1, v3}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eq v3, v2, :cond_3

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    move-object v0, v1

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iget-object v2, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 76
    .line 77
    invoke-virtual {p0, p1, v2}, Landroidx/media3/exoplayer/b3;->z(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/z2;)Landroidx/media3/exoplayer/z2;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 82
    .line 83
    return v1
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/b3;Lcom/google/common/collect/ImmutableList$a;Landroidx/media3/exoplayer/source/r$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/b3;->I(Lcom/google/common/collect/ImmutableList$a;Landroidx/media3/exoplayer/source/r$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static e(JJ)Z
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v0, p0, v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    cmp-long p0, p0, p2

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 18
    :goto_1
    return p0
.end method

.method private f(Landroidx/media3/exoplayer/z2;Landroidx/media3/exoplayer/z2;)Z
    .locals 4

    .line 1
    iget-wide v0, p1, Landroidx/media3/exoplayer/z2;->b:J

    .line 2
    .line 3
    iget-wide v2, p2, Landroidx/media3/exoplayer/z2;->b:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 10
    .line 11
    iget-object p2, p2, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method private i(Landroidx/media3/common/e0;Ljava/lang/Object;J)Landroid/util/Pair;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget p2, p2, Landroidx/media3/common/e0$b;->c:I

    .line 8
    .line 9
    iget v0, p0, Landroidx/media3/exoplayer/b3;->g:I

    .line 10
    .line 11
    iget-boolean v1, p0, Landroidx/media3/exoplayer/b3;->h:Z

    .line 12
    .line 13
    invoke-virtual {p1, p2, v0, v1}, Landroidx/media3/common/e0;->e(IIZ)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    const/4 p2, -0x1

    .line 18
    if-eq v5, p2, :cond_0

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    .line 21
    .line 22
    iget-object v4, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 23
    .line 24
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    move-object v2, p1

    .line 30
    move-wide v8, p3

    .line 31
    invoke-virtual/range {v2 .. v9}, Landroidx/media3/common/e0;->k(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJJ)Landroid/util/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    :goto_0
    return-object p1
.end method

.method private j(Landroidx/media3/exoplayer/r3;)Landroidx/media3/exoplayer/z2;
    .locals 7

    .line 1
    iget-object v1, p1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 2
    .line 3
    iget-object v2, p1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    iget-wide v3, p1, Landroidx/media3/exoplayer/r3;->c:J

    .line 6
    .line 7
    iget-wide v5, p1, Landroidx/media3/exoplayer/r3;->s:J

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/b3;->o(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JJ)Landroidx/media3/exoplayer/z2;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method private k(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/y2;J)Landroidx/media3/exoplayer/z2;
    .locals 20

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v14, p2

    .line 6
    .line 7
    iget-object v15, v14, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 8
    .line 9
    iget-object v0, v15, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v6, v0}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, v7, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 18
    .line 19
    iget-object v3, v7, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    .line 20
    .line 21
    iget v4, v7, Landroidx/media3/exoplayer/b3;->g:I

    .line 22
    .line 23
    iget-boolean v5, v7, Landroidx/media3/exoplayer/b3;->h:Z

    .line 24
    .line 25
    move-object/from16 v0, p1

    .line 26
    .line 27
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/e0;->d(ILandroidx/media3/common/e0$b;Landroidx/media3/common/e0$c;IZ)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, -0x1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    return-object v2

    .line 36
    :cond_0
    iget-object v1, v7, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-virtual {v6, v0, v1, v3}, Landroidx/media3/common/e0;->g(ILandroidx/media3/common/e0$b;Z)Landroidx/media3/common/e0$b;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget v11, v1, Landroidx/media3/common/e0$b;->c:I

    .line 44
    .line 45
    iget-object v1, v7, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 46
    .line 47
    iget-object v1, v1, Landroidx/media3/common/e0$b;->b:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v3, v15, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 54
    .line 55
    iget-wide v3, v3, Landroidx/media3/exoplayer/source/r$b;->d:J

    .line 56
    .line 57
    iget-object v5, v7, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    .line 58
    .line 59
    invoke-virtual {v6, v11, v5}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    iget v5, v5, Landroidx/media3/common/e0$c;->n:I

    .line 64
    .line 65
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    const-wide/16 v8, 0x0

    .line 71
    .line 72
    if-ne v5, v0, :cond_4

    .line 73
    .line 74
    iget-object v0, v7, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    .line 75
    .line 76
    iget-object v10, v7, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 77
    .line 78
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    move-wide/from16 v3, p3

    .line 84
    .line 85
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    move-object/from16 v8, p1

    .line 90
    .line 91
    move-object v9, v0

    .line 92
    move-object v0, v15

    .line 93
    move-wide v14, v3

    .line 94
    invoke-virtual/range {v8 .. v15}, Landroidx/media3/common/e0;->k(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJJ)Landroid/util/Pair;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-nez v1, :cond_1

    .line 99
    .line 100
    return-object v2

    .line 101
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 102
    .line 103
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v1, Ljava/lang/Long;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v8

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-eqz v1, :cond_3

    .line 116
    .line 117
    iget-object v3, v1, Landroidx/media3/exoplayer/y2;->b:Ljava/lang/Object;

    .line 118
    .line 119
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_3

    .line 124
    .line 125
    iget-object v1, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 126
    .line 127
    iget-object v1, v1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 128
    .line 129
    iget-wide v3, v1, Landroidx/media3/exoplayer/source/r$b;->d:J

    .line 130
    .line 131
    :cond_2
    :goto_0
    move-wide v12, v3

    .line 132
    move-wide/from16 v3, v16

    .line 133
    .line 134
    move-wide/from16 v18, v8

    .line 135
    .line 136
    move-object v9, v2

    .line 137
    move-wide/from16 v1, v18

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    invoke-direct {v7, v2}, Landroidx/media3/exoplayer/b3;->T(Ljava/lang/Object;)J

    .line 141
    .line 142
    .line 143
    move-result-wide v3

    .line 144
    const-wide/16 v10, -0x1

    .line 145
    .line 146
    cmp-long v1, v3, v10

    .line 147
    .line 148
    if-nez v1, :cond_2

    .line 149
    .line 150
    iget-wide v3, v7, Landroidx/media3/exoplayer/b3;->f:J

    .line 151
    .line 152
    const-wide/16 v10, 0x1

    .line 153
    .line 154
    add-long/2addr v10, v3

    .line 155
    iput-wide v10, v7, Landroidx/media3/exoplayer/b3;->f:J

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_4
    move-object v0, v15

    .line 159
    move-wide v12, v3

    .line 160
    move-wide v3, v8

    .line 161
    move-object v9, v1

    .line 162
    move-wide v1, v3

    .line 163
    :goto_1
    iget-object v14, v7, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    .line 164
    .line 165
    iget-object v15, v7, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 166
    .line 167
    move-object/from16 v8, p1

    .line 168
    .line 169
    move-wide v10, v1

    .line 170
    invoke-static/range {v8 .. v15}, Landroidx/media3/exoplayer/b3;->Q(Landroidx/media3/common/e0;Ljava/lang/Object;JJLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroidx/media3/exoplayer/source/r$b;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    cmp-long v8, v3, v16

    .line 175
    .line 176
    if-eqz v8, :cond_5

    .line 177
    .line 178
    iget-wide v8, v0, Landroidx/media3/exoplayer/z2;->c:J

    .line 179
    .line 180
    cmp-long v8, v8, v16

    .line 181
    .line 182
    if-eqz v8, :cond_5

    .line 183
    .line 184
    iget-object v8, v0, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 185
    .line 186
    iget-object v8, v8, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 187
    .line 188
    invoke-direct {v7, v8, v6}, Landroidx/media3/exoplayer/b3;->A(Ljava/lang/Object;Landroidx/media3/common/e0;)Z

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    if-eqz v9, :cond_6

    .line 197
    .line 198
    if-eqz v8, :cond_6

    .line 199
    .line 200
    iget-wide v3, v0, Landroidx/media3/exoplayer/z2;->c:J

    .line 201
    .line 202
    :cond_5
    move-wide v8, v1

    .line 203
    goto :goto_2

    .line 204
    :cond_6
    if-eqz v8, :cond_5

    .line 205
    .line 206
    iget-wide v0, v0, Landroidx/media3/exoplayer/z2;->c:J

    .line 207
    .line 208
    move-wide v8, v0

    .line 209
    :goto_2
    move-object/from16 v0, p0

    .line 210
    .line 211
    move-object/from16 v1, p1

    .line 212
    .line 213
    move-object v2, v5

    .line 214
    move-wide v5, v8

    .line 215
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/b3;->o(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JJ)Landroidx/media3/exoplayer/z2;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    return-object v0
.end method

.method private l(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/y2;J)Landroidx/media3/exoplayer/z2;
    .locals 5

    .line 1
    iget-object v0, p2, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/media3/exoplayer/y2;->m()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-wide v3, v0, Landroidx/media3/exoplayer/z2;->e:J

    .line 8
    .line 9
    add-long/2addr v1, v3

    .line 10
    sub-long/2addr v1, p3

    .line 11
    iget-boolean p3, v0, Landroidx/media3/exoplayer/z2;->h:Z

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/media3/exoplayer/b3;->k(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/y2;J)Landroidx/media3/exoplayer/z2;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/media3/exoplayer/b3;->m(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/y2;J)Landroidx/media3/exoplayer/z2;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    return-object p1
.end method

.method private m(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/y2;J)Landroidx/media3/exoplayer/z2;
    .locals 15

    .line 1
    move-object v10, p0

    .line 2
    move-object/from16 v8, p1

    .line 3
    .line 4
    move-object/from16 v0, p2

    .line 5
    .line 6
    iget-object v9, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 7
    .line 8
    iget-object v11, v9, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 9
    .line 10
    iget-object v1, v11, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v2, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 13
    .line 14
    invoke-virtual {v8, v1, v2}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 15
    .line 16
    .line 17
    iget-boolean v12, v9, Landroidx/media3/exoplayer/z2;->g:Z

    .line 18
    .line 19
    invoke-virtual {v11}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, -0x1

    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    iget v3, v11, Landroidx/media3/exoplayer/source/r$b;->b:I

    .line 27
    .line 28
    iget-object v0, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroidx/media3/common/e0$b;->a(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v13, 0x0

    .line 35
    if-ne v0, v2, :cond_0

    .line 36
    .line 37
    return-object v13

    .line 38
    :cond_0
    iget-object v1, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 39
    .line 40
    iget v2, v11, Landroidx/media3/exoplayer/source/r$b;->c:I

    .line 41
    .line 42
    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/e0$b;->m(II)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-ge v4, v0, :cond_1

    .line 47
    .line 48
    iget-object v2, v11, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 49
    .line 50
    iget-wide v5, v9, Landroidx/media3/exoplayer/z2;->c:J

    .line 51
    .line 52
    iget-wide v13, v11, Landroidx/media3/exoplayer/source/r$b;->d:J

    .line 53
    .line 54
    move-object v0, p0

    .line 55
    move-object/from16 v1, p1

    .line 56
    .line 57
    move-wide v7, v13

    .line 58
    move v9, v12

    .line 59
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/b3;->p(Landroidx/media3/common/e0;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/z2;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0

    .line 64
    :cond_1
    iget-wide v0, v9, Landroidx/media3/exoplayer/z2;->c:J

    .line 65
    .line 66
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    cmp-long v2, v0, v2

    .line 72
    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    iget-object v1, v10, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    .line 76
    .line 77
    iget-object v2, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 78
    .line 79
    iget v3, v2, Landroidx/media3/common/e0$b;->c:I

    .line 80
    .line 81
    const-wide/16 v4, 0x0

    .line 82
    .line 83
    move-wide/from16 v6, p3

    .line 84
    .line 85
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 86
    .line 87
    .line 88
    move-result-wide v6

    .line 89
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    move-object/from16 v0, p1

    .line 95
    .line 96
    invoke-virtual/range {v0 .. v7}, Landroidx/media3/common/e0;->k(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJJ)Landroid/util/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-nez v0, :cond_2

    .line 101
    .line 102
    return-object v13

    .line 103
    :cond_2
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Ljava/lang/Long;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    :cond_3
    iget-object v2, v11, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 112
    .line 113
    iget v3, v11, Landroidx/media3/exoplayer/source/r$b;->b:I

    .line 114
    .line 115
    invoke-direct {p0, v8, v2, v3}, Landroidx/media3/exoplayer/b3;->s(Landroidx/media3/common/e0;Ljava/lang/Object;I)J

    .line 116
    .line 117
    .line 118
    move-result-wide v2

    .line 119
    iget-object v4, v11, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 120
    .line 121
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 122
    .line 123
    .line 124
    move-result-wide v5

    .line 125
    iget-wide v13, v9, Landroidx/media3/exoplayer/z2;->c:J

    .line 126
    .line 127
    iget-wide v2, v11, Landroidx/media3/exoplayer/source/r$b;->d:J

    .line 128
    .line 129
    move-object v0, p0

    .line 130
    move-object/from16 v1, p1

    .line 131
    .line 132
    move-wide v7, v2

    .line 133
    move-object v2, v4

    .line 134
    move-wide v3, v5

    .line 135
    move-wide v5, v13

    .line 136
    move v9, v12

    .line 137
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/b3;->q(Landroidx/media3/common/e0;Ljava/lang/Object;JJJZ)Landroidx/media3/exoplayer/z2;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    return-object v0

    .line 142
    :cond_4
    move-wide/from16 v6, p3

    .line 143
    .line 144
    iget v1, v11, Landroidx/media3/exoplayer/source/r$b;->e:I

    .line 145
    .line 146
    if-eq v1, v2, :cond_5

    .line 147
    .line 148
    iget-object v2, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 149
    .line 150
    invoke-virtual {v2, v1}, Landroidx/media3/common/e0$b;->r(I)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_5

    .line 155
    .line 156
    invoke-direct/range {p0 .. p4}, Landroidx/media3/exoplayer/b3;->k(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/y2;J)Landroidx/media3/exoplayer/z2;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    return-object v0

    .line 161
    :cond_5
    iget-object v0, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 162
    .line 163
    iget v1, v11, Landroidx/media3/exoplayer/source/r$b;->e:I

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroidx/media3/common/e0$b;->l(I)I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    iget-object v0, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 170
    .line 171
    iget v1, v11, Landroidx/media3/exoplayer/source/r$b;->e:I

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroidx/media3/common/e0$b;->s(I)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_6

    .line 178
    .line 179
    iget-object v0, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 180
    .line 181
    iget v1, v11, Landroidx/media3/exoplayer/source/r$b;->e:I

    .line 182
    .line 183
    invoke-virtual {v0, v1, v4}, Landroidx/media3/common/e0$b;->h(II)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    const/4 v1, 0x3

    .line 188
    if-ne v0, v1, :cond_6

    .line 189
    .line 190
    const/4 v0, 0x1

    .line 191
    goto :goto_0

    .line 192
    :cond_6
    const/4 v0, 0x0

    .line 193
    :goto_0
    iget-object v1, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 194
    .line 195
    iget v2, v11, Landroidx/media3/exoplayer/source/r$b;->e:I

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Landroidx/media3/common/e0$b;->a(I)I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-eq v4, v1, :cond_8

    .line 202
    .line 203
    if-eqz v0, :cond_7

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_7
    iget-object v2, v11, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 207
    .line 208
    iget v3, v11, Landroidx/media3/exoplayer/source/r$b;->e:I

    .line 209
    .line 210
    iget-wide v5, v9, Landroidx/media3/exoplayer/z2;->e:J

    .line 211
    .line 212
    iget-wide v13, v11, Landroidx/media3/exoplayer/source/r$b;->d:J

    .line 213
    .line 214
    move-object v0, p0

    .line 215
    move-object/from16 v1, p1

    .line 216
    .line 217
    move-wide v7, v13

    .line 218
    move v9, v12

    .line 219
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/b3;->p(Landroidx/media3/common/e0;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/z2;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    return-object v0

    .line 224
    :cond_8
    :goto_1
    iget-object v0, v11, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 225
    .line 226
    iget v1, v11, Landroidx/media3/exoplayer/source/r$b;->e:I

    .line 227
    .line 228
    invoke-direct {p0, v8, v0, v1}, Landroidx/media3/exoplayer/b3;->s(Landroidx/media3/common/e0;Ljava/lang/Object;I)J

    .line 229
    .line 230
    .line 231
    move-result-wide v3

    .line 232
    iget-object v2, v11, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 233
    .line 234
    iget-wide v5, v9, Landroidx/media3/exoplayer/z2;->e:J

    .line 235
    .line 236
    iget-wide v11, v11, Landroidx/media3/exoplayer/source/r$b;->d:J

    .line 237
    .line 238
    const/4 v9, 0x0

    .line 239
    move-object v0, p0

    .line 240
    move-object/from16 v1, p1

    .line 241
    .line 242
    move-wide v7, v11

    .line 243
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/b3;->q(Landroidx/media3/common/e0;Ljava/lang/Object;JJJZ)Landroidx/media3/exoplayer/z2;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    return-object v0
.end method

.method private o(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JJ)Landroidx/media3/exoplayer/z2;
    .locals 13

    .line 1
    move-object v0, p2

    .line 2
    iget-object v1, v0, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 3
    .line 4
    move-object v12, p0

    .line 5
    iget-object v2, v12, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 6
    .line 7
    move-object v3, p1

    .line 8
    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v4, v0, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 18
    .line 19
    iget v5, v0, Landroidx/media3/exoplayer/source/r$b;->b:I

    .line 20
    .line 21
    iget v6, v0, Landroidx/media3/exoplayer/source/r$b;->c:I

    .line 22
    .line 23
    iget-wide v9, v0, Landroidx/media3/exoplayer/source/r$b;->d:J

    .line 24
    .line 25
    const/4 v11, 0x0

    .line 26
    move-object v2, p0

    .line 27
    move-object v3, p1

    .line 28
    move-wide/from16 v7, p3

    .line 29
    .line 30
    invoke-direct/range {v2 .. v11}, Landroidx/media3/exoplayer/b3;->p(Landroidx/media3/common/e0;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/z2;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_0
    iget-object v4, v0, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 36
    .line 37
    iget-wide v9, v0, Landroidx/media3/exoplayer/source/r$b;->d:J

    .line 38
    .line 39
    const/4 v11, 0x0

    .line 40
    move-object v2, p0

    .line 41
    move-object v3, p1

    .line 42
    move-wide/from16 v5, p5

    .line 43
    .line 44
    move-wide/from16 v7, p3

    .line 45
    .line 46
    invoke-direct/range {v2 .. v11}, Landroidx/media3/exoplayer/b3;->q(Landroidx/media3/common/e0;Ljava/lang/Object;JJJZ)Landroidx/media3/exoplayer/z2;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method

.method private p(Landroidx/media3/common/e0;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/z2;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v7, Landroidx/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move/from16 v3, p3

    .line 9
    .line 10
    move/from16 v4, p4

    .line 11
    .line 12
    move-wide/from16 v5, p7

    .line 13
    .line 14
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/r$b;-><init>(Ljava/lang/Object;IIJ)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v7, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v2, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 20
    .line 21
    move-object/from16 v3, p1

    .line 22
    .line 23
    invoke-virtual {v3, v1, v2}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget v2, v7, Landroidx/media3/exoplayer/source/r$b;->b:I

    .line 28
    .line 29
    iget v3, v7, Landroidx/media3/exoplayer/source/r$b;->c:I

    .line 30
    .line 31
    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/e0$b;->b(II)J

    .line 32
    .line 33
    .line 34
    move-result-wide v9

    .line 35
    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 36
    .line 37
    move/from16 v2, p3

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroidx/media3/common/e0$b;->l(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const-wide/16 v2, 0x0

    .line 44
    .line 45
    if-ne v4, v1, :cond_0

    .line 46
    .line 47
    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/media3/common/e0$b;->g()J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move-wide v4, v2

    .line 55
    :goto_0
    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 56
    .line 57
    iget v6, v7, Landroidx/media3/exoplayer/source/r$b;->b:I

    .line 58
    .line 59
    invoke-virtual {v1, v6}, Landroidx/media3/common/e0$b;->s(I)Z

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    cmp-long v1, v9, v13

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    cmp-long v1, v4, v9

    .line 73
    .line 74
    if-ltz v1, :cond_1

    .line 75
    .line 76
    const-wide/16 v4, 0x1

    .line 77
    .line 78
    sub-long v4, v9, v4

    .line 79
    .line 80
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    move-wide v3, v1

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    move-wide v3, v4

    .line 87
    :goto_1
    new-instance v16, Landroidx/media3/exoplayer/z2;

    .line 88
    .line 89
    const/4 v14, 0x0

    .line 90
    const/4 v15, 0x0

    .line 91
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    const/4 v13, 0x0

    .line 97
    move-object/from16 v1, v16

    .line 98
    .line 99
    move-object v2, v7

    .line 100
    move-wide/from16 v5, p5

    .line 101
    .line 102
    move-wide/from16 v7, v17

    .line 103
    .line 104
    move/from16 v11, p9

    .line 105
    .line 106
    invoke-direct/range {v1 .. v15}, Landroidx/media3/exoplayer/z2;-><init>(Landroidx/media3/exoplayer/source/r$b;JJJJZZZZZ)V

    .line 107
    .line 108
    .line 109
    return-object v16
.end method

.method private q(Landroidx/media3/common/e0;Ljava/lang/Object;JJJZ)Landroidx/media3/exoplayer/z2;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-wide/from16 v3, p3

    .line 8
    .line 9
    iget-object v5, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 10
    .line 11
    invoke-virtual {v1, v2, v5}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 12
    .line 13
    .line 14
    iget-object v5, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 15
    .line 16
    invoke-virtual {v5, v3, v4}, Landroidx/media3/common/e0$b;->d(J)I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x1

    .line 22
    const/4 v8, -0x1

    .line 23
    if-eq v5, v8, :cond_0

    .line 24
    .line 25
    iget-object v9, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 26
    .line 27
    invoke-virtual {v9, v5}, Landroidx/media3/common/e0$b;->r(I)Z

    .line 28
    .line 29
    .line 30
    move-result v9

    .line 31
    if-eqz v9, :cond_0

    .line 32
    .line 33
    move v9, v7

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v9, v6

    .line 36
    :goto_0
    if-ne v5, v8, :cond_1

    .line 37
    .line 38
    iget-object v10, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 39
    .line 40
    invoke-virtual {v10}, Landroidx/media3/common/e0$b;->c()I

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    if-lez v10, :cond_2

    .line 45
    .line 46
    iget-object v10, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 47
    .line 48
    invoke-virtual {v10}, Landroidx/media3/common/e0$b;->p()I

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    invoke-virtual {v10, v11}, Landroidx/media3/common/e0$b;->s(I)Z

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    if-eqz v10, :cond_2

    .line 57
    .line 58
    move v10, v7

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object v10, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 61
    .line 62
    invoke-virtual {v10, v5}, Landroidx/media3/common/e0$b;->s(I)Z

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    if-eqz v10, :cond_2

    .line 67
    .line 68
    iget-object v10, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 69
    .line 70
    invoke-virtual {v10, v5}, Landroidx/media3/common/e0$b;->f(I)J

    .line 71
    .line 72
    .line 73
    move-result-wide v10

    .line 74
    iget-object v12, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 75
    .line 76
    iget-wide v13, v12, Landroidx/media3/common/e0$b;->d:J

    .line 77
    .line 78
    cmp-long v10, v10, v13

    .line 79
    .line 80
    if-nez v10, :cond_2

    .line 81
    .line 82
    invoke-virtual {v12, v5}, Landroidx/media3/common/e0$b;->q(I)Z

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    if-eqz v10, :cond_2

    .line 87
    .line 88
    move v10, v7

    .line 89
    move v5, v8

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move v10, v6

    .line 92
    :goto_1
    new-instance v12, Landroidx/media3/exoplayer/source/r$b;

    .line 93
    .line 94
    move-wide/from16 v13, p7

    .line 95
    .line 96
    invoke-direct {v12, v2, v13, v14, v5}, Landroidx/media3/exoplayer/source/r$b;-><init>(Ljava/lang/Object;JI)V

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, v12}, Landroidx/media3/exoplayer/b3;->C(Landroidx/media3/exoplayer/source/r$b;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-direct {v0, v1, v12}, Landroidx/media3/exoplayer/b3;->E(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Z

    .line 104
    .line 105
    .line 106
    move-result v24

    .line 107
    invoke-direct {v0, v1, v12, v2}, Landroidx/media3/exoplayer/b3;->D(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;Z)Z

    .line 108
    .line 109
    .line 110
    move-result v25

    .line 111
    if-eq v5, v8, :cond_3

    .line 112
    .line 113
    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 114
    .line 115
    invoke-virtual {v1, v5}, Landroidx/media3/common/e0$b;->s(I)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_3

    .line 120
    .line 121
    if-nez v9, :cond_3

    .line 122
    .line 123
    move/from16 v22, v7

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_3
    move/from16 v22, v6

    .line 127
    .line 128
    :goto_2
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    if-eq v5, v8, :cond_4

    .line 134
    .line 135
    if-nez v9, :cond_4

    .line 136
    .line 137
    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 138
    .line 139
    invoke-virtual {v1, v5}, Landroidx/media3/common/e0$b;->f(I)J

    .line 140
    .line 141
    .line 142
    move-result-wide v8

    .line 143
    :goto_3
    move-wide/from16 v17, v8

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_4
    if-eqz v10, :cond_5

    .line 147
    .line 148
    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 149
    .line 150
    iget-wide v8, v1, Landroidx/media3/common/e0$b;->d:J

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_5
    move-wide/from16 v17, v13

    .line 154
    .line 155
    :goto_4
    cmp-long v1, v17, v13

    .line 156
    .line 157
    if-eqz v1, :cond_7

    .line 158
    .line 159
    const-wide/high16 v8, -0x8000000000000000L

    .line 160
    .line 161
    cmp-long v1, v17, v8

    .line 162
    .line 163
    if-nez v1, :cond_6

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_6
    move-wide/from16 v19, v17

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_7
    :goto_5
    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 170
    .line 171
    iget-wide v8, v1, Landroidx/media3/common/e0$b;->d:J

    .line 172
    .line 173
    move-wide/from16 v19, v8

    .line 174
    .line 175
    :goto_6
    cmp-long v1, v19, v13

    .line 176
    .line 177
    if-eqz v1, :cond_a

    .line 178
    .line 179
    cmp-long v1, v3, v19

    .line 180
    .line 181
    if-ltz v1, :cond_a

    .line 182
    .line 183
    if-nez v25, :cond_8

    .line 184
    .line 185
    if-nez v10, :cond_9

    .line 186
    .line 187
    :cond_8
    move v6, v7

    .line 188
    :cond_9
    int-to-long v3, v6

    .line 189
    sub-long v3, v19, v3

    .line 190
    .line 191
    const-wide/16 v5, 0x0

    .line 192
    .line 193
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 194
    .line 195
    .line 196
    move-result-wide v3

    .line 197
    :cond_a
    move-wide v13, v3

    .line 198
    new-instance v1, Landroidx/media3/exoplayer/z2;

    .line 199
    .line 200
    move-object v11, v1

    .line 201
    move-wide/from16 v15, p5

    .line 202
    .line 203
    move/from16 v21, p9

    .line 204
    .line 205
    move/from16 v23, v2

    .line 206
    .line 207
    invoke-direct/range {v11 .. v25}, Landroidx/media3/exoplayer/z2;-><init>(Landroidx/media3/exoplayer/source/r$b;JJJJZZZZZ)V

    .line 208
    .line 209
    .line 210
    return-object v1
.end method

.method private r(Landroidx/media3/common/e0;Ljava/lang/Object;JJ)Landroidx/media3/exoplayer/z2;
    .locals 11

    .line 1
    move-object v10, p0

    .line 2
    iget-object v6, v10, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    .line 3
    .line 4
    iget-object v7, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    move-object v1, p2

    .line 8
    move-wide v2, p3

    .line 9
    move-wide/from16 v4, p5

    .line 10
    .line 11
    invoke-static/range {v0 .. v7}, Landroidx/media3/exoplayer/b3;->Q(Landroidx/media3/common/e0;Ljava/lang/Object;JJLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroidx/media3/exoplayer/source/r$b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v2, v0, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 22
    .line 23
    iget v3, v0, Landroidx/media3/exoplayer/source/r$b;->b:I

    .line 24
    .line 25
    iget v4, v0, Landroidx/media3/exoplayer/source/r$b;->c:I

    .line 26
    .line 27
    iget-wide v7, v0, Landroidx/media3/exoplayer/source/r$b;->d:J

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    move-object v0, p0

    .line 31
    move-object v1, p1

    .line 32
    move-wide v5, p3

    .line 33
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/b3;->p(Landroidx/media3/common/e0;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/z2;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v2, v0, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 39
    .line 40
    iget-wide v7, v0, Landroidx/media3/exoplayer/source/r$b;->d:J

    .line 41
    .line 42
    const/4 v9, 0x0

    .line 43
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    move-object v0, p0

    .line 49
    move-object v1, p1

    .line 50
    move-wide v3, p3

    .line 51
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/b3;->q(Landroidx/media3/common/e0;Ljava/lang/Object;JJJZ)Landroidx/media3/exoplayer/z2;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_0
    return-object v0
.end method

.method private s(Landroidx/media3/common/e0;Ljava/lang/Object;I)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 7
    .line 8
    invoke-virtual {p1, p3}, Landroidx/media3/common/e0$b;->f(I)J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    const-wide/high16 v0, -0x8000000000000000L

    .line 13
    .line 14
    cmp-long v0, p1, v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 19
    .line 20
    iget-wide p1, p1, Landroidx/media3/common/e0$b;->d:J

    .line 21
    .line 22
    return-wide p1

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 24
    .line 25
    invoke-virtual {v0, p3}, Landroidx/media3/common/e0$b;->i(I)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    add-long/2addr p1, v0

    .line 30
    return-wide p1
.end method


# virtual methods
.method public B(Landroidx/media3/common/e0;)V
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->i:Landroidx/media3/exoplayer/ExoPlayer$c;

    .line 2
    .line 3
    iget-wide v0, v0, Landroidx/media3/exoplayer/ExoPlayer$c;->a:J

    .line 4
    .line 5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 25
    .line 26
    iget-object v2, v2, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 27
    .line 28
    iget-object v2, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 29
    .line 30
    const-wide/16 v3, 0x0

    .line 31
    .line 32
    invoke-direct {p0, p1, v2, v3, v4}, Landroidx/media3/exoplayer/b3;->i(Landroidx/media3/common/e0;Ljava/lang/Object;J)Landroid/util/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 39
    .line 40
    iget-object v4, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 41
    .line 42
    invoke-virtual {p1, v3, v4}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget v3, v3, Landroidx/media3/common/e0$b;->c:I

    .line 47
    .line 48
    iget-object v4, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    .line 49
    .line 50
    invoke-virtual {p1, v3, v4}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Landroidx/media3/common/e0$c;->f()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/b3;->T(Ljava/lang/Object;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    const-wide/16 v5, -0x1

    .line 67
    .line 68
    cmp-long v5, v3, v5

    .line 69
    .line 70
    if-nez v5, :cond_1

    .line 71
    .line 72
    iget-wide v3, p0, Landroidx/media3/exoplayer/b3;->f:J

    .line 73
    .line 74
    const-wide/16 v5, 0x1

    .line 75
    .line 76
    add-long/2addr v5, v3

    .line 77
    iput-wide v5, p0, Landroidx/media3/exoplayer/b3;->f:J

    .line 78
    .line 79
    :cond_1
    move-wide v12, v3

    .line 80
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 81
    .line 82
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v2, Ljava/lang/Long;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 87
    .line 88
    .line 89
    move-result-wide v10

    .line 90
    move-object v7, p0

    .line 91
    move-object v8, p1

    .line 92
    invoke-direct/range {v7 .. v13}, Landroidx/media3/exoplayer/b3;->r(Landroidx/media3/common/e0;Ljava/lang/Object;JJ)Landroidx/media3/exoplayer/z2;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b3;->P(Landroidx/media3/exoplayer/z2;)Landroidx/media3/exoplayer/y2;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-nez v2, :cond_2

    .line 101
    .line 102
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->m()J

    .line 103
    .line 104
    .line 105
    move-result-wide v2

    .line 106
    iget-object v0, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 107
    .line 108
    iget-wide v4, v0, Landroidx/media3/exoplayer/z2;->e:J

    .line 109
    .line 110
    add-long/2addr v2, v4

    .line 111
    iget-wide v4, p1, Landroidx/media3/exoplayer/z2;->b:J

    .line 112
    .line 113
    sub-long/2addr v2, v4

    .line 114
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->e:Landroidx/media3/exoplayer/y2$a;

    .line 115
    .line 116
    invoke-interface {v0, p1, v2, v3}, Landroidx/media3/exoplayer/y2$a;->a(Landroidx/media3/exoplayer/z2;J)Landroidx/media3/exoplayer/y2;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/b3;->M(Ljava/util/List;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/b3;->N()V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public F(Landroidx/media3/exoplayer/source/q;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public G(Landroidx/media3/exoplayer/source/q;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->n:Landroidx/media3/exoplayer/y2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public J()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->n:Landroidx/media3/exoplayer/y2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->t()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->n:Landroidx/media3/exoplayer/y2;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ge v0, v1, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroidx/media3/exoplayer/y2;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->t()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    iput-object v1, p0, Landroidx/media3/exoplayer/b3;->n:Landroidx/media3/exoplayer/y2;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    return-void
.end method

.method public L(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/y2;->w(J)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public N()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/b3;->M(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public O(Landroidx/media3/exoplayer/y2;)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    .line 15
    .line 16
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroidx/media3/exoplayer/y2;

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    .line 33
    .line 34
    if-ne p1, v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    .line 37
    .line 38
    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    .line 39
    .line 40
    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    .line 44
    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    .line 48
    .line 49
    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    .line 50
    .line 51
    or-int/lit8 v0, v1, 0x2

    .line 52
    .line 53
    move v1, v0

    .line 54
    :cond_2
    invoke-virtual {p1}, Landroidx/media3/exoplayer/y2;->x()V

    .line 55
    .line 56
    .line 57
    iget v0, p0, Landroidx/media3/exoplayer/b3;->o:I

    .line 58
    .line 59
    add-int/lit8 v0, v0, -0x1

    .line 60
    .line 61
    iput v0, p0, Landroidx/media3/exoplayer/b3;->o:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    .line 65
    .line 66
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroidx/media3/exoplayer/y2;

    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/y2;->A(Landroidx/media3/exoplayer/y2;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Landroidx/media3/exoplayer/b3;->K()V

    .line 77
    .line 78
    .line 79
    return v1
.end method

.method public R(Landroidx/media3/common/e0;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/r$b;
    .locals 10

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/b3;->S(Landroidx/media3/common/e0;Ljava/lang/Object;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v4

    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 6
    .line 7
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 11
    .line 12
    iget v0, v0, Landroidx/media3/common/e0$b;->c:I

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    move v2, v1

    .line 25
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    .line 26
    .line 27
    iget v3, v3, Landroidx/media3/common/e0$c;->n:I

    .line 28
    .line 29
    if-lt v0, v3, :cond_2

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    invoke-virtual {p1, v0, v3, v6}, Landroidx/media3/common/e0;->g(ILandroidx/media3/common/e0$b;Z)Landroidx/media3/common/e0$b;

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroidx/media3/common/e0$b;->c()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-lez v3, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    move v6, v1

    .line 47
    :goto_1
    or-int/2addr v2, v6

    .line 48
    iget-object v3, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 49
    .line 50
    iget-wide v7, v3, Landroidx/media3/common/e0$b;->d:J

    .line 51
    .line 52
    invoke-virtual {v3, v7, v8}, Landroidx/media3/common/e0$b;->e(J)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/4 v7, -0x1

    .line 57
    if-eq v3, v7, :cond_1

    .line 58
    .line 59
    iget-object p2, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 60
    .line 61
    iget-object p2, p2, Landroidx/media3/common/e0$b;->b:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    :cond_1
    if-eqz v2, :cond_3

    .line 68
    .line 69
    if-eqz v6, :cond_2

    .line 70
    .line 71
    iget-object v3, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 72
    .line 73
    iget-wide v6, v3, Landroidx/media3/common/e0$b;->d:J

    .line 74
    .line 75
    const-wide/16 v8, 0x0

    .line 76
    .line 77
    cmp-long v3, v6, v8

    .line 78
    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    :cond_2
    move-object v1, p2

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :goto_2
    iget-object v6, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    .line 87
    .line 88
    iget-object v7, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 89
    .line 90
    move-object v0, p1

    .line 91
    move-wide v2, p3

    .line 92
    invoke-static/range {v0 .. v7}, Landroidx/media3/exoplayer/b3;->Q(Landroidx/media3/common/e0;Ljava/lang/Object;JJLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroidx/media3/exoplayer/source/r$b;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    return-object p1
.end method

.method public U()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 6
    .line 7
    iget-boolean v1, v1, Landroidx/media3/exoplayer/z2;->j:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->s()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 20
    .line 21
    iget-wide v0, v0, Landroidx/media3/exoplayer/z2;->e:J

    .line 22
    .line 23
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    cmp-long v0, v0, v2

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget v0, p0, Landroidx/media3/exoplayer/b3;->o:I

    .line 33
    .line 34
    const/16 v1, 0x64

    .line 35
    .line 36
    if-ge v0, v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 42
    :goto_1
    return v0
.end method

.method public W(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/ExoPlayer$c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/media3/exoplayer/b3;->i:Landroidx/media3/exoplayer/ExoPlayer$c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/b3;->B(Landroidx/media3/common/e0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public X(Landroidx/media3/common/e0;JJJ)I
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, v3}, Landroidx/media3/exoplayer/b3;->z(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/z2;)Landroidx/media3/exoplayer/z2;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-direct {p0, p1, v1, p2, p3}, Landroidx/media3/exoplayer/b3;->l(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/y2;J)Landroidx/media3/exoplayer/z2;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-eqz v4, :cond_a

    .line 21
    .line 22
    invoke-direct {p0, v3, v4}, Landroidx/media3/exoplayer/b3;->f(Landroidx/media3/exoplayer/z2;Landroidx/media3/exoplayer/z2;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    goto/16 :goto_4

    .line 29
    .line 30
    :cond_1
    move-object v1, v4

    .line 31
    :goto_1
    iget-wide v4, v3, Landroidx/media3/exoplayer/z2;->c:J

    .line 32
    .line 33
    invoke-virtual {v1, v4, v5}, Landroidx/media3/exoplayer/z2;->a(J)Landroidx/media3/exoplayer/z2;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iput-object v4, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 38
    .line 39
    iget-wide v3, v3, Landroidx/media3/exoplayer/z2;->e:J

    .line 40
    .line 41
    iget-wide v5, v1, Landroidx/media3/exoplayer/z2;->e:J

    .line 42
    .line 43
    invoke-static {v3, v4, v5, v6}, Landroidx/media3/exoplayer/b3;->e(JJ)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_9

    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->E()V

    .line 50
    .line 51
    .line 52
    iget-wide p1, v1, Landroidx/media3/exoplayer/z2;->e:J

    .line 53
    .line 54
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    cmp-long p3, p1, v3

    .line 60
    .line 61
    if-nez p3, :cond_2

    .line 62
    .line 63
    const-wide p1, 0x7fffffffffffffffL

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/y2;->D(J)J

    .line 70
    .line 71
    .line 72
    move-result-wide p1

    .line 73
    :goto_2
    iget-object p3, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    const-wide/high16 v3, -0x8000000000000000L

    .line 77
    .line 78
    if-ne v0, p3, :cond_4

    .line 79
    .line 80
    iget-object p3, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 81
    .line 82
    iget-boolean p3, p3, Landroidx/media3/exoplayer/z2;->g:Z

    .line 83
    .line 84
    if-nez p3, :cond_4

    .line 85
    .line 86
    cmp-long p3, p4, v3

    .line 87
    .line 88
    if-eqz p3, :cond_3

    .line 89
    .line 90
    cmp-long p3, p4, p1

    .line 91
    .line 92
    if-ltz p3, :cond_4

    .line 93
    .line 94
    :cond_3
    move p3, v1

    .line 95
    goto :goto_3

    .line 96
    :cond_4
    move p3, v2

    .line 97
    :goto_3
    iget-object p4, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    .line 98
    .line 99
    if-ne v0, p4, :cond_6

    .line 100
    .line 101
    cmp-long p4, p6, v3

    .line 102
    .line 103
    if-eqz p4, :cond_5

    .line 104
    .line 105
    cmp-long p1, p6, p1

    .line 106
    .line 107
    if-ltz p1, :cond_6

    .line 108
    .line 109
    :cond_5
    move v2, v1

    .line 110
    :cond_6
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    return p1

    .line 117
    :cond_7
    if-eqz v2, :cond_8

    .line 118
    .line 119
    or-int/lit8 p3, p3, 0x2

    .line 120
    .line 121
    :cond_8
    return p3

    .line 122
    :cond_9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    move-object v7, v1

    .line 127
    move-object v1, v0

    .line 128
    move-object v0, v7

    .line 129
    goto :goto_0

    .line 130
    :cond_a
    :goto_4
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    return p1

    .line 135
    :cond_b
    return v2
.end method

.method public Y(Landroidx/media3/common/e0;I)I
    .locals 0

    .line 1
    iput p2, p0, Landroidx/media3/exoplayer/b3;->g:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b3;->V(Landroidx/media3/common/e0;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public Z(Landroidx/media3/common/e0;Z)I
    .locals 0

    .line 1
    iput-boolean p2, p0, Landroidx/media3/exoplayer/b3;->h:Z

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b3;->V(Landroidx/media3/common/e0;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public b()Landroidx/media3/exoplayer/y2;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    .line 8
    .line 9
    if-ne v0, v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    .line 20
    .line 21
    if-ne v0, v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->x()V

    .line 32
    .line 33
    .line 34
    iget v0, p0, Landroidx/media3/exoplayer/b3;->o:I

    .line 35
    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    iput v0, p0, Landroidx/media3/exoplayer/b3;->o:I

    .line 39
    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    iput-object v1, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    .line 45
    .line 46
    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->b:Ljava/lang/Object;

    .line 47
    .line 48
    iput-object v1, p0, Landroidx/media3/exoplayer/b3;->p:Ljava/lang/Object;

    .line 49
    .line 50
    iget-object v0, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 51
    .line 52
    iget-object v0, v0, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 53
    .line 54
    iget-wide v0, v0, Landroidx/media3/exoplayer/source/r$b;->d:J

    .line 55
    .line 56
    iput-wide v0, p0, Landroidx/media3/exoplayer/b3;->q:J

    .line 57
    .line 58
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    .line 65
    .line 66
    invoke-direct {p0}, Landroidx/media3/exoplayer/b3;->K()V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    .line 70
    .line 71
    return-object v0
.end method

.method public c()Landroidx/media3/exoplayer/y2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/y2;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    .line 14
    .line 15
    invoke-direct {p0}, Landroidx/media3/exoplayer/b3;->K()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    .line 19
    .line 20
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroidx/media3/exoplayer/y2;

    .line 25
    .line 26
    return-object v0
.end method

.method public d()Landroidx/media3/exoplayer/y2;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {v1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/media3/exoplayer/y2;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    .line 20
    .line 21
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroidx/media3/exoplayer/y2;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    .line 32
    .line 33
    invoke-direct {p0}, Landroidx/media3/exoplayer/b3;->K()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    .line 37
    .line 38
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroidx/media3/exoplayer/y2;

    .line 43
    .line 44
    return-object v0
.end method

.method public g()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/b3;->o:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/media3/exoplayer/y2;

    .line 13
    .line 14
    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->b:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object v1, p0, Landroidx/media3/exoplayer/b3;->p:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 19
    .line 20
    iget-object v1, v1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 21
    .line 22
    iget-wide v1, v1, Landroidx/media3/exoplayer/source/r$b;->d:J

    .line 23
    .line 24
    iput-wide v1, p0, Landroidx/media3/exoplayer/b3;->q:J

    .line 25
    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->x()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    .line 38
    .line 39
    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    .line 40
    .line 41
    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    .line 42
    .line 43
    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput v0, p0, Landroidx/media3/exoplayer/b3;->o:I

    .line 47
    .line 48
    invoke-direct {p0}, Landroidx/media3/exoplayer/b3;->K()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public h(Landroidx/media3/exoplayer/z2;)Landroidx/media3/exoplayer/y2;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide v0, 0xe8d4a51000L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->m()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    .line 16
    .line 17
    iget-object v2, v2, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 18
    .line 19
    iget-wide v2, v2, Landroidx/media3/exoplayer/z2;->e:J

    .line 20
    .line 21
    add-long/2addr v0, v2

    .line 22
    iget-wide v2, p1, Landroidx/media3/exoplayer/z2;->b:J

    .line 23
    .line 24
    sub-long/2addr v0, v2

    .line 25
    :goto_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b3;->P(Landroidx/media3/exoplayer/z2;)Landroidx/media3/exoplayer/y2;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/media3/exoplayer/b3;->e:Landroidx/media3/exoplayer/y2$a;

    .line 32
    .line 33
    invoke-interface {v2, p1, v0, v1}, Landroidx/media3/exoplayer/y2$a;->a(Landroidx/media3/exoplayer/z2;J)Landroidx/media3/exoplayer/y2;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iput-object p1, v2, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 39
    .line 40
    invoke-virtual {v2, v0, v1}, Landroidx/media3/exoplayer/y2;->B(J)V

    .line 41
    .line 42
    .line 43
    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/y2;->A(Landroidx/media3/exoplayer/y2;)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    iput-object v2, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    .line 52
    .line 53
    iput-object v2, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    .line 54
    .line 55
    iput-object v2, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    .line 56
    .line 57
    :goto_2
    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Landroidx/media3/exoplayer/b3;->p:Ljava/lang/Object;

    .line 59
    .line 60
    iput-object v2, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    .line 61
    .line 62
    iget p1, p0, Landroidx/media3/exoplayer/b3;->o:I

    .line 63
    .line 64
    add-int/lit8 p1, p1, 0x1

    .line 65
    .line 66
    iput p1, p0, Landroidx/media3/exoplayer/b3;->o:I

    .line 67
    .line 68
    invoke-direct {p0}, Landroidx/media3/exoplayer/b3;->K()V

    .line 69
    .line 70
    .line 71
    return-object v2
.end method

.method public n()Landroidx/media3/exoplayer/y2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    .line 2
    .line 3
    return-object v0
.end method

.method public t(JLandroidx/media3/exoplayer/r3;)Landroidx/media3/exoplayer/z2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p3}, Landroidx/media3/exoplayer/b3;->j(Landroidx/media3/exoplayer/r3;)Landroidx/media3/exoplayer/z2;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p3, p3, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 11
    .line 12
    invoke-direct {p0, p3, v0, p1, p2}, Landroidx/media3/exoplayer/b3;->l(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/y2;J)Landroidx/media3/exoplayer/z2;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    return-object p1
.end method

.method public u()Landroidx/media3/exoplayer/y2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    .line 2
    .line 3
    return-object v0
.end method

.method public v(Landroidx/media3/exoplayer/source/q;)Landroidx/media3/exoplayer/y2;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/media3/exoplayer/y2;

    .line 17
    .line 18
    iget-object v2, v1, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    .line 19
    .line 20
    if-ne v2, p1, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    return-object p1
.end method

.method public w()Landroidx/media3/exoplayer/y2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->n:Landroidx/media3/exoplayer/y2;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Landroidx/media3/exoplayer/y2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    .line 2
    .line 3
    return-object v0
.end method

.method public y()Landroidx/media3/exoplayer/y2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    .line 2
    .line 3
    return-object v0
.end method

.method public z(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/z2;)Landroidx/media3/exoplayer/z2;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 8
    .line 9
    invoke-direct {v0, v3}, Landroidx/media3/exoplayer/b3;->C(Landroidx/media3/exoplayer/source/r$b;)Z

    .line 10
    .line 11
    .line 12
    move-result v13

    .line 13
    invoke-direct {v0, v1, v3}, Landroidx/media3/exoplayer/b3;->E(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Z

    .line 14
    .line 15
    .line 16
    move-result v14

    .line 17
    invoke-direct {v0, v1, v3, v13}, Landroidx/media3/exoplayer/b3;->D(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v15

    .line 21
    iget-object v4, v2, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 22
    .line 23
    iget-object v4, v4, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v5, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 26
    .line 27
    invoke-virtual {v1, v4, v5}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const/4 v6, -0x1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    iget v1, v3, Landroidx/media3/exoplayer/source/r$b;->e:I

    .line 43
    .line 44
    if-ne v1, v6, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v7, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 48
    .line 49
    invoke-virtual {v7, v1}, Landroidx/media3/common/e0$b;->f(I)J

    .line 50
    .line 51
    .line 52
    move-result-wide v7

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    move-wide v7, v4

    .line 55
    :goto_1
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 62
    .line 63
    iget v4, v3, Landroidx/media3/exoplayer/source/r$b;->b:I

    .line 64
    .line 65
    iget v5, v3, Landroidx/media3/exoplayer/source/r$b;->c:I

    .line 66
    .line 67
    invoke-virtual {v1, v4, v5}, Landroidx/media3/common/e0$b;->b(II)J

    .line 68
    .line 69
    .line 70
    move-result-wide v4

    .line 71
    :goto_2
    move-wide v9, v4

    .line 72
    goto :goto_4

    .line 73
    :cond_2
    cmp-long v1, v7, v4

    .line 74
    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    const-wide/high16 v4, -0x8000000000000000L

    .line 78
    .line 79
    cmp-long v1, v7, v4

    .line 80
    .line 81
    if-nez v1, :cond_3

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    move-wide v9, v7

    .line 85
    goto :goto_4

    .line 86
    :cond_4
    :goto_3
    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 87
    .line 88
    invoke-virtual {v1}, Landroidx/media3/common/e0$b;->k()J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    goto :goto_2

    .line 93
    :goto_4
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 100
    .line 101
    iget v4, v3, Landroidx/media3/exoplayer/source/r$b;->b:I

    .line 102
    .line 103
    invoke-virtual {v1, v4}, Landroidx/media3/common/e0$b;->s(I)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    :goto_5
    move v12, v1

    .line 108
    goto :goto_6

    .line 109
    :cond_5
    iget v1, v3, Landroidx/media3/exoplayer/source/r$b;->e:I

    .line 110
    .line 111
    if-eq v1, v6, :cond_6

    .line 112
    .line 113
    iget-object v4, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    .line 114
    .line 115
    invoke-virtual {v4, v1}, Landroidx/media3/common/e0$b;->s(I)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_6

    .line 120
    .line 121
    const/4 v1, 0x1

    .line 122
    goto :goto_5

    .line 123
    :cond_6
    const/4 v1, 0x0

    .line 124
    goto :goto_5

    .line 125
    :goto_6
    new-instance v16, Landroidx/media3/exoplayer/z2;

    .line 126
    .line 127
    iget-wide v4, v2, Landroidx/media3/exoplayer/z2;->b:J

    .line 128
    .line 129
    move/from16 v17, v14

    .line 130
    .line 131
    move/from16 v18, v15

    .line 132
    .line 133
    iget-wide v14, v2, Landroidx/media3/exoplayer/z2;->c:J

    .line 134
    .line 135
    iget-boolean v11, v2, Landroidx/media3/exoplayer/z2;->f:Z

    .line 136
    .line 137
    move-object/from16 v1, v16

    .line 138
    .line 139
    move-object v2, v3

    .line 140
    move-wide v3, v4

    .line 141
    move-wide v5, v14

    .line 142
    move/from16 v14, v17

    .line 143
    .line 144
    move/from16 v15, v18

    .line 145
    .line 146
    invoke-direct/range {v1 .. v15}, Landroidx/media3/exoplayer/z2;-><init>(Landroidx/media3/exoplayer/source/r$b;JJJJZZZZZ)V

    .line 147
    .line 148
    .line 149
    return-object v16
.end method
