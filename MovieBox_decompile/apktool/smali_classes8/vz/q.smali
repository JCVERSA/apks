.class public Lvz/q;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static final n:Lvz/q;


# instance fields
.field a:S

.field private b:S

.field private c:[I

.field d:I

.field private e:[I

.field f:S

.field g:S

.field h:S

.field i:S

.field j:Lvz/n;

.field k:Lvz/q;

.field l:Lvz/k;

.field m:Lvz/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lvz/q;

    .line 2
    .line 3
    invoke-direct {v0}, Lvz/q;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lvz/q;->n:Lvz/q;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b(III)V
    .locals 6

    .line 1
    iget-object v0, p0, Lvz/q;->e:[I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-array v0, v1, [I

    .line 7
    .line 8
    iput-object v0, p0, Lvz/q;->e:[I

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lvz/q;->e:[I

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aget v3, v0, v2

    .line 14
    .line 15
    add-int/lit8 v4, v3, 0x2

    .line 16
    .line 17
    array-length v5, v0

    .line 18
    if-lt v4, v5, :cond_1

    .line 19
    .line 20
    array-length v4, v0

    .line 21
    add-int/2addr v4, v1

    .line 22
    new-array v1, v4, [I

    .line 23
    .line 24
    array-length v4, v0

    .line 25
    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lvz/q;->e:[I

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lvz/q;->e:[I

    .line 31
    .line 32
    add-int/lit8 v1, v3, 0x1

    .line 33
    .line 34
    aput p1, v0, v1

    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x2

    .line 37
    .line 38
    or-int p1, p2, p3

    .line 39
    .line 40
    aput p1, v0, v3

    .line 41
    .line 42
    aput v3, v0, v2

    .line 43
    .line 44
    return-void
.end method

.method private g(Lvz/q;)Lvz/q;
    .locals 3

    .line 1
    iget-object v0, p0, Lvz/q;->l:Lvz/k;

    .line 2
    .line 3
    :goto_0
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-short v1, p0, Lvz/q;->a:S

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x10

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lvz/q;->l:Lvz/k;

    .line 12
    .line 13
    iget-object v1, v1, Lvz/k;->c:Lvz/k;

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v1, v0, Lvz/k;->b:Lvz/q;

    .line 19
    .line 20
    iget-object v2, v1, Lvz/q;->m:Lvz/q;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    iput-object p1, v1, Lvz/q;->m:Lvz/q;

    .line 25
    .line 26
    move-object p1, v1

    .line 27
    :cond_1
    :goto_1
    iget-object v0, v0, Lvz/k;->c:Lvz/k;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    return-object p1
.end method


# virtual methods
.method final a(Lvz/r;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1, p0}, Lvz/r;->o(Lvz/q;)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iget-short p2, p0, Lvz/q;->b:S

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const v0, 0xffff

    .line 11
    .line 12
    .line 13
    and-int/2addr p2, v0

    .line 14
    invoke-virtual {p1, p2, p0}, Lvz/r;->q(ILvz/q;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lvz/q;->c:[I

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    :goto_0
    iget-object v0, p0, Lvz/q;->c:[I

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    aget v1, v0, v1

    .line 26
    .line 27
    if-gt p2, v1, :cond_0

    .line 28
    .line 29
    aget v0, v0, p2

    .line 30
    .line 31
    invoke-virtual {p1, v0, p0}, Lvz/r;->q(ILvz/q;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 p2, p2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method final c(I)V
    .locals 5

    .line 1
    iget-short v0, p0, Lvz/q;->b:S

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    int-to-short p1, p1

    .line 6
    iput-short p1, p0, Lvz/q;->b:S

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lvz/q;->c:[I

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-array v0, v1, [I

    .line 15
    .line 16
    iput-object v0, p0, Lvz/q;->c:[I

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lvz/q;->c:[I

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    aget v3, v0, v2

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    aput v3, v0, v2

    .line 26
    .line 27
    array-length v4, v0

    .line 28
    if-lt v3, v4, :cond_2

    .line 29
    .line 30
    array-length v4, v0

    .line 31
    add-int/2addr v4, v1

    .line 32
    new-array v1, v4, [I

    .line 33
    .line 34
    array-length v4, v0

    .line 35
    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lvz/q;->c:[I

    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lvz/q;->c:[I

    .line 41
    .line 42
    aput p1, v0, v3

    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method final d(Lvz/q;)V
    .locals 7

    .line 1
    sget-object v0, Lvz/q;->n:Lvz/q;

    .line 2
    .line 3
    iput-object v0, p0, Lvz/q;->m:Lvz/q;

    .line 4
    .line 5
    move-object v1, v0

    .line 6
    move-object v0, p0

    .line 7
    :goto_0
    sget-object v2, Lvz/q;->n:Lvz/q;

    .line 8
    .line 9
    if-eq v0, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, v0, Lvz/q;->m:Lvz/q;

    .line 12
    .line 13
    iput-object v1, v0, Lvz/q;->m:Lvz/q;

    .line 14
    .line 15
    iget-short v1, v0, Lvz/q;->a:S

    .line 16
    .line 17
    and-int/lit8 v1, v1, 0x40

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-short v1, v0, Lvz/q;->i:S

    .line 22
    .line 23
    iget-short v3, p1, Lvz/q;->i:S

    .line 24
    .line 25
    if-eq v1, v3, :cond_0

    .line 26
    .line 27
    new-instance v1, Lvz/k;

    .line 28
    .line 29
    iget-short v3, v0, Lvz/q;->g:S

    .line 30
    .line 31
    iget-object v4, p1, Lvz/q;->l:Lvz/k;

    .line 32
    .line 33
    iget-object v4, v4, Lvz/k;->b:Lvz/q;

    .line 34
    .line 35
    iget-object v5, v0, Lvz/q;->l:Lvz/k;

    .line 36
    .line 37
    invoke-direct {v1, v3, v4, v5}, Lvz/k;-><init>(ILvz/q;Lvz/k;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, v0, Lvz/q;->l:Lvz/k;

    .line 41
    .line 42
    :cond_0
    invoke-direct {v0, v2}, Lvz/q;->g(Lvz/q;)Lvz/q;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    move-object v6, v1

    .line 47
    move-object v1, v0

    .line 48
    move-object v0, v6

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    sget-object p1, Lvz/q;->n:Lvz/q;

    .line 51
    .line 52
    if-eq v1, p1, :cond_2

    .line 53
    .line 54
    iget-object p1, v1, Lvz/q;->m:Lvz/q;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput-object v0, v1, Lvz/q;->m:Lvz/q;

    .line 58
    .line 59
    move-object v1, p1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    return-void
.end method

.method final e()Lvz/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lvz/q;->j:Lvz/n;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lvz/n;->a:Lvz/q;

    .line 8
    .line 9
    :goto_0
    return-object v0
.end method

.method final f(S)V
    .locals 3

    .line 1
    sget-object v0, Lvz/q;->n:Lvz/q;

    .line 2
    .line 3
    iput-object v0, p0, Lvz/q;->m:Lvz/q;

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    :goto_0
    sget-object v1, Lvz/q;->n:Lvz/q;

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, v0, Lvz/q;->m:Lvz/q;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-object v2, v0, Lvz/q;->m:Lvz/q;

    .line 14
    .line 15
    iget-short v2, v0, Lvz/q;->i:S

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    iput-short p1, v0, Lvz/q;->i:S

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lvz/q;->g(Lvz/q;)Lvz/q;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method final h(Lvz/d;IZ)V
    .locals 2

    .line 1
    iget-short v0, p0, Lvz/q;->a:S

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    iget p3, p1, Lvz/d;->b:I

    .line 11
    .line 12
    const/high16 v1, 0x20000000

    .line 13
    .line 14
    invoke-direct {p0, p2, v1, p3}, Lvz/q;->b(III)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lvz/d;->i(I)Lvz/d;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget p3, p1, Lvz/d;->b:I

    .line 22
    .line 23
    const/high16 v1, 0x10000000

    .line 24
    .line 25
    invoke-direct {p0, p2, v1, p3}, Lvz/q;->b(III)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lvz/d;->k(I)Lvz/d;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-eqz p3, :cond_2

    .line 33
    .line 34
    iget p3, p0, Lvz/q;->d:I

    .line 35
    .line 36
    sub-int/2addr p3, p2

    .line 37
    invoke-virtual {p1, p3}, Lvz/d;->i(I)Lvz/d;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget p3, p0, Lvz/q;->d:I

    .line 42
    .line 43
    sub-int/2addr p3, p2

    .line 44
    invoke-virtual {p1, p3}, Lvz/d;->k(I)Lvz/d;

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method final i([BI)Z
    .locals 7

    .line 1
    iget-short v0, p0, Lvz/q;->a:S

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    int-to-short v0, v0

    .line 6
    iput-short v0, p0, Lvz/q;->a:S

    .line 7
    .line 8
    iput p2, p0, Lvz/q;->d:I

    .line 9
    .line 10
    iget-object v0, p0, Lvz/q;->e:[I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    aget v0, v0, v1

    .line 17
    .line 18
    :goto_0
    if-lez v0, :cond_5

    .line 19
    .line 20
    iget-object v2, p0, Lvz/q;->e:[I

    .line 21
    .line 22
    add-int/lit8 v3, v0, -0x1

    .line 23
    .line 24
    aget v3, v2, v3

    .line 25
    .line 26
    aget v2, v2, v0

    .line 27
    .line 28
    sub-int v4, p2, v3

    .line 29
    .line 30
    const v5, 0xfffffff

    .line 31
    .line 32
    .line 33
    and-int/2addr v5, v2

    .line 34
    const/high16 v6, -0x10000000

    .line 35
    .line 36
    and-int/2addr v2, v6

    .line 37
    const/high16 v6, 0x10000000

    .line 38
    .line 39
    if-ne v2, v6, :cond_4

    .line 40
    .line 41
    const/16 v2, -0x8000

    .line 42
    .line 43
    if-lt v4, v2, :cond_1

    .line 44
    .line 45
    const/16 v2, 0x7fff

    .line 46
    .line 47
    if-le v4, v2, :cond_3

    .line 48
    .line 49
    :cond_1
    aget-byte v1, p1, v3

    .line 50
    .line 51
    and-int/lit16 v1, v1, 0xff

    .line 52
    .line 53
    const/16 v2, 0xc6

    .line 54
    .line 55
    if-ge v1, v2, :cond_2

    .line 56
    .line 57
    add-int/lit8 v1, v1, 0x31

    .line 58
    .line 59
    int-to-byte v1, v1

    .line 60
    aput-byte v1, p1, v3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    add-int/lit8 v1, v1, 0x14

    .line 64
    .line 65
    int-to-byte v1, v1

    .line 66
    aput-byte v1, p1, v3

    .line 67
    .line 68
    :goto_1
    const/4 v1, 0x1

    .line 69
    :cond_3
    add-int/lit8 v2, v5, 0x1

    .line 70
    .line 71
    ushr-int/lit8 v3, v4, 0x8

    .line 72
    .line 73
    int-to-byte v3, v3

    .line 74
    aput-byte v3, p1, v5

    .line 75
    .line 76
    int-to-byte v3, v4

    .line 77
    aput-byte v3, p1, v2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    add-int/lit8 v2, v5, 0x1

    .line 81
    .line 82
    ushr-int/lit8 v3, v4, 0x18

    .line 83
    .line 84
    int-to-byte v3, v3

    .line 85
    aput-byte v3, p1, v5

    .line 86
    .line 87
    add-int/lit8 v3, v5, 0x2

    .line 88
    .line 89
    ushr-int/lit8 v6, v4, 0x10

    .line 90
    .line 91
    int-to-byte v6, v6

    .line 92
    aput-byte v6, p1, v2

    .line 93
    .line 94
    add-int/lit8 v5, v5, 0x3

    .line 95
    .line 96
    ushr-int/lit8 v2, v4, 0x8

    .line 97
    .line 98
    int-to-byte v2, v2

    .line 99
    aput-byte v2, p1, v3

    .line 100
    .line 101
    int-to-byte v2, v4

    .line 102
    aput-byte v2, p1, v5

    .line 103
    .line 104
    :goto_2
    add-int/lit8 v0, v0, -0x2

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_5
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "L"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
