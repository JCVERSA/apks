.class public final Lr3/k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lr3/m;


# instance fields
.field private final a:Landroidx/media3/common/util/j0;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lk2/s0;

.field private h:I

.field private i:I

.field private j:I

.field private k:J

.field private l:Landroidx/media3/common/r;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/j0;

    .line 5
    .line 6
    new-array p3, p3, [B

    .line 7
    .line 8
    invoke-direct {v0, p3}, Landroidx/media3/common/util/j0;-><init>([B)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lr3/k;->a:Landroidx/media3/common/util/j0;

    .line 12
    .line 13
    const/4 p3, 0x0

    .line 14
    iput p3, p0, Lr3/k;->h:I

    .line 15
    .line 16
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    iput-wide v0, p0, Lr3/k;->q:J

    .line 22
    .line 23
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p3, p0, Lr3/k;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    .line 30
    const/4 p3, -0x1

    .line 31
    iput p3, p0, Lr3/k;->o:I

    .line 32
    .line 33
    iput p3, p0, Lr3/k;->p:I

    .line 34
    .line 35
    iput-object p1, p0, Lr3/k;->c:Ljava/lang/String;

    .line 36
    .line 37
    iput p2, p0, Lr3/k;->d:I

    .line 38
    .line 39
    iput-object p4, p0, Lr3/k;->e:Ljava/lang/String;

    .line 40
    .line 41
    return-void
.end method

.method private b(Landroidx/media3/common/util/j0;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lr3/k;->i:I

    .line 6
    .line 7
    sub-int v1, p3, v1

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lr3/k;->i:I

    .line 14
    .line 15
    invoke-virtual {p1, p2, v1, v0}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 16
    .line 17
    .line 18
    iget p1, p0, Lr3/k;->i:I

    .line 19
    .line 20
    add-int/2addr p1, v0

    .line 21
    iput p1, p0, Lr3/k;->i:I

    .line 22
    .line 23
    if-ne p1, p3, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method private f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lr3/k;->a:Landroidx/media3/common/util/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lr3/k;->l:Landroidx/media3/common/r;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lr3/k;->f:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p0, Lr3/k;->c:Ljava/lang/String;

    .line 14
    .line 15
    iget v4, p0, Lr3/k;->d:I

    .line 16
    .line 17
    iget-object v5, p0, Lr3/k;->e:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v1, v0

    .line 21
    invoke-static/range {v1 .. v6}, Lk2/p;->h([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Lr3/k;->l:Landroidx/media3/common/r;

    .line 26
    .line 27
    iget-object v2, p0, Lr3/k;->g:Lk2/s0;

    .line 28
    .line 29
    invoke-interface {v2, v1}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {v0}, Lk2/p;->b([B)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, p0, Lr3/k;->m:I

    .line 37
    .line 38
    invoke-static {v0}, Lk2/p;->g([B)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    int-to-long v0, v0

    .line 43
    iget-object v2, p0, Lr3/k;->l:Landroidx/media3/common/r;

    .line 44
    .line 45
    iget v2, v2, Landroidx/media3/common/r;->F:I

    .line 46
    .line 47
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/a1;->d1(JI)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    int-to-long v0, v0

    .line 56
    iput-wide v0, p0, Lr3/k;->k:J

    .line 57
    .line 58
    return-void
.end method

.method private g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr3/k;->a:Landroidx/media3/common/util/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lk2/p;->i([B)Lk2/p$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Lr3/k;->j(Lk2/p$b;)V

    .line 12
    .line 13
    .line 14
    iget v1, v0, Lk2/p$b;->d:I

    .line 15
    .line 16
    iput v1, p0, Lr3/k;->m:I

    .line 17
    .line 18
    iget-wide v0, v0, Lk2/p$b;->e:J

    .line 19
    .line 20
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmp-long v2, v0, v2

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    const-wide/16 v0, 0x0

    .line 30
    .line 31
    :cond_0
    iput-wide v0, p0, Lr3/k;->k:J

    .line 32
    .line 33
    return-void
.end method

.method private h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr3/k;->a:Landroidx/media3/common/util/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lr3/k;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lk2/p;->k([BLjava/util/concurrent/atomic/AtomicInteger;)Lk2/p$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Lr3/k;->n:I

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lr3/k;->j(Lk2/p$b;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget v1, v0, Lk2/p$b;->d:I

    .line 22
    .line 23
    iput v1, p0, Lr3/k;->m:I

    .line 24
    .line 25
    iget-wide v0, v0, Lk2/p$b;->e:J

    .line 26
    .line 27
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmp-long v2, v0, v2

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    const-wide/16 v0, 0x0

    .line 37
    .line 38
    :cond_1
    iput-wide v0, p0, Lr3/k;->k:J

    .line 39
    .line 40
    return-void
.end method

.method private i(Landroidx/media3/common/util/j0;)Z
    .locals 5

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    iget v0, p0, Lr3/k;->j:I

    .line 9
    .line 10
    shl-int/lit8 v0, v0, 0x8

    .line 11
    .line 12
    iput v0, p0, Lr3/k;->j:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    or-int/2addr v0, v2

    .line 19
    iput v0, p0, Lr3/k;->j:I

    .line 20
    .line 21
    invoke-static {v0}, Lk2/p;->c(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lr3/k;->n:I

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lr3/k;->a:Landroidx/media3/common/util/j0;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget v0, p0, Lr3/k;->j:I

    .line 36
    .line 37
    shr-int/lit8 v2, v0, 0x18

    .line 38
    .line 39
    and-int/lit16 v2, v2, 0xff

    .line 40
    .line 41
    int-to-byte v2, v2

    .line 42
    aput-byte v2, p1, v1

    .line 43
    .line 44
    shr-int/lit8 v2, v0, 0x10

    .line 45
    .line 46
    and-int/lit16 v2, v2, 0xff

    .line 47
    .line 48
    int-to-byte v2, v2

    .line 49
    const/4 v3, 0x1

    .line 50
    aput-byte v2, p1, v3

    .line 51
    .line 52
    shr-int/lit8 v2, v0, 0x8

    .line 53
    .line 54
    and-int/lit16 v2, v2, 0xff

    .line 55
    .line 56
    int-to-byte v2, v2

    .line 57
    const/4 v4, 0x2

    .line 58
    aput-byte v2, p1, v4

    .line 59
    .line 60
    and-int/lit16 v0, v0, 0xff

    .line 61
    .line 62
    int-to-byte v0, v0

    .line 63
    const/4 v2, 0x3

    .line 64
    aput-byte v0, p1, v2

    .line 65
    .line 66
    const/4 p1, 0x4

    .line 67
    iput p1, p0, Lr3/k;->i:I

    .line 68
    .line 69
    iput v1, p0, Lr3/k;->j:I

    .line 70
    .line 71
    return v3

    .line 72
    :cond_1
    return v1
.end method

.method private j(Lk2/p$b;)V
    .locals 4

    .line 1
    iget v0, p1, Lk2/p$b;->b:I

    .line 2
    .line 3
    const v1, -0x7fffffff

    .line 4
    .line 5
    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    iget v1, p1, Lk2/p$b;->c:I

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v2, p0, Lr3/k;->l:Landroidx/media3/common/r;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget v3, v2, Landroidx/media3/common/r;->E:I

    .line 19
    .line 20
    if-ne v1, v3, :cond_1

    .line 21
    .line 22
    iget v1, v2, Landroidx/media3/common/r;->F:I

    .line 23
    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    iget-object v0, p1, Lk2/p$b;->a:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, v2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lr3/k;->l:Landroidx/media3/common/r;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    new-instance v0, Landroidx/media3/common/r$b;

    .line 41
    .line 42
    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    iget-object v1, p0, Lr3/k;->f:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lr3/k;->e:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p1, Lk2/p$b;->a:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget v1, p1, Lk2/p$b;->c:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget p1, p1, Lk2/p$b;->b:I

    .line 75
    .line 76
    invoke-virtual {v0, p1}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object v0, p0, Lr3/k;->c:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget v0, p0, Lr3/k;->d:I

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lr3/k;->l:Landroidx/media3/common/r;

    .line 97
    .line 98
    iget-object v0, p0, Lr3/k;->g:Lk2/s0;

    .line 99
    .line 100
    invoke-interface {v0, p1}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lr3/k;->g:Lk2/s0;

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
    if-lez v0, :cond_7

    .line 11
    .line 12
    iget v0, p0, Lr3/k;->h:I

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    const/4 v2, 0x4

    .line 16
    const/4 v3, 0x6

    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :pswitch_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget v1, p0, Lr3/k;->m:I

    .line 33
    .line 34
    iget v3, p0, Lr3/k;->i:I

    .line 35
    .line 36
    sub-int/2addr v1, v3

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object v1, p0, Lr3/k;->g:Lk2/s0;

    .line 42
    .line 43
    invoke-interface {v1, p1, v0}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lr3/k;->i:I

    .line 47
    .line 48
    add-int/2addr v1, v0

    .line 49
    iput v1, p0, Lr3/k;->i:I

    .line 50
    .line 51
    iget v0, p0, Lr3/k;->m:I

    .line 52
    .line 53
    if-ne v1, v0, :cond_0

    .line 54
    .line 55
    iget-wide v0, p0, Lr3/k;->q:J

    .line 56
    .line 57
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    cmp-long v0, v0, v6

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    move v0, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move v0, v5

    .line 69
    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 70
    .line 71
    .line 72
    iget-object v6, p0, Lr3/k;->g:Lk2/s0;

    .line 73
    .line 74
    iget-wide v7, p0, Lr3/k;->q:J

    .line 75
    .line 76
    iget v0, p0, Lr3/k;->n:I

    .line 77
    .line 78
    if-ne v0, v2, :cond_2

    .line 79
    .line 80
    move v9, v5

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    move v9, v4

    .line 83
    :goto_2
    iget v10, p0, Lr3/k;->m:I

    .line 84
    .line 85
    const/4 v11, 0x0

    .line 86
    const/4 v12, 0x0

    .line 87
    invoke-interface/range {v6 .. v12}, Lk2/s0;->b(JIIILk2/s0$a;)V

    .line 88
    .line 89
    .line 90
    iget-wide v0, p0, Lr3/k;->q:J

    .line 91
    .line 92
    iget-wide v2, p0, Lr3/k;->k:J

    .line 93
    .line 94
    add-long/2addr v0, v2

    .line 95
    iput-wide v0, p0, Lr3/k;->q:J

    .line 96
    .line 97
    iput v5, p0, Lr3/k;->h:I

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v0, p0, Lr3/k;->a:Landroidx/media3/common/util/j0;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget v1, p0, Lr3/k;->p:I

    .line 107
    .line 108
    invoke-direct {p0, p1, v0, v1}, Lr3/k;->b(Landroidx/media3/common/util/j0;[BI)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    .line 114
    invoke-direct {p0}, Lr3/k;->h()V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lr3/k;->a:Landroidx/media3/common/util/j0;

    .line 118
    .line 119
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/j0;->W(I)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lr3/k;->g:Lk2/s0;

    .line 123
    .line 124
    iget-object v1, p0, Lr3/k;->a:Landroidx/media3/common/util/j0;

    .line 125
    .line 126
    iget v2, p0, Lr3/k;->p:I

    .line 127
    .line 128
    invoke-interface {v0, v1, v2}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 129
    .line 130
    .line 131
    iput v3, p0, Lr3/k;->h:I

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lr3/k;->a:Landroidx/media3/common/util/j0;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-direct {p0, p1, v0, v3}, Lr3/k;->b(Landroidx/media3/common/util/j0;[BI)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    .line 146
    iget-object v0, p0, Lr3/k;->a:Landroidx/media3/common/util/j0;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v0}, Lk2/p;->l([B)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    iput v0, p0, Lr3/k;->p:I

    .line 157
    .line 158
    iget v1, p0, Lr3/k;->i:I

    .line 159
    .line 160
    if-le v1, v0, :cond_3

    .line 161
    .line 162
    sub-int v0, v1, v0

    .line 163
    .line 164
    sub-int/2addr v1, v0

    .line 165
    iput v1, p0, Lr3/k;->i:I

    .line 166
    .line 167
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    sub-int/2addr v1, v0

    .line 172
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/j0;->W(I)V

    .line 173
    .line 174
    .line 175
    :cond_3
    const/4 v0, 0x5

    .line 176
    iput v0, p0, Lr3/k;->h:I

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :pswitch_3
    iget-object v0, p0, Lr3/k;->a:Landroidx/media3/common/util/j0;

    .line 181
    .line 182
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iget v1, p0, Lr3/k;->o:I

    .line 187
    .line 188
    invoke-direct {p0, p1, v0, v1}, Lr3/k;->b(Landroidx/media3/common/util/j0;[BI)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    .line 194
    invoke-direct {p0}, Lr3/k;->g()V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lr3/k;->a:Landroidx/media3/common/util/j0;

    .line 198
    .line 199
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/j0;->W(I)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lr3/k;->g:Lk2/s0;

    .line 203
    .line 204
    iget-object v1, p0, Lr3/k;->a:Landroidx/media3/common/util/j0;

    .line 205
    .line 206
    iget v2, p0, Lr3/k;->o:I

    .line 207
    .line 208
    invoke-interface {v0, v1, v2}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 209
    .line 210
    .line 211
    iput v3, p0, Lr3/k;->h:I

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :pswitch_4
    iget-object v0, p0, Lr3/k;->a:Landroidx/media3/common/util/j0;

    .line 216
    .line 217
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    const/4 v2, 0x7

    .line 222
    invoke-direct {p0, p1, v0, v2}, Lr3/k;->b(Landroidx/media3/common/util/j0;[BI)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_0

    .line 227
    .line 228
    iget-object v0, p0, Lr3/k;->a:Landroidx/media3/common/util/j0;

    .line 229
    .line 230
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-static {v0}, Lk2/p;->j([B)I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    iput v0, p0, Lr3/k;->o:I

    .line 239
    .line 240
    iput v1, p0, Lr3/k;->h:I

    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :pswitch_5
    iget-object v0, p0, Lr3/k;->a:Landroidx/media3/common/util/j0;

    .line 245
    .line 246
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    const/16 v1, 0x12

    .line 251
    .line 252
    invoke-direct {p0, p1, v0, v1}, Lr3/k;->b(Landroidx/media3/common/util/j0;[BI)Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_0

    .line 257
    .line 258
    invoke-direct {p0}, Lr3/k;->f()V

    .line 259
    .line 260
    .line 261
    iget-object v0, p0, Lr3/k;->a:Landroidx/media3/common/util/j0;

    .line 262
    .line 263
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/j0;->W(I)V

    .line 264
    .line 265
    .line 266
    iget-object v0, p0, Lr3/k;->g:Lk2/s0;

    .line 267
    .line 268
    iget-object v2, p0, Lr3/k;->a:Landroidx/media3/common/util/j0;

    .line 269
    .line 270
    invoke-interface {v0, v2, v1}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 271
    .line 272
    .line 273
    iput v3, p0, Lr3/k;->h:I

    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :pswitch_6
    invoke-direct {p0, p1}, Lr3/k;->i(Landroidx/media3/common/util/j0;)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_0

    .line 282
    .line 283
    iget v0, p0, Lr3/k;->n:I

    .line 284
    .line 285
    if-eq v0, v1, :cond_6

    .line 286
    .line 287
    if-ne v0, v2, :cond_4

    .line 288
    .line 289
    goto :goto_3

    .line 290
    :cond_4
    if-ne v0, v4, :cond_5

    .line 291
    .line 292
    iput v4, p0, Lr3/k;->h:I

    .line 293
    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :cond_5
    const/4 v0, 0x2

    .line 297
    iput v0, p0, Lr3/k;->h:I

    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :cond_6
    :goto_3
    iput v2, p0, Lr3/k;->h:I

    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :cond_7
    return-void

    .line 306
    nop

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lr3/k;->q:J

    .line 2
    .line 3
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
    iput-object v0, p0, Lr3/k;->f:Ljava/lang/String;

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
    iput-object p1, p0, Lr3/k;->g:Lk2/s0;

    .line 20
    .line 21
    return-void
.end method

.method public seek()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lr3/k;->h:I

    .line 3
    .line 4
    iput v0, p0, Lr3/k;->i:I

    .line 5
    .line 6
    iput v0, p0, Lr3/k;->j:I

    .line 7
    .line 8
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v1, p0, Lr3/k;->q:J

    .line 14
    .line 15
    iget-object v1, p0, Lr3/k;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
