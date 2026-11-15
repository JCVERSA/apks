.class abstract Lr9/i;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr9/i$c;,
        Lr9/i$b;
    }
.end annotation


# instance fields
.field private final a:Lr9/e;

.field private b:Li9/e0;

.field private c:Li9/n;

.field private d:Lr9/g;

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:I

.field private j:Lr9/i$b;

.field private k:J

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lr9/e;

    .line 5
    .line 6
    invoke-direct {v0}, Lr9/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lr9/i;->a:Lr9/e;

    .line 10
    .line 11
    new-instance v0, Lr9/i$b;

    .line 12
    .line 13
    invoke-direct {v0}, Lr9/i$b;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lr9/i;->j:Lr9/i$b;

    .line 17
    .line 18
    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr9/i;->b:Li9/e0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr9/i;->c:Li9/n;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private i(Li9/m;)Z
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lr9/i;->a:Lr9/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lr9/e;->d(Li9/m;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    iput p1, p0, Lr9/i;->h:I

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-interface {p1}, Li9/m;->getPosition()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iget-wide v2, p0, Lr9/i;->f:J

    .line 19
    .line 20
    sub-long/2addr v0, v2

    .line 21
    iput-wide v0, p0, Lr9/i;->k:J

    .line 22
    .line 23
    iget-object v0, p0, Lr9/i;->a:Lr9/e;

    .line 24
    .line 25
    invoke-virtual {v0}, Lr9/e;->c()Lcom/google/android/exoplayer2/util/d0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-wide v1, p0, Lr9/i;->f:J

    .line 30
    .line 31
    iget-object v3, p0, Lr9/i;->j:Lr9/i$b;

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1, v2, v3}, Lr9/i;->h(Lcom/google/android/exoplayer2/util/d0;JLr9/i$b;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-interface {p1}, Li9/m;->getPosition()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    iput-wide v0, p0, Lr9/i;->f:J

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p1, 0x1

    .line 47
    return p1
.end method

.method private j(Li9/m;)I
    .locals 13

    .line 1
    invoke-direct {p0, p1}, Lr9/i;->i(Li9/m;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v0, p0, Lr9/i;->j:Lr9/i$b;

    .line 10
    .line 11
    iget-object v0, v0, Lr9/i$b;->a:Lcom/google/android/exoplayer2/p1;

    .line 12
    .line 13
    iget v1, v0, Lcom/google/android/exoplayer2/p1;->z:I

    .line 14
    .line 15
    iput v1, p0, Lr9/i;->i:I

    .line 16
    .line 17
    iget-boolean v1, p0, Lr9/i;->m:Z

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lr9/i;->b:Li9/e0;

    .line 23
    .line 24
    invoke-interface {v1, v0}, Li9/e0;->d(Lcom/google/android/exoplayer2/p1;)V

    .line 25
    .line 26
    .line 27
    iput-boolean v2, p0, Lr9/i;->m:Z

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lr9/i;->j:Lr9/i$b;

    .line 30
    .line 31
    iget-object v0, v0, Lr9/i$b;->b:Lr9/g;

    .line 32
    .line 33
    const/4 v11, 0x0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iput-object v0, p0, Lr9/i;->d:Lr9/g;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-interface {p1}, Li9/m;->getLength()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    const-wide/16 v3, -0x1

    .line 44
    .line 45
    cmp-long v0, v0, v3

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    new-instance v0, Lr9/i$c;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-direct {v0, v1}, Lr9/i$c;-><init>(Lr9/i$a;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lr9/i;->d:Lr9/g;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    iget-object v0, p0, Lr9/i;->a:Lr9/e;

    .line 59
    .line 60
    invoke-virtual {v0}, Lr9/e;->b()Lr9/f;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget v1, v0, Lr9/f;->b:I

    .line 65
    .line 66
    and-int/lit8 v1, v1, 0x4

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    move v10, v2

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    move v10, v11

    .line 73
    :goto_0
    new-instance v12, Lr9/a;

    .line 74
    .line 75
    iget-wide v2, p0, Lr9/i;->f:J

    .line 76
    .line 77
    invoke-interface {p1}, Li9/m;->getLength()J

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    iget v1, v0, Lr9/f;->h:I

    .line 82
    .line 83
    iget v6, v0, Lr9/f;->i:I

    .line 84
    .line 85
    add-int/2addr v1, v6

    .line 86
    int-to-long v6, v1

    .line 87
    iget-wide v8, v0, Lr9/f;->c:J

    .line 88
    .line 89
    move-object v0, v12

    .line 90
    move-object v1, p0

    .line 91
    invoke-direct/range {v0 .. v10}, Lr9/a;-><init>(Lr9/i;JJJJZ)V

    .line 92
    .line 93
    .line 94
    iput-object v12, p0, Lr9/i;->d:Lr9/g;

    .line 95
    .line 96
    :goto_1
    const/4 v0, 0x2

    .line 97
    iput v0, p0, Lr9/i;->h:I

    .line 98
    .line 99
    iget-object v0, p0, Lr9/i;->a:Lr9/e;

    .line 100
    .line 101
    invoke-virtual {v0}, Lr9/e;->f()V

    .line 102
    .line 103
    .line 104
    return v11
.end method

.method private k(Li9/m;Li9/a0;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lr9/i;->d:Lr9/g;

    .line 6
    .line 7
    invoke-interface {v2, v1}, Lr9/g;->a(Li9/m;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v6, v2, v4

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    if-ltz v6, :cond_0

    .line 17
    .line 18
    move-object/from16 v6, p2

    .line 19
    .line 20
    iput-wide v2, v6, Li9/a0;->a:J

    .line 21
    .line 22
    return v7

    .line 23
    :cond_0
    const-wide/16 v8, -0x1

    .line 24
    .line 25
    cmp-long v6, v2, v8

    .line 26
    .line 27
    if-gez v6, :cond_1

    .line 28
    .line 29
    const-wide/16 v10, 0x2

    .line 30
    .line 31
    add-long/2addr v2, v10

    .line 32
    neg-long v2, v2

    .line 33
    invoke-virtual {v0, v2, v3}, Lr9/i;->e(J)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-boolean v2, v0, Lr9/i;->l:Z

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    iget-object v2, v0, Lr9/i;->d:Lr9/g;

    .line 41
    .line 42
    invoke-interface {v2}, Lr9/g;->createSeekMap()Li9/b0;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Li9/b0;

    .line 51
    .line 52
    iget-object v3, v0, Lr9/i;->c:Li9/n;

    .line 53
    .line 54
    invoke-interface {v3, v2}, Li9/n;->g(Li9/b0;)V

    .line 55
    .line 56
    .line 57
    iput-boolean v7, v0, Lr9/i;->l:Z

    .line 58
    .line 59
    :cond_2
    iget-wide v2, v0, Lr9/i;->k:J

    .line 60
    .line 61
    cmp-long v2, v2, v4

    .line 62
    .line 63
    if-gtz v2, :cond_4

    .line 64
    .line 65
    iget-object v2, v0, Lr9/i;->a:Lr9/e;

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Lr9/e;->d(Li9/m;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const/4 v1, 0x3

    .line 75
    iput v1, v0, Lr9/i;->h:I

    .line 76
    .line 77
    const/4 v1, -0x1

    .line 78
    return v1

    .line 79
    :cond_4
    :goto_0
    iput-wide v4, v0, Lr9/i;->k:J

    .line 80
    .line 81
    iget-object v1, v0, Lr9/i;->a:Lr9/e;

    .line 82
    .line 83
    invoke-virtual {v1}, Lr9/e;->c()Lcom/google/android/exoplayer2/util/d0;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lr9/i;->f(Lcom/google/android/exoplayer2/util/d0;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    cmp-long v4, v2, v4

    .line 92
    .line 93
    if-ltz v4, :cond_5

    .line 94
    .line 95
    iget-wide v4, v0, Lr9/i;->g:J

    .line 96
    .line 97
    add-long v6, v4, v2

    .line 98
    .line 99
    iget-wide v10, v0, Lr9/i;->e:J

    .line 100
    .line 101
    cmp-long v6, v6, v10

    .line 102
    .line 103
    if-ltz v6, :cond_5

    .line 104
    .line 105
    invoke-virtual {v0, v4, v5}, Lr9/i;->b(J)J

    .line 106
    .line 107
    .line 108
    move-result-wide v11

    .line 109
    iget-object v4, v0, Lr9/i;->b:Li9/e0;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->f()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    invoke-interface {v4, v1, v5}, Li9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    .line 116
    .line 117
    .line 118
    iget-object v10, v0, Lr9/i;->b:Li9/e0;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->f()I

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    const/4 v15, 0x0

    .line 125
    const/16 v16, 0x0

    .line 126
    .line 127
    const/4 v13, 0x1

    .line 128
    invoke-interface/range {v10 .. v16}, Li9/e0;->e(JIIILi9/e0$a;)V

    .line 129
    .line 130
    .line 131
    iput-wide v8, v0, Lr9/i;->e:J

    .line 132
    .line 133
    :cond_5
    iget-wide v4, v0, Lr9/i;->g:J

    .line 134
    .line 135
    add-long/2addr v4, v2

    .line 136
    iput-wide v4, v0, Lr9/i;->g:J

    .line 137
    .line 138
    const/4 v1, 0x0

    .line 139
    return v1
.end method


# virtual methods
.method protected b(J)J
    .locals 2

    .line 1
    const-wide/32 v0, 0xf4240

    .line 2
    .line 3
    .line 4
    mul-long/2addr p1, v0

    .line 5
    iget v0, p0, Lr9/i;->i:I

    .line 6
    .line 7
    int-to-long v0, v0

    .line 8
    div-long/2addr p1, v0

    .line 9
    return-wide p1
.end method

.method protected c(J)J
    .locals 2

    .line 1
    iget v0, p0, Lr9/i;->i:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    mul-long/2addr v0, p1

    .line 5
    const-wide/32 p1, 0xf4240

    .line 6
    .line 7
    .line 8
    div-long/2addr v0, p1

    .line 9
    return-wide v0
.end method

.method d(Li9/n;Li9/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr9/i;->c:Li9/n;

    .line 2
    .line 3
    iput-object p2, p0, Lr9/i;->b:Li9/e0;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lr9/i;->l(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected e(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lr9/i;->g:J

    .line 2
    .line 3
    return-void
.end method

.method protected abstract f(Lcom/google/android/exoplayer2/util/d0;)J
.end method

.method final g(Li9/m;Li9/a0;)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lr9/i;->a()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lr9/i;->h:I

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x3

    .line 15
    if-ne v0, p1, :cond_0

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    return p1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    iget-object v0, p0, Lr9/i;->d:Lr9/g;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1, p2}, Lr9/i;->k(Li9/m;Li9/a0;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_2
    iget-wide v0, p0, Lr9/i;->f:J

    .line 36
    .line 37
    long-to-int p2, v0

    .line 38
    invoke-interface {p1, p2}, Li9/m;->skipFully(I)V

    .line 39
    .line 40
    .line 41
    iput v2, p0, Lr9/i;->h:I

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    return p1

    .line 45
    :cond_3
    invoke-direct {p0, p1}, Lr9/i;->j(Li9/m;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1
.end method

.method protected abstract h(Lcom/google/android/exoplayer2/util/d0;JLr9/i$b;)Z
.end method

.method protected l(Z)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lr9/i$b;

    .line 6
    .line 7
    invoke-direct {p1}, Lr9/i$b;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lr9/i;->j:Lr9/i$b;

    .line 11
    .line 12
    iput-wide v0, p0, Lr9/i;->f:J

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lr9/i;->h:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    iput p1, p0, Lr9/i;->h:I

    .line 20
    .line 21
    :goto_0
    const-wide/16 v2, -0x1

    .line 22
    .line 23
    iput-wide v2, p0, Lr9/i;->e:J

    .line 24
    .line 25
    iput-wide v0, p0, Lr9/i;->g:J

    .line 26
    .line 27
    return-void
.end method

.method final m(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr9/i;->a:Lr9/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr9/e;->e()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long p1, p1, v0

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-boolean p1, p0, Lr9/i;->l:Z

    .line 13
    .line 14
    xor-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lr9/i;->l(Z)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget p1, p0, Lr9/i;->h:I

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, p3, p4}, Lr9/i;->c(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    iput-wide p1, p0, Lr9/i;->e:J

    .line 29
    .line 30
    iget-object p1, p0, Lr9/i;->d:Lr9/g;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lr9/g;

    .line 37
    .line 38
    iget-wide p2, p0, Lr9/i;->e:J

    .line 39
    .line 40
    invoke-interface {p1, p2, p3}, Lr9/g;->startSeek(J)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x2

    .line 44
    iput p1, p0, Lr9/i;->h:I

    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method
