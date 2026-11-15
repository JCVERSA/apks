.class public Landroidx/media3/exoplayer/dash/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/dash/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/dash/d$b;,
        Landroidx/media3/exoplayer/dash/d$c;,
        Landroidx/media3/exoplayer/dash/d$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/upstream/p;

.field private final b:Ly1/b;

.field private final c:[I

.field private final d:I

.field private final e:Landroidx/media3/datasource/a;

.field private final f:J

.field private final g:I

.field private final h:Landroidx/media3/exoplayer/dash/f$c;

.field protected final i:[Landroidx/media3/exoplayer/dash/d$b;

.field private j:Li2/z;

.field private k:Lz1/c;

.field private l:I

.field private m:Ljava/io/IOException;

.field private n:Z

.field private o:J


# direct methods
.method public constructor <init>(Lg2/f$a;Landroidx/media3/exoplayer/upstream/p;Lz1/c;Ly1/b;I[ILi2/z;ILandroidx/media3/datasource/a;JIZLjava/util/List;Landroidx/media3/exoplayer/dash/f$c;Lx1/f4;Landroidx/media3/exoplayer/upstream/f;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p7

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v5, p2

    .line 2
    iput-object v5, v0, Landroidx/media3/exoplayer/dash/d;->a:Landroidx/media3/exoplayer/upstream/p;

    .line 3
    iput-object v1, v0, Landroidx/media3/exoplayer/dash/d;->k:Lz1/c;

    .line 4
    iput-object v2, v0, Landroidx/media3/exoplayer/dash/d;->b:Ly1/b;

    move-object/from16 v5, p6

    .line 5
    iput-object v5, v0, Landroidx/media3/exoplayer/dash/d;->c:[I

    .line 6
    iput-object v4, v0, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    move/from16 v12, p8

    .line 7
    iput v12, v0, Landroidx/media3/exoplayer/dash/d;->d:I

    move-object/from16 v5, p9

    .line 8
    iput-object v5, v0, Landroidx/media3/exoplayer/dash/d;->e:Landroidx/media3/datasource/a;

    .line 9
    iput v3, v0, Landroidx/media3/exoplayer/dash/d;->l:I

    move-wide/from16 v5, p10

    .line 10
    iput-wide v5, v0, Landroidx/media3/exoplayer/dash/d;->f:J

    move/from16 v5, p12

    .line 11
    iput v5, v0, Landroidx/media3/exoplayer/dash/d;->g:I

    move-object/from16 v13, p15

    .line 12
    iput-object v13, v0, Landroidx/media3/exoplayer/dash/d;->h:Landroidx/media3/exoplayer/dash/f$c;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    iput-wide v5, v0, Landroidx/media3/exoplayer/dash/d;->o:J

    .line 14
    invoke-virtual {v1, v3}, Lz1/c;->f(I)J

    move-result-wide v23

    .line 15
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/dash/d;->l()Ljava/util/ArrayList;

    move-result-object v1

    .line 16
    invoke-interface/range {p7 .. p7}, Li2/c0;->length()I

    move-result v3

    new-array v3, v3, [Landroidx/media3/exoplayer/dash/d$b;

    iput-object v3, v0, Landroidx/media3/exoplayer/dash/d;->i:[Landroidx/media3/exoplayer/dash/d$b;

    const/4 v3, 0x0

    move v15, v3

    .line 17
    :goto_0
    iget-object v5, v0, Landroidx/media3/exoplayer/dash/d;->i:[Landroidx/media3/exoplayer/dash/d$b;

    array-length v5, v5

    if-ge v15, v5, :cond_1

    .line 18
    invoke-interface {v4, v15}, Li2/c0;->getIndexInTrackGroup(I)I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lz1/j;

    .line 19
    iget-object v5, v14, Lz1/j;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v5}, Ly1/b;->j(Ljava/util/List;)Lz1/b;

    move-result-object v5

    .line 20
    iget-object v11, v0, Landroidx/media3/exoplayer/dash/d;->i:[Landroidx/media3/exoplayer/dash/d$b;

    new-instance v25, Landroidx/media3/exoplayer/dash/d$b;

    if-eqz v5, :cond_0

    :goto_1
    move-object/from16 v18, v5

    goto :goto_2

    .line 21
    :cond_0
    iget-object v5, v14, Lz1/j;->c:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz1/b;

    goto :goto_1

    :goto_2
    iget-object v7, v14, Lz1/j;->b:Landroidx/media3/common/r;

    move-object/from16 v5, p1

    move/from16 v6, p8

    move/from16 v8, p13

    move-object/from16 v9, p14

    move-object/from16 v10, p15

    move-object/from16 v26, v11

    move-object/from16 v11, p16

    .line 22
    invoke-interface/range {v5 .. v11}, Lg2/f$a;->e(ILandroidx/media3/common/r;ZLjava/util/List;Lk2/s0;Lx1/f4;)Lg2/f;

    move-result-object v19

    const-wide/16 v20, 0x0

    .line 23
    invoke-virtual {v14}, Lz1/j;->k()Ly1/e;

    move-result-object v22

    move-object v5, v14

    move-object/from16 v14, v25

    move v6, v15

    move-wide/from16 v15, v23

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Landroidx/media3/exoplayer/dash/d$b;-><init>(JLz1/j;Lz1/b;Lg2/f;JLy1/e;)V

    aput-object v25, v26, v6

    add-int/lit8 v15, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private h(Li2/z;Ljava/util/List;)Landroidx/media3/exoplayer/upstream/m$a;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p1}, Li2/c0;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_0
    if-ge v3, v2, :cond_1

    .line 12
    .line 13
    invoke-interface {p1, v3, v0, v1}, Li2/z;->d(IJ)Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    add-int/lit8 v4, v4, 0x1

    .line 20
    .line 21
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {p2}, Ly1/b;->f(Ljava/util/List;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    new-instance v0, Landroidx/media3/exoplayer/upstream/m$a;

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/d;->b:Ly1/b;

    .line 31
    .line 32
    invoke-virtual {v1, p2}, Ly1/b;->g(Ljava/util/List;)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    sub-int p2, p1, p2

    .line 37
    .line 38
    invoke-direct {v0, p1, p2, v2, v4}, Landroidx/media3/exoplayer/upstream/m$a;-><init>(IIII)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method private i(JJ)J
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d;->k:Lz1/c;

    .line 2
    .line 3
    iget-boolean v0, v0, Lz1/c;->d:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d;->i:[Landroidx/media3/exoplayer/dash/d$b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aget-object v0, v0, v1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/media3/exoplayer/dash/d$b;->h()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v0, v2, v4

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d;->i:[Landroidx/media3/exoplayer/dash/d$b;

    .line 24
    .line 25
    aget-object v0, v0, v1

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/dash/d$b;->g(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d;->i:[Landroidx/media3/exoplayer/dash/d$b;

    .line 32
    .line 33
    aget-object v0, v0, v1

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/dash/d$b;->i(J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/dash/d;->k(J)J

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 44
    .line 45
    .line 46
    move-result-wide p1

    .line 47
    sub-long/2addr p1, p3

    .line 48
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 49
    .line 50
    .line 51
    move-result-wide p1

    .line 52
    return-wide p1

    .line 53
    :cond_1
    :goto_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    return-wide p1
.end method

.method private j(JLz1/i;Landroidx/media3/exoplayer/dash/d$b;)Landroid/util/Pair;
    .locals 4

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    add-long/2addr p1, v0

    .line 4
    invoke-virtual {p4}, Landroidx/media3/exoplayer/dash/d$b;->h()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    cmp-long v0, p1, v0

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p4, p1, p2}, Landroidx/media3/exoplayer/dash/d$b;->l(J)Lz1/i;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p2, p4, Landroidx/media3/exoplayer/dash/d$b;->c:Lz1/b;

    .line 19
    .line 20
    iget-object p2, p2, Lz1/b;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p3, p2}, Lz1/i;->b(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iget-object p3, p4, Landroidx/media3/exoplayer/dash/d$b;->c:Lz1/b;

    .line 27
    .line 28
    iget-object p3, p3, Lz1/b;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, p3}, Lz1/i;->b(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-static {p2, p3}, Landroidx/media3/common/util/r0;->a(Landroid/net/Uri;Landroid/net/Uri;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    new-instance p3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-wide v0, p1, Lz1/i;->a:J

    .line 44
    .line 45
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p4, "-"

    .line 49
    .line 50
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    iget-wide v0, p1, Lz1/i;->b:J

    .line 58
    .line 59
    const-wide/16 v2, -0x1

    .line 60
    .line 61
    cmp-long p4, v0, v2

    .line 62
    .line 63
    if-eqz p4, :cond_1

    .line 64
    .line 65
    new-instance p4, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-wide v0, p1, Lz1/i;->a:J

    .line 74
    .line 75
    iget-wide v2, p1, Lz1/i;->b:J

    .line 76
    .line 77
    add-long/2addr v0, v2

    .line 78
    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    :cond_1
    new-instance p1, Landroid/util/Pair;

    .line 86
    .line 87
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-object p1
.end method

.method private k(J)J
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d;->k:Lz1/c;

    .line 2
    .line 3
    iget-wide v1, v0, Lz1/c;->a:J

    .line 4
    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-nez v5, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget v3, p0, Landroidx/media3/exoplayer/dash/d;->l:I

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Lz1/c;->c(I)Lz1/g;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-wide v3, v0, Lz1/g;->b:J

    .line 22
    .line 23
    add-long/2addr v1, v3

    .line 24
    invoke-static {v1, v2}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    sub-long v3, p1, v0

    .line 29
    .line 30
    :goto_0
    return-wide v3
.end method

.method private l()Ljava/util/ArrayList;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d;->k:Lz1/c;

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/exoplayer/dash/d;->l:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lz1/c;->c(I)Lz1/g;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lz1/g;->c:Ljava/util/List;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/d;->c:[I

    .line 17
    .line 18
    array-length v3, v2

    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    if-ge v4, v3, :cond_0

    .line 21
    .line 22
    aget v5, v2, v4

    .line 23
    .line 24
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Lz1/a;

    .line 29
    .line 30
    iget-object v5, v5, Lz1/a;->c:Ljava/util/List;

    .line 31
    .line 32
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    add-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v1
.end method

.method private m(Landroidx/media3/exoplayer/dash/d$b;Lg2/m;JJJ)J
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lg2/m;->e()J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1, p3, p4}, Landroidx/media3/exoplayer/dash/d$b;->j(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    move-wide v2, p5

    .line 13
    move-wide v4, p7

    .line 14
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/a1;->q(JJJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    :goto_0
    return-wide p1
.end method

.method private p(I)Landroidx/media3/exoplayer/dash/d$b;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d;->i:[Landroidx/media3/exoplayer/dash/d$b;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/d;->b:Ly1/b;

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/media3/exoplayer/dash/d$b;->b:Lz1/j;

    .line 8
    .line 9
    iget-object v2, v2, Lz1/j;->c:Lcom/google/common/collect/ImmutableList;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ly1/b;->j(Ljava/util/List;)Lz1/b;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v2, v0, Landroidx/media3/exoplayer/dash/d$b;->c:Lz1/b;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lz1/b;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/dash/d$b;->d(Lz1/b;)Landroidx/media3/exoplayer/dash/d$b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/d;->i:[Landroidx/media3/exoplayer/dash/d$b;

    .line 30
    .line 31
    aput-object v0, v1, p1

    .line 32
    .line 33
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Li2/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    .line 2
    .line 3
    return-void
.end method

.method public b(JLandroidx/media3/exoplayer/c4;)J
    .locals 16

    .line 1
    move-wide/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v7, p0

    .line 4
    .line 5
    iget-object v0, v7, Landroidx/media3/exoplayer/dash/d;->i:[Landroidx/media3/exoplayer/dash/d$b;

    .line 6
    .line 7
    array-length v3, v0

    .line 8
    const/4 v4, 0x0

    .line 9
    :goto_0
    if-ge v4, v3, :cond_4

    .line 10
    .line 11
    aget-object v5, v0, v4

    .line 12
    .line 13
    iget-object v6, v5, Landroidx/media3/exoplayer/dash/d$b;->d:Ly1/e;

    .line 14
    .line 15
    if-eqz v6, :cond_3

    .line 16
    .line 17
    invoke-virtual {v5}, Landroidx/media3/exoplayer/dash/d$b;->h()J

    .line 18
    .line 19
    .line 20
    move-result-wide v8

    .line 21
    const-wide/16 v10, 0x0

    .line 22
    .line 23
    cmp-long v6, v8, v10

    .line 24
    .line 25
    if-nez v6, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    invoke-virtual {v5, v1, v2}, Landroidx/media3/exoplayer/dash/d$b;->j(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    invoke-virtual {v5, v3, v4}, Landroidx/media3/exoplayer/dash/d$b;->k(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v10

    .line 36
    cmp-long v0, v10, v1

    .line 37
    .line 38
    if-gez v0, :cond_2

    .line 39
    .line 40
    const-wide/16 v12, -0x1

    .line 41
    .line 42
    cmp-long v0, v8, v12

    .line 43
    .line 44
    const-wide/16 v12, 0x1

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v5}, Landroidx/media3/exoplayer/dash/d$b;->f()J

    .line 49
    .line 50
    .line 51
    move-result-wide v14

    .line 52
    add-long/2addr v14, v8

    .line 53
    sub-long/2addr v14, v12

    .line 54
    cmp-long v0, v3, v14

    .line 55
    .line 56
    if-gez v0, :cond_2

    .line 57
    .line 58
    :cond_1
    add-long/2addr v3, v12

    .line 59
    invoke-virtual {v5, v3, v4}, Landroidx/media3/exoplayer/dash/d$b;->k(J)J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    move-wide v5, v3

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-wide v5, v10

    .line 66
    :goto_1
    move-object/from16 v0, p3

    .line 67
    .line 68
    move-wide/from16 v1, p1

    .line 69
    .line 70
    move-wide v3, v10

    .line 71
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/c4;->a(JJJ)J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    return-wide v0

    .line 76
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    return-wide v1
.end method

.method public c(Lg2/e;)V
    .locals 7

    .line 1
    instance-of v0, p1, Lg2/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lg2/l;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    .line 9
    .line 10
    iget-object v0, v0, Lg2/e;->d:Landroidx/media3/common/r;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Li2/c0;->e(Landroidx/media3/common/r;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/d;->i:[Landroidx/media3/exoplayer/dash/d$b;

    .line 17
    .line 18
    aget-object v1, v1, v0

    .line 19
    .line 20
    iget-object v2, v1, Landroidx/media3/exoplayer/dash/d$b;->d:Ly1/e;

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    iget-object v2, v1, Landroidx/media3/exoplayer/dash/d$b;->a:Lg2/f;

    .line 25
    .line 26
    invoke-static {v2}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lg2/f;

    .line 31
    .line 32
    invoke-interface {v2}, Lg2/f;->b()Lk2/h;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/d;->i:[Landroidx/media3/exoplayer/dash/d$b;

    .line 39
    .line 40
    new-instance v4, Ly1/g;

    .line 41
    .line 42
    iget-object v5, v1, Landroidx/media3/exoplayer/dash/d$b;->b:Lz1/j;

    .line 43
    .line 44
    iget-wide v5, v5, Lz1/j;->d:J

    .line 45
    .line 46
    invoke-direct {v4, v2, v5, v6}, Ly1/g;-><init>(Lk2/h;J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/dash/d$b;->c(Ly1/e;)Landroidx/media3/exoplayer/dash/d$b;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    aput-object v1, v3, v0

    .line 54
    .line 55
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d;->h:Landroidx/media3/exoplayer/dash/f$c;

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/dash/f$c;->j(Lg2/e;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public d(Lg2/e;ZLandroidx/media3/exoplayer/upstream/m$c;Landroidx/media3/exoplayer/upstream/m;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/dash/d;->h:Landroidx/media3/exoplayer/dash/f$c;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/dash/f$c;->k(Lg2/e;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/dash/d;->k:Lz1/c;

    .line 18
    .line 19
    iget-boolean p2, p2, Lz1/c;->d:Z

    .line 20
    .line 21
    if-nez p2, :cond_2

    .line 22
    .line 23
    instance-of p2, p1, Lg2/m;

    .line 24
    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    iget-object p2, p3, Landroidx/media3/exoplayer/upstream/m$c;->c:Ljava/io/IOException;

    .line 28
    .line 29
    instance-of v2, p2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    check-cast p2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    .line 34
    .line 35
    iget p2, p2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 36
    .line 37
    const/16 v2, 0x194

    .line 38
    .line 39
    if-ne p2, v2, :cond_2

    .line 40
    .line 41
    iget-object p2, p0, Landroidx/media3/exoplayer/dash/d;->i:[Landroidx/media3/exoplayer/dash/d$b;

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    .line 44
    .line 45
    iget-object v3, p1, Lg2/e;->d:Landroidx/media3/common/r;

    .line 46
    .line 47
    invoke-interface {v2, v3}, Li2/c0;->e(Landroidx/media3/common/r;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    aget-object p2, p2, v2

    .line 52
    .line 53
    invoke-virtual {p2}, Landroidx/media3/exoplayer/dash/d$b;->h()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    const-wide/16 v4, -0x1

    .line 58
    .line 59
    cmp-long v4, v2, v4

    .line 60
    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    const-wide/16 v4, 0x0

    .line 64
    .line 65
    cmp-long v4, v2, v4

    .line 66
    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    invoke-virtual {p2}, Landroidx/media3/exoplayer/dash/d$b;->f()J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    add-long/2addr v4, v2

    .line 74
    const-wide/16 v2, 0x1

    .line 75
    .line 76
    sub-long/2addr v4, v2

    .line 77
    move-object p2, p1

    .line 78
    check-cast p2, Lg2/m;

    .line 79
    .line 80
    invoke-virtual {p2}, Lg2/m;->e()J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    cmp-long p2, v2, v4

    .line 85
    .line 86
    if-lez p2, :cond_2

    .line 87
    .line 88
    iput-boolean v1, p0, Landroidx/media3/exoplayer/dash/d;->n:Z

    .line 89
    .line 90
    return v1

    .line 91
    :cond_2
    iget-object p2, p0, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    .line 92
    .line 93
    iget-object v2, p1, Lg2/e;->d:Landroidx/media3/common/r;

    .line 94
    .line 95
    invoke-interface {p2, v2}, Li2/c0;->e(Landroidx/media3/common/r;)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/d;->i:[Landroidx/media3/exoplayer/dash/d$b;

    .line 100
    .line 101
    aget-object p2, v2, p2

    .line 102
    .line 103
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/d;->b:Ly1/b;

    .line 104
    .line 105
    iget-object v3, p2, Landroidx/media3/exoplayer/dash/d$b;->b:Lz1/j;

    .line 106
    .line 107
    iget-object v3, v3, Lz1/j;->c:Lcom/google/common/collect/ImmutableList;

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ly1/b;->j(Ljava/util/List;)Lz1/b;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    iget-object v3, p2, Landroidx/media3/exoplayer/dash/d$b;->c:Lz1/b;

    .line 116
    .line 117
    invoke-virtual {v3, v2}, Lz1/b;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-nez v2, :cond_3

    .line 122
    .line 123
    return v1

    .line 124
    :cond_3
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    .line 125
    .line 126
    iget-object v3, p2, Landroidx/media3/exoplayer/dash/d$b;->b:Lz1/j;

    .line 127
    .line 128
    iget-object v3, v3, Lz1/j;->c:Lcom/google/common/collect/ImmutableList;

    .line 129
    .line 130
    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/dash/d;->h(Li2/z;Ljava/util/List;)Landroidx/media3/exoplayer/upstream/m$a;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const/4 v3, 0x2

    .line 135
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/upstream/m$a;->a(I)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-nez v4, :cond_4

    .line 140
    .line 141
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/upstream/m$a;->a(I)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-nez v4, :cond_4

    .line 146
    .line 147
    return v0

    .line 148
    :cond_4
    invoke-interface {p4, v2, p3}, Landroidx/media3/exoplayer/upstream/m;->d(Landroidx/media3/exoplayer/upstream/m$a;Landroidx/media3/exoplayer/upstream/m$c;)Landroidx/media3/exoplayer/upstream/m$b;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    if-eqz p3, :cond_7

    .line 153
    .line 154
    iget p4, p3, Landroidx/media3/exoplayer/upstream/m$b;->a:I

    .line 155
    .line 156
    invoke-virtual {v2, p4}, Landroidx/media3/exoplayer/upstream/m$a;->a(I)Z

    .line 157
    .line 158
    .line 159
    move-result p4

    .line 160
    if-nez p4, :cond_5

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_5
    iget p4, p3, Landroidx/media3/exoplayer/upstream/m$b;->a:I

    .line 164
    .line 165
    if-ne p4, v3, :cond_6

    .line 166
    .line 167
    iget-object p2, p0, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    .line 168
    .line 169
    iget-object p1, p1, Lg2/e;->d:Landroidx/media3/common/r;

    .line 170
    .line 171
    invoke-interface {p2, p1}, Li2/c0;->e(Landroidx/media3/common/r;)I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    iget-wide p3, p3, Landroidx/media3/exoplayer/upstream/m$b;->b:J

    .line 176
    .line 177
    invoke-interface {p2, p1, p3, p4}, Li2/z;->g(IJ)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    goto :goto_0

    .line 182
    :cond_6
    if-ne p4, v1, :cond_7

    .line 183
    .line 184
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/d;->b:Ly1/b;

    .line 185
    .line 186
    iget-object p2, p2, Landroidx/media3/exoplayer/dash/d$b;->c:Lz1/b;

    .line 187
    .line 188
    iget-wide p3, p3, Landroidx/media3/exoplayer/upstream/m$b;->b:J

    .line 189
    .line 190
    invoke-virtual {p1, p2, p3, p4}, Ly1/b;->e(Lz1/b;J)V

    .line 191
    .line 192
    .line 193
    move v0, v1

    .line 194
    :cond_7
    :goto_0
    return v0
.end method

.method public e(Landroidx/media3/exoplayer/v2;JLjava/util/List;Lg2/g;)V
    .locals 32

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v14, p5

    .line 4
    .line 5
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/d;->m:Ljava/io/IOException;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    move-object/from16 v0, p1

    .line 11
    .line 12
    iget-wide v9, v0, Landroidx/media3/exoplayer/v2;->a:J

    .line 13
    .line 14
    sub-long v11, p2, v9

    .line 15
    .line 16
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/d;->k:Lz1/c;

    .line 17
    .line 18
    iget-wide v0, v0, Lz1/c;->a:J

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iget-object v2, v15, Landroidx/media3/exoplayer/dash/d;->k:Lz1/c;

    .line 25
    .line 26
    iget v3, v15, Landroidx/media3/exoplayer/dash/d;->l:I

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lz1/c;->c(I)Lz1/g;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-wide v2, v2, Lz1/g;->b:J

    .line 33
    .line 34
    invoke-static {v2, v3}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    add-long/2addr v0, v2

    .line 39
    add-long v0, v0, p2

    .line 40
    .line 41
    iget-object v2, v15, Landroidx/media3/exoplayer/dash/d;->h:Landroidx/media3/exoplayer/dash/f$c;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2, v0, v1}, Landroidx/media3/exoplayer/dash/f$c;->i(J)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    iget-wide v0, v15, Landroidx/media3/exoplayer/dash/d;->f:J

    .line 53
    .line 54
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->h0(J)J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v7

    .line 62
    invoke-direct {v15, v7, v8}, Landroidx/media3/exoplayer/dash/d;->k(J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v24

    .line 66
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v5, 0x1

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    move-object/from16 v6, p4

    .line 74
    .line 75
    const/16 v26, 0x0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    sub-int/2addr v0, v5

    .line 83
    move-object/from16 v6, p4

    .line 84
    .line 85
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lg2/m;

    .line 90
    .line 91
    move-object/from16 v26, v0

    .line 92
    .line 93
    :goto_0
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    .line 94
    .line 95
    invoke-interface {v0}, Li2/c0;->length()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    new-array v4, v3, [Lg2/n;

    .line 100
    .line 101
    const/16 v27, 0x0

    .line 102
    .line 103
    move/from16 v2, v27

    .line 104
    .line 105
    :goto_1
    if-ge v2, v3, :cond_5

    .line 106
    .line 107
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/d;->i:[Landroidx/media3/exoplayer/dash/d$b;

    .line 108
    .line 109
    aget-object v1, v0, v2

    .line 110
    .line 111
    iget-object v0, v1, Landroidx/media3/exoplayer/dash/d$b;->d:Ly1/e;

    .line 112
    .line 113
    if-nez v0, :cond_3

    .line 114
    .line 115
    sget-object v0, Lg2/n;->a:Lg2/n;

    .line 116
    .line 117
    aput-object v0, v4, v2

    .line 118
    .line 119
    move v13, v2

    .line 120
    move/from16 v28, v3

    .line 121
    .line 122
    move-object/from16 v29, v4

    .line 123
    .line 124
    move-wide/from16 v30, v11

    .line 125
    .line 126
    move-wide v11, v7

    .line 127
    goto :goto_2

    .line 128
    :cond_3
    invoke-virtual {v1, v7, v8}, Landroidx/media3/exoplayer/dash/d$b;->e(J)J

    .line 129
    .line 130
    .line 131
    move-result-wide v16

    .line 132
    invoke-virtual {v1, v7, v8}, Landroidx/media3/exoplayer/dash/d$b;->g(J)J

    .line 133
    .line 134
    .line 135
    move-result-wide v20

    .line 136
    move-object/from16 v0, p0

    .line 137
    .line 138
    move v13, v2

    .line 139
    move-object/from16 v2, v26

    .line 140
    .line 141
    move/from16 v28, v3

    .line 142
    .line 143
    move-object/from16 v29, v4

    .line 144
    .line 145
    move-wide/from16 v3, p2

    .line 146
    .line 147
    move-wide/from16 v5, v16

    .line 148
    .line 149
    move-wide/from16 v30, v11

    .line 150
    .line 151
    move-wide v11, v7

    .line 152
    move-wide/from16 v7, v20

    .line 153
    .line 154
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/d;->m(Landroidx/media3/exoplayer/dash/d$b;Lg2/m;JJJ)J

    .line 155
    .line 156
    .line 157
    move-result-wide v18

    .line 158
    cmp-long v0, v18, v16

    .line 159
    .line 160
    if-gez v0, :cond_4

    .line 161
    .line 162
    sget-object v0, Lg2/n;->a:Lg2/n;

    .line 163
    .line 164
    aput-object v0, v29, v13

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_4
    invoke-direct {v15, v13}, Landroidx/media3/exoplayer/dash/d;->p(I)Landroidx/media3/exoplayer/dash/d$b;

    .line 168
    .line 169
    .line 170
    move-result-object v17

    .line 171
    new-instance v0, Landroidx/media3/exoplayer/dash/d$c;

    .line 172
    .line 173
    move-object/from16 v16, v0

    .line 174
    .line 175
    move-wide/from16 v22, v24

    .line 176
    .line 177
    invoke-direct/range {v16 .. v23}, Landroidx/media3/exoplayer/dash/d$c;-><init>(Landroidx/media3/exoplayer/dash/d$b;JJJ)V

    .line 178
    .line 179
    .line 180
    aput-object v0, v29, v13

    .line 181
    .line 182
    :goto_2
    add-int/lit8 v2, v13, 0x1

    .line 183
    .line 184
    move-object/from16 v6, p4

    .line 185
    .line 186
    move-wide v7, v11

    .line 187
    move/from16 v3, v28

    .line 188
    .line 189
    move-object/from16 v4, v29

    .line 190
    .line 191
    move-wide/from16 v11, v30

    .line 192
    .line 193
    const/4 v5, 0x1

    .line 194
    goto :goto_1

    .line 195
    :cond_5
    move-object/from16 v29, v4

    .line 196
    .line 197
    move-wide/from16 v30, v11

    .line 198
    .line 199
    move-wide v11, v7

    .line 200
    invoke-direct {v15, v11, v12, v9, v10}, Landroidx/media3/exoplayer/dash/d;->i(JJ)J

    .line 201
    .line 202
    .line 203
    move-result-wide v5

    .line 204
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    .line 205
    .line 206
    move-wide v1, v9

    .line 207
    move-wide/from16 v3, v30

    .line 208
    .line 209
    move-object/from16 v7, p4

    .line 210
    .line 211
    move-object/from16 v8, v29

    .line 212
    .line 213
    invoke-interface/range {v0 .. v8}, Li2/z;->f(JJJLjava/util/List;[Lg2/n;)V

    .line 214
    .line 215
    .line 216
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    .line 217
    .line 218
    invoke-interface {v0}, Li2/z;->getSelectedIndex()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 223
    .line 224
    .line 225
    move-result-wide v1

    .line 226
    iput-wide v1, v15, Landroidx/media3/exoplayer/dash/d;->o:J

    .line 227
    .line 228
    invoke-direct {v15, v0}, Landroidx/media3/exoplayer/dash/d;->p(I)Landroidx/media3/exoplayer/dash/d$b;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    iget-object v0, v9, Landroidx/media3/exoplayer/dash/d$b;->a:Lg2/f;

    .line 233
    .line 234
    const/16 v16, 0x0

    .line 235
    .line 236
    if-eqz v0, :cond_9

    .line 237
    .line 238
    iget-object v1, v9, Landroidx/media3/exoplayer/dash/d$b;->b:Lz1/j;

    .line 239
    .line 240
    invoke-interface {v0}, Lg2/f;->c()[Landroidx/media3/common/r;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    if-nez v0, :cond_6

    .line 245
    .line 246
    invoke-virtual {v1}, Lz1/j;->m()Lz1/i;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    move-object v6, v0

    .line 251
    goto :goto_3

    .line 252
    :cond_6
    const/4 v6, 0x0

    .line 253
    :goto_3
    iget-object v0, v9, Landroidx/media3/exoplayer/dash/d$b;->d:Ly1/e;

    .line 254
    .line 255
    if-nez v0, :cond_7

    .line 256
    .line 257
    invoke-virtual {v1}, Lz1/j;->l()Lz1/i;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    move-object v7, v0

    .line 262
    goto :goto_4

    .line 263
    :cond_7
    const/4 v7, 0x0

    .line 264
    :goto_4
    if-nez v6, :cond_8

    .line 265
    .line 266
    if-eqz v7, :cond_9

    .line 267
    .line 268
    :cond_8
    iget-object v2, v15, Landroidx/media3/exoplayer/dash/d;->e:Landroidx/media3/datasource/a;

    .line 269
    .line 270
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    .line 271
    .line 272
    invoke-interface {v0}, Li2/z;->getSelectedFormat()Landroidx/media3/common/r;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    .line 277
    .line 278
    invoke-interface {v0}, Li2/z;->getSelectionReason()I

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    .line 283
    .line 284
    invoke-interface {v0}, Li2/z;->getSelectionData()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    move-object/from16 v0, p0

    .line 289
    .line 290
    move-object v1, v9

    .line 291
    move-object/from16 v8, v16

    .line 292
    .line 293
    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/d;->n(Landroidx/media3/exoplayer/dash/d$b;Landroidx/media3/datasource/a;Landroidx/media3/common/r;ILjava/lang/Object;Lz1/i;Lz1/i;Landroidx/media3/exoplayer/upstream/g$a;)Lg2/e;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    iput-object v0, v14, Lg2/g;->a:Lg2/e;

    .line 298
    .line 299
    return-void

    .line 300
    :cond_9
    invoke-static {v9}, Landroidx/media3/exoplayer/dash/d$b;->a(Landroidx/media3/exoplayer/dash/d$b;)J

    .line 301
    .line 302
    .line 303
    move-result-wide v17

    .line 304
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/d;->k:Lz1/c;

    .line 305
    .line 306
    iget-boolean v1, v0, Lz1/c;->d:Z

    .line 307
    .line 308
    if-eqz v1, :cond_a

    .line 309
    .line 310
    iget v1, v15, Landroidx/media3/exoplayer/dash/d;->l:I

    .line 311
    .line 312
    invoke-virtual {v0}, Lz1/c;->d()I

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    const/4 v10, 0x1

    .line 317
    sub-int/2addr v0, v10

    .line 318
    if-ne v1, v0, :cond_b

    .line 319
    .line 320
    move v5, v10

    .line 321
    goto :goto_5

    .line 322
    :cond_a
    const/4 v10, 0x1

    .line 323
    :cond_b
    move/from16 v5, v27

    .line 324
    .line 325
    :goto_5
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    if-eqz v5, :cond_d

    .line 331
    .line 332
    cmp-long v0, v17, v19

    .line 333
    .line 334
    if-eqz v0, :cond_c

    .line 335
    .line 336
    goto :goto_6

    .line 337
    :cond_c
    move/from16 v0, v27

    .line 338
    .line 339
    goto :goto_7

    .line 340
    :cond_d
    :goto_6
    move v0, v10

    .line 341
    :goto_7
    invoke-virtual {v9}, Landroidx/media3/exoplayer/dash/d$b;->h()J

    .line 342
    .line 343
    .line 344
    move-result-wide v1

    .line 345
    const-wide/16 v3, 0x0

    .line 346
    .line 347
    cmp-long v1, v1, v3

    .line 348
    .line 349
    if-nez v1, :cond_e

    .line 350
    .line 351
    iput-boolean v0, v14, Lg2/g;->b:Z

    .line 352
    .line 353
    return-void

    .line 354
    :cond_e
    invoke-virtual {v9, v11, v12}, Landroidx/media3/exoplayer/dash/d$b;->e(J)J

    .line 355
    .line 356
    .line 357
    move-result-wide v21

    .line 358
    invoke-virtual {v9, v11, v12}, Landroidx/media3/exoplayer/dash/d$b;->g(J)J

    .line 359
    .line 360
    .line 361
    move-result-wide v11

    .line 362
    if-eqz v5, :cond_10

    .line 363
    .line 364
    invoke-virtual {v9, v11, v12}, Landroidx/media3/exoplayer/dash/d$b;->i(J)J

    .line 365
    .line 366
    .line 367
    move-result-wide v1

    .line 368
    invoke-virtual {v9, v11, v12}, Landroidx/media3/exoplayer/dash/d$b;->k(J)J

    .line 369
    .line 370
    .line 371
    move-result-wide v3

    .line 372
    sub-long v3, v1, v3

    .line 373
    .line 374
    add-long/2addr v1, v3

    .line 375
    cmp-long v1, v1, v17

    .line 376
    .line 377
    if-ltz v1, :cond_f

    .line 378
    .line 379
    move v5, v10

    .line 380
    goto :goto_8

    .line 381
    :cond_f
    move/from16 v5, v27

    .line 382
    .line 383
    :goto_8
    and-int/2addr v0, v5

    .line 384
    :cond_10
    move v13, v0

    .line 385
    move-object/from16 v0, p0

    .line 386
    .line 387
    move-object v1, v9

    .line 388
    move-object/from16 v2, v26

    .line 389
    .line 390
    move-wide/from16 v3, p2

    .line 391
    .line 392
    move-wide/from16 v5, v21

    .line 393
    .line 394
    move-wide v7, v11

    .line 395
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/d;->m(Landroidx/media3/exoplayer/dash/d$b;Lg2/m;JJJ)J

    .line 396
    .line 397
    .line 398
    move-result-wide v7

    .line 399
    cmp-long v0, v7, v21

    .line 400
    .line 401
    if-gez v0, :cond_11

    .line 402
    .line 403
    new-instance v0, Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    .line 404
    .line 405
    invoke-direct {v0}, Landroidx/media3/exoplayer/source/BehindLiveWindowException;-><init>()V

    .line 406
    .line 407
    .line 408
    iput-object v0, v15, Landroidx/media3/exoplayer/dash/d;->m:Ljava/io/IOException;

    .line 409
    .line 410
    return-void

    .line 411
    :cond_11
    cmp-long v0, v7, v11

    .line 412
    .line 413
    if-gtz v0, :cond_12

    .line 414
    .line 415
    iget-boolean v1, v15, Landroidx/media3/exoplayer/dash/d;->n:Z

    .line 416
    .line 417
    if-eqz v1, :cond_13

    .line 418
    .line 419
    if-ltz v0, :cond_13

    .line 420
    .line 421
    :cond_12
    move-object v15, v14

    .line 422
    goto :goto_a

    .line 423
    :cond_13
    if-eqz v13, :cond_14

    .line 424
    .line 425
    invoke-virtual {v9, v7, v8}, Landroidx/media3/exoplayer/dash/d$b;->k(J)J

    .line 426
    .line 427
    .line 428
    move-result-wide v0

    .line 429
    cmp-long v0, v0, v17

    .line 430
    .line 431
    if-ltz v0, :cond_14

    .line 432
    .line 433
    iput-boolean v10, v14, Lg2/g;->b:Z

    .line 434
    .line 435
    return-void

    .line 436
    :cond_14
    iget v0, v15, Landroidx/media3/exoplayer/dash/d;->g:I

    .line 437
    .line 438
    int-to-long v0, v0

    .line 439
    sub-long/2addr v11, v7

    .line 440
    const-wide/16 v2, 0x1

    .line 441
    .line 442
    add-long/2addr v11, v2

    .line 443
    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 444
    .line 445
    .line 446
    move-result-wide v0

    .line 447
    long-to-int v0, v0

    .line 448
    cmp-long v1, v17, v19

    .line 449
    .line 450
    if-eqz v1, :cond_15

    .line 451
    .line 452
    :goto_9
    if-le v0, v10, :cond_15

    .line 453
    .line 454
    int-to-long v4, v0

    .line 455
    add-long/2addr v4, v7

    .line 456
    sub-long/2addr v4, v2

    .line 457
    invoke-virtual {v9, v4, v5}, Landroidx/media3/exoplayer/dash/d$b;->k(J)J

    .line 458
    .line 459
    .line 460
    move-result-wide v4

    .line 461
    cmp-long v1, v4, v17

    .line 462
    .line 463
    if-ltz v1, :cond_15

    .line 464
    .line 465
    add-int/lit8 v0, v0, -0x1

    .line 466
    .line 467
    goto :goto_9

    .line 468
    :cond_15
    move v10, v0

    .line 469
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    if-eqz v0, :cond_16

    .line 474
    .line 475
    move-wide/from16 v19, p2

    .line 476
    .line 477
    :cond_16
    iget-object v2, v15, Landroidx/media3/exoplayer/dash/d;->e:Landroidx/media3/datasource/a;

    .line 478
    .line 479
    iget v3, v15, Landroidx/media3/exoplayer/dash/d;->d:I

    .line 480
    .line 481
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    .line 482
    .line 483
    invoke-interface {v0}, Li2/z;->getSelectedFormat()Landroidx/media3/common/r;

    .line 484
    .line 485
    .line 486
    move-result-object v4

    .line 487
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    .line 488
    .line 489
    invoke-interface {v0}, Li2/z;->getSelectionReason()I

    .line 490
    .line 491
    .line 492
    move-result v5

    .line 493
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    .line 494
    .line 495
    invoke-interface {v0}, Li2/z;->getSelectionData()Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v6

    .line 499
    move-object/from16 v0, p0

    .line 500
    .line 501
    move-object v1, v9

    .line 502
    move v9, v10

    .line 503
    move-wide/from16 v10, v19

    .line 504
    .line 505
    move-wide/from16 v12, v24

    .line 506
    .line 507
    move-object v15, v14

    .line 508
    move-object/from16 v14, v16

    .line 509
    .line 510
    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/dash/d;->o(Landroidx/media3/exoplayer/dash/d$b;Landroidx/media3/datasource/a;ILandroidx/media3/common/r;ILjava/lang/Object;JIJJLandroidx/media3/exoplayer/upstream/g$a;)Lg2/e;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    iput-object v0, v15, Lg2/g;->a:Lg2/e;

    .line 515
    .line 516
    return-void

    .line 517
    :goto_a
    iput-boolean v13, v15, Lg2/g;->b:Z

    .line 518
    .line 519
    return-void
.end method

.method public f(JLg2/e;Ljava/util/List;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d;->m:Ljava/io/IOException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3, p4}, Li2/z;->h(JLg2/e;Ljava/util/List;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public g(Lz1/c;I)V
    .locals 5

    .line 1
    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/d;->k:Lz1/c;

    .line 2
    .line 3
    iput p2, p0, Landroidx/media3/exoplayer/dash/d;->l:I

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lz1/c;->f(I)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    invoke-direct {p0}, Landroidx/media3/exoplayer/dash/d;->l()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/d;->i:[Landroidx/media3/exoplayer/dash/d$b;

    .line 15
    .line 16
    array-length v2, v2

    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    .line 20
    .line 21
    invoke-interface {v2, v1}, Li2/c0;->getIndexInTrackGroup(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lz1/j;

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/d;->i:[Landroidx/media3/exoplayer/dash/d$b;

    .line 32
    .line 33
    aget-object v4, v3, v1

    .line 34
    .line 35
    invoke-virtual {v4, p1, p2, v2}, Landroidx/media3/exoplayer/dash/d$b;->b(JLz1/j;)Landroidx/media3/exoplayer/dash/d$b;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    aput-object v2, v3, v1
    :try_end_0
    .catch Landroidx/media3/exoplayer/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/d;->m:Ljava/io/IOException;

    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public getPreferredQueueSize(JLjava/util/List;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d;->m:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    .line 6
    .line 7
    invoke-interface {v0}, Li2/c0;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d;->j:Li2/z;

    .line 16
    .line 17
    invoke-interface {v0, p1, p2, p3}, Li2/z;->evaluateQueueSize(JLjava/util/List;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public maybeThrowError()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d;->m:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d;->a:Landroidx/media3/exoplayer/upstream/p;

    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/media3/exoplayer/upstream/p;->maybeThrowError()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    throw v0
.end method

.method protected n(Landroidx/media3/exoplayer/dash/d$b;Landroidx/media3/datasource/a;Landroidx/media3/common/r;ILjava/lang/Object;Lz1/i;Lz1/i;Landroidx/media3/exoplayer/upstream/g$a;)Lg2/e;
    .locals 13

    .line 1
    move-object v0, p1

    .line 2
    move-object/from16 v1, p6

    .line 3
    .line 4
    iget-object v2, v0, Landroidx/media3/exoplayer/dash/d$b;->b:Lz1/j;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/d$b;->c:Lz1/b;

    .line 9
    .line 10
    iget-object v3, v3, Lz1/b;->a:Ljava/lang/String;

    .line 11
    .line 12
    move-object/from16 v4, p7

    .line 13
    .line 14
    invoke-virtual {v1, v4, v3}, Lz1/i;->a(Lz1/i;Ljava/lang/String;)Lz1/i;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object/from16 v4, p7

    .line 24
    .line 25
    invoke-static/range {p7 .. p7}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lz1/i;

    .line 30
    .line 31
    :goto_0
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/d$b;->c:Lz1/b;

    .line 32
    .line 33
    iget-object v3, v3, Lz1/b;->a:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-static {v2, v3, v1, v4, v5}, Ly1/f;->a(Lz1/j;Ljava/lang/String;Lz1/i;ILjava/util/Map;)Lw1/h;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    new-instance v1, Lg2/l;

    .line 45
    .line 46
    iget-object v12, v0, Landroidx/media3/exoplayer/dash/d$b;->a:Lg2/f;

    .line 47
    .line 48
    move-object v6, v1

    .line 49
    move-object v7, p2

    .line 50
    move-object/from16 v9, p3

    .line 51
    .line 52
    move/from16 v10, p4

    .line 53
    .line 54
    move-object/from16 v11, p5

    .line 55
    .line 56
    invoke-direct/range {v6 .. v12}, Lg2/l;-><init>(Landroidx/media3/datasource/a;Lw1/h;Landroidx/media3/common/r;ILjava/lang/Object;Lg2/f;)V

    .line 57
    .line 58
    .line 59
    return-object v1
.end method

.method protected o(Landroidx/media3/exoplayer/dash/d$b;Landroidx/media3/datasource/a;ILandroidx/media3/common/r;ILjava/lang/Object;JIJJLandroidx/media3/exoplayer/upstream/g$a;)Lg2/e;
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-wide/from16 v13, p7

    .line 4
    .line 5
    move-wide/from16 v1, p12

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/d$b;->b:Lz1/j;

    .line 8
    .line 9
    invoke-virtual {v0, v13, v14}, Landroidx/media3/exoplayer/dash/d$b;->k(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v7

    .line 13
    invoke-virtual {v0, v13, v14}, Landroidx/media3/exoplayer/dash/d$b;->l(J)Lz1/i;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    iget-object v5, v0, Landroidx/media3/exoplayer/dash/d$b;->a:Lg2/f;

    .line 18
    .line 19
    const/16 v6, 0x8

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    if-nez v5, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v13, v14}, Landroidx/media3/exoplayer/dash/d$b;->i(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v10

    .line 28
    invoke-virtual {v0, v13, v14, v1, v2}, Landroidx/media3/exoplayer/dash/d$b;->m(JJ)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    move v6, v9

    .line 35
    :cond_0
    iget-object v0, v0, Landroidx/media3/exoplayer/dash/d$b;->c:Lz1/b;

    .line 36
    .line 37
    iget-object v0, v0, Lz1/b;->a:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v3, v0, v4, v6, v1}, Ly1/f;->a(Lz1/j;Ljava/lang/String;Lz1/i;ILjava/util/Map;)Lw1/h;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v15, Lg2/o;

    .line 48
    .line 49
    move-object v0, v15

    .line 50
    move-object/from16 v1, p2

    .line 51
    .line 52
    move-object/from16 v3, p4

    .line 53
    .line 54
    move/from16 v4, p5

    .line 55
    .line 56
    move-object/from16 v5, p6

    .line 57
    .line 58
    move-wide v6, v7

    .line 59
    move-wide v8, v10

    .line 60
    move-wide/from16 v10, p7

    .line 61
    .line 62
    move/from16 v12, p3

    .line 63
    .line 64
    move-object/from16 v13, p4

    .line 65
    .line 66
    invoke-direct/range {v0 .. v13}, Lg2/o;-><init>(Landroidx/media3/datasource/a;Lw1/h;Landroidx/media3/common/r;ILjava/lang/Object;JJJILandroidx/media3/common/r;)V

    .line 67
    .line 68
    .line 69
    return-object v15

    .line 70
    :cond_1
    const/4 v5, 0x1

    .line 71
    move/from16 v10, p9

    .line 72
    .line 73
    move v15, v5

    .line 74
    :goto_0
    if-ge v5, v10, :cond_3

    .line 75
    .line 76
    int-to-long v11, v5

    .line 77
    add-long/2addr v11, v13

    .line 78
    invoke-virtual {v0, v11, v12}, Landroidx/media3/exoplayer/dash/d$b;->l(J)Lz1/i;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    iget-object v12, v0, Landroidx/media3/exoplayer/dash/d$b;->c:Lz1/b;

    .line 83
    .line 84
    iget-object v12, v12, Lz1/b;->a:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v4, v11, v12}, Lz1/i;->a(Lz1/i;Ljava/lang/String;)Lz1/i;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    if-nez v11, :cond_2

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    add-int/lit8 v15, v15, 0x1

    .line 94
    .line 95
    add-int/lit8 v5, v5, 0x1

    .line 96
    .line 97
    move-object v4, v11

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    :goto_1
    int-to-long v10, v15

    .line 100
    add-long/2addr v10, v13

    .line 101
    const-wide/16 v16, 0x1

    .line 102
    .line 103
    sub-long v10, v10, v16

    .line 104
    .line 105
    invoke-virtual {v0, v10, v11}, Landroidx/media3/exoplayer/dash/d$b;->i(J)J

    .line 106
    .line 107
    .line 108
    move-result-wide v16

    .line 109
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/dash/d$b;->a(Landroidx/media3/exoplayer/dash/d$b;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v18

    .line 113
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    cmp-long v5, v18, v20

    .line 119
    .line 120
    if-eqz v5, :cond_4

    .line 121
    .line 122
    cmp-long v5, v18, v16

    .line 123
    .line 124
    if-gtz v5, :cond_4

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    move-wide/from16 v18, v20

    .line 128
    .line 129
    :goto_2
    invoke-virtual {v0, v10, v11, v1, v2}, Landroidx/media3/exoplayer/dash/d$b;->m(JJ)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_5

    .line 134
    .line 135
    move v6, v9

    .line 136
    :cond_5
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/d$b;->c:Lz1/b;

    .line 137
    .line 138
    iget-object v1, v1, Lz1/b;->a:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {v3, v1, v4, v6, v2}, Ly1/f;->a(Lz1/j;Ljava/lang/String;Lz1/i;ILjava/util/Map;)Lw1/h;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    iget-wide v1, v3, Lz1/j;->d:J

    .line 149
    .line 150
    neg-long v1, v1

    .line 151
    move-object/from16 v5, p4

    .line 152
    .line 153
    iget-object v3, v5, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {v3}, Landroidx/media3/common/y;->q(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_6

    .line 160
    .line 161
    add-long/2addr v1, v7

    .line 162
    :cond_6
    move-wide/from16 v21, v1

    .line 163
    .line 164
    new-instance v23, Lg2/j;

    .line 165
    .line 166
    move-object/from16 v1, v23

    .line 167
    .line 168
    iget-object v0, v0, Landroidx/media3/exoplayer/dash/d$b;->a:Lg2/f;

    .line 169
    .line 170
    move-object/from16 v20, v0

    .line 171
    .line 172
    move-object/from16 v2, p2

    .line 173
    .line 174
    move-object v3, v4

    .line 175
    move-object/from16 v4, p4

    .line 176
    .line 177
    move/from16 v5, p5

    .line 178
    .line 179
    move-object/from16 v6, p6

    .line 180
    .line 181
    move-wide/from16 v9, v16

    .line 182
    .line 183
    move-wide/from16 v11, p10

    .line 184
    .line 185
    move-wide/from16 v13, v18

    .line 186
    .line 187
    move v0, v15

    .line 188
    move-wide/from16 v15, p7

    .line 189
    .line 190
    move/from16 v17, v0

    .line 191
    .line 192
    move-wide/from16 v18, v21

    .line 193
    .line 194
    invoke-direct/range {v1 .. v20}, Lg2/j;-><init>(Landroidx/media3/datasource/a;Lw1/h;Landroidx/media3/common/r;ILjava/lang/Object;JJJJJIJLg2/f;)V

    .line 195
    .line 196
    .line 197
    return-object v23
.end method

.method public release()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d;->i:[Landroidx/media3/exoplayer/dash/d$b;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    iget-object v3, v3, Landroidx/media3/exoplayer/dash/d$b;->a:Lg2/f;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-interface {v3}, Lg2/f;->release()V

    .line 14
    .line 15
    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return-void
.end method
