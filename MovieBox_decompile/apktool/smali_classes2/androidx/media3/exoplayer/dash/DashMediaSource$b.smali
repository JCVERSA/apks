.class final Landroidx/media3/exoplayer/dash/DashMediaSource$b;
.super Landroidx/media3/common/e0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final e:J

.field private final f:J

.field private final g:J

.field private final h:I

.field private final i:J

.field private final j:J

.field private final k:J

.field private final l:Lz1/c;

.field private final m:Landroidx/media3/common/t;

.field private final n:Landroidx/media3/common/t$g;


# direct methods
.method public constructor <init>(JJJIJJJLz1/c;Landroidx/media3/common/t;Landroidx/media3/common/t$g;)V
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p14

    .line 3
    .line 4
    move-object/from16 v2, p16

    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/media3/common/e0;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-boolean v3, v1, Lz1/c;->d:Z

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    move v6, v5

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v6, v4

    .line 18
    :goto_0
    if-ne v3, v6, :cond_1

    .line 19
    .line 20
    move v4, v5

    .line 21
    :cond_1
    invoke-static {v4}, Landroidx/media3/common/util/a;->g(Z)V

    .line 22
    .line 23
    .line 24
    move-wide v3, p1

    .line 25
    iput-wide v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->e:J

    .line 26
    .line 27
    move-wide v3, p3

    .line 28
    iput-wide v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->f:J

    .line 29
    .line 30
    move-wide v3, p5

    .line 31
    iput-wide v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->g:J

    .line 32
    .line 33
    move v3, p7

    .line 34
    iput v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->h:I

    .line 35
    .line 36
    move-wide v3, p8

    .line 37
    iput-wide v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->i:J

    .line 38
    .line 39
    move-wide/from16 v3, p10

    .line 40
    .line 41
    iput-wide v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->j:J

    .line 42
    .line 43
    move-wide/from16 v3, p12

    .line 44
    .line 45
    iput-wide v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->k:J

    .line 46
    .line 47
    iput-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->l:Lz1/c;

    .line 48
    .line 49
    move-object/from16 v1, p15

    .line 50
    .line 51
    iput-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->m:Landroidx/media3/common/t;

    .line 52
    .line 53
    iput-object v2, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->n:Landroidx/media3/common/t$g;

    .line 54
    .line 55
    return-void
.end method

.method private s(J)J
    .locals 10

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->k:J

    .line 2
    .line 3
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->l:Lz1/c;

    .line 4
    .line 5
    invoke-static {v2}, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->t(Lz1/c;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v4, p1, v2

    .line 15
    .line 16
    if-lez v4, :cond_1

    .line 17
    .line 18
    add-long/2addr v0, p1

    .line 19
    iget-wide p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->j:J

    .line 20
    .line 21
    cmp-long p1, v0, p1

    .line 22
    .line 23
    if-lez p1, :cond_1

    .line 24
    .line 25
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    return-wide p1

    .line 31
    :cond_1
    iget-wide p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->i:J

    .line 32
    .line 33
    add-long/2addr p1, v0

    .line 34
    iget-object v4, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->l:Lz1/c;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-virtual {v4, v5}, Lz1/c;->f(I)J

    .line 38
    .line 39
    .line 40
    move-result-wide v6

    .line 41
    move v4, v5

    .line 42
    :goto_0
    iget-object v8, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->l:Lz1/c;

    .line 43
    .line 44
    invoke-virtual {v8}, Lz1/c;->d()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    add-int/lit8 v8, v8, -0x1

    .line 49
    .line 50
    if-ge v4, v8, :cond_2

    .line 51
    .line 52
    cmp-long v8, p1, v6

    .line 53
    .line 54
    if-ltz v8, :cond_2

    .line 55
    .line 56
    sub-long/2addr p1, v6

    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    iget-object v6, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->l:Lz1/c;

    .line 60
    .line 61
    invoke-virtual {v6, v4}, Lz1/c;->f(I)J

    .line 62
    .line 63
    .line 64
    move-result-wide v6

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v8, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->l:Lz1/c;

    .line 67
    .line 68
    invoke-virtual {v8, v4}, Lz1/c;->c(I)Lz1/g;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const/4 v8, 0x2

    .line 73
    invoke-virtual {v4, v8}, Lz1/g;->a(I)I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    const/4 v9, -0x1

    .line 78
    if-ne v8, v9, :cond_3

    .line 79
    .line 80
    return-wide v0

    .line 81
    :cond_3
    iget-object v4, v4, Lz1/g;->c:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Lz1/a;

    .line 88
    .line 89
    iget-object v4, v4, Lz1/a;->c:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Lz1/j;

    .line 96
    .line 97
    invoke-virtual {v4}, Lz1/j;->k()Ly1/e;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    if-eqz v4, :cond_5

    .line 102
    .line 103
    invoke-interface {v4, v6, v7}, Ly1/e;->f(J)J

    .line 104
    .line 105
    .line 106
    move-result-wide v8

    .line 107
    cmp-long v2, v8, v2

    .line 108
    .line 109
    if-nez v2, :cond_4

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    invoke-interface {v4, p1, p2, v6, v7}, Ly1/e;->e(JJ)J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    invoke-interface {v4, v2, v3}, Ly1/e;->getTimeUs(J)J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    add-long/2addr v0, v2

    .line 121
    sub-long/2addr v0, p1

    .line 122
    :cond_5
    :goto_1
    return-wide v0
.end method

.method private static t(Lz1/c;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lz1/c;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lz1/c;->e:J

    .line 6
    .line 7
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-wide v0, p0, Lz1/c;->b:J

    .line 17
    .line 18
    cmp-long p0, v0, v2

    .line 19
    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->h:I

    .line 14
    .line 15
    sub-int/2addr p1, v0

    .line 16
    if-ltz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->i()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-lt p1, v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v1, p1

    .line 26
    :cond_2
    :goto_0
    return v1
.end method

.method public g(ILandroidx/media3/common/e0$b;Z)Landroidx/media3/common/e0$b;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v1, v0}, Landroidx/media3/common/util/a;->c(III)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->l:Lz1/c;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Lz1/c;->c(I)Lz1/g;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v2, v2, Lz1/g;->a:Ljava/lang/String;

    .line 19
    .line 20
    move-object v4, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v4, v0

    .line 23
    :goto_0
    if-eqz p3, :cond_1

    .line 24
    .line 25
    iget p3, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->h:I

    .line 26
    .line 27
    add-int/2addr p3, p1

    .line 28
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_1
    move-object v5, v0

    .line 33
    iget-object p3, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->l:Lz1/c;

    .line 34
    .line 35
    invoke-virtual {p3, p1}, Lz1/c;->f(I)J

    .line 36
    .line 37
    .line 38
    move-result-wide v7

    .line 39
    iget-object p3, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->l:Lz1/c;

    .line 40
    .line 41
    invoke-virtual {p3, p1}, Lz1/c;->c(I)Lz1/g;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-wide v2, p1, Lz1/g;->b:J

    .line 46
    .line 47
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->l:Lz1/c;

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Lz1/c;->c(I)Lz1/g;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-wide v0, p1, Lz1/g;->b:J

    .line 54
    .line 55
    sub-long/2addr v2, v0

    .line 56
    invoke-static {v2, v3}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    iget-wide v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->i:J

    .line 61
    .line 62
    sub-long v9, v0, v2

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    move-object v3, p2

    .line 66
    invoke-virtual/range {v3 .. v10}, Landroidx/media3/common/e0$b;->t(Ljava/lang/Object;Ljava/lang/Object;IJJ)Landroidx/media3/common/e0$b;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->l:Lz1/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lz1/c;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public m(I)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->i()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/a;->c(III)I

    .line 7
    .line 8
    .line 9
    iget v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->h:I

    .line 10
    .line 11
    add-int/2addr v0, p1

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public o(ILandroidx/media3/common/e0$c;J)Landroidx/media3/common/e0$c;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v11, 0x1

    .line 7
    move/from16 v3, p1

    .line 8
    .line 9
    invoke-static {v3, v2, v11}, Landroidx/media3/common/util/a;->c(III)I

    .line 10
    .line 11
    .line 12
    move-wide/from16 v2, p3

    .line 13
    .line 14
    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->s(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v14

    .line 18
    sget-object v2, Landroidx/media3/common/e0$c;->q:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->m:Landroidx/media3/common/t;

    .line 21
    .line 22
    iget-object v12, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->l:Lz1/c;

    .line 23
    .line 24
    move-object v4, v12

    .line 25
    iget-wide v5, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->e:J

    .line 26
    .line 27
    iget-wide v7, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->f:J

    .line 28
    .line 29
    iget-wide v9, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->g:J

    .line 30
    .line 31
    invoke-static {v12}, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->t(Lz1/c;)Z

    .line 32
    .line 33
    .line 34
    move-result v12

    .line 35
    iget-object v13, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->n:Landroidx/media3/common/t$g;

    .line 36
    .line 37
    move/from16 p1, v12

    .line 38
    .line 39
    iget-wide v11, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->j:J

    .line 40
    .line 41
    move-wide/from16 v16, v11

    .line 42
    .line 43
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->i()I

    .line 44
    .line 45
    .line 46
    move-result v11

    .line 47
    const/4 v12, 0x1

    .line 48
    add-int/lit8 v19, v11, -0x1

    .line 49
    .line 50
    iget-wide v11, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$b;->i:J

    .line 51
    .line 52
    move-wide/from16 v20, v11

    .line 53
    .line 54
    const/4 v11, 0x1

    .line 55
    const/16 v18, 0x0

    .line 56
    .line 57
    move/from16 v12, p1

    .line 58
    .line 59
    invoke-virtual/range {v1 .. v21}, Landroidx/media3/common/e0$c;->g(Ljava/lang/Object;Landroidx/media3/common/t;Ljava/lang/Object;JJJZZLandroidx/media3/common/t$g;JJIIJ)Landroidx/media3/common/e0$c;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    return-object v1
.end method

.method public p()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
