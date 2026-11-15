.class public final Landroidx/media3/exoplayer/source/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/q;
.implements Landroidx/media3/exoplayer/source/q$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/b$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/source/q;

.field private b:Landroidx/media3/exoplayer/source/q$a;

.field private c:[Landroidx/media3/exoplayer/source/b$a;

.field private d:J

.field e:J

.field f:J

.field private g:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/q;ZJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    new-array p1, p1, [Landroidx/media3/exoplayer/source/b$a;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/media3/exoplayer/source/b;->c:[Landroidx/media3/exoplayer/source/b$a;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    move-wide p1, p3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/b;->d:J

    .line 21
    .line 22
    iput-wide p3, p0, Landroidx/media3/exoplayer/source/b;->e:J

    .line 23
    .line 24
    iput-wide p5, p0, Landroidx/media3/exoplayer/source/b;->f:J

    .line 25
    .line 26
    return-void
.end method

.method private c(JLandroidx/media3/exoplayer/c4;)Landroidx/media3/exoplayer/c4;
    .locals 8

    .line 1
    iget-wide v0, p3, Landroidx/media3/exoplayer/c4;->a:J

    .line 2
    .line 3
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/b;->e:J

    .line 4
    .line 5
    sub-long v4, p1, v2

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/a1;->q(JJJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p3, Landroidx/media3/exoplayer/c4;->b:J

    .line 14
    .line 15
    iget-wide v4, p0, Landroidx/media3/exoplayer/source/b;->f:J

    .line 16
    .line 17
    const-wide/high16 v6, -0x8000000000000000L

    .line 18
    .line 19
    cmp-long v6, v4, v6

    .line 20
    .line 21
    if-nez v6, :cond_0

    .line 22
    .line 23
    const-wide p1, 0x7fffffffffffffffL

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    move-wide v6, p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sub-long/2addr v4, p1

    .line 31
    move-wide v6, v4

    .line 32
    :goto_0
    const-wide/16 v4, 0x0

    .line 33
    .line 34
    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/a1;->q(JJJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    iget-wide v2, p3, Landroidx/media3/exoplayer/c4;->a:J

    .line 39
    .line 40
    cmp-long v2, v0, v2

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    iget-wide v2, p3, Landroidx/media3/exoplayer/c4;->b:J

    .line 45
    .line 46
    cmp-long v2, p1, v2

    .line 47
    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    return-object p3

    .line 51
    :cond_1
    new-instance p3, Landroidx/media3/exoplayer/c4;

    .line 52
    .line 53
    invoke-direct {p3, v0, v1, p1, p2}, Landroidx/media3/exoplayer/c4;-><init>(JJ)V

    .line 54
    .line 55
    .line 56
    return-object p3
.end method

.method private static i(JJJ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    const-wide/high16 p2, -0x8000000000000000L

    .line 6
    .line 7
    cmp-long p2, p4, p2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    :cond_0
    return-wide p0
.end method

.method private static m(JJ[Li2/z;)Z
    .locals 2

    .line 1
    cmp-long p2, p0, p2

    .line 2
    .line 3
    const/4 p3, 0x1

    .line 4
    if-gez p2, :cond_0

    .line 5
    .line 6
    return p3

    .line 7
    :cond_0
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long p0, p0, v0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    if-eqz p0, :cond_2

    .line 13
    .line 14
    array-length p0, p4

    .line 15
    move p2, p1

    .line 16
    :goto_0
    if-ge p2, p0, :cond_2

    .line 17
    .line 18
    aget-object v0, p4, p2

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Li2/z;->getSelectedFormat()Landroidx/media3/common/r;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroidx/media3/common/y;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    return p3

    .line 37
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return p1
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/v2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/q;->a(Landroidx/media3/exoplayer/v2;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public b(JLandroidx/media3/exoplayer/c4;)J
    .locals 3

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/b;->e:J

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/b;->c(JLandroidx/media3/exoplayer/c4;)Landroidx/media3/exoplayer/c4;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    .line 13
    .line 14
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/q;->b(JLandroidx/media3/exoplayer/c4;)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    return-wide p1
.end method

.method public discardBuffer(JZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/q;->discardBuffer(JZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e([Li2/z;[Z[Lf2/u;[ZJ)J
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p3

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    new-array v2, v2, [Landroidx/media3/exoplayer/source/b$a;

    .line 6
    .line 7
    iput-object v2, v0, Landroidx/media3/exoplayer/source/b;->c:[Landroidx/media3/exoplayer/source/b$a;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    new-array v2, v2, [Lf2/u;

    .line 11
    .line 12
    const/4 v10, 0x0

    .line 13
    move v3, v10

    .line 14
    :goto_0
    array-length v4, v1

    .line 15
    const/4 v11, 0x0

    .line 16
    if-ge v3, v4, :cond_1

    .line 17
    .line 18
    iget-object v4, v0, Landroidx/media3/exoplayer/source/b;->c:[Landroidx/media3/exoplayer/source/b$a;

    .line 19
    .line 20
    aget-object v5, v1, v3

    .line 21
    .line 22
    check-cast v5, Landroidx/media3/exoplayer/source/b$a;

    .line 23
    .line 24
    aput-object v5, v4, v3

    .line 25
    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    iget-object v11, v5, Landroidx/media3/exoplayer/source/b$a;->a:Lf2/u;

    .line 29
    .line 30
    :cond_0
    aput-object v11, v2, v3

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v3, v0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    .line 36
    .line 37
    move-object v4, p1

    .line 38
    move-object/from16 v5, p2

    .line 39
    .line 40
    move-object v6, v2

    .line 41
    move-object/from16 v7, p4

    .line 42
    .line 43
    move-wide/from16 v8, p5

    .line 44
    .line 45
    invoke-interface/range {v3 .. v9}, Landroidx/media3/exoplayer/source/q;->e([Li2/z;[Z[Lf2/u;[ZJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide v12

    .line 49
    iget-wide v8, v0, Landroidx/media3/exoplayer/source/b;->f:J

    .line 50
    .line 51
    move-wide v4, v12

    .line 52
    move-wide/from16 v6, p5

    .line 53
    .line 54
    invoke-static/range {v4 .. v9}, Landroidx/media3/exoplayer/source/b;->i(JJJ)J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/b;->j()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    move-object v5, p1

    .line 65
    move-wide/from16 v6, p5

    .line 66
    .line 67
    invoke-static {v12, v13, v6, v7, p1}, Landroidx/media3/exoplayer/source/b;->m(JJ[Li2/z;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_2

    .line 72
    .line 73
    move-wide v5, v3

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :goto_1
    iput-wide v5, v0, Landroidx/media3/exoplayer/source/b;->d:J

    .line 81
    .line 82
    :goto_2
    array-length v5, v1

    .line 83
    if-ge v10, v5, :cond_6

    .line 84
    .line 85
    aget-object v5, v2, v10

    .line 86
    .line 87
    if-nez v5, :cond_3

    .line 88
    .line 89
    iget-object v5, v0, Landroidx/media3/exoplayer/source/b;->c:[Landroidx/media3/exoplayer/source/b$a;

    .line 90
    .line 91
    aput-object v11, v5, v10

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    iget-object v6, v0, Landroidx/media3/exoplayer/source/b;->c:[Landroidx/media3/exoplayer/source/b$a;

    .line 95
    .line 96
    aget-object v7, v6, v10

    .line 97
    .line 98
    if-eqz v7, :cond_4

    .line 99
    .line 100
    iget-object v7, v7, Landroidx/media3/exoplayer/source/b$a;->a:Lf2/u;

    .line 101
    .line 102
    if-eq v7, v5, :cond_5

    .line 103
    .line 104
    :cond_4
    new-instance v7, Landroidx/media3/exoplayer/source/b$a;

    .line 105
    .line 106
    invoke-direct {v7, p0, v5}, Landroidx/media3/exoplayer/source/b$a;-><init>(Landroidx/media3/exoplayer/source/b;Lf2/u;)V

    .line 107
    .line 108
    .line 109
    aput-object v7, v6, v10

    .line 110
    .line 111
    :cond_5
    :goto_3
    iget-object v5, v0, Landroidx/media3/exoplayer/source/b;->c:[Landroidx/media3/exoplayer/source/b$a;

    .line 112
    .line 113
    aget-object v5, v5, v10

    .line 114
    .line 115
    aput-object v5, v1, v10

    .line 116
    .line 117
    add-int/lit8 v10, v10, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    return-wide v3
.end method

.method public f(Landroidx/media3/exoplayer/source/q$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/b;->b:Landroidx/media3/exoplayer/source/q$a;

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    .line 4
    .line 5
    invoke-interface {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/q;->f(Landroidx/media3/exoplayer/source/q$a;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public g(Landroidx/media3/exoplayer/source/q;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/b;->g:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/source/b;->b:Landroidx/media3/exoplayer/source/q$a;

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroidx/media3/exoplayer/source/q$a;

    .line 13
    .line 14
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/q$a;->g(Landroidx/media3/exoplayer/source/q;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->getBufferedPositionUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/high16 v2, -0x8000000000000000L

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-eqz v4, :cond_1

    .line 12
    .line 13
    iget-wide v4, p0, Landroidx/media3/exoplayer/source/b;->f:J

    .line 14
    .line 15
    cmp-long v6, v4, v2

    .line 16
    .line 17
    if-eqz v6, :cond_0

    .line 18
    .line 19
    cmp-long v4, v0, v4

    .line 20
    .line 21
    if-ltz v4, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-wide v0

    .line 25
    :cond_1
    :goto_0
    return-wide v2
.end method

.method public getNextLoadPositionUs()J
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->getNextLoadPositionUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/high16 v2, -0x8000000000000000L

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-eqz v4, :cond_1

    .line 12
    .line 13
    iget-wide v4, p0, Landroidx/media3/exoplayer/source/b;->f:J

    .line 14
    .line 15
    cmp-long v6, v4, v2

    .line 16
    .line 17
    if-eqz v6, :cond_0

    .line 18
    .line 19
    cmp-long v4, v0, v4

    .line 20
    .line 21
    if-ltz v4, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-wide v0

    .line 25
    :cond_1
    :goto_0
    return-wide v2
.end method

.method public getTrackGroups()Lf2/z;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->getTrackGroups()Lf2/z;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic h(Landroidx/media3/exoplayer/source/f0;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/b;->k(Landroidx/media3/exoplayer/source/q;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->isLoading()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method j()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/b;->d:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public k(Landroidx/media3/exoplayer/source/q;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/b;->b:Landroidx/media3/exoplayer/source/q$a;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/media3/exoplayer/source/q$a;

    .line 8
    .line 9
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/f0$a;->h(Landroidx/media3/exoplayer/source/f0;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public l(Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/b;->g:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 2
    .line 3
    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->g:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->maybeThrowPrepareError()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    throw v0
.end method

.method public n(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/b;->e:J

    .line 2
    .line 3
    iput-wide p3, p0, Landroidx/media3/exoplayer/source/b;->f:J

    .line 4
    .line 5
    return-void
.end method

.method public readDiscontinuity()J
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/b;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-wide v3, p0, Landroidx/media3/exoplayer/source/b;->d:J

    .line 13
    .line 14
    iput-wide v1, p0, Landroidx/media3/exoplayer/source/b;->d:J

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/b;->readDiscontinuity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v5

    .line 20
    cmp-long v0, v5, v1

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    move-wide v3, v5

    .line 25
    :cond_0
    return-wide v3

    .line 26
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    .line 27
    .line 28
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->readDiscontinuity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    cmp-long v0, v3, v1

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    return-wide v1

    .line 37
    :cond_2
    iget-wide v5, p0, Landroidx/media3/exoplayer/source/b;->e:J

    .line 38
    .line 39
    iget-wide v7, p0, Landroidx/media3/exoplayer/source/b;->f:J

    .line 40
    .line 41
    invoke-static/range {v3 .. v8}, Landroidx/media3/exoplayer/source/b;->i(JJJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/q;->reevaluateBuffer(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public seekToUs(J)J
    .locals 7

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/media3/exoplayer/source/b;->d:J

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->c:[Landroidx/media3/exoplayer/source/b$a;

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/b$a;->a()V

    .line 19
    .line 20
    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    .line 25
    .line 26
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/q;->seekToUs(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    iget-wide v3, p0, Landroidx/media3/exoplayer/source/b;->e:J

    .line 31
    .line 32
    iget-wide v5, p0, Landroidx/media3/exoplayer/source/b;->f:J

    .line 33
    .line 34
    invoke-static/range {v1 .. v6}, Landroidx/media3/exoplayer/source/b;->i(JJJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    return-wide p1
.end method
