.class public final Ld3/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk2/r;


# static fields
.field public static final v:Lk2/x;

.field private static final w:Ly2/h$a;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Landroidx/media3/common/util/j0;

.field private final d:Lk2/i0$a;

.field private final e:Lk2/e0;

.field private final f:Lk2/g0;

.field private final g:Lk2/s0;

.field private h:Lk2/t;

.field private i:Lk2/s0;

.field private j:Lk2/s0;

.field private k:I

.field private l:Landroidx/media3/common/x;

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:I

.field private r:Ld3/g;

.field private s:Z

.field private t:Z

.field private u:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld3/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ld3/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld3/f;->v:Lk2/x;

    .line 7
    .line 8
    new-instance v0, Ld3/e;

    .line 9
    .line 10
    invoke-direct {v0}, Ld3/e;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ld3/f;->w:Ly2/h$a;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ld3/f;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-direct {p0, p1, v0, v1}, Ld3/f;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    .line 4
    :cond_0
    iput p1, p0, Ld3/f;->a:I

    .line 5
    iput-wide p2, p0, Ld3/f;->b:J

    .line 6
    new-instance p1, Landroidx/media3/common/util/j0;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Landroidx/media3/common/util/j0;-><init>(I)V

    iput-object p1, p0, Ld3/f;->c:Landroidx/media3/common/util/j0;

    .line 7
    new-instance p1, Lk2/i0$a;

    invoke-direct {p1}, Lk2/i0$a;-><init>()V

    iput-object p1, p0, Ld3/f;->d:Lk2/i0$a;

    .line 8
    new-instance p1, Lk2/e0;

    invoke-direct {p1}, Lk2/e0;-><init>()V

    iput-object p1, p0, Ld3/f;->e:Lk2/e0;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Ld3/f;->m:J

    .line 10
    new-instance p1, Lk2/g0;

    invoke-direct {p1}, Lk2/g0;-><init>()V

    iput-object p1, p0, Ld3/f;->f:Lk2/g0;

    .line 11
    new-instance p1, Lk2/n;

    invoke-direct {p1}, Lk2/n;-><init>()V

    iput-object p1, p0, Ld3/f;->g:Lk2/s0;

    .line 12
    iput-object p1, p0, Ld3/f;->j:Lk2/s0;

    const-wide/16 p1, -0x1

    .line 13
    iput-wide p1, p0, Ld3/f;->p:J

    return-void
.end method

.method public static synthetic a()[Lk2/r;
    .locals 1

    .line 1
    invoke-static {}, Ld3/f;->q()[Lk2/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g(IIIII)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Ld3/f;->r(IIIII)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private h()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/f;->i:Lk2/s0;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld3/f;->h:Lk2/t;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private i(Lk2/s;)Ld3/g;
    .locals 11

    .line 1
    invoke-direct {p0, p1}, Ld3/f;->t(Lk2/s;)Ld3/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ld3/f;->l:Landroidx/media3/common/x;

    .line 6
    .line 7
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-static {v1, v2, v3}, Ld3/f;->s(Landroidx/media3/common/x;J)Ld3/c;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-boolean v2, p0, Ld3/f;->s:Z

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    new-instance p1, Ld3/g$a;

    .line 20
    .line 21
    invoke-direct {p1}, Ld3/g$a;-><init>()V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    iget v2, p0, Ld3/f;->a:I

    .line 26
    .line 27
    and-int/lit8 v2, v2, 0x4

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {v1}, Lk2/m0;->getDurationUs()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    invoke-interface {v1}, Ld3/g;->a()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    :goto_0
    move-wide v9, v0

    .line 42
    move-wide v5, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Lk2/m0;->getDurationUs()J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    invoke-interface {v0}, Ld3/g;->a()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, p0, Ld3/f;->l:Landroidx/media3/common/x;

    .line 56
    .line 57
    invoke-static {v0}, Ld3/f;->n(Landroidx/media3/common/x;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    const-wide/16 v0, -0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :goto_1
    new-instance v0, Ld3/b;

    .line 65
    .line 66
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 67
    .line 68
    .line 69
    move-result-wide v7

    .line 70
    move-object v4, v0

    .line 71
    invoke-direct/range {v4 .. v10}, Ld3/b;-><init>(JJJ)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    if-eqz v1, :cond_4

    .line 76
    .line 77
    move-object v0, v1

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    if-eqz v0, :cond_5

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    const/4 v0, 0x0

    .line 83
    :goto_2
    const/4 v1, 0x1

    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    invoke-interface {v0}, Lk2/m0;->isSeekable()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_8

    .line 91
    .line 92
    iget v2, p0, Ld3/f;->a:I

    .line 93
    .line 94
    and-int/2addr v2, v1

    .line 95
    if-eqz v2, :cond_8

    .line 96
    .line 97
    :cond_6
    iget v0, p0, Ld3/f;->a:I

    .line 98
    .line 99
    and-int/lit8 v0, v0, 0x2

    .line 100
    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_7
    const/4 v1, 0x0

    .line 105
    :goto_3
    invoke-direct {p0, p1, v1}, Ld3/f;->m(Lk2/s;Z)Ld3/g;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    :cond_8
    if-eqz v0, :cond_9

    .line 110
    .line 111
    iget-object p1, p0, Ld3/f;->i:Lk2/s0;

    .line 112
    .line 113
    invoke-interface {v0}, Lk2/m0;->getDurationUs()J

    .line 114
    .line 115
    .line 116
    move-result-wide v1

    .line 117
    invoke-interface {p1, v1, v2}, Lk2/s0;->f(J)V

    .line 118
    .line 119
    .line 120
    :cond_9
    return-object v0
.end method

.method private j(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Ld3/f;->m:J

    .line 2
    .line 3
    const-wide/32 v2, 0xf4240

    .line 4
    .line 5
    .line 6
    mul-long/2addr p1, v2

    .line 7
    iget-object v2, p0, Ld3/f;->d:Lk2/i0$a;

    .line 8
    .line 9
    iget v2, v2, Lk2/i0$a;->d:I

    .line 10
    .line 11
    int-to-long v2, v2

    .line 12
    div-long/2addr p1, v2

    .line 13
    add-long/2addr v0, p1

    .line 14
    return-wide v0
.end method

.method private l(JLd3/i;J)Ld3/g;
    .locals 15

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    invoke-virtual/range {p3 .. p3}, Ld3/i;->a()J

    .line 4
    .line 5
    .line 6
    move-result-wide v5

    .line 7
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v1, v5, v1

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-object v2

    .line 18
    :cond_0
    iget-wide v3, v0, Ld3/i;->c:J

    .line 19
    .line 20
    const-wide/16 v7, -0x1

    .line 21
    .line 22
    cmp-long v1, v3, v7

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    add-long v1, p1, v3

    .line 27
    .line 28
    iget-object v7, v0, Ld3/i;->a:Lk2/i0$a;

    .line 29
    .line 30
    iget v7, v7, Lk2/i0$a;->c:I

    .line 31
    .line 32
    int-to-long v7, v7

    .line 33
    sub-long/2addr v3, v7

    .line 34
    move-wide v8, v1

    .line 35
    :goto_0
    move-wide v10, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    cmp-long v1, p4, v7

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    sub-long v1, p4, p1

    .line 42
    .line 43
    iget-object v3, v0, Ld3/i;->a:Lk2/i0$a;

    .line 44
    .line 45
    iget v3, v3, Lk2/i0$a;->c:I

    .line 46
    .line 47
    int-to-long v3, v3

    .line 48
    sub-long v3, v1, v3

    .line 49
    .line 50
    move-wide/from16 v8, p4

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :goto_1
    sget-object v12, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 54
    .line 55
    const-wide/32 v3, 0x7a1200

    .line 56
    .line 57
    .line 58
    move-wide v1, v10

    .line 59
    move-object v7, v12

    .line 60
    invoke-static/range {v1 .. v7}, Landroidx/media3/common/util/a1;->g1(JJJLjava/math/RoundingMode;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iget-wide v2, v0, Ld3/i;->b:J

    .line 69
    .line 70
    invoke-static {v10, v11, v2, v3, v12}, Lcom/google/common/math/f;->c(JJLjava/math/RoundingMode;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v2

    .line 74
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 75
    .line 76
    .line 77
    move-result v13

    .line 78
    new-instance v2, Ld3/a;

    .line 79
    .line 80
    iget-object v0, v0, Ld3/i;->a:Lk2/i0$a;

    .line 81
    .line 82
    iget v0, v0, Lk2/i0$a;->c:I

    .line 83
    .line 84
    int-to-long v3, v0

    .line 85
    add-long v10, p1, v3

    .line 86
    .line 87
    const/4 v14, 0x0

    .line 88
    move-object v7, v2

    .line 89
    move v12, v1

    .line 90
    invoke-direct/range {v7 .. v14}, Ld3/a;-><init>(JJIIZ)V

    .line 91
    .line 92
    .line 93
    :cond_2
    return-object v2
.end method

.method private m(Lk2/s;Z)Ld3/g;
    .locals 9

    .line 1
    iget-object v0, p0, Ld3/f;->c:Landroidx/media3/common/util/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x4

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-interface {p1, v0, v2, v1}, Lk2/s;->peekFully([BII)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Ld3/f;->c:Landroidx/media3/common/util/j0;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Ld3/f;->d:Lk2/i0$a;

    .line 18
    .line 19
    iget-object v1, p0, Ld3/f;->c:Landroidx/media3/common/util/j0;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->q()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Lk2/i0$a;->a(I)Z

    .line 26
    .line 27
    .line 28
    new-instance v0, Ld3/a;

    .line 29
    .line 30
    invoke-interface {p1}, Lk2/s;->getLength()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    iget-object v7, p0, Ld3/f;->d:Lk2/i0$a;

    .line 39
    .line 40
    move-object v2, v0

    .line 41
    move v8, p2

    .line 42
    invoke-direct/range {v2 .. v8}, Ld3/a;-><init>(JJLk2/i0$a;Z)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method private static n(Landroidx/media3/common/x;)J
    .locals 6

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/common/x;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroidx/media3/common/x;->d(I)Landroidx/media3/common/x$a;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    instance-of v4, v3, Ly2/n;

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    check-cast v3, Ly2/n;

    .line 20
    .line 21
    iget-object v4, v3, Ly2/i;->a:Ljava/lang/String;

    .line 22
    .line 23
    const-string v5, "TLEN"

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    iget-object p0, v3, Ly2/n;->d:Lcom/google/common/collect/ImmutableList;

    .line 32
    .line 33
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    return-wide v0

    .line 48
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    return-wide v0
.end method

.method private static o(Landroidx/media3/common/util/j0;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, p1, 0x4

    .line 6
    .line 7
    if-lt v0, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->W(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const v0, 0x58696e67

    .line 17
    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    const v0, 0x496e666f

    .line 22
    .line 23
    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    :cond_0
    return p1

    .line 27
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->g()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/16 v0, 0x28

    .line 32
    .line 33
    if-lt p1, v0, :cond_2

    .line 34
    .line 35
    const/16 p1, 0x24

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->W(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    const p1, 0x56425249

    .line 45
    .line 46
    .line 47
    if-ne p0, p1, :cond_2

    .line 48
    .line 49
    return p1

    .line 50
    :cond_2
    const/4 p0, 0x0

    .line 51
    return p0
.end method

.method private static p(IJ)Z
    .locals 4

    .line 1
    const v0, -0x1f400

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    int-to-long v0, p0

    .line 6
    const-wide/32 v2, -0x1f400

    .line 7
    .line 8
    .line 9
    and-long p0, p1, v2

    .line 10
    .line 11
    cmp-long p0, v0, p0

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method private static synthetic q()[Lk2/r;
    .locals 3

    .line 1
    new-instance v0, Ld3/f;

    .line 2
    .line 3
    invoke-direct {v0}, Ld3/f;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Lk2/r;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v0, v1, v2

    .line 11
    .line 12
    return-object v1
.end method

.method private static synthetic r(IIIII)Z
    .locals 3

    .line 1
    const/16 v0, 0x43

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/16 v2, 0x4d

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x4f

    .line 9
    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    if-ne p3, v2, :cond_0

    .line 13
    .line 14
    if-eq p4, v2, :cond_1

    .line 15
    .line 16
    if-eq p0, v1, :cond_1

    .line 17
    .line 18
    :cond_0
    if-ne p1, v2, :cond_2

    .line 19
    .line 20
    const/16 p1, 0x4c

    .line 21
    .line 22
    if-ne p2, p1, :cond_2

    .line 23
    .line 24
    if-ne p3, p1, :cond_2

    .line 25
    .line 26
    const/16 p1, 0x54

    .line 27
    .line 28
    if-eq p4, p1, :cond_1

    .line 29
    .line 30
    if-ne p0, v1, :cond_2

    .line 31
    .line 32
    :cond_1
    const/4 p0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 p0, 0x0

    .line 35
    :goto_0
    return p0
.end method

.method private static s(Landroidx/media3/common/x;J)Ld3/c;
    .locals 4

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/common/x;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroidx/media3/common/x;->d(I)Landroidx/media3/common/x$a;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    instance-of v3, v2, Ly2/l;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    check-cast v2, Ly2/l;

    .line 19
    .line 20
    invoke-static {p0}, Ld3/f;->n(Landroidx/media3/common/x;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-static {p1, p2, v2, v0, v1}, Ld3/c;->b(JLy2/l;J)Ld3/c;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method private t(Lk2/s;)Ld3/g;
    .locals 12

    .line 1
    new-instance v5, Landroidx/media3/common/util/j0;

    .line 2
    .line 3
    iget-object v0, p0, Ld3/f;->d:Lk2/i0$a;

    .line 4
    .line 5
    iget v0, v0, Lk2/i0$a;->c:I

    .line 6
    .line 7
    invoke-direct {v5, v0}, Landroidx/media3/common/util/j0;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v5}, Landroidx/media3/common/util/j0;->e()[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Ld3/f;->d:Lk2/i0$a;

    .line 15
    .line 16
    iget v1, v1, Lk2/i0$a;->c:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-interface {p1, v0, v2, v1}, Lk2/s;->peekFully([BII)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Ld3/f;->d:Lk2/i0$a;

    .line 23
    .line 24
    iget v1, v0, Lk2/i0$a;->a:I

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    and-int/2addr v1, v2

    .line 28
    const/16 v3, 0x15

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget v0, v0, Lk2/i0$a;->e:I

    .line 33
    .line 34
    if-eq v0, v2, :cond_2

    .line 35
    .line 36
    const/16 v3, 0x24

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget v0, v0, Lk2/i0$a;->e:I

    .line 40
    .line 41
    if-eq v0, v2, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/16 v3, 0xd

    .line 45
    .line 46
    :cond_2
    :goto_0
    invoke-static {v5, v3}, Ld3/f;->o(Landroidx/media3/common/util/j0;I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const v1, 0x496e666f

    .line 51
    .line 52
    .line 53
    const v2, 0x58696e67

    .line 54
    .line 55
    .line 56
    if-eq v0, v1, :cond_4

    .line 57
    .line 58
    const v1, 0x56425249

    .line 59
    .line 60
    .line 61
    if-eq v0, v1, :cond_3

    .line 62
    .line 63
    if-eq v0, v2, :cond_4

    .line 64
    .line 65
    invoke-interface {p1}, Lk2/s;->resetPeekPosition()V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :cond_3
    invoke-interface {p1}, Lk2/s;->getLength()J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    iget-object v4, p0, Ld3/f;->d:Lk2/i0$a;

    .line 80
    .line 81
    invoke-static/range {v0 .. v5}, Ld3/h;->b(JJLk2/i0$a;Landroidx/media3/common/util/j0;)Ld3/h;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v1, p0, Ld3/f;->d:Lk2/i0$a;

    .line 86
    .line 87
    iget v1, v1, Lk2/i0$a;->c:I

    .line 88
    .line 89
    invoke-interface {p1, v1}, Lk2/s;->skipFully(I)V

    .line 90
    .line 91
    .line 92
    move-object p1, v0

    .line 93
    goto/16 :goto_1

    .line 94
    .line 95
    :cond_4
    iget-object v1, p0, Ld3/f;->d:Lk2/i0$a;

    .line 96
    .line 97
    invoke-static {v1, v5}, Ld3/i;->b(Lk2/i0$a;Landroidx/media3/common/util/j0;)Ld3/i;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    iget-object v1, p0, Ld3/f;->e:Lk2/e0;

    .line 102
    .line 103
    invoke-virtual {v1}, Lk2/e0;->a()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_5

    .line 108
    .line 109
    iget v1, v9, Ld3/i;->d:I

    .line 110
    .line 111
    const/4 v3, -0x1

    .line 112
    if-eq v1, v3, :cond_5

    .line 113
    .line 114
    iget v4, v9, Ld3/i;->e:I

    .line 115
    .line 116
    if-eq v4, v3, :cond_5

    .line 117
    .line 118
    iget-object v3, p0, Ld3/f;->e:Lk2/e0;

    .line 119
    .line 120
    iput v1, v3, Lk2/e0;->a:I

    .line 121
    .line 122
    iput v4, v3, Lk2/e0;->b:I

    .line 123
    .line 124
    :cond_5
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 125
    .line 126
    .line 127
    move-result-wide v7

    .line 128
    invoke-interface {p1}, Lk2/s;->getLength()J

    .line 129
    .line 130
    .line 131
    move-result-wide v3

    .line 132
    const-wide/16 v5, -0x1

    .line 133
    .line 134
    cmp-long v1, v3, v5

    .line 135
    .line 136
    if-eqz v1, :cond_6

    .line 137
    .line 138
    iget-wide v3, v9, Ld3/i;->c:J

    .line 139
    .line 140
    cmp-long v1, v3, v5

    .line 141
    .line 142
    if-eqz v1, :cond_6

    .line 143
    .line 144
    invoke-interface {p1}, Lk2/s;->getLength()J

    .line 145
    .line 146
    .line 147
    move-result-wide v3

    .line 148
    iget-wide v5, v9, Ld3/i;->c:J

    .line 149
    .line 150
    add-long/2addr v5, v7

    .line 151
    cmp-long v1, v3, v5

    .line 152
    .line 153
    if-eqz v1, :cond_6

    .line 154
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v3, "Data size mismatch between stream ("

    .line 161
    .line 162
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-interface {p1}, Lk2/s;->getLength()J

    .line 166
    .line 167
    .line 168
    move-result-wide v3

    .line 169
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v3, ") and Xing frame ("

    .line 173
    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget-wide v3, v9, Ld3/i;->c:J

    .line 178
    .line 179
    add-long/2addr v3, v7

    .line 180
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v3, "), using Xing value."

    .line 184
    .line 185
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    const-string v3, "Mp3Extractor"

    .line 193
    .line 194
    invoke-static {v3, v1}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :cond_6
    iget-object v1, p0, Ld3/f;->d:Lk2/i0$a;

    .line 198
    .line 199
    iget v1, v1, Lk2/i0$a;->c:I

    .line 200
    .line 201
    invoke-interface {p1, v1}, Lk2/s;->skipFully(I)V

    .line 202
    .line 203
    .line 204
    if-ne v0, v2, :cond_7

    .line 205
    .line 206
    invoke-static {v9, v7, v8}, Ld3/j;->b(Ld3/i;J)Ld3/j;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    goto :goto_1

    .line 211
    :cond_7
    invoke-interface {p1}, Lk2/s;->getLength()J

    .line 212
    .line 213
    .line 214
    move-result-wide v10

    .line 215
    move-object v6, p0

    .line 216
    invoke-direct/range {v6 .. v11}, Ld3/f;->l(JLd3/i;J)Ld3/g;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    :goto_1
    return-object p1
.end method

.method private u()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld3/f;->r:Ld3/g;

    .line 2
    .line 3
    instance-of v1, v0, Ld3/a;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lk2/m0;->isSeekable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-wide v0, p0, Ld3/f;->p:J

    .line 14
    .line 15
    const-wide/16 v2, -0x1

    .line 16
    .line 17
    cmp-long v2, v0, v2

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Ld3/f;->r:Ld3/g;

    .line 22
    .line 23
    invoke-interface {v2}, Ld3/g;->a()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    cmp-long v0, v0, v2

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Ld3/f;->r:Ld3/g;

    .line 32
    .line 33
    check-cast v0, Ld3/a;

    .line 34
    .line 35
    iget-wide v1, p0, Ld3/f;->p:J

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Ld3/a;->e(J)Ld3/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Ld3/f;->r:Ld3/g;

    .line 42
    .line 43
    iget-object v0, p0, Ld3/f;->h:Lk2/t;

    .line 44
    .line 45
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lk2/t;

    .line 50
    .line 51
    iget-object v1, p0, Ld3/f;->r:Ld3/g;

    .line 52
    .line 53
    invoke-interface {v0, v1}, Lk2/t;->d(Lk2/m0;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Ld3/f;->i:Lk2/s0;

    .line 57
    .line 58
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lk2/s0;

    .line 63
    .line 64
    iget-object v1, p0, Ld3/f;->r:Ld3/g;

    .line 65
    .line 66
    invoke-interface {v1}, Lk2/m0;->getDurationUs()J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    invoke-interface {v0, v1, v2}, Lk2/s0;->f(J)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method

.method private v(Lk2/s;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Ld3/f;->r:Ld3/g;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ld3/g;->a()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const-wide/16 v4, -0x1

    .line 11
    .line 12
    cmp-long v0, v2, v4

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Lk2/s;->getPeekPosition()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    const-wide/16 v6, 0x4

    .line 21
    .line 22
    sub-long/2addr v2, v6

    .line 23
    cmp-long v0, v4, v2

    .line 24
    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    :try_start_0
    iget-object v0, p0, Ld3/f;->c:Landroidx/media3/common/util/j0;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x4

    .line 36
    invoke-interface {p1, v0, v2, v3, v1}, Lk2/s;->peekFully([BIIZ)Z

    .line 37
    .line 38
    .line 39
    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    xor-int/2addr p1, v1

    .line 41
    return p1

    .line 42
    :catch_0
    return v1
.end method

.method private w(Lk2/s;)I
    .locals 5

    .line 1
    iget v0, p0, Ld3/f;->k:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-direct {p0, p1, v0}, Ld3/f;->y(Lk2/s;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 p1, -0x1

    .line 11
    return p1

    .line 12
    :cond_0
    :goto_0
    iget-object v0, p0, Ld3/f;->r:Ld3/g;

    .line 13
    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ld3/f;->i(Lk2/s;)Ld3/g;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Ld3/f;->r:Ld3/g;

    .line 21
    .line 22
    iget-object v1, p0, Ld3/f;->h:Lk2/t;

    .line 23
    .line 24
    invoke-interface {v1, v0}, Lk2/t;->d(Lk2/m0;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Landroidx/media3/common/r$b;

    .line 28
    .line 29
    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, "audio/mpeg"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Ld3/f;->d:Lk2/i0$a;

    .line 39
    .line 40
    iget-object v1, v1, Lk2/i0$a;->b:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/16 v1, 0x1000

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->k0(I)Landroidx/media3/common/r$b;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Ld3/f;->d:Lk2/i0$a;

    .line 53
    .line 54
    iget v1, v1, Lk2/i0$a;->e:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Ld3/f;->d:Lk2/i0$a;

    .line 61
    .line 62
    iget v1, v1, Lk2/i0$a;->d:I

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v1, p0, Ld3/f;->e:Lk2/e0;

    .line 69
    .line 70
    iget v1, v1, Lk2/e0;->a:I

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->Z(I)Landroidx/media3/common/r$b;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v1, p0, Ld3/f;->e:Lk2/e0;

    .line 77
    .line 78
    iget v1, v1, Lk2/e0;->b:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->a0(I)Landroidx/media3/common/r$b;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget v1, p0, Ld3/f;->a:I

    .line 85
    .line 86
    and-int/lit8 v1, v1, 0x8

    .line 87
    .line 88
    if-eqz v1, :cond_1

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    iget-object v1, p0, Ld3/f;->l:Landroidx/media3/common/x;

    .line 93
    .line 94
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Ld3/f;->r:Ld3/g;

    .line 99
    .line 100
    invoke-interface {v1}, Ld3/g;->g()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    const v2, -0x7fffffff

    .line 105
    .line 106
    .line 107
    if-eq v1, v2, :cond_2

    .line 108
    .line 109
    iget-object v1, p0, Ld3/f;->r:Ld3/g;

    .line 110
    .line 111
    invoke-interface {v1}, Ld3/g;->g()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    .line 116
    .line 117
    .line 118
    :cond_2
    iget-object v1, p0, Ld3/f;->j:Lk2/s0;

    .line 119
    .line 120
    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-interface {v1, v0}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 128
    .line 129
    .line 130
    move-result-wide v0

    .line 131
    iput-wide v0, p0, Ld3/f;->o:J

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_3
    iget-wide v0, p0, Ld3/f;->o:J

    .line 135
    .line 136
    const-wide/16 v2, 0x0

    .line 137
    .line 138
    cmp-long v0, v0, v2

    .line 139
    .line 140
    if-eqz v0, :cond_4

    .line 141
    .line 142
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 143
    .line 144
    .line 145
    move-result-wide v0

    .line 146
    iget-wide v2, p0, Ld3/f;->o:J

    .line 147
    .line 148
    cmp-long v4, v0, v2

    .line 149
    .line 150
    if-gez v4, :cond_4

    .line 151
    .line 152
    sub-long/2addr v2, v0

    .line 153
    long-to-int v0, v2

    .line 154
    invoke-interface {p1, v0}, Lk2/s;->skipFully(I)V

    .line 155
    .line 156
    .line 157
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Ld3/f;->x(Lk2/s;)I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    return p1
.end method

.method private x(Lk2/s;)I
    .locals 11

    .line 1
    iget v0, p0, Ld3/f;->q:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-interface {p1}, Lk2/s;->resetPeekPosition()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Ld3/f;->v(Lk2/s;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    iget-object v0, p0, Ld3/f;->c:Landroidx/media3/common/util/j0;

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/j0;->W(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Ld3/f;->c:Landroidx/media3/common/util/j0;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->q()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v4, p0, Ld3/f;->k:I

    .line 30
    .line 31
    int-to-long v4, v4

    .line 32
    invoke-static {v0, v4, v5}, Ld3/f;->p(IJ)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_3

    .line 37
    .line 38
    invoke-static {v0}, Lk2/i0;->j(I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-ne v4, v2, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v4, p0, Ld3/f;->d:Lk2/i0$a;

    .line 46
    .line 47
    invoke-virtual {v4, v0}, Lk2/i0$a;->a(I)Z

    .line 48
    .line 49
    .line 50
    iget-wide v4, p0, Ld3/f;->m:J

    .line 51
    .line 52
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    cmp-long v0, v4, v6

    .line 58
    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Ld3/f;->r:Ld3/g;

    .line 62
    .line 63
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    invoke-interface {v0, v4, v5}, Ld3/g;->getTimeUs(J)J

    .line 68
    .line 69
    .line 70
    move-result-wide v4

    .line 71
    iput-wide v4, p0, Ld3/f;->m:J

    .line 72
    .line 73
    iget-wide v4, p0, Ld3/f;->b:J

    .line 74
    .line 75
    cmp-long v0, v4, v6

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    iget-object v0, p0, Ld3/f;->r:Ld3/g;

    .line 80
    .line 81
    const-wide/16 v4, 0x0

    .line 82
    .line 83
    invoke-interface {v0, v4, v5}, Ld3/g;->getTimeUs(J)J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    iget-wide v6, p0, Ld3/f;->m:J

    .line 88
    .line 89
    iget-wide v8, p0, Ld3/f;->b:J

    .line 90
    .line 91
    sub-long/2addr v8, v4

    .line 92
    add-long/2addr v6, v8

    .line 93
    iput-wide v6, p0, Ld3/f;->m:J

    .line 94
    .line 95
    :cond_2
    iget-object v0, p0, Ld3/f;->d:Lk2/i0$a;

    .line 96
    .line 97
    iget v0, v0, Lk2/i0$a;->c:I

    .line 98
    .line 99
    iput v0, p0, Ld3/f;->q:I

    .line 100
    .line 101
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 102
    .line 103
    .line 104
    move-result-wide v4

    .line 105
    iget-object v0, p0, Ld3/f;->d:Lk2/i0$a;

    .line 106
    .line 107
    iget v6, v0, Lk2/i0$a;->c:I

    .line 108
    .line 109
    int-to-long v6, v6

    .line 110
    add-long/2addr v4, v6

    .line 111
    iput-wide v4, p0, Ld3/f;->p:J

    .line 112
    .line 113
    iget-object v4, p0, Ld3/f;->r:Ld3/g;

    .line 114
    .line 115
    instance-of v5, v4, Ld3/b;

    .line 116
    .line 117
    if-eqz v5, :cond_4

    .line 118
    .line 119
    check-cast v4, Ld3/b;

    .line 120
    .line 121
    iget-wide v5, p0, Ld3/f;->n:J

    .line 122
    .line 123
    iget v0, v0, Lk2/i0$a;->g:I

    .line 124
    .line 125
    int-to-long v7, v0

    .line 126
    add-long/2addr v5, v7

    .line 127
    invoke-direct {p0, v5, v6}, Ld3/f;->j(J)J

    .line 128
    .line 129
    .line 130
    move-result-wide v5

    .line 131
    iget-wide v7, p0, Ld3/f;->p:J

    .line 132
    .line 133
    invoke-virtual {v4, v5, v6, v7, v8}, Ld3/b;->c(JJ)V

    .line 134
    .line 135
    .line 136
    iget-boolean v0, p0, Ld3/f;->t:Z

    .line 137
    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    iget-wide v5, p0, Ld3/f;->u:J

    .line 141
    .line 142
    invoke-virtual {v4, v5, v6}, Ld3/b;->b(J)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_4

    .line 147
    .line 148
    iput-boolean v3, p0, Ld3/f;->t:Z

    .line 149
    .line 150
    iget-object v0, p0, Ld3/f;->i:Lk2/s0;

    .line 151
    .line 152
    iput-object v0, p0, Ld3/f;->j:Lk2/s0;

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_3
    :goto_0
    invoke-interface {p1, v1}, Lk2/s;->skipFully(I)V

    .line 156
    .line 157
    .line 158
    iput v3, p0, Ld3/f;->k:I

    .line 159
    .line 160
    return v3

    .line 161
    :cond_4
    :goto_1
    iget-object v0, p0, Ld3/f;->j:Lk2/s0;

    .line 162
    .line 163
    iget v4, p0, Ld3/f;->q:I

    .line 164
    .line 165
    invoke-interface {v0, p1, v4, v1}, Lk2/s0;->e(Landroidx/media3/common/j;IZ)I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-ne p1, v2, :cond_5

    .line 170
    .line 171
    return v2

    .line 172
    :cond_5
    iget v0, p0, Ld3/f;->q:I

    .line 173
    .line 174
    sub-int/2addr v0, p1

    .line 175
    iput v0, p0, Ld3/f;->q:I

    .line 176
    .line 177
    if-lez v0, :cond_6

    .line 178
    .line 179
    return v3

    .line 180
    :cond_6
    iget-object v4, p0, Ld3/f;->j:Lk2/s0;

    .line 181
    .line 182
    iget-wide v0, p0, Ld3/f;->n:J

    .line 183
    .line 184
    invoke-direct {p0, v0, v1}, Ld3/f;->j(J)J

    .line 185
    .line 186
    .line 187
    move-result-wide v5

    .line 188
    iget-object p1, p0, Ld3/f;->d:Lk2/i0$a;

    .line 189
    .line 190
    iget v8, p1, Lk2/i0$a;->c:I

    .line 191
    .line 192
    const/4 v9, 0x0

    .line 193
    const/4 v10, 0x0

    .line 194
    const/4 v7, 0x1

    .line 195
    invoke-interface/range {v4 .. v10}, Lk2/s0;->b(JIIILk2/s0$a;)V

    .line 196
    .line 197
    .line 198
    iget-wide v0, p0, Ld3/f;->n:J

    .line 199
    .line 200
    iget-object p1, p0, Ld3/f;->d:Lk2/i0$a;

    .line 201
    .line 202
    iget p1, p1, Lk2/i0$a;->g:I

    .line 203
    .line 204
    int-to-long v4, p1

    .line 205
    add-long/2addr v0, v4

    .line 206
    iput-wide v0, p0, Ld3/f;->n:J

    .line 207
    .line 208
    iput v3, p0, Ld3/f;->q:I

    .line 209
    .line 210
    return v3
.end method

.method private y(Lk2/s;Z)Z
    .locals 10

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const v0, 0x8000

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/high16 v0, 0x20000

    .line 8
    .line 9
    :goto_0
    invoke-interface {p1}, Lk2/s;->resetPeekPosition()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    cmp-long v1, v1, v3

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_4

    .line 22
    .line 23
    iget v1, p0, Ld3/f;->a:I

    .line 24
    .line 25
    and-int/lit8 v1, v1, 0x8

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    sget-object v1, Ld3/f;->w:Ly2/h$a;

    .line 32
    .line 33
    :goto_1
    iget-object v3, p0, Ld3/f;->f:Lk2/g0;

    .line 34
    .line 35
    invoke-virtual {v3, p1, v1}, Lk2/g0;->a(Lk2/s;Ly2/h$a;)Landroidx/media3/common/x;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, Ld3/f;->l:Landroidx/media3/common/x;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-object v3, p0, Ld3/f;->e:Lk2/e0;

    .line 44
    .line 45
    invoke-virtual {v3, v1}, Lk2/e0;->c(Landroidx/media3/common/x;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-interface {p1}, Lk2/s;->getPeekPosition()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    long-to-int v1, v3

    .line 53
    if-nez p2, :cond_3

    .line 54
    .line 55
    invoke-interface {p1, v1}, Lk2/s;->skipFully(I)V

    .line 56
    .line 57
    .line 58
    :cond_3
    move v3, v2

    .line 59
    :goto_2
    move v4, v3

    .line 60
    move v5, v4

    .line 61
    goto :goto_3

    .line 62
    :cond_4
    move v1, v2

    .line 63
    move v3, v1

    .line 64
    goto :goto_2

    .line 65
    :goto_3
    invoke-direct {p0, p1}, Ld3/f;->v(Lk2/s;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    const/4 v7, 0x1

    .line 70
    if-eqz v6, :cond_6

    .line 71
    .line 72
    if-lez v4, :cond_5

    .line 73
    .line 74
    goto :goto_5

    .line 75
    :cond_5
    invoke-direct {p0}, Ld3/f;->u()V

    .line 76
    .line 77
    .line 78
    new-instance p1, Ljava/io/EOFException;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_6
    iget-object v6, p0, Ld3/f;->c:Landroidx/media3/common/util/j0;

    .line 85
    .line 86
    invoke-virtual {v6, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 87
    .line 88
    .line 89
    iget-object v6, p0, Ld3/f;->c:Landroidx/media3/common/util/j0;

    .line 90
    .line 91
    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->q()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v3, :cond_7

    .line 96
    .line 97
    int-to-long v8, v3

    .line 98
    invoke-static {v6, v8, v9}, Ld3/f;->p(IJ)Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_8

    .line 103
    .line 104
    :cond_7
    invoke-static {v6}, Lk2/i0;->j(I)I

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    const/4 v9, -0x1

    .line 109
    if-ne v8, v9, :cond_c

    .line 110
    .line 111
    :cond_8
    add-int/lit8 v3, v5, 0x1

    .line 112
    .line 113
    if-ne v5, v0, :cond_a

    .line 114
    .line 115
    if-eqz p2, :cond_9

    .line 116
    .line 117
    return v2

    .line 118
    :cond_9
    invoke-direct {p0}, Ld3/f;->u()V

    .line 119
    .line 120
    .line 121
    new-instance p1, Ljava/io/EOFException;

    .line 122
    .line 123
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :cond_a
    if-eqz p2, :cond_b

    .line 128
    .line 129
    invoke-interface {p1}, Lk2/s;->resetPeekPosition()V

    .line 130
    .line 131
    .line 132
    add-int v4, v1, v3

    .line 133
    .line 134
    invoke-interface {p1, v4}, Lk2/s;->advancePeekPosition(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_b
    invoke-interface {p1, v7}, Lk2/s;->skipFully(I)V

    .line 139
    .line 140
    .line 141
    :goto_4
    move v4, v2

    .line 142
    move v5, v3

    .line 143
    move v3, v4

    .line 144
    goto :goto_3

    .line 145
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 146
    .line 147
    if-ne v4, v7, :cond_d

    .line 148
    .line 149
    iget-object v3, p0, Ld3/f;->d:Lk2/i0$a;

    .line 150
    .line 151
    invoke-virtual {v3, v6}, Lk2/i0$a;->a(I)Z

    .line 152
    .line 153
    .line 154
    move v3, v6

    .line 155
    goto :goto_7

    .line 156
    :cond_d
    const/4 v6, 0x4

    .line 157
    if-ne v4, v6, :cond_f

    .line 158
    .line 159
    :goto_5
    if-eqz p2, :cond_e

    .line 160
    .line 161
    add-int/2addr v1, v5

    .line 162
    invoke-interface {p1, v1}, Lk2/s;->skipFully(I)V

    .line 163
    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_e
    invoke-interface {p1}, Lk2/s;->resetPeekPosition()V

    .line 167
    .line 168
    .line 169
    :goto_6
    iput v3, p0, Ld3/f;->k:I

    .line 170
    .line 171
    return v7

    .line 172
    :cond_f
    :goto_7
    add-int/lit8 v8, v8, -0x4

    .line 173
    .line 174
    invoke-interface {p1, v8}, Lk2/s;->advancePeekPosition(I)V

    .line 175
    .line 176
    .line 177
    goto :goto_3
.end method


# virtual methods
.method public b(Lk2/s;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Ld3/f;->y(Lk2/s;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public synthetic c()Lk2/r;
    .locals 1

    .line 1
    invoke-static {p0}, Lk2/q;->b(Lk2/r;)Lk2/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d(Lk2/s;Lk2/l0;)I
    .locals 4

    .line 1
    invoke-direct {p0}, Ld3/f;->h()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Ld3/f;->w(Lk2/s;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 p2, -0x1

    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Ld3/f;->r:Ld3/g;

    .line 12
    .line 13
    instance-of p2, p2, Ld3/b;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-wide v0, p0, Ld3/f;->n:J

    .line 18
    .line 19
    invoke-direct {p0, v0, v1}, Ld3/f;->j(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-object p2, p0, Ld3/f;->r:Ld3/g;

    .line 24
    .line 25
    invoke-interface {p2}, Lk2/m0;->getDurationUs()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    cmp-long p2, v2, v0

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    iget-object p2, p0, Ld3/f;->r:Ld3/g;

    .line 34
    .line 35
    check-cast p2, Ld3/b;

    .line 36
    .line 37
    invoke-virtual {p2, v0, v1}, Ld3/b;->d(J)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Ld3/f;->h:Lk2/t;

    .line 41
    .line 42
    iget-object v0, p0, Ld3/f;->r:Ld3/g;

    .line 43
    .line 44
    invoke-interface {p2, v0}, Lk2/t;->d(Lk2/m0;)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Ld3/f;->i:Lk2/s0;

    .line 48
    .line 49
    iget-object v0, p0, Ld3/f;->r:Ld3/g;

    .line 50
    .line 51
    invoke-interface {v0}, Lk2/m0;->getDurationUs()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    invoke-interface {p2, v0, v1}, Lk2/s0;->f(J)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return p1
.end method

.method public e(Lk2/t;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ld3/f;->h:Lk2/t;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, Lk2/t;->track(II)Lk2/s0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Ld3/f;->i:Lk2/s0;

    .line 10
    .line 11
    iput-object p1, p0, Ld3/f;->j:Lk2/s0;

    .line 12
    .line 13
    iget-object p1, p0, Ld3/f;->h:Lk2/t;

    .line 14
    .line 15
    invoke-interface {p1}, Lk2/t;->endTracks()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public synthetic f()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, Lk2/q;->a(Lk2/r;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ld3/f;->s:Z

    .line 3
    .line 4
    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Ld3/f;->k:I

    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Ld3/f;->m:J

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Ld3/f;->n:J

    .line 14
    .line 15
    iput p1, p0, Ld3/f;->q:I

    .line 16
    .line 17
    iput-wide p3, p0, Ld3/f;->u:J

    .line 18
    .line 19
    iget-object p1, p0, Ld3/f;->r:Ld3/g;

    .line 20
    .line 21
    instance-of p2, p1, Ld3/b;

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    check-cast p1, Ld3/b;

    .line 26
    .line 27
    invoke-virtual {p1, p3, p4}, Ld3/b;->b(J)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Ld3/f;->t:Z

    .line 35
    .line 36
    iget-object p1, p0, Ld3/f;->g:Lk2/s0;

    .line 37
    .line 38
    iput-object p1, p0, Ld3/f;->j:Lk2/s0;

    .line 39
    .line 40
    :cond_0
    return-void
.end method
