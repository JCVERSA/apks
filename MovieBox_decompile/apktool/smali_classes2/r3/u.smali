.class public final Lr3/u;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lr3/m;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroidx/media3/common/util/j0;

.field private final c:Landroidx/media3/common/util/i0;

.field private final d:Landroidx/media3/common/util/j0;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lk2/s0;

.field private h:D

.field private i:D

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:I

.field private p:I

.field private q:Lr3/v$b;

.field private r:I

.field private s:I

.field private t:I

.field private u:J

.field private v:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr3/u;->a:Ljava/lang/String;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lr3/u;->e:I

    .line 8
    .line 9
    new-instance p1, Landroidx/media3/common/util/j0;

    .line 10
    .line 11
    const/16 v0, 0xf

    .line 12
    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-direct {p1, v0, v1}, Landroidx/media3/common/util/j0;-><init>([BI)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lr3/u;->b:Landroidx/media3/common/util/j0;

    .line 20
    .line 21
    new-instance p1, Landroidx/media3/common/util/i0;

    .line 22
    .line 23
    invoke-direct {p1}, Landroidx/media3/common/util/i0;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lr3/u;->c:Landroidx/media3/common/util/i0;

    .line 27
    .line 28
    new-instance p1, Landroidx/media3/common/util/j0;

    .line 29
    .line 30
    invoke-direct {p1}, Landroidx/media3/common/util/j0;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lr3/u;->d:Landroidx/media3/common/util/j0;

    .line 34
    .line 35
    new-instance p1, Lr3/v$b;

    .line 36
    .line 37
    invoke-direct {p1}, Lr3/v$b;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lr3/u;->q:Lr3/v$b;

    .line 41
    .line 42
    const p1, -0x7fffffff

    .line 43
    .line 44
    .line 45
    iput p1, p0, Lr3/u;->r:I

    .line 46
    .line 47
    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lr3/u;->s:I

    .line 49
    .line 50
    const-wide/16 v0, -0x1

    .line 51
    .line 52
    iput-wide v0, p0, Lr3/u;->u:J

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lr3/u;->k:Z

    .line 56
    .line 57
    iput-boolean p1, p0, Lr3/u;->n:Z

    .line 58
    .line 59
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    .line 60
    .line 61
    iput-wide v0, p0, Lr3/u;->h:D

    .line 62
    .line 63
    iput-wide v0, p0, Lr3/u;->i:D

    .line 64
    .line 65
    return-void
.end method

.method private b(Landroidx/media3/common/util/j0;Landroidx/media3/common/util/j0;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->a()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->e()[B

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->f()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {p1, v2, v3, v1}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v1}, Landroidx/media3/common/util/j0;->X(I)V

    .line 29
    .line 30
    .line 31
    if-eqz p3, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method private f()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lr3/u;->v:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lr3/u;->k:Z

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    move v5, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v5, v1

    .line 12
    :goto_0
    iget v0, p0, Lr3/u;->s:I

    .line 13
    .line 14
    iget v2, p0, Lr3/u;->t:I

    .line 15
    .line 16
    sub-int/2addr v0, v2

    .line 17
    int-to-double v2, v0

    .line 18
    const-wide v6, 0x412e848000000000L    # 1000000.0

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    mul-double/2addr v2, v6

    .line 24
    iget v0, p0, Lr3/u;->r:I

    .line 25
    .line 26
    int-to-double v6, v0

    .line 27
    div-double/2addr v2, v6

    .line 28
    iget-wide v6, p0, Lr3/u;->h:D

    .line 29
    .line 30
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    .line 31
    .line 32
    .line 33
    move-result-wide v6

    .line 34
    iget-boolean v0, p0, Lr3/u;->j:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iput-boolean v1, p0, Lr3/u;->j:Z

    .line 39
    .line 40
    iget-wide v2, p0, Lr3/u;->i:D

    .line 41
    .line 42
    iput-wide v2, p0, Lr3/u;->h:D

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-wide v8, p0, Lr3/u;->h:D

    .line 46
    .line 47
    add-double/2addr v8, v2

    .line 48
    iput-wide v8, p0, Lr3/u;->h:D

    .line 49
    .line 50
    :goto_1
    iget-object v2, p0, Lr3/u;->g:Lk2/s0;

    .line 51
    .line 52
    iget v0, p0, Lr3/u;->p:I

    .line 53
    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v9, 0x0

    .line 56
    move-wide v3, v6

    .line 57
    move v6, v0

    .line 58
    move v7, v8

    .line 59
    move-object v8, v9

    .line 60
    invoke-interface/range {v2 .. v8}, Lk2/s0;->b(JIIILk2/s0$a;)V

    .line 61
    .line 62
    .line 63
    iput-boolean v1, p0, Lr3/u;->v:Z

    .line 64
    .line 65
    iput v1, p0, Lr3/u;->t:I

    .line 66
    .line 67
    iput v1, p0, Lr3/u;->p:I

    .line 68
    .line 69
    return-void
.end method

.method private g(Landroidx/media3/common/util/i0;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1}, Lr3/v;->h(Landroidx/media3/common/util/i0;)Lr3/v$c;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iget v1, p1, Lr3/v$c;->b:I

    .line 7
    .line 8
    iput v1, p0, Lr3/u;->r:I

    .line 9
    .line 10
    iget v1, p1, Lr3/v$c;->c:I

    .line 11
    .line 12
    iput v1, p0, Lr3/u;->s:I

    .line 13
    .line 14
    iget-wide v1, p0, Lr3/u;->u:J

    .line 15
    .line 16
    iget-object v3, p0, Lr3/u;->q:Lr3/v$b;

    .line 17
    .line 18
    iget-wide v3, v3, Lr3/v$b;->b:J

    .line 19
    .line 20
    cmp-long v1, v1, v3

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iput-wide v3, p0, Lr3/u;->u:J

    .line 25
    .line 26
    iget v1, p1, Lr3/v$c;->a:I

    .line 27
    .line 28
    const/4 v2, -0x1

    .line 29
    const-string v3, "mhm1"

    .line 30
    .line 31
    if-eq v1, v2, :cond_0

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v2, p1, Lr3/v$c;->a:I

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-array v3, v0, [Ljava/lang/Object;

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    aput-object v2, v3, v4

    .line 51
    .line 52
    const-string v2, ".%02X"

    .line 53
    .line 54
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    :cond_0
    iget-object p1, p1, Lr3/v$c;->d:[B

    .line 66
    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    array-length v1, p1

    .line 70
    if-lez v1, :cond_1

    .line 71
    .line 72
    sget-object v1, Landroidx/media3/common/util/a1;->f:[B

    .line 73
    .line 74
    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const/4 p1, 0x0

    .line 80
    :goto_0
    new-instance v1, Landroidx/media3/common/r$b;

    .line 81
    .line 82
    invoke-direct {v1}, Landroidx/media3/common/r$b;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lr3/u;->f:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v2, p0, Lr3/u;->a:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v2, "audio/mhm1"

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iget v2, p0, Lr3/u;->r:I

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1, v3}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1, p1}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object v1, p0, Lr3/u;->g:Lk2/s0;

    .line 122
    .line 123
    invoke-interface {v1, p1}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 124
    .line 125
    .line 126
    :cond_2
    iput-boolean v0, p0, Lr3/u;->v:Z

    .line 127
    .line 128
    return-void
.end method

.method private h()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lr3/u;->b:Landroidx/media3/common/util/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lr3/u;->c:Landroidx/media3/common/util/i0;

    .line 8
    .line 9
    iget-object v2, p0, Lr3/u;->b:Landroidx/media3/common/util/j0;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->e()[B

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2, v0}, Landroidx/media3/common/util/i0;->o([BI)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lr3/u;->c:Landroidx/media3/common/util/i0;

    .line 19
    .line 20
    iget-object v2, p0, Lr3/u;->q:Lr3/v$b;

    .line 21
    .line 22
    invoke-static {v1, v2}, Lr3/v;->g(Landroidx/media3/common/util/i0;Lr3/v$b;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    iput v2, p0, Lr3/u;->o:I

    .line 30
    .line 31
    iget v2, p0, Lr3/u;->p:I

    .line 32
    .line 33
    iget-object v3, p0, Lr3/u;->q:Lr3/v$b;

    .line 34
    .line 35
    iget v3, v3, Lr3/v$b;->c:I

    .line 36
    .line 37
    add-int/2addr v3, v0

    .line 38
    add-int/2addr v2, v3

    .line 39
    iput v2, p0, Lr3/u;->p:I

    .line 40
    .line 41
    :cond_0
    return v1
.end method

.method private i(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/16 v1, 0x11

    .line 5
    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :cond_1
    :goto_0
    return v0
.end method

.method private j(Landroidx/media3/common/util/j0;)Z
    .locals 4

    .line 1
    iget v0, p0, Lr3/u;->l:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 13
    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    and-int/lit8 v0, v0, 0x4

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_2

    .line 26
    .line 27
    iget v0, p0, Lr3/u;->m:I

    .line 28
    .line 29
    shl-int/lit8 v0, v0, 0x8

    .line 30
    .line 31
    iput v0, p0, Lr3/u;->m:I

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    or-int/2addr v0, v3

    .line 38
    iput v0, p0, Lr3/u;->m:I

    .line 39
    .line 40
    invoke-static {v0}, Lr3/v;->e(I)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    add-int/lit8 v0, v0, -0x3

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 53
    .line 54
    .line 55
    iput v2, p0, Lr3/u;->m:I

    .line 56
    .line 57
    return v1

    .line 58
    :cond_2
    return v2

    .line 59
    :cond_3
    return v1
.end method

.method private k(Landroidx/media3/common/util/j0;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lr3/u;->q:Lr3/v$b;

    .line 6
    .line 7
    iget v1, v1, Lr3/v$b;->c:I

    .line 8
    .line 9
    iget v2, p0, Lr3/u;->o:I

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lr3/u;->g:Lk2/s0;

    .line 17
    .line 18
    invoke-interface {v1, p1, v0}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 19
    .line 20
    .line 21
    iget p1, p0, Lr3/u;->o:I

    .line 22
    .line 23
    add-int/2addr p1, v0

    .line 24
    iput p1, p0, Lr3/u;->o:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lr3/u;->g:Lk2/s0;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_a

    .line 11
    .line 12
    iget v0, p0, Lr3/u;->e:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz v0, :cond_9

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq v0, v1, :cond_6

    .line 19
    .line 20
    if-ne v0, v2, :cond_5

    .line 21
    .line 22
    iget-object v0, p0, Lr3/u;->q:Lr3/v$b;

    .line 23
    .line 24
    iget v0, v0, Lr3/v$b;->a:I

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lr3/u;->i(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lr3/u;->d:Landroidx/media3/common/util/j0;

    .line 33
    .line 34
    invoke-direct {p0, p1, v0, v1}, Lr3/u;->b(Landroidx/media3/common/util/j0;Landroidx/media3/common/util/j0;Z)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-direct {p0, p1}, Lr3/u;->k(Landroidx/media3/common/util/j0;)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lr3/u;->o:I

    .line 41
    .line 42
    iget-object v3, p0, Lr3/u;->q:Lr3/v$b;

    .line 43
    .line 44
    iget v4, v3, Lr3/v$b;->c:I

    .line 45
    .line 46
    if-ne v0, v4, :cond_0

    .line 47
    .line 48
    iget v0, v3, Lr3/v$b;->a:I

    .line 49
    .line 50
    if-ne v0, v1, :cond_2

    .line 51
    .line 52
    new-instance v0, Landroidx/media3/common/util/i0;

    .line 53
    .line 54
    iget-object v2, p0, Lr3/u;->d:Landroidx/media3/common/util/j0;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->e()[B

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-direct {v0, v2}, Landroidx/media3/common/util/i0;-><init>([B)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v0}, Lr3/u;->g(Landroidx/media3/common/util/i0;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/16 v3, 0x11

    .line 68
    .line 69
    if-ne v0, v3, :cond_3

    .line 70
    .line 71
    new-instance v0, Landroidx/media3/common/util/i0;

    .line 72
    .line 73
    iget-object v2, p0, Lr3/u;->d:Landroidx/media3/common/util/j0;

    .line 74
    .line 75
    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->e()[B

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-direct {v0, v2}, Landroidx/media3/common/util/i0;-><init>([B)V

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Lr3/v;->f(Landroidx/media3/common/util/i0;)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput v0, p0, Lr3/u;->t:I

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    if-ne v0, v2, :cond_4

    .line 90
    .line 91
    invoke-direct {p0}, Lr3/u;->f()V

    .line 92
    .line 93
    .line 94
    :cond_4
    :goto_1
    iput v1, p0, Lr3/u;->e:I

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_6
    iget-object v0, p0, Lr3/u;->b:Landroidx/media3/common/util/j0;

    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    invoke-direct {p0, p1, v0, v3}, Lr3/u;->b(Landroidx/media3/common/util/j0;Landroidx/media3/common/util/j0;Z)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lr3/u;->b:Landroidx/media3/common/util/j0;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->a()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_8

    .line 116
    .line 117
    invoke-direct {p0}, Lr3/u;->h()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_7

    .line 122
    .line 123
    iget-object v0, p0, Lr3/u;->b:Landroidx/media3/common/util/j0;

    .line 124
    .line 125
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/j0;->W(I)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lr3/u;->g:Lk2/s0;

    .line 129
    .line 130
    iget-object v3, p0, Lr3/u;->b:Landroidx/media3/common/util/j0;

    .line 131
    .line 132
    invoke-virtual {v3}, Landroidx/media3/common/util/j0;->g()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    invoke-interface {v0, v3, v4}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lr3/u;->b:Landroidx/media3/common/util/j0;

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->S(I)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lr3/u;->d:Landroidx/media3/common/util/j0;

    .line 145
    .line 146
    iget-object v3, p0, Lr3/u;->q:Lr3/v$b;

    .line 147
    .line 148
    iget v3, v3, Lr3/v$b;->c:I

    .line 149
    .line 150
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/j0;->S(I)V

    .line 151
    .line 152
    .line 153
    iput-boolean v1, p0, Lr3/u;->n:Z

    .line 154
    .line 155
    iput v2, p0, Lr3/u;->e:I

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_7
    iget-object v0, p0, Lr3/u;->b:Landroidx/media3/common/util/j0;

    .line 160
    .line 161
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->g()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    const/16 v2, 0xf

    .line 166
    .line 167
    if-ge v0, v2, :cond_0

    .line 168
    .line 169
    iget-object v0, p0, Lr3/u;->b:Landroidx/media3/common/util/j0;

    .line 170
    .line 171
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->g()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    add-int/2addr v2, v1

    .line 176
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->V(I)V

    .line 177
    .line 178
    .line 179
    iput-boolean v3, p0, Lr3/u;->n:Z

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_8
    iput-boolean v3, p0, Lr3/u;->n:Z

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_9
    invoke-direct {p0, p1}, Lr3/u;->j(Landroidx/media3/common/util/j0;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_0

    .line 192
    .line 193
    iput v1, p0, Lr3/u;->e:I

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_a
    return-void
.end method

.method public c(JI)V
    .locals 2

    .line 1
    iput p3, p0, Lr3/u;->l:I

    .line 2
    .line 3
    iget-boolean p3, p0, Lr3/u;->k:Z

    .line 4
    .line 5
    if-nez p3, :cond_1

    .line 6
    .line 7
    iget p3, p0, Lr3/u;->p:I

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    iget-boolean p3, p0, Lr3/u;->n:Z

    .line 12
    .line 13
    if-nez p3, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 p3, 0x1

    .line 16
    iput-boolean p3, p0, Lr3/u;->j:Z

    .line 17
    .line 18
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    cmp-long p3, p1, v0

    .line 24
    .line 25
    if-eqz p3, :cond_3

    .line 26
    .line 27
    iget-boolean p3, p0, Lr3/u;->j:Z

    .line 28
    .line 29
    if-eqz p3, :cond_2

    .line 30
    .line 31
    long-to-double p1, p1

    .line 32
    iput-wide p1, p0, Lr3/u;->i:D

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    long-to-double p1, p1

    .line 36
    iput-wide p1, p0, Lr3/u;->h:D

    .line 37
    .line 38
    :cond_3
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public e(Lk2/t;Lr3/l0$d;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lr3/l0$d;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lr3/l0$d;->b()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lr3/u;->f:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2}, Lr3/l0$d;->c()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-interface {p1, p2, v0}, Lk2/t;->track(II)Lk2/s0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lr3/u;->g:Lk2/s0;

    .line 20
    .line 21
    return-void
.end method

.method public seek()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lr3/u;->e:I

    .line 3
    .line 4
    iput v0, p0, Lr3/u;->m:I

    .line 5
    .line 6
    iget-object v1, p0, Lr3/u;->b:Landroidx/media3/common/util/j0;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/j0;->S(I)V

    .line 10
    .line 11
    .line 12
    iput v0, p0, Lr3/u;->o:I

    .line 13
    .line 14
    iput v0, p0, Lr3/u;->p:I

    .line 15
    .line 16
    const v1, -0x7fffffff

    .line 17
    .line 18
    .line 19
    iput v1, p0, Lr3/u;->r:I

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    iput v1, p0, Lr3/u;->s:I

    .line 23
    .line 24
    iput v0, p0, Lr3/u;->t:I

    .line 25
    .line 26
    const-wide/16 v1, -0x1

    .line 27
    .line 28
    iput-wide v1, p0, Lr3/u;->u:J

    .line 29
    .line 30
    iput-boolean v0, p0, Lr3/u;->v:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lr3/u;->j:Z

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lr3/u;->n:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lr3/u;->k:Z

    .line 38
    .line 39
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    .line 40
    .line 41
    iput-wide v0, p0, Lr3/u;->h:D

    .line 42
    .line 43
    iput-wide v0, p0, Lr3/u;->i:D

    .line 44
    .line 45
    return-void
.end method
