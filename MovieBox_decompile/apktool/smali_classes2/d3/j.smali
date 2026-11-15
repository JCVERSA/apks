.class final Ld3/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ld3/g;


# instance fields
.field private final a:J

.field private final b:I

.field private final c:J

.field private final d:I

.field private final e:J

.field private final f:J

.field private final g:[J


# direct methods
.method private constructor <init>(JIJI)V
    .locals 10

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    .line 1
    invoke-direct/range {v0 .. v9}, Ld3/j;-><init>(JIJIJ[J)V

    return-void
.end method

.method private constructor <init>(JIJIJ[J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Ld3/j;->a:J

    .line 4
    iput p3, p0, Ld3/j;->b:I

    .line 5
    iput-wide p4, p0, Ld3/j;->c:J

    .line 6
    iput p6, p0, Ld3/j;->d:I

    .line 7
    iput-wide p7, p0, Ld3/j;->e:J

    .line 8
    iput-object p9, p0, Ld3/j;->g:[J

    const-wide/16 p3, -0x1

    cmp-long p5, p7, p3

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    add-long p3, p1, p7

    .line 9
    :goto_0
    iput-wide p3, p0, Ld3/j;->f:J

    return-void
.end method

.method public static b(Ld3/i;J)Ld3/j;
    .locals 11

    .line 1
    invoke-virtual {p0}, Ld3/i;->a()J

    .line 2
    .line 3
    .line 4
    move-result-wide v4

    .line 5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v0, v4, v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-wide v7, p0, Ld3/i;->c:J

    .line 17
    .line 18
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    cmp-long v0, v7, v0

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v9, p0, Ld3/i;->f:[J

    .line 25
    .line 26
    if-nez v9, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance v10, Ld3/j;

    .line 30
    .line 31
    iget-object p0, p0, Ld3/i;->a:Lk2/i0$a;

    .line 32
    .line 33
    iget v3, p0, Lk2/i0$a;->c:I

    .line 34
    .line 35
    iget v6, p0, Lk2/i0$a;->f:I

    .line 36
    .line 37
    move-object v0, v10

    .line 38
    move-wide v1, p1

    .line 39
    invoke-direct/range {v0 .. v9}, Ld3/j;-><init>(JIJIJ[J)V

    .line 40
    .line 41
    .line 42
    return-object v10

    .line 43
    :cond_2
    :goto_0
    new-instance v7, Ld3/j;

    .line 44
    .line 45
    iget-object p0, p0, Ld3/i;->a:Lk2/i0$a;

    .line 46
    .line 47
    iget v3, p0, Lk2/i0$a;->c:I

    .line 48
    .line 49
    iget v6, p0, Lk2/i0$a;->f:I

    .line 50
    .line 51
    move-object v0, v7

    .line 52
    move-wide v1, p1

    .line 53
    invoke-direct/range {v0 .. v6}, Ld3/j;-><init>(JIJI)V

    .line 54
    .line 55
    .line 56
    return-object v7
.end method

.method private c(I)J
    .locals 4

    .line 1
    iget-wide v0, p0, Ld3/j;->c:J

    .line 2
    .line 3
    int-to-long v2, p1

    .line 4
    mul-long/2addr v0, v2

    .line 5
    const-wide/16 v2, 0x64

    .line 6
    .line 7
    div-long/2addr v0, v2

    .line 8
    return-wide v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ld3/j;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Ld3/j;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ld3/j;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Lk2/m0$a;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ld3/j;->isSeekable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p1, Lk2/m0$a;

    .line 8
    .line 9
    new-instance p2, Lk2/n0;

    .line 10
    .line 11
    iget-wide v0, p0, Ld3/j;->a:J

    .line 12
    .line 13
    iget v2, p0, Ld3/j;->b:I

    .line 14
    .line 15
    int-to-long v2, v2

    .line 16
    add-long/2addr v0, v2

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    invoke-direct {p2, v2, v3, v0, v1}, Lk2/n0;-><init>(JJ)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2}, Lk2/m0$a;-><init>(Lk2/n0;)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    const-wide/16 v6, 0x0

    .line 27
    .line 28
    iget-wide v8, p0, Ld3/j;->c:J

    .line 29
    .line 30
    move-wide v4, p1

    .line 31
    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/a1;->q(JJJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    long-to-double v0, p1

    .line 36
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 37
    .line 38
    mul-double/2addr v0, v2

    .line 39
    iget-wide v4, p0, Ld3/j;->c:J

    .line 40
    .line 41
    long-to-double v4, v4

    .line 42
    div-double/2addr v0, v4

    .line 43
    const-wide/16 v4, 0x0

    .line 44
    .line 45
    cmpg-double v6, v0, v4

    .line 46
    .line 47
    const-wide/high16 v7, 0x4070000000000000L    # 256.0

    .line 48
    .line 49
    if-gtz v6, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    cmpl-double v2, v0, v2

    .line 53
    .line 54
    if-ltz v2, :cond_2

    .line 55
    .line 56
    move-wide v4, v7

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    double-to-int v2, v0

    .line 59
    iget-object v3, p0, Ld3/j;->g:[J

    .line 60
    .line 61
    invoke-static {v3}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, [J

    .line 66
    .line 67
    aget-wide v4, v3, v2

    .line 68
    .line 69
    long-to-double v4, v4

    .line 70
    const/16 v6, 0x63

    .line 71
    .line 72
    if-ne v2, v6, :cond_3

    .line 73
    .line 74
    move-wide v9, v7

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    add-int/lit8 v6, v2, 0x1

    .line 77
    .line 78
    aget-wide v9, v3, v6

    .line 79
    .line 80
    long-to-double v9, v9

    .line 81
    :goto_0
    int-to-double v2, v2

    .line 82
    sub-double/2addr v0, v2

    .line 83
    sub-double/2addr v9, v4

    .line 84
    mul-double/2addr v0, v9

    .line 85
    add-double/2addr v4, v0

    .line 86
    :goto_1
    div-double/2addr v4, v7

    .line 87
    iget-wide v0, p0, Ld3/j;->e:J

    .line 88
    .line 89
    long-to-double v0, v0

    .line 90
    mul-double/2addr v4, v0

    .line 91
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    iget v0, p0, Ld3/j;->b:I

    .line 96
    .line 97
    int-to-long v8, v0

    .line 98
    iget-wide v0, p0, Ld3/j;->e:J

    .line 99
    .line 100
    const-wide/16 v2, 0x1

    .line 101
    .line 102
    sub-long v10, v0, v2

    .line 103
    .line 104
    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/a1;->q(JJJ)J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    new-instance v2, Lk2/m0$a;

    .line 109
    .line 110
    new-instance v3, Lk2/n0;

    .line 111
    .line 112
    iget-wide v4, p0, Ld3/j;->a:J

    .line 113
    .line 114
    add-long/2addr v4, v0

    .line 115
    invoke-direct {v3, p1, p2, v4, v5}, Lk2/n0;-><init>(JJ)V

    .line 116
    .line 117
    .line 118
    invoke-direct {v2, v3}, Lk2/m0$a;-><init>(Lk2/n0;)V

    .line 119
    .line 120
    .line 121
    return-object v2
.end method

.method public getTimeUs(J)J
    .locals 11

    .line 1
    iget-wide v0, p0, Ld3/j;->a:J

    .line 2
    .line 3
    sub-long/2addr p1, v0

    .line 4
    invoke-virtual {p0}, Ld3/j;->isSeekable()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget v0, p0, Ld3/j;->b:I

    .line 11
    .line 12
    int-to-long v0, v0

    .line 13
    cmp-long v0, p1, v0

    .line 14
    .line 15
    if-gtz v0, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget-object v0, p0, Ld3/j;->g:[J

    .line 19
    .line 20
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, [J

    .line 25
    .line 26
    long-to-double p1, p1

    .line 27
    const-wide/high16 v1, 0x4070000000000000L    # 256.0

    .line 28
    .line 29
    mul-double/2addr p1, v1

    .line 30
    iget-wide v1, p0, Ld3/j;->e:J

    .line 31
    .line 32
    long-to-double v1, v1

    .line 33
    div-double/2addr p1, v1

    .line 34
    double-to-long v1, p1

    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-static {v0, v1, v2, v3, v3}, Landroidx/media3/common/util/a1;->h([JJZZ)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-direct {p0, v1}, Ld3/j;->c(I)J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    aget-wide v4, v0, v1

    .line 45
    .line 46
    add-int/lit8 v6, v1, 0x1

    .line 47
    .line 48
    invoke-direct {p0, v6}, Ld3/j;->c(I)J

    .line 49
    .line 50
    .line 51
    move-result-wide v7

    .line 52
    const/16 v9, 0x63

    .line 53
    .line 54
    if-ne v1, v9, :cond_1

    .line 55
    .line 56
    const-wide/16 v0, 0x100

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    aget-wide v9, v0, v6

    .line 60
    .line 61
    move-wide v0, v9

    .line 62
    :goto_0
    cmp-long v6, v4, v0

    .line 63
    .line 64
    if-nez v6, :cond_2

    .line 65
    .line 66
    const-wide/16 p1, 0x0

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    long-to-double v9, v4

    .line 70
    sub-double/2addr p1, v9

    .line 71
    sub-long/2addr v0, v4

    .line 72
    long-to-double v0, v0

    .line 73
    div-double/2addr p1, v0

    .line 74
    :goto_1
    sub-long/2addr v7, v2

    .line 75
    long-to-double v0, v7

    .line 76
    mul-double/2addr p1, v0

    .line 77
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 78
    .line 79
    .line 80
    move-result-wide p1

    .line 81
    add-long/2addr v2, p1

    .line 82
    return-wide v2

    .line 83
    :cond_3
    :goto_2
    const-wide/16 p1, 0x0

    .line 84
    .line 85
    return-wide p1
.end method

.method public isSeekable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/j;->g:[J

    .line 2
    .line 3
    if-eqz v0, :cond_0

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
    return v0
.end method
