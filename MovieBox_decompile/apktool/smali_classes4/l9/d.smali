.class public final Ll9/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Li9/l;


# static fields
.field public static final o:Li9/r;


# instance fields
.field private final a:[B

.field private final b:Lcom/google/android/exoplayer2/util/d0;

.field private final c:Z

.field private final d:Li9/s$a;

.field private e:Li9/n;

.field private f:Li9/e0;

.field private g:I

.field private h:Lcom/google/android/exoplayer2/metadata/Metadata;

.field private i:Li9/v;

.field private j:I

.field private k:I

.field private l:Ll9/b;

.field private m:I

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll9/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ll9/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ll9/d;->o:Li9/r;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ll9/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    .line 3
    new-array v0, v0, [B

    iput-object v0, p0, Ll9/d;->a:[B

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/d0;-><init>([BI)V

    iput-object v0, p0, Ll9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 5
    :goto_0
    iput-boolean v0, p0, Ll9/d;->c:Z

    .line 6
    new-instance p1, Li9/s$a;

    invoke-direct {p1}, Li9/s$a;-><init>()V

    iput-object p1, p0, Ll9/d;->d:Li9/s$a;

    .line 7
    iput v2, p0, Ll9/d;->g:I

    return-void
.end method

.method public static synthetic a()[Li9/l;
    .locals 1

    .line 1
    invoke-static {}, Ll9/d;->i()[Li9/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private e(Lcom/google/android/exoplayer2/util/d0;Z)J
    .locals 4

    .line 1
    iget-object v0, p0, Ll9/d;->i:Li9/v;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->f()I

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
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Ll9/d;->i:Li9/v;

    .line 22
    .line 23
    iget v2, p0, Ll9/d;->k:I

    .line 24
    .line 25
    iget-object v3, p0, Ll9/d;->d:Li9/s$a;

    .line 26
    .line 27
    invoke-static {p1, v1, v2, v3}, Li9/s;->d(Lcom/google/android/exoplayer2/util/d0;Li9/v;ILi9/s$a;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Ll9/d;->d:Li9/s$a;

    .line 37
    .line 38
    iget-wide p1, p1, Li9/s$a;->a:J

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
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->f()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    iget v1, p0, Ll9/d;->j:I

    .line 51
    .line 52
    sub-int/2addr p2, v1

    .line 53
    if-gt v0, p2, :cond_4

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 56
    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    :try_start_0
    iget-object v1, p0, Ll9/d;->i:Li9/v;

    .line 60
    .line 61
    iget v2, p0, Ll9/d;->k:I

    .line 62
    .line 63
    iget-object v3, p0, Ll9/d;->d:Li9/s$a;

    .line 64
    .line 65
    invoke-static {p1, v1, v2, v3}, Li9/s;->d(Lcom/google/android/exoplayer2/util/d0;Li9/v;ILi9/s$a;)Z

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
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->f()I

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
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Ll9/d;->d:Li9/s$a;

    .line 89
    .line 90
    iget-wide p1, p1, Li9/s$a;->a:J

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
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->f()I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 105
    .line 106
    .line 107
    :goto_4
    const-wide/16 p1, -0x1

    .line 108
    .line 109
    return-wide p1
.end method

.method private f(Li9/m;)V
    .locals 5

    .line 1
    invoke-static {p1}, Li9/t;->b(Li9/m;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Ll9/d;->k:I

    .line 6
    .line 7
    iget-object v0, p0, Ll9/d;->e:Li9/n;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Li9/n;

    .line 14
    .line 15
    invoke-interface {p1}, Li9/m;->getPosition()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-interface {p1}, Li9/m;->getLength()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-direct {p0, v1, v2, v3, v4}, Ll9/d;->g(JJ)Li9/b0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v0, p1}, Li9/n;->g(Li9/b0;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x5

    .line 31
    iput p1, p0, Ll9/d;->g:I

    .line 32
    .line 33
    return-void
.end method

.method private g(JJ)Li9/b0;
    .locals 8

    .line 1
    iget-object v0, p0, Ll9/d;->i:Li9/v;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Ll9/d;->i:Li9/v;

    .line 7
    .line 8
    iget-object v0, v2, Li9/v;->k:Li9/v$a;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance p3, Li9/u;

    .line 13
    .line 14
    invoke-direct {p3, v2, p1, p2}, Li9/u;-><init>(Li9/v;J)V

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
    iget-wide v0, v2, Li9/v;->j:J

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
    new-instance v0, Ll9/b;

    .line 33
    .line 34
    iget v3, p0, Ll9/d;->k:I

    .line 35
    .line 36
    move-object v1, v0

    .line 37
    move-wide v4, p1

    .line 38
    move-wide v6, p3

    .line 39
    invoke-direct/range {v1 .. v7}, Ll9/b;-><init>(Li9/v;IJJ)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Ll9/d;->l:Ll9/b;

    .line 43
    .line 44
    invoke-virtual {v0}, Li9/a;->b()Li9/b0;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_1
    new-instance p1, Li9/b0$b;

    .line 50
    .line 51
    invoke-virtual {v2}, Li9/v;->f()J

    .line 52
    .line 53
    .line 54
    move-result-wide p2

    .line 55
    invoke-direct {p1, p2, p3}, Li9/b0$b;-><init>(J)V

    .line 56
    .line 57
    .line 58
    return-object p1
.end method

.method private h(Li9/m;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ll9/d;->a:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    array-length v2, v0

    .line 5
    invoke-interface {p1, v0, v1, v2}, Li9/m;->peekFully([BII)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Li9/m;->resetPeekPosition()V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    iput p1, p0, Ll9/d;->g:I

    .line 13
    .line 14
    return-void
.end method

.method private static synthetic i()[Li9/l;
    .locals 3

    .line 1
    new-instance v0, Ll9/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ll9/d;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Li9/l;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v0, v1, v2

    .line 11
    .line 12
    return-object v1
.end method

.method private j()V
    .locals 11

    .line 1
    iget-wide v0, p0, Ll9/d;->n:J

    .line 2
    .line 3
    const-wide/32 v2, 0xf4240

    .line 4
    .line 5
    .line 6
    mul-long/2addr v0, v2

    .line 7
    iget-object v2, p0, Ll9/d;->i:Li9/v;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Li9/v;

    .line 14
    .line 15
    iget v2, v2, Li9/v;->e:I

    .line 16
    .line 17
    int-to-long v2, v2

    .line 18
    div-long v5, v0, v2

    .line 19
    .line 20
    iget-object v0, p0, Ll9/d;->f:Li9/e0;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v4, v0

    .line 27
    check-cast v4, Li9/e0;

    .line 28
    .line 29
    iget v8, p0, Ll9/d;->m:I

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v7, 0x1

    .line 34
    invoke-interface/range {v4 .. v10}, Li9/e0;->e(JIIILi9/e0$a;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private k(Li9/m;Li9/a0;)I
    .locals 6

    .line 1
    iget-object v0, p0, Ll9/d;->f:Li9/e0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll9/d;->i:Li9/v;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ll9/d;->l:Ll9/b;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Li9/a;->d()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Ll9/d;->l:Ll9/b;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Li9/a;->c(Li9/m;Li9/a0;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_0
    iget-wide v0, p0, Ll9/d;->n:J

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
    iget-object p2, p0, Ll9/d;->i:Li9/v;

    .line 38
    .line 39
    invoke-static {p1, p2}, Li9/s;->i(Li9/m;Li9/v;)J

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    iput-wide p1, p0, Ll9/d;->n:J

    .line 44
    .line 45
    return v0

    .line 46
    :cond_1
    iget-object p2, p0, Ll9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/d0;->f()I

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
    iget-object v4, p0, Ll9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    sub-int/2addr v1, p2

    .line 64
    invoke-interface {p1, v4, p2, v1}, Li9/m;->read([BII)I

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
    iget-object v1, p0, Ll9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 77
    .line 78
    add-int/2addr p2, p1

    .line 79
    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/util/d0;->O(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object p1, p0, Ll9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_5

    .line 90
    .line 91
    invoke-direct {p0}, Ll9/d;->j()V

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
    iget-object p1, p0, Ll9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iget p2, p0, Ll9/d;->m:I

    .line 103
    .line 104
    iget v1, p0, Ll9/d;->j:I

    .line 105
    .line 106
    if-ge p2, v1, :cond_6

    .line 107
    .line 108
    iget-object v5, p0, Ll9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 109
    .line 110
    sub-int/2addr v1, p2

    .line 111
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/d0;->a()I

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
    invoke-virtual {v5, p2}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 120
    .line 121
    .line 122
    :cond_6
    iget-object p2, p0, Ll9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 123
    .line 124
    invoke-direct {p0, p2, v4}, Ll9/d;->e(Lcom/google/android/exoplayer2/util/d0;Z)J

    .line 125
    .line 126
    .line 127
    move-result-wide v4

    .line 128
    iget-object p2, p0, Ll9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 129
    .line 130
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    sub-int/2addr p2, p1

    .line 135
    iget-object v1, p0, Ll9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 136
    .line 137
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Ll9/d;->f:Li9/e0;

    .line 141
    .line 142
    iget-object v1, p0, Ll9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 143
    .line 144
    invoke-interface {p1, v1, p2}, Li9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    .line 145
    .line 146
    .line 147
    iget p1, p0, Ll9/d;->m:I

    .line 148
    .line 149
    add-int/2addr p1, p2

    .line 150
    iput p1, p0, Ll9/d;->m:I

    .line 151
    .line 152
    cmp-long p1, v4, v2

    .line 153
    .line 154
    if-eqz p1, :cond_7

    .line 155
    .line 156
    invoke-direct {p0}, Ll9/d;->j()V

    .line 157
    .line 158
    .line 159
    iput v0, p0, Ll9/d;->m:I

    .line 160
    .line 161
    iput-wide v4, p0, Ll9/d;->n:J

    .line 162
    .line 163
    :cond_7
    iget-object p1, p0, Ll9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    const/16 p2, 0x10

    .line 170
    .line 171
    if-ge p1, p2, :cond_8

    .line 172
    .line 173
    iget-object p1, p0, Ll9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    iget-object p2, p0, Ll9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 180
    .line 181
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    iget-object v1, p0, Ll9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 186
    .line 187
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    iget-object v2, p0, Ll9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 192
    .line 193
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-static {p2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    .line 199
    .line 200
    iget-object p2, p0, Ll9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 201
    .line 202
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 203
    .line 204
    .line 205
    iget-object p2, p0, Ll9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 206
    .line 207
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/d0;->O(I)V

    .line 208
    .line 209
    .line 210
    :cond_8
    return v0
.end method

.method private l(Li9/m;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ll9/d;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {p1, v0}, Li9/t;->d(Li9/m;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Ll9/d;->h:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 10
    .line 11
    iput v1, p0, Ll9/d;->g:I

    .line 12
    .line 13
    return-void
.end method

.method private m(Li9/m;)V
    .locals 3

    .line 1
    new-instance v0, Li9/t$a;

    .line 2
    .line 3
    iget-object v1, p0, Ll9/d;->i:Li9/v;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Li9/t$a;-><init>(Li9/v;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-static {p1, v0}, Li9/t;->e(Li9/m;Li9/t$a;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, v0, Li9/t$a;->a:Li9/v;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Li9/v;

    .line 22
    .line 23
    iput-object v2, p0, Ll9/d;->i:Li9/v;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Ll9/d;->i:Li9/v;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Ll9/d;->i:Li9/v;

    .line 32
    .line 33
    iget p1, p1, Li9/v;->c:I

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
    iput p1, p0, Ll9/d;->j:I

    .line 41
    .line 42
    iget-object p1, p0, Ll9/d;->f:Li9/e0;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Li9/e0;

    .line 49
    .line 50
    iget-object v0, p0, Ll9/d;->i:Li9/v;

    .line 51
    .line 52
    iget-object v1, p0, Ll9/d;->a:[B

    .line 53
    .line 54
    iget-object v2, p0, Ll9/d;->h:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Li9/v;->g([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/p1;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {p1, v0}, Li9/e0;->d(Lcom/google/android/exoplayer2/p1;)V

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x4

    .line 64
    iput p1, p0, Ll9/d;->g:I

    .line 65
    .line 66
    return-void
.end method

.method private n(Li9/m;)V
    .locals 0

    .line 1
    invoke-static {p1}, Li9/t;->i(Li9/m;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x3

    .line 5
    iput p1, p0, Ll9/d;->g:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public b(Li9/n;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ll9/d;->e:Li9/n;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, Li9/n;->track(II)Li9/e0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Ll9/d;->f:Li9/e0;

    .line 10
    .line 11
    invoke-interface {p1}, Li9/n;->endTracks()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public c(Li9/m;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Li9/t;->c(Li9/m;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Li9/t;->a(Li9/m;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public d(Li9/m;Li9/a0;)I
    .locals 3

    .line 1
    iget v0, p0, Ll9/d;->g:I

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
    invoke-direct {p0, p1, p2}, Ll9/d;->k(Li9/m;Li9/a0;)I

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
    invoke-direct {p0, p1}, Ll9/d;->f(Li9/m;)V

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    invoke-direct {p0, p1}, Ll9/d;->m(Li9/m;)V

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_3
    invoke-direct {p0, p1}, Ll9/d;->n(Li9/m;)V

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_4
    invoke-direct {p0, p1}, Ll9/d;->h(Li9/m;)V

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :cond_5
    invoke-direct {p0, p1}, Ll9/d;->l(Li9/m;)V

    .line 49
    .line 50
    .line 51
    return v1
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
    iput p2, p0, Ll9/d;->g:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Ll9/d;->l:Ll9/b;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, p3, p4}, Li9/a;->h(J)V

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
    iput-wide v0, p0, Ll9/d;->n:J

    .line 26
    .line 27
    iput p2, p0, Ll9/d;->m:I

    .line 28
    .line 29
    iget-object p1, p0, Ll9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/d0;->L(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
