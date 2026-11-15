.class public final Lp2/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk2/r;


# static fields
.field public static final o:Lk2/x;


# instance fields
.field private final a:[B

.field private final b:Landroidx/media3/common/util/j0;

.field private final c:Z

.field private final d:Lk2/y$a;

.field private e:Lk2/t;

.field private f:Lk2/s0;

.field private g:I

.field private h:Landroidx/media3/common/x;

.field private i:Lk2/b0;

.field private j:I

.field private k:I

.field private l:Lp2/b;

.field private m:I

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lp2/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lp2/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp2/d;->o:Lk2/x;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lp2/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    .line 3
    new-array v0, v0, [B

    iput-object v0, p0, Lp2/d;->a:[B

    .line 4
    new-instance v0, Landroidx/media3/common/util/j0;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/j0;-><init>([BI)V

    iput-object v0, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 5
    :goto_0
    iput-boolean v0, p0, Lp2/d;->c:Z

    .line 6
    new-instance p1, Lk2/y$a;

    invoke-direct {p1}, Lk2/y$a;-><init>()V

    iput-object p1, p0, Lp2/d;->d:Lk2/y$a;

    .line 7
    iput v2, p0, Lp2/d;->g:I

    return-void
.end method

.method public static synthetic a()[Lk2/r;
    .locals 1

    .line 1
    invoke-static {}, Lp2/d;->k()[Lk2/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private g(Landroidx/media3/common/util/j0;Z)J
    .locals 4

    .line 1
    iget-object v0, p0, Lp2/d;->i:Lk2/b0;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x10

    .line 15
    .line 16
    if-gt v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lp2/d;->i:Lk2/b0;

    .line 22
    .line 23
    iget v2, p0, Lp2/d;->k:I

    .line 24
    .line 25
    iget-object v3, p0, Lp2/d;->d:Lk2/y$a;

    .line 26
    .line 27
    invoke-static {p1, v1, v2, v3}, Lk2/y;->d(Landroidx/media3/common/util/j0;Lk2/b0;ILk2/y$a;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lp2/d;->d:Lk2/y$a;

    .line 37
    .line 38
    iget-wide p1, p1, Lk2/y$a;->a:J

    .line 39
    .line 40
    return-wide p1

    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-eqz p2, :cond_5

    .line 45
    .line 46
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    iget v1, p0, Lp2/d;->j:I

    .line 51
    .line 52
    sub-int/2addr p2, v1

    .line 53
    if-gt v0, p2, :cond_4

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 56
    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    :try_start_0
    iget-object v1, p0, Lp2/d;->i:Lk2/b0;

    .line 60
    .line 61
    iget v2, p0, Lp2/d;->k:I

    .line 62
    .line 63
    iget-object v3, p0, Lp2/d;->d:Lk2/y$a;

    .line 64
    .line 65
    invoke-static {p1, v1, v2, v3}, Lk2/y;->d(Landroidx/media3/common/util/j0;Lk2/b0;ILk2/y$a;)Z

    .line 66
    .line 67
    .line 68
    move-result v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_2

    .line 70
    :catch_0
    move v1, p2

    .line 71
    :goto_2
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-le v2, v3, :cond_2

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_2
    move p2, v1

    .line 83
    :goto_3
    if-eqz p2, :cond_3

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lp2/d;->d:Lk2/y$a;

    .line 89
    .line 90
    iget-wide p1, p1, Lk2/y$a;->a:J

    .line 91
    .line 92
    return-wide p1

    .line 93
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_5
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 105
    .line 106
    .line 107
    :goto_4
    const-wide/16 p1, -0x1

    .line 108
    .line 109
    return-wide p1
.end method

.method private h(Lk2/s;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lk2/z;->b(Lk2/s;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lp2/d;->k:I

    .line 6
    .line 7
    iget-object v0, p0, Lp2/d;->e:Lk2/t;

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lk2/t;

    .line 14
    .line 15
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-interface {p1}, Lk2/s;->getLength()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-direct {p0, v1, v2, v3, v4}, Lp2/d;->i(JJ)Lk2/m0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v0, p1}, Lk2/t;->d(Lk2/m0;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x5

    .line 31
    iput p1, p0, Lp2/d;->g:I

    .line 32
    .line 33
    return-void
.end method

.method private i(JJ)Lk2/m0;
    .locals 8

    .line 1
    iget-object v0, p0, Lp2/d;->i:Lk2/b0;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lp2/d;->i:Lk2/b0;

    .line 7
    .line 8
    iget-object v0, v2, Lk2/b0;->k:Lk2/b0$a;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance p3, Lk2/a0;

    .line 13
    .line 14
    invoke-direct {p3, v2, p1, p2}, Lk2/a0;-><init>(Lk2/b0;J)V

    .line 15
    .line 16
    .line 17
    return-object p3

    .line 18
    :cond_0
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    cmp-long v0, p3, v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-wide v0, v2, Lk2/b0;->j:J

    .line 25
    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    cmp-long v0, v0, v3

    .line 29
    .line 30
    if-lez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Lp2/b;

    .line 33
    .line 34
    iget v3, p0, Lp2/d;->k:I

    .line 35
    .line 36
    move-object v1, v0

    .line 37
    move-wide v4, p1

    .line 38
    move-wide v6, p3

    .line 39
    invoke-direct/range {v1 .. v7}, Lp2/b;-><init>(Lk2/b0;IJJ)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lp2/d;->l:Lp2/b;

    .line 43
    .line 44
    invoke-virtual {v0}, Lk2/e;->b()Lk2/m0;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_1
    new-instance p1, Lk2/m0$b;

    .line 50
    .line 51
    invoke-virtual {v2}, Lk2/b0;->f()J

    .line 52
    .line 53
    .line 54
    move-result-wide p2

    .line 55
    invoke-direct {p1, p2, p3}, Lk2/m0$b;-><init>(J)V

    .line 56
    .line 57
    .line 58
    return-object p1
.end method

.method private j(Lk2/s;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp2/d;->a:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    array-length v2, v0

    .line 5
    invoke-interface {p1, v0, v1, v2}, Lk2/s;->peekFully([BII)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lk2/s;->resetPeekPosition()V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    iput p1, p0, Lp2/d;->g:I

    .line 13
    .line 14
    return-void
.end method

.method private static synthetic k()[Lk2/r;
    .locals 3

    .line 1
    new-instance v0, Lp2/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lp2/d;-><init>()V

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

.method private l()V
    .locals 11

    .line 1
    iget-wide v0, p0, Lp2/d;->n:J

    .line 2
    .line 3
    const-wide/32 v2, 0xf4240

    .line 4
    .line 5
    .line 6
    mul-long/2addr v0, v2

    .line 7
    iget-object v2, p0, Lp2/d;->i:Lk2/b0;

    .line 8
    .line 9
    invoke-static {v2}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lk2/b0;

    .line 14
    .line 15
    iget v2, v2, Lk2/b0;->e:I

    .line 16
    .line 17
    int-to-long v2, v2

    .line 18
    div-long v5, v0, v2

    .line 19
    .line 20
    iget-object v0, p0, Lp2/d;->f:Lk2/s0;

    .line 21
    .line 22
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v4, v0

    .line 27
    check-cast v4, Lk2/s0;

    .line 28
    .line 29
    iget v8, p0, Lp2/d;->m:I

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v7, 0x1

    .line 34
    invoke-interface/range {v4 .. v10}, Lk2/s0;->b(JIIILk2/s0$a;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private m(Lk2/s;Lk2/l0;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lp2/d;->f:Lk2/s0;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lp2/d;->i:Lk2/b0;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lp2/d;->l:Lp2/b;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lk2/e;->d()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lp2/d;->l:Lp2/b;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Lk2/e;->c(Lk2/s;Lk2/l0;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_0
    iget-wide v0, p0, Lp2/d;->n:J

    .line 29
    .line 30
    const-wide/16 v2, -0x1

    .line 31
    .line 32
    cmp-long p2, v0, v2

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    iget-object p2, p0, Lp2/d;->i:Lk2/b0;

    .line 38
    .line 39
    invoke-static {p1, p2}, Lk2/y;->i(Lk2/s;Lk2/b0;)J

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    iput-wide p1, p0, Lp2/d;->n:J

    .line 44
    .line 45
    return v0

    .line 46
    :cond_1
    iget-object p2, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 47
    .line 48
    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->g()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const v1, 0x8000

    .line 53
    .line 54
    .line 55
    if-ge p2, v1, :cond_4

    .line 56
    .line 57
    iget-object v4, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroidx/media3/common/util/j0;->e()[B

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    sub-int/2addr v1, p2

    .line 64
    invoke-interface {p1, v4, p2, v1}, Lk2/s;->read([BII)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const/4 v1, -0x1

    .line 69
    if-ne p1, v1, :cond_2

    .line 70
    .line 71
    const/4 v4, 0x1

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    move v4, v0

    .line 74
    :goto_0
    if-nez v4, :cond_3

    .line 75
    .line 76
    iget-object v1, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 77
    .line 78
    add-int/2addr p2, p1

    .line 79
    invoke-virtual {v1, p2}, Landroidx/media3/common/util/j0;->V(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object p1, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_5

    .line 90
    .line 91
    invoke-direct {p0}, Lp2/d;->l()V

    .line 92
    .line 93
    .line 94
    return v1

    .line 95
    :cond_4
    move v4, v0

    .line 96
    :cond_5
    :goto_1
    iget-object p1, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iget p2, p0, Lp2/d;->m:I

    .line 103
    .line 104
    iget v1, p0, Lp2/d;->j:I

    .line 105
    .line 106
    if-ge p2, v1, :cond_6

    .line 107
    .line 108
    iget-object v5, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 109
    .line 110
    sub-int/2addr v1, p2

    .line 111
    invoke-virtual {v5}, Landroidx/media3/common/util/j0;->a()I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    invoke-virtual {v5, p2}, Landroidx/media3/common/util/j0;->X(I)V

    .line 120
    .line 121
    .line 122
    :cond_6
    iget-object p2, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 123
    .line 124
    invoke-direct {p0, p2, v4}, Lp2/d;->g(Landroidx/media3/common/util/j0;Z)J

    .line 125
    .line 126
    .line 127
    move-result-wide v4

    .line 128
    iget-object p2, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 129
    .line 130
    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->f()I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    sub-int/2addr p2, p1

    .line 135
    iget-object v1, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 136
    .line 137
    invoke-virtual {v1, p1}, Landroidx/media3/common/util/j0;->W(I)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lp2/d;->f:Lk2/s0;

    .line 141
    .line 142
    iget-object v1, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 143
    .line 144
    invoke-interface {p1, v1, p2}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 145
    .line 146
    .line 147
    iget p1, p0, Lp2/d;->m:I

    .line 148
    .line 149
    add-int/2addr p1, p2

    .line 150
    iput p1, p0, Lp2/d;->m:I

    .line 151
    .line 152
    cmp-long p1, v4, v2

    .line 153
    .line 154
    if-eqz p1, :cond_7

    .line 155
    .line 156
    invoke-direct {p0}, Lp2/d;->l()V

    .line 157
    .line 158
    .line 159
    iput v0, p0, Lp2/d;->m:I

    .line 160
    .line 161
    iput-wide v4, p0, Lp2/d;->n:J

    .line 162
    .line 163
    :cond_7
    iget-object p1, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 164
    .line 165
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    array-length p1, p1

    .line 170
    iget-object p2, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 171
    .line 172
    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->g()I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    sub-int/2addr p1, p2

    .line 177
    iget-object p2, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 178
    .line 179
    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->a()I

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    const/16 v1, 0x10

    .line 184
    .line 185
    if-ge p2, v1, :cond_8

    .line 186
    .line 187
    if-ge p1, v1, :cond_8

    .line 188
    .line 189
    iget-object p1, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 190
    .line 191
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    iget-object p2, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 196
    .line 197
    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->e()[B

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    iget-object v1, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 202
    .line 203
    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->f()I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    iget-object v2, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 208
    .line 209
    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->e()[B

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-static {p2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    .line 215
    .line 216
    iget-object p2, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 217
    .line 218
    invoke-virtual {p2, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 219
    .line 220
    .line 221
    iget-object p2, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 222
    .line 223
    invoke-virtual {p2, p1}, Landroidx/media3/common/util/j0;->V(I)V

    .line 224
    .line 225
    .line 226
    :cond_8
    return v0
.end method

.method private n(Lk2/s;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lp2/d;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {p1, v0}, Lk2/z;->d(Lk2/s;Z)Landroidx/media3/common/x;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lp2/d;->h:Landroidx/media3/common/x;

    .line 10
    .line 11
    iput v1, p0, Lp2/d;->g:I

    .line 12
    .line 13
    return-void
.end method

.method private o(Lk2/s;)V
    .locals 3

    .line 1
    new-instance v0, Lk2/z$a;

    .line 2
    .line 3
    iget-object v1, p0, Lp2/d;->i:Lk2/b0;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lk2/z$a;-><init>(Lk2/b0;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-static {p1, v0}, Lk2/z;->e(Lk2/s;Lk2/z$a;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, v0, Lk2/z$a;->a:Lk2/b0;

    .line 16
    .line 17
    invoke-static {v2}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lk2/b0;

    .line 22
    .line 23
    iput-object v2, p0, Lp2/d;->i:Lk2/b0;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lp2/d;->i:Lk2/b0;

    .line 27
    .line 28
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lp2/d;->i:Lk2/b0;

    .line 32
    .line 33
    iget p1, p1, Lk2/b0;->c:I

    .line 34
    .line 35
    const/4 v0, 0x6

    .line 36
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lp2/d;->j:I

    .line 41
    .line 42
    iget-object p1, p0, Lp2/d;->i:Lk2/b0;

    .line 43
    .line 44
    iget-object v0, p0, Lp2/d;->a:[B

    .line 45
    .line 46
    iget-object v1, p0, Lp2/d;->h:Landroidx/media3/common/x;

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Lk2/b0;->g([BLandroidx/media3/common/x;)Landroidx/media3/common/r;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object v0, p0, Lp2/d;->f:Lk2/s0;

    .line 53
    .line 54
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lk2/s0;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v1, "audio/flac"

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {v0, p1}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lp2/d;->f:Lk2/s0;

    .line 78
    .line 79
    invoke-static {p1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lk2/s0;

    .line 84
    .line 85
    iget-object v0, p0, Lp2/d;->i:Lk2/b0;

    .line 86
    .line 87
    invoke-virtual {v0}, Lk2/b0;->f()J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    invoke-interface {p1, v0, v1}, Lk2/s0;->f(J)V

    .line 92
    .line 93
    .line 94
    const/4 p1, 0x4

    .line 95
    iput p1, p0, Lp2/d;->g:I

    .line 96
    .line 97
    return-void
.end method

.method private p(Lk2/s;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lk2/z;->i(Lk2/s;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x3

    .line 5
    iput p1, p0, Lp2/d;->g:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public b(Lk2/s;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lk2/z;->c(Lk2/s;Z)Landroidx/media3/common/x;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lk2/z;->a(Lk2/s;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
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
    .locals 3

    .line 1
    iget v0, p0, Lp2/d;->g:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_4

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v0, v2, :cond_3

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-eq v0, v2, :cond_2

    .line 14
    .line 15
    const/4 v2, 0x4

    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0, p1, p2}, Lp2/d;->m(Lk2/s;Lk2/l0;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    invoke-direct {p0, p1}, Lp2/d;->h(Lk2/s;)V

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    invoke-direct {p0, p1}, Lp2/d;->o(Lk2/s;)V

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_3
    invoke-direct {p0, p1}, Lp2/d;->p(Lk2/s;)V

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_4
    invoke-direct {p0, p1}, Lp2/d;->j(Lk2/s;)V

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :cond_5
    invoke-direct {p0, p1}, Lp2/d;->n(Lk2/s;)V

    .line 49
    .line 50
    .line 51
    return v1
.end method

.method public e(Lk2/t;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lp2/d;->e:Lk2/t;

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
    move-result-object v0

    .line 9
    iput-object v0, p0, Lp2/d;->f:Lk2/s0;

    .line 10
    .line 11
    invoke-interface {p1}, Lk2/t;->endTracks()V

    .line 12
    .line 13
    .line 14
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

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, v0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iput p2, p0, Lp2/d;->g:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lp2/d;->l:Lp2/b;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, p3, p4}, Lk2/e;->h(J)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const-wide/16 v0, -0x1

    .line 24
    .line 25
    :goto_1
    iput-wide v0, p0, Lp2/d;->n:J

    .line 26
    .line 27
    iput p2, p0, Lp2/d;->m:I

    .line 28
    .line 29
    iget-object p1, p0, Lp2/d;->b:Landroidx/media3/common/util/j0;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/j0;->S(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
