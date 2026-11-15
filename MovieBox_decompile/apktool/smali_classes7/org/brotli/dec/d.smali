.class abstract Lorg/brotli/dec/d;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    new-array v1, v1, [I

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    sput-object v1, Lorg/brotli/dec/d;->a:[I

    .line 11
    .line 12
    new-array v1, v0, [I

    .line 13
    .line 14
    fill-array-data v1, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v1, Lorg/brotli/dec/d;->b:[I

    .line 18
    .line 19
    new-array v1, v0, [I

    .line 20
    .line 21
    fill-array-data v1, :array_2

    .line 22
    .line 23
    .line 24
    sput-object v1, Lorg/brotli/dec/d;->c:[I

    .line 25
    .line 26
    new-array v0, v0, [I

    .line 27
    .line 28
    fill-array-data v0, :array_3

    .line 29
    .line 30
    .line 31
    sput-object v0, Lorg/brotli/dec/d;->d:[I

    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x0
        0x5
        0x11
        0x6
        0x10
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40001
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40005
    .end array-data
.end method

.method private static a(Lorg/brotli/dec/j;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/brotli/dec/j;->c:Lorg/brotli/dec/a;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/brotli/dec/j;->d:[B

    .line 4
    .line 5
    iget v2, p0, Lorg/brotli/dec/j;->g:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-gtz v2, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lorg/brotli/dec/a;->k(Lorg/brotli/dec/a;)V

    .line 11
    .line 12
    .line 13
    iput v3, p0, Lorg/brotli/dec/j;->a:I

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget v4, p0, Lorg/brotli/dec/j;->Q:I

    .line 17
    .line 18
    iget v5, p0, Lorg/brotli/dec/j;->r:I

    .line 19
    .line 20
    sub-int/2addr v4, v5

    .line 21
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget v4, p0, Lorg/brotli/dec/j;->r:I

    .line 26
    .line 27
    invoke-static {v0, v1, v4, v2}, Lorg/brotli/dec/a;->c(Lorg/brotli/dec/a;[BII)V

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lorg/brotli/dec/j;->g:I

    .line 31
    .line 32
    sub-int/2addr v1, v2

    .line 33
    iput v1, p0, Lorg/brotli/dec/j;->g:I

    .line 34
    .line 35
    iget v1, p0, Lorg/brotli/dec/j;->r:I

    .line 36
    .line 37
    add-int/2addr v1, v2

    .line 38
    iput v1, p0, Lorg/brotli/dec/j;->r:I

    .line 39
    .line 40
    iget v2, p0, Lorg/brotli/dec/j;->Q:I

    .line 41
    .line 42
    if-ne v1, v2, :cond_1

    .line 43
    .line 44
    const/4 v0, 0x5

    .line 45
    iput v0, p0, Lorg/brotli/dec/j;->b:I

    .line 46
    .line 47
    iput v2, p0, Lorg/brotli/dec/j;->Y:I

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lorg/brotli/dec/j;->X:I

    .line 51
    .line 52
    const/16 v0, 0xc

    .line 53
    .line 54
    iput v0, p0, Lorg/brotli/dec/j;->a:I

    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    invoke-static {v0}, Lorg/brotli/dec/a;->k(Lorg/brotli/dec/a;)V

    .line 58
    .line 59
    .line 60
    iput v3, p0, Lorg/brotli/dec/j;->a:I

    .line 61
    .line 62
    return-void
.end method

.method private static b(Lorg/brotli/dec/j;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/brotli/dec/j;->c:Lorg/brotli/dec/a;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/brotli/dec/j;->p:[I

    .line 4
    .line 5
    mul-int/lit8 v2, p1, 0x2

    .line 6
    .line 7
    invoke-static {v0}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lorg/brotli/dec/j;->e:[I

    .line 11
    .line 12
    mul-int/lit16 v4, p1, 0x438

    .line 13
    .line 14
    invoke-static {v3, v4, v0}, Lorg/brotli/dec/d;->r([IILorg/brotli/dec/a;)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    iget-object v5, p0, Lorg/brotli/dec/j;->n:[I

    .line 19
    .line 20
    iget-object v6, p0, Lorg/brotli/dec/j;->f:[I

    .line 21
    .line 22
    invoke-static {v6, v4, v0}, Lorg/brotli/dec/d;->m([IILorg/brotli/dec/a;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    aput v0, v5, p1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    if-ne v3, v0, :cond_0

    .line 30
    .line 31
    add-int/lit8 v3, v2, 0x1

    .line 32
    .line 33
    aget v3, v1, v3

    .line 34
    .line 35
    add-int/2addr v3, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    if-nez v3, :cond_1

    .line 38
    .line 39
    aget v3, v1, v2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    add-int/lit8 v3, v3, -0x2

    .line 43
    .line 44
    :goto_0
    iget-object p0, p0, Lorg/brotli/dec/j;->o:[I

    .line 45
    .line 46
    aget p0, p0, p1

    .line 47
    .line 48
    if-lt v3, p0, :cond_2

    .line 49
    .line 50
    sub-int/2addr v3, p0

    .line 51
    :cond_2
    add-int/lit8 p0, v2, 0x1

    .line 52
    .line 53
    aget p1, v1, p0

    .line 54
    .line 55
    aput p1, v1, v2

    .line 56
    .line 57
    aput v3, v1, p0

    .line 58
    .line 59
    return-void
.end method

.method private static c(Lorg/brotli/dec/j;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lorg/brotli/dec/d;->b(Lorg/brotli/dec/j;I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/brotli/dec/j;->l:Lorg/brotli/dec/g;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/brotli/dec/g;->c:[I

    .line 8
    .line 9
    iget-object v1, p0, Lorg/brotli/dec/j;->p:[I

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    aget v1, v1, v2

    .line 13
    .line 14
    aget v0, v0, v1

    .line 15
    .line 16
    iput v0, p0, Lorg/brotli/dec/j;->F:I

    .line 17
    .line 18
    return-void
.end method

.method private static d(I[BLorg/brotli/dec/a;)I
    .locals 8

    .line 1
    invoke-static {p2}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lorg/brotli/dec/d;->h(Lorg/brotli/dec/a;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    add-int/2addr v0, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-static {p1, v2, p0}, Lorg/brotli/dec/l;->a([BII)V

    .line 14
    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    invoke-static {p2, v1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ne v3, v1, :cond_1

    .line 22
    .line 23
    move v3, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v3, v2

    .line 26
    :goto_0
    if-eqz v3, :cond_2

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    invoke-static {p2, v3}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    add-int/2addr v3, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v3, v2

    .line 36
    :goto_1
    const/16 v4, 0x438

    .line 37
    .line 38
    new-array v4, v4, [I

    .line 39
    .line 40
    add-int v5, v0, v3

    .line 41
    .line 42
    invoke-static {v5, v4, v2, p2}, Lorg/brotli/dec/d;->n(I[IILorg/brotli/dec/a;)V

    .line 43
    .line 44
    .line 45
    move v5, v2

    .line 46
    :cond_3
    :goto_2
    if-ge v5, p0, :cond_7

    .line 47
    .line 48
    invoke-static {p2}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p2}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v4, v2, p2}, Lorg/brotli/dec/d;->r([IILorg/brotli/dec/a;)I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-nez v6, :cond_4

    .line 59
    .line 60
    aput-byte v2, p1, v5

    .line 61
    .line 62
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    if-gt v6, v3, :cond_6

    .line 66
    .line 67
    shl-int v7, v1, v6

    .line 68
    .line 69
    invoke-static {p2, v6}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    add-int/2addr v7, v6

    .line 74
    :goto_4
    if-eqz v7, :cond_3

    .line 75
    .line 76
    if-ge v5, p0, :cond_5

    .line 77
    .line 78
    aput-byte v2, p1, v5

    .line 79
    .line 80
    add-int/lit8 v5, v5, 0x1

    .line 81
    .line 82
    add-int/lit8 v7, v7, -0x1

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_5
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    .line 86
    .line 87
    const-string p1, "Corrupted context map"

    .line 88
    .line 89
    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_6
    sub-int/2addr v6, v3

    .line 94
    int-to-byte v6, v6

    .line 95
    aput-byte v6, p1, v5

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_7
    invoke-static {p2, v1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-ne p2, v1, :cond_8

    .line 103
    .line 104
    invoke-static {p1, p0}, Lorg/brotli/dec/d;->j([BI)V

    .line 105
    .line 106
    .line 107
    :cond_8
    return v0
.end method

.method private static e(Lorg/brotli/dec/j;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Lorg/brotli/dec/d;->b(Lorg/brotli/dec/j;I)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lorg/brotli/dec/j;->p:[I

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    aget v1, v1, v2

    .line 9
    .line 10
    shl-int/lit8 v0, v1, 0x2

    .line 11
    .line 12
    iput v0, p0, Lorg/brotli/dec/j;->C:I

    .line 13
    .line 14
    return-void
.end method

.method private static f(Lorg/brotli/dec/j;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lorg/brotli/dec/d;->b(Lorg/brotli/dec/j;I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/brotli/dec/j;->p:[I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    aget v0, v0, v1

    .line 9
    .line 10
    shl-int/lit8 v2, v0, 0x6

    .line 11
    .line 12
    iput v2, p0, Lorg/brotli/dec/j;->B:I

    .line 13
    .line 14
    iget-object v3, p0, Lorg/brotli/dec/j;->A:[B

    .line 15
    .line 16
    aget-byte v2, v3, v2

    .line 17
    .line 18
    and-int/lit16 v2, v2, 0xff

    .line 19
    .line 20
    iput v2, p0, Lorg/brotli/dec/j;->v:I

    .line 21
    .line 22
    iget-object v3, p0, Lorg/brotli/dec/j;->k:Lorg/brotli/dec/g;

    .line 23
    .line 24
    iget-object v3, v3, Lorg/brotli/dec/g;->c:[I

    .line 25
    .line 26
    aget v2, v3, v2

    .line 27
    .line 28
    iput v2, p0, Lorg/brotli/dec/j;->w:I

    .line 29
    .line 30
    iget-object v2, p0, Lorg/brotli/dec/j;->z:[B

    .line 31
    .line 32
    aget-byte v0, v2, v0

    .line 33
    .line 34
    sget-object v2, Lorg/brotli/dec/c;->b:[I

    .line 35
    .line 36
    aget v3, v2, v0

    .line 37
    .line 38
    iput v3, p0, Lorg/brotli/dec/j;->D:I

    .line 39
    .line 40
    add-int/2addr v0, v1

    .line 41
    aget v0, v2, v0

    .line 42
    .line 43
    iput v0, p0, Lorg/brotli/dec/j;->E:I

    .line 44
    .line 45
    return-void
.end method

.method private static g(Lorg/brotli/dec/a;Lorg/brotli/dec/j;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v1, v0, :cond_0

    .line 8
    .line 9
    move v1, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v2

    .line 12
    :goto_0
    iput-boolean v1, p1, Lorg/brotli/dec/j;->h:Z

    .line 13
    .line 14
    iput v2, p1, Lorg/brotli/dec/j;->g:I

    .line 15
    .line 16
    iput-boolean v2, p1, Lorg/brotli/dec/j;->i:Z

    .line 17
    .line 18
    iput-boolean v2, p1, Lorg/brotli/dec/j;->j:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const/4 v1, 0x2

    .line 30
    invoke-static {p0, v1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x4

    .line 35
    add-int/2addr v3, v4

    .line 36
    const/4 v5, 0x7

    .line 37
    const-string v6, "Exuberant nibble"

    .line 38
    .line 39
    if-ne v3, v5, :cond_6

    .line 40
    .line 41
    iput-boolean v0, p1, Lorg/brotli/dec/j;->j:Z

    .line 42
    .line 43
    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_5

    .line 48
    .line 49
    invoke-static {p0, v1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    move v3, v2

    .line 57
    :goto_1
    if-ge v3, v1, :cond_9

    .line 58
    .line 59
    const/16 v4, 0x8

    .line 60
    .line 61
    invoke-static {p0, v4}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_4

    .line 66
    .line 67
    add-int/lit8 v5, v3, 0x1

    .line 68
    .line 69
    if-ne v5, v1, :cond_4

    .line 70
    .line 71
    if-gt v1, v0, :cond_3

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    .line 75
    .line 76
    invoke-direct {p0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :cond_4
    :goto_2
    iget v5, p1, Lorg/brotli/dec/j;->g:I

    .line 81
    .line 82
    mul-int/lit8 v7, v3, 0x8

    .line 83
    .line 84
    shl-int/2addr v4, v7

    .line 85
    or-int/2addr v4, v5

    .line 86
    iput v4, p1, Lorg/brotli/dec/j;->g:I

    .line 87
    .line 88
    add-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    .line 92
    .line 93
    const-string p1, "Corrupted reserved bit"

    .line 94
    .line 95
    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0

    .line 99
    :cond_6
    move v1, v2

    .line 100
    :goto_3
    if-ge v1, v3, :cond_9

    .line 101
    .line 102
    invoke-static {p0, v4}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-nez v5, :cond_8

    .line 107
    .line 108
    add-int/lit8 v7, v1, 0x1

    .line 109
    .line 110
    if-ne v7, v3, :cond_8

    .line 111
    .line 112
    if-gt v3, v4, :cond_7

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_7
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    .line 116
    .line 117
    invoke-direct {p0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :cond_8
    :goto_4
    iget v7, p1, Lorg/brotli/dec/j;->g:I

    .line 122
    .line 123
    mul-int/lit8 v8, v1, 0x4

    .line 124
    .line 125
    shl-int/2addr v5, v8

    .line 126
    or-int/2addr v5, v7

    .line 127
    iput v5, p1, Lorg/brotli/dec/j;->g:I

    .line 128
    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_9
    iget v1, p1, Lorg/brotli/dec/j;->g:I

    .line 133
    .line 134
    add-int/2addr v1, v0

    .line 135
    iput v1, p1, Lorg/brotli/dec/j;->g:I

    .line 136
    .line 137
    iget-boolean v1, p1, Lorg/brotli/dec/j;->h:Z

    .line 138
    .line 139
    if-nez v1, :cond_b

    .line 140
    .line 141
    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    if-ne p0, v0, :cond_a

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_a
    move v0, v2

    .line 149
    :goto_5
    iput-boolean v0, p1, Lorg/brotli/dec/j;->i:Z

    .line 150
    .line 151
    :cond_b
    return-void
.end method

.method private static h(Lorg/brotli/dec/a;)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-static {p0, v1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    invoke-static {p0, v1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    shl-int/2addr v0, v1

    .line 21
    add-int/2addr p0, v0

    .line 22
    return p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method static i(Lorg/brotli/dec/j;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/brotli/dec/j;->a:I

    .line 4
    .line 5
    if-eqz v1, :cond_23

    .line 6
    .line 7
    const/16 v2, 0xb

    .line 8
    .line 9
    if-eq v1, v2, :cond_22

    .line 10
    .line 11
    iget-object v1, v0, Lorg/brotli/dec/j;->c:Lorg/brotli/dec/a;

    .line 12
    .line 13
    iget v2, v0, Lorg/brotli/dec/j;->Q:I

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    sub-int/2addr v2, v3

    .line 17
    iget-object v4, v0, Lorg/brotli/dec/j;->d:[B

    .line 18
    .line 19
    move-object v10, v4

    .line 20
    :cond_0
    :goto_0
    iget v4, v0, Lorg/brotli/dec/j;->a:I

    .line 21
    .line 22
    const-string v5, "Invalid metablock length"

    .line 23
    .line 24
    const/16 v6, 0xa

    .line 25
    .line 26
    if-eq v4, v6, :cond_1f

    .line 27
    .line 28
    const/16 v11, 0xc

    .line 29
    .line 30
    if-eq v4, v11, :cond_1c

    .line 31
    .line 32
    const/16 v12, 0x8

    .line 33
    .line 34
    const-string v6, "Invalid backward reference"

    .line 35
    .line 36
    const/4 v7, 0x4

    .line 37
    const/4 v8, 0x7

    .line 38
    const/4 v9, 0x6

    .line 39
    const/4 v13, 0x2

    .line 40
    const/4 v14, 0x3

    .line 41
    const/4 v15, 0x0

    .line 42
    packed-switch v4, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    new-instance v1, Lorg/brotli/dec/BrotliRuntimeException;

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v3, "Unexpected state "

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget v0, v0, Lorg/brotli/dec/j;->a:I

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {v1, v0}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v1

    .line 70
    :pswitch_0
    iget v4, v0, Lorg/brotli/dec/j;->M:I

    .line 71
    .line 72
    if-lt v4, v7, :cond_3

    .line 73
    .line 74
    const/16 v5, 0x18

    .line 75
    .line 76
    if-gt v4, v5, :cond_3

    .line 77
    .line 78
    sget-object v5, Lorg/brotli/dec/e;->a:[I

    .line 79
    .line 80
    aget v5, v5, v4

    .line 81
    .line 82
    iget v7, v0, Lorg/brotli/dec/j;->L:I

    .line 83
    .line 84
    iget v8, v0, Lorg/brotli/dec/j;->s:I

    .line 85
    .line 86
    sub-int/2addr v7, v8

    .line 87
    sub-int/2addr v7, v3

    .line 88
    sget-object v8, Lorg/brotli/dec/e;->b:[I

    .line 89
    .line 90
    aget v8, v8, v4

    .line 91
    .line 92
    shl-int v9, v3, v8

    .line 93
    .line 94
    sub-int/2addr v9, v3

    .line 95
    and-int/2addr v9, v7

    .line 96
    ushr-int/2addr v7, v8

    .line 97
    mul-int/2addr v9, v4

    .line 98
    add-int v8, v5, v9

    .line 99
    .line 100
    sget-object v4, Lorg/brotli/dec/k;->d:[Lorg/brotli/dec/k;

    .line 101
    .line 102
    array-length v5, v4

    .line 103
    if-ge v7, v5, :cond_2

    .line 104
    .line 105
    iget v5, v0, Lorg/brotli/dec/j;->N:I

    .line 106
    .line 107
    invoke-static {}, Lorg/brotli/dec/e;->a()[B

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    iget v9, v0, Lorg/brotli/dec/j;->M:I

    .line 112
    .line 113
    aget-object v13, v4, v7

    .line 114
    .line 115
    move-object v4, v10

    .line 116
    move v7, v8

    .line 117
    move v8, v9

    .line 118
    move-object v9, v13

    .line 119
    invoke-static/range {v4 .. v9}, Lorg/brotli/dec/k;->b([BI[BIILorg/brotli/dec/k;)I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    iget v5, v0, Lorg/brotli/dec/j;->N:I

    .line 124
    .line 125
    add-int/2addr v5, v4

    .line 126
    iput v5, v0, Lorg/brotli/dec/j;->N:I

    .line 127
    .line 128
    iget v6, v0, Lorg/brotli/dec/j;->r:I

    .line 129
    .line 130
    add-int/2addr v6, v4

    .line 131
    iput v6, v0, Lorg/brotli/dec/j;->r:I

    .line 132
    .line 133
    iget v6, v0, Lorg/brotli/dec/j;->g:I

    .line 134
    .line 135
    sub-int/2addr v6, v4

    .line 136
    iput v6, v0, Lorg/brotli/dec/j;->g:I

    .line 137
    .line 138
    iget v4, v0, Lorg/brotli/dec/j;->Q:I

    .line 139
    .line 140
    if-lt v5, v4, :cond_1

    .line 141
    .line 142
    iput v12, v0, Lorg/brotli/dec/j;->b:I

    .line 143
    .line 144
    iput v4, v0, Lorg/brotli/dec/j;->Y:I

    .line 145
    .line 146
    iput v15, v0, Lorg/brotli/dec/j;->X:I

    .line 147
    .line 148
    iput v11, v0, Lorg/brotli/dec/j;->a:I

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_1
    iput v14, v0, Lorg/brotli/dec/j;->a:I

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_2
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    .line 157
    .line 158
    invoke-direct {v0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v0

    .line 162
    :cond_3
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    .line 163
    .line 164
    invoke-direct {v0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :pswitch_1
    iget v4, v0, Lorg/brotli/dec/j;->Q:I

    .line 169
    .line 170
    iget v5, v0, Lorg/brotli/dec/j;->N:I

    .line 171
    .line 172
    sub-int/2addr v5, v4

    .line 173
    invoke-static {v10, v4, v10, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    .line 175
    .line 176
    iput v14, v0, Lorg/brotli/dec/j;->a:I

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :pswitch_2
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/d;->a(Lorg/brotli/dec/j;)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :goto_1
    :pswitch_3
    iget v4, v0, Lorg/brotli/dec/j;->g:I

    .line 186
    .line 187
    if-lez v4, :cond_4

    .line 188
    .line 189
    invoke-static {v1}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 190
    .line 191
    .line 192
    invoke-static {v1, v12}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 193
    .line 194
    .line 195
    iget v4, v0, Lorg/brotli/dec/j;->g:I

    .line 196
    .line 197
    sub-int/2addr v4, v3

    .line 198
    iput v4, v0, Lorg/brotli/dec/j;->g:I

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_4
    iput v3, v0, Lorg/brotli/dec/j;->a:I

    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :pswitch_4
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/d;->p(Lorg/brotli/dec/j;)V

    .line 206
    .line 207
    .line 208
    iput v14, v0, Lorg/brotli/dec/j;->a:I

    .line 209
    .line 210
    :pswitch_5
    iget v4, v0, Lorg/brotli/dec/j;->g:I

    .line 211
    .line 212
    if-gtz v4, :cond_5

    .line 213
    .line 214
    iput v3, v0, Lorg/brotli/dec/j;->a:I

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_5
    invoke-static {v1}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 219
    .line 220
    .line 221
    iget-object v4, v0, Lorg/brotli/dec/j;->n:[I

    .line 222
    .line 223
    aget v4, v4, v3

    .line 224
    .line 225
    if-nez v4, :cond_6

    .line 226
    .line 227
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/d;->c(Lorg/brotli/dec/j;)V

    .line 228
    .line 229
    .line 230
    :cond_6
    iget-object v4, v0, Lorg/brotli/dec/j;->n:[I

    .line 231
    .line 232
    aget v5, v4, v3

    .line 233
    .line 234
    sub-int/2addr v5, v3

    .line 235
    aput v5, v4, v3

    .line 236
    .line 237
    invoke-static {v1}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 238
    .line 239
    .line 240
    iget-object v4, v0, Lorg/brotli/dec/j;->l:Lorg/brotli/dec/g;

    .line 241
    .line 242
    iget-object v4, v4, Lorg/brotli/dec/g;->b:[I

    .line 243
    .line 244
    iget v5, v0, Lorg/brotli/dec/j;->F:I

    .line 245
    .line 246
    invoke-static {v4, v5, v1}, Lorg/brotli/dec/d;->r([IILorg/brotli/dec/a;)I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    ushr-int/lit8 v5, v4, 0x6

    .line 251
    .line 252
    iput v15, v0, Lorg/brotli/dec/j;->G:I

    .line 253
    .line 254
    if-lt v5, v13, :cond_7

    .line 255
    .line 256
    add-int/lit8 v5, v5, -0x2

    .line 257
    .line 258
    const/4 v12, -0x1

    .line 259
    iput v12, v0, Lorg/brotli/dec/j;->G:I

    .line 260
    .line 261
    :cond_7
    sget-object v12, Lorg/brotli/dec/i;->g:[I

    .line 262
    .line 263
    aget v12, v12, v5

    .line 264
    .line 265
    ushr-int/lit8 v16, v4, 0x3

    .line 266
    .line 267
    and-int/lit8 v16, v16, 0x7

    .line 268
    .line 269
    add-int v12, v12, v16

    .line 270
    .line 271
    sget-object v16, Lorg/brotli/dec/i;->h:[I

    .line 272
    .line 273
    aget v5, v16, v5

    .line 274
    .line 275
    and-int/lit8 v4, v4, 0x7

    .line 276
    .line 277
    add-int/2addr v5, v4

    .line 278
    sget-object v4, Lorg/brotli/dec/i;->c:[I

    .line 279
    .line 280
    aget v4, v4, v12

    .line 281
    .line 282
    sget-object v16, Lorg/brotli/dec/i;->d:[I

    .line 283
    .line 284
    aget v12, v16, v12

    .line 285
    .line 286
    invoke-static {v1, v12}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 287
    .line 288
    .line 289
    move-result v12

    .line 290
    add-int/2addr v4, v12

    .line 291
    iput v4, v0, Lorg/brotli/dec/j;->y:I

    .line 292
    .line 293
    sget-object v4, Lorg/brotli/dec/i;->e:[I

    .line 294
    .line 295
    aget v4, v4, v5

    .line 296
    .line 297
    sget-object v12, Lorg/brotli/dec/i;->f:[I

    .line 298
    .line 299
    aget v5, v12, v5

    .line 300
    .line 301
    invoke-static {v1, v5}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    add-int/2addr v4, v5

    .line 306
    iput v4, v0, Lorg/brotli/dec/j;->M:I

    .line 307
    .line 308
    iput v15, v0, Lorg/brotli/dec/j;->x:I

    .line 309
    .line 310
    iput v9, v0, Lorg/brotli/dec/j;->a:I

    .line 311
    .line 312
    :pswitch_6
    iget-boolean v4, v0, Lorg/brotli/dec/j;->u:Z

    .line 313
    .line 314
    if-eqz v4, :cond_a

    .line 315
    .line 316
    :cond_8
    iget v4, v0, Lorg/brotli/dec/j;->x:I

    .line 317
    .line 318
    iget v5, v0, Lorg/brotli/dec/j;->y:I

    .line 319
    .line 320
    if-ge v4, v5, :cond_d

    .line 321
    .line 322
    invoke-static {v1}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 323
    .line 324
    .line 325
    iget-object v4, v0, Lorg/brotli/dec/j;->n:[I

    .line 326
    .line 327
    aget v4, v4, v15

    .line 328
    .line 329
    if-nez v4, :cond_9

    .line 330
    .line 331
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/d;->f(Lorg/brotli/dec/j;)V

    .line 332
    .line 333
    .line 334
    :cond_9
    iget-object v4, v0, Lorg/brotli/dec/j;->n:[I

    .line 335
    .line 336
    aget v5, v4, v15

    .line 337
    .line 338
    sub-int/2addr v5, v3

    .line 339
    aput v5, v4, v15

    .line 340
    .line 341
    invoke-static {v1}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 342
    .line 343
    .line 344
    iget v4, v0, Lorg/brotli/dec/j;->r:I

    .line 345
    .line 346
    iget-object v5, v0, Lorg/brotli/dec/j;->k:Lorg/brotli/dec/g;

    .line 347
    .line 348
    iget-object v5, v5, Lorg/brotli/dec/g;->b:[I

    .line 349
    .line 350
    iget v12, v0, Lorg/brotli/dec/j;->w:I

    .line 351
    .line 352
    invoke-static {v5, v12, v1}, Lorg/brotli/dec/d;->r([IILorg/brotli/dec/a;)I

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    int-to-byte v5, v5

    .line 357
    aput-byte v5, v10, v4

    .line 358
    .line 359
    iget v4, v0, Lorg/brotli/dec/j;->x:I

    .line 360
    .line 361
    add-int/2addr v4, v3

    .line 362
    iput v4, v0, Lorg/brotli/dec/j;->x:I

    .line 363
    .line 364
    iget v4, v0, Lorg/brotli/dec/j;->r:I

    .line 365
    .line 366
    add-int/lit8 v5, v4, 0x1

    .line 367
    .line 368
    iput v5, v0, Lorg/brotli/dec/j;->r:I

    .line 369
    .line 370
    if-ne v4, v2, :cond_8

    .line 371
    .line 372
    iput v9, v0, Lorg/brotli/dec/j;->b:I

    .line 373
    .line 374
    iget v4, v0, Lorg/brotli/dec/j;->Q:I

    .line 375
    .line 376
    iput v4, v0, Lorg/brotli/dec/j;->Y:I

    .line 377
    .line 378
    iput v15, v0, Lorg/brotli/dec/j;->X:I

    .line 379
    .line 380
    iput v11, v0, Lorg/brotli/dec/j;->a:I

    .line 381
    .line 382
    goto :goto_3

    .line 383
    :cond_a
    iget v4, v0, Lorg/brotli/dec/j;->r:I

    .line 384
    .line 385
    add-int/lit8 v5, v4, -0x1

    .line 386
    .line 387
    and-int/2addr v5, v2

    .line 388
    aget-byte v5, v10, v5

    .line 389
    .line 390
    and-int/lit16 v5, v5, 0xff

    .line 391
    .line 392
    sub-int/2addr v4, v13

    .line 393
    and-int/2addr v4, v2

    .line 394
    aget-byte v4, v10, v4

    .line 395
    .line 396
    and-int/lit16 v4, v4, 0xff

    .line 397
    .line 398
    :goto_2
    iget v12, v0, Lorg/brotli/dec/j;->x:I

    .line 399
    .line 400
    iget v8, v0, Lorg/brotli/dec/j;->y:I

    .line 401
    .line 402
    if-ge v12, v8, :cond_d

    .line 403
    .line 404
    invoke-static {v1}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 405
    .line 406
    .line 407
    iget-object v8, v0, Lorg/brotli/dec/j;->n:[I

    .line 408
    .line 409
    aget v8, v8, v15

    .line 410
    .line 411
    if-nez v8, :cond_b

    .line 412
    .line 413
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/d;->f(Lorg/brotli/dec/j;)V

    .line 414
    .line 415
    .line 416
    :cond_b
    iget-object v8, v0, Lorg/brotli/dec/j;->A:[B

    .line 417
    .line 418
    iget v12, v0, Lorg/brotli/dec/j;->B:I

    .line 419
    .line 420
    sget-object v17, Lorg/brotli/dec/c;->a:[I

    .line 421
    .line 422
    iget v7, v0, Lorg/brotli/dec/j;->D:I

    .line 423
    .line 424
    add-int/2addr v7, v5

    .line 425
    aget v7, v17, v7

    .line 426
    .line 427
    iget v13, v0, Lorg/brotli/dec/j;->E:I

    .line 428
    .line 429
    add-int/2addr v13, v4

    .line 430
    aget v4, v17, v13

    .line 431
    .line 432
    or-int/2addr v4, v7

    .line 433
    add-int/2addr v12, v4

    .line 434
    aget-byte v4, v8, v12

    .line 435
    .line 436
    and-int/lit16 v4, v4, 0xff

    .line 437
    .line 438
    iget-object v7, v0, Lorg/brotli/dec/j;->n:[I

    .line 439
    .line 440
    aget v8, v7, v15

    .line 441
    .line 442
    sub-int/2addr v8, v3

    .line 443
    aput v8, v7, v15

    .line 444
    .line 445
    invoke-static {v1}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 446
    .line 447
    .line 448
    iget-object v7, v0, Lorg/brotli/dec/j;->k:Lorg/brotli/dec/g;

    .line 449
    .line 450
    iget-object v8, v7, Lorg/brotli/dec/g;->b:[I

    .line 451
    .line 452
    iget-object v7, v7, Lorg/brotli/dec/g;->c:[I

    .line 453
    .line 454
    aget v4, v7, v4

    .line 455
    .line 456
    invoke-static {v8, v4, v1}, Lorg/brotli/dec/d;->r([IILorg/brotli/dec/a;)I

    .line 457
    .line 458
    .line 459
    move-result v4

    .line 460
    iget v7, v0, Lorg/brotli/dec/j;->r:I

    .line 461
    .line 462
    int-to-byte v8, v4

    .line 463
    aput-byte v8, v10, v7

    .line 464
    .line 465
    iget v8, v0, Lorg/brotli/dec/j;->x:I

    .line 466
    .line 467
    add-int/2addr v8, v3

    .line 468
    iput v8, v0, Lorg/brotli/dec/j;->x:I

    .line 469
    .line 470
    add-int/lit8 v8, v7, 0x1

    .line 471
    .line 472
    iput v8, v0, Lorg/brotli/dec/j;->r:I

    .line 473
    .line 474
    if-ne v7, v2, :cond_c

    .line 475
    .line 476
    iput v9, v0, Lorg/brotli/dec/j;->b:I

    .line 477
    .line 478
    iget v4, v0, Lorg/brotli/dec/j;->Q:I

    .line 479
    .line 480
    iput v4, v0, Lorg/brotli/dec/j;->Y:I

    .line 481
    .line 482
    iput v15, v0, Lorg/brotli/dec/j;->X:I

    .line 483
    .line 484
    iput v11, v0, Lorg/brotli/dec/j;->a:I

    .line 485
    .line 486
    goto :goto_3

    .line 487
    :cond_c
    const/4 v7, 0x4

    .line 488
    const/4 v8, 0x7

    .line 489
    const/4 v13, 0x2

    .line 490
    move/from16 v18, v5

    .line 491
    .line 492
    move v5, v4

    .line 493
    move/from16 v4, v18

    .line 494
    .line 495
    goto :goto_2

    .line 496
    :cond_d
    :goto_3
    iget v4, v0, Lorg/brotli/dec/j;->a:I

    .line 497
    .line 498
    if-eq v4, v9, :cond_e

    .line 499
    .line 500
    goto/16 :goto_0

    .line 501
    .line 502
    :cond_e
    iget v4, v0, Lorg/brotli/dec/j;->g:I

    .line 503
    .line 504
    iget v5, v0, Lorg/brotli/dec/j;->y:I

    .line 505
    .line 506
    sub-int/2addr v4, v5

    .line 507
    iput v4, v0, Lorg/brotli/dec/j;->g:I

    .line 508
    .line 509
    if-gtz v4, :cond_f

    .line 510
    .line 511
    iput v14, v0, Lorg/brotli/dec/j;->a:I

    .line 512
    .line 513
    goto/16 :goto_0

    .line 514
    .line 515
    :cond_f
    iget v4, v0, Lorg/brotli/dec/j;->G:I

    .line 516
    .line 517
    if-gez v4, :cond_12

    .line 518
    .line 519
    invoke-static {v1}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 520
    .line 521
    .line 522
    iget-object v4, v0, Lorg/brotli/dec/j;->n:[I

    .line 523
    .line 524
    const/4 v5, 0x2

    .line 525
    aget v4, v4, v5

    .line 526
    .line 527
    if-nez v4, :cond_10

    .line 528
    .line 529
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/d;->e(Lorg/brotli/dec/j;)V

    .line 530
    .line 531
    .line 532
    :cond_10
    iget-object v4, v0, Lorg/brotli/dec/j;->n:[I

    .line 533
    .line 534
    aget v7, v4, v5

    .line 535
    .line 536
    sub-int/2addr v7, v3

    .line 537
    aput v7, v4, v5

    .line 538
    .line 539
    invoke-static {v1}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 540
    .line 541
    .line 542
    iget-object v4, v0, Lorg/brotli/dec/j;->m:Lorg/brotli/dec/g;

    .line 543
    .line 544
    iget-object v5, v4, Lorg/brotli/dec/g;->b:[I

    .line 545
    .line 546
    iget-object v4, v4, Lorg/brotli/dec/g;->c:[I

    .line 547
    .line 548
    iget-object v7, v0, Lorg/brotli/dec/j;->H:[B

    .line 549
    .line 550
    iget v8, v0, Lorg/brotli/dec/j;->C:I

    .line 551
    .line 552
    iget v9, v0, Lorg/brotli/dec/j;->M:I

    .line 553
    .line 554
    const/4 v12, 0x4

    .line 555
    if-le v9, v12, :cond_11

    .line 556
    .line 557
    move v9, v14

    .line 558
    goto :goto_4

    .line 559
    :cond_11
    add-int/lit8 v9, v9, -0x2

    .line 560
    .line 561
    :goto_4
    add-int/2addr v8, v9

    .line 562
    aget-byte v7, v7, v8

    .line 563
    .line 564
    and-int/lit16 v7, v7, 0xff

    .line 565
    .line 566
    aget v4, v4, v7

    .line 567
    .line 568
    invoke-static {v5, v4, v1}, Lorg/brotli/dec/d;->r([IILorg/brotli/dec/a;)I

    .line 569
    .line 570
    .line 571
    move-result v4

    .line 572
    iput v4, v0, Lorg/brotli/dec/j;->G:I

    .line 573
    .line 574
    iget v5, v0, Lorg/brotli/dec/j;->I:I

    .line 575
    .line 576
    if-lt v4, v5, :cond_12

    .line 577
    .line 578
    sub-int/2addr v4, v5

    .line 579
    iget v7, v0, Lorg/brotli/dec/j;->J:I

    .line 580
    .line 581
    and-int/2addr v7, v4

    .line 582
    iget v8, v0, Lorg/brotli/dec/j;->K:I

    .line 583
    .line 584
    ushr-int/2addr v4, v8

    .line 585
    iput v4, v0, Lorg/brotli/dec/j;->G:I

    .line 586
    .line 587
    ushr-int/lit8 v8, v4, 0x1

    .line 588
    .line 589
    add-int/2addr v8, v3

    .line 590
    and-int/2addr v4, v3

    .line 591
    const/4 v9, 0x2

    .line 592
    add-int/2addr v4, v9

    .line 593
    shl-int/2addr v4, v8

    .line 594
    const/4 v9, 0x4

    .line 595
    sub-int/2addr v4, v9

    .line 596
    add-int/2addr v5, v7

    .line 597
    invoke-static {v1, v8}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 598
    .line 599
    .line 600
    move-result v7

    .line 601
    add-int/2addr v4, v7

    .line 602
    iget v7, v0, Lorg/brotli/dec/j;->K:I

    .line 603
    .line 604
    shl-int/2addr v4, v7

    .line 605
    add-int/2addr v5, v4

    .line 606
    iput v5, v0, Lorg/brotli/dec/j;->G:I

    .line 607
    .line 608
    :cond_12
    iget v4, v0, Lorg/brotli/dec/j;->G:I

    .line 609
    .line 610
    iget-object v5, v0, Lorg/brotli/dec/j;->q:[I

    .line 611
    .line 612
    iget v7, v0, Lorg/brotli/dec/j;->t:I

    .line 613
    .line 614
    invoke-static {v4, v5, v7}, Lorg/brotli/dec/d;->t(I[II)I

    .line 615
    .line 616
    .line 617
    move-result v4

    .line 618
    iput v4, v0, Lorg/brotli/dec/j;->L:I

    .line 619
    .line 620
    if-ltz v4, :cond_1a

    .line 621
    .line 622
    iget v5, v0, Lorg/brotli/dec/j;->s:I

    .line 623
    .line 624
    iget v7, v0, Lorg/brotli/dec/j;->O:I

    .line 625
    .line 626
    if-eq v5, v7, :cond_13

    .line 627
    .line 628
    iget v5, v0, Lorg/brotli/dec/j;->r:I

    .line 629
    .line 630
    if-ge v5, v7, :cond_13

    .line 631
    .line 632
    iput v5, v0, Lorg/brotli/dec/j;->s:I

    .line 633
    .line 634
    goto :goto_5

    .line 635
    :cond_13
    iput v7, v0, Lorg/brotli/dec/j;->s:I

    .line 636
    .line 637
    :goto_5
    iget v5, v0, Lorg/brotli/dec/j;->r:I

    .line 638
    .line 639
    iput v5, v0, Lorg/brotli/dec/j;->N:I

    .line 640
    .line 641
    iget v5, v0, Lorg/brotli/dec/j;->s:I

    .line 642
    .line 643
    if-le v4, v5, :cond_14

    .line 644
    .line 645
    const/16 v4, 0x9

    .line 646
    .line 647
    iput v4, v0, Lorg/brotli/dec/j;->a:I

    .line 648
    .line 649
    goto/16 :goto_0

    .line 650
    .line 651
    :cond_14
    iget v5, v0, Lorg/brotli/dec/j;->G:I

    .line 652
    .line 653
    if-lez v5, :cond_15

    .line 654
    .line 655
    iget-object v5, v0, Lorg/brotli/dec/j;->q:[I

    .line 656
    .line 657
    iget v7, v0, Lorg/brotli/dec/j;->t:I

    .line 658
    .line 659
    and-int/lit8 v8, v7, 0x3

    .line 660
    .line 661
    aput v4, v5, v8

    .line 662
    .line 663
    add-int/2addr v7, v3

    .line 664
    iput v7, v0, Lorg/brotli/dec/j;->t:I

    .line 665
    .line 666
    :cond_15
    iget v4, v0, Lorg/brotli/dec/j;->M:I

    .line 667
    .line 668
    iget v5, v0, Lorg/brotli/dec/j;->g:I

    .line 669
    .line 670
    if-gt v4, v5, :cond_19

    .line 671
    .line 672
    iput v15, v0, Lorg/brotli/dec/j;->x:I

    .line 673
    .line 674
    const/4 v4, 0x7

    .line 675
    iput v4, v0, Lorg/brotli/dec/j;->a:I

    .line 676
    .line 677
    :pswitch_7
    iget v4, v0, Lorg/brotli/dec/j;->r:I

    .line 678
    .line 679
    iget v5, v0, Lorg/brotli/dec/j;->L:I

    .line 680
    .line 681
    sub-int v5, v4, v5

    .line 682
    .line 683
    and-int/2addr v5, v2

    .line 684
    iget v6, v0, Lorg/brotli/dec/j;->M:I

    .line 685
    .line 686
    iget v7, v0, Lorg/brotli/dec/j;->x:I

    .line 687
    .line 688
    sub-int/2addr v6, v7

    .line 689
    add-int v7, v5, v6

    .line 690
    .line 691
    if-ge v7, v2, :cond_18

    .line 692
    .line 693
    add-int v7, v4, v6

    .line 694
    .line 695
    if-ge v7, v2, :cond_18

    .line 696
    .line 697
    :goto_6
    if-ge v15, v6, :cond_16

    .line 698
    .line 699
    add-int/lit8 v7, v4, 0x1

    .line 700
    .line 701
    add-int/lit8 v8, v5, 0x1

    .line 702
    .line 703
    aget-byte v5, v10, v5

    .line 704
    .line 705
    aput-byte v5, v10, v4

    .line 706
    .line 707
    add-int/lit8 v15, v15, 0x1

    .line 708
    .line 709
    move v4, v7

    .line 710
    move v5, v8

    .line 711
    goto :goto_6

    .line 712
    :cond_16
    iget v4, v0, Lorg/brotli/dec/j;->x:I

    .line 713
    .line 714
    add-int/2addr v4, v6

    .line 715
    iput v4, v0, Lorg/brotli/dec/j;->x:I

    .line 716
    .line 717
    iget v4, v0, Lorg/brotli/dec/j;->g:I

    .line 718
    .line 719
    sub-int/2addr v4, v6

    .line 720
    iput v4, v0, Lorg/brotli/dec/j;->g:I

    .line 721
    .line 722
    iget v4, v0, Lorg/brotli/dec/j;->r:I

    .line 723
    .line 724
    add-int/2addr v4, v6

    .line 725
    iput v4, v0, Lorg/brotli/dec/j;->r:I

    .line 726
    .line 727
    :cond_17
    const/4 v4, 0x7

    .line 728
    goto :goto_7

    .line 729
    :cond_18
    iget v4, v0, Lorg/brotli/dec/j;->x:I

    .line 730
    .line 731
    iget v5, v0, Lorg/brotli/dec/j;->M:I

    .line 732
    .line 733
    if-ge v4, v5, :cond_17

    .line 734
    .line 735
    iget v5, v0, Lorg/brotli/dec/j;->r:I

    .line 736
    .line 737
    iget v6, v0, Lorg/brotli/dec/j;->L:I

    .line 738
    .line 739
    sub-int v6, v5, v6

    .line 740
    .line 741
    and-int/2addr v6, v2

    .line 742
    aget-byte v6, v10, v6

    .line 743
    .line 744
    aput-byte v6, v10, v5

    .line 745
    .line 746
    iget v6, v0, Lorg/brotli/dec/j;->g:I

    .line 747
    .line 748
    sub-int/2addr v6, v3

    .line 749
    iput v6, v0, Lorg/brotli/dec/j;->g:I

    .line 750
    .line 751
    add-int/lit8 v4, v4, 0x1

    .line 752
    .line 753
    iput v4, v0, Lorg/brotli/dec/j;->x:I

    .line 754
    .line 755
    add-int/lit8 v4, v5, 0x1

    .line 756
    .line 757
    iput v4, v0, Lorg/brotli/dec/j;->r:I

    .line 758
    .line 759
    if-ne v5, v2, :cond_18

    .line 760
    .line 761
    const/4 v4, 0x7

    .line 762
    iput v4, v0, Lorg/brotli/dec/j;->b:I

    .line 763
    .line 764
    iget v5, v0, Lorg/brotli/dec/j;->Q:I

    .line 765
    .line 766
    iput v5, v0, Lorg/brotli/dec/j;->Y:I

    .line 767
    .line 768
    iput v15, v0, Lorg/brotli/dec/j;->X:I

    .line 769
    .line 770
    iput v11, v0, Lorg/brotli/dec/j;->a:I

    .line 771
    .line 772
    :goto_7
    iget v5, v0, Lorg/brotli/dec/j;->a:I

    .line 773
    .line 774
    if-ne v5, v4, :cond_0

    .line 775
    .line 776
    iput v14, v0, Lorg/brotli/dec/j;->a:I

    .line 777
    .line 778
    goto/16 :goto_0

    .line 779
    .line 780
    :cond_19
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    .line 781
    .line 782
    invoke-direct {v0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    throw v0

    .line 786
    :cond_1a
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    .line 787
    .line 788
    const-string v1, "Negative distance"

    .line 789
    .line 790
    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    throw v0

    .line 794
    :pswitch_8
    iget v2, v0, Lorg/brotli/dec/j;->g:I

    .line 795
    .line 796
    if-ltz v2, :cond_1b

    .line 797
    .line 798
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/d;->q(Lorg/brotli/dec/j;)V

    .line 799
    .line 800
    .line 801
    iget v2, v0, Lorg/brotli/dec/j;->Q:I

    .line 802
    .line 803
    sub-int/2addr v2, v3

    .line 804
    iget-object v10, v0, Lorg/brotli/dec/j;->d:[B

    .line 805
    .line 806
    goto/16 :goto_0

    .line 807
    .line 808
    :cond_1b
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    .line 809
    .line 810
    invoke-direct {v0, v5}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    throw v0

    .line 814
    :cond_1c
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/d;->u(Lorg/brotli/dec/j;)Z

    .line 815
    .line 816
    .line 817
    move-result v4

    .line 818
    if-nez v4, :cond_1d

    .line 819
    .line 820
    return-void

    .line 821
    :cond_1d
    iget v4, v0, Lorg/brotli/dec/j;->r:I

    .line 822
    .line 823
    iget v5, v0, Lorg/brotli/dec/j;->O:I

    .line 824
    .line 825
    if-lt v4, v5, :cond_1e

    .line 826
    .line 827
    iput v5, v0, Lorg/brotli/dec/j;->s:I

    .line 828
    .line 829
    :cond_1e
    and-int/2addr v4, v2

    .line 830
    iput v4, v0, Lorg/brotli/dec/j;->r:I

    .line 831
    .line 832
    iget v4, v0, Lorg/brotli/dec/j;->b:I

    .line 833
    .line 834
    iput v4, v0, Lorg/brotli/dec/j;->a:I

    .line 835
    .line 836
    goto/16 :goto_0

    .line 837
    .line 838
    :cond_1f
    if-ne v4, v6, :cond_21

    .line 839
    .line 840
    iget v2, v0, Lorg/brotli/dec/j;->g:I

    .line 841
    .line 842
    if-ltz v2, :cond_20

    .line 843
    .line 844
    invoke-static {v1}, Lorg/brotli/dec/a;->g(Lorg/brotli/dec/a;)V

    .line 845
    .line 846
    .line 847
    iget-object v0, v0, Lorg/brotli/dec/j;->c:Lorg/brotli/dec/a;

    .line 848
    .line 849
    invoke-static {v0, v3}, Lorg/brotli/dec/a;->a(Lorg/brotli/dec/a;Z)V

    .line 850
    .line 851
    .line 852
    goto :goto_8

    .line 853
    :cond_20
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    .line 854
    .line 855
    invoke-direct {v0, v5}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    throw v0

    .line 859
    :cond_21
    :goto_8
    return-void

    .line 860
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 861
    .line 862
    const-string v1, "Can\'t decompress after close"

    .line 863
    .line 864
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    throw v0

    .line 868
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 869
    .line 870
    const-string v1, "Can\'t decompress until initialized"

    .line 871
    .line 872
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    throw v0

    .line 876
    nop

    .line 877
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static j([BI)V
    .locals 4

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    if-ge v3, v0, :cond_0

    .line 8
    .line 9
    aput v3, v1, v3

    .line 10
    .line 11
    add-int/lit8 v3, v3, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :goto_1
    if-ge v2, p1, :cond_2

    .line 15
    .line 16
    aget-byte v0, p0, v2

    .line 17
    .line 18
    and-int/lit16 v0, v0, 0xff

    .line 19
    .line 20
    aget v3, v1, v0

    .line 21
    .line 22
    int-to-byte v3, v3

    .line 23
    aput-byte v3, p0, v2

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-static {v1, v0}, Lorg/brotli/dec/d;->l([II)V

    .line 28
    .line 29
    .line 30
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    return-void
.end method

.method private static k(Lorg/brotli/dec/j;)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/brotli/dec/j;->P:I

    .line 2
    .line 3
    int-to-long v1, v0

    .line 4
    iget-wide v3, p0, Lorg/brotli/dec/j;->R:J

    .line 5
    .line 6
    cmp-long v1, v1, v3

    .line 7
    .line 8
    if-lez v1, :cond_1

    .line 9
    .line 10
    long-to-int v1, v3

    .line 11
    iget-object v2, p0, Lorg/brotli/dec/j;->S:[B

    .line 12
    .line 13
    array-length v2, v2

    .line 14
    add-int/2addr v1, v2

    .line 15
    :goto_0
    shr-int/lit8 v2, v0, 0x1

    .line 16
    .line 17
    if-le v2, v1, :cond_0

    .line 18
    .line 19
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-boolean v1, p0, Lorg/brotli/dec/j;->h:Z

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x4000

    .line 26
    .line 27
    if-ge v0, v1, :cond_1

    .line 28
    .line 29
    iget v2, p0, Lorg/brotli/dec/j;->P:I

    .line 30
    .line 31
    if-lt v2, v1, :cond_1

    .line 32
    .line 33
    move v0, v1

    .line 34
    :cond_1
    iget v1, p0, Lorg/brotli/dec/j;->Q:I

    .line 35
    .line 36
    if-gt v0, v1, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    add-int/lit8 v2, v0, 0x25

    .line 40
    .line 41
    new-array v2, v2, [B

    .line 42
    .line 43
    iget-object v3, p0, Lorg/brotli/dec/j;->d:[B

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    iget-object v1, p0, Lorg/brotli/dec/j;->S:[B

    .line 53
    .line 54
    array-length v3, v1

    .line 55
    if-eqz v3, :cond_5

    .line 56
    .line 57
    array-length v3, v1

    .line 58
    iget v5, p0, Lorg/brotli/dec/j;->O:I

    .line 59
    .line 60
    if-le v3, v5, :cond_4

    .line 61
    .line 62
    sub-int/2addr v3, v5

    .line 63
    goto :goto_1

    .line 64
    :cond_4
    move v5, v3

    .line 65
    move v3, v4

    .line 66
    :goto_1
    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    .line 68
    .line 69
    iput v5, p0, Lorg/brotli/dec/j;->r:I

    .line 70
    .line 71
    iput v5, p0, Lorg/brotli/dec/j;->T:I

    .line 72
    .line 73
    :cond_5
    :goto_2
    iput-object v2, p0, Lorg/brotli/dec/j;->d:[B

    .line 74
    .line 75
    iput v0, p0, Lorg/brotli/dec/j;->Q:I

    .line 76
    .line 77
    return-void
.end method

.method private static l([II)V
    .locals 2

    .line 1
    aget v0, p0, p1

    .line 2
    .line 3
    :goto_0
    if-lez p1, :cond_0

    .line 4
    .line 5
    add-int/lit8 v1, p1, -0x1

    .line 6
    .line 7
    aget v1, p0, v1

    .line 8
    .line 9
    aput v1, p0, p1

    .line 10
    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    aput v0, p0, p1

    .line 16
    .line 17
    return-void
.end method

.method private static m([IILorg/brotli/dec/a;)I
    .locals 1

    .line 1
    invoke-static {p2}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, p2}, Lorg/brotli/dec/d;->r([IILorg/brotli/dec/a;)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    sget-object p1, Lorg/brotli/dec/i;->b:[I

    .line 9
    .line 10
    aget p1, p1, p0

    .line 11
    .line 12
    sget-object v0, Lorg/brotli/dec/i;->a:[I

    .line 13
    .line 14
    aget p0, v0, p0

    .line 15
    .line 16
    invoke-static {p2, p1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    add-int/2addr p0, p1

    .line 21
    return p0
.end method

.method static n(I[IILorg/brotli/dec/a;)V
    .locals 15

    .line 1
    move v0, p0

    .line 2
    move-object/from16 v1, p3

    .line 3
    .line 4
    invoke-static/range {p3 .. p3}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 5
    .line 6
    .line 7
    new-array v2, v0, [I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-static {v1, v3}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x1

    .line 16
    if-ne v4, v6, :cond_7

    .line 17
    .line 18
    add-int/lit8 v4, v0, -0x1

    .line 19
    .line 20
    const/4 v7, 0x4

    .line 21
    new-array v7, v7, [I

    .line 22
    .line 23
    invoke-static {v1, v3}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    add-int/2addr v8, v6

    .line 28
    move v9, v5

    .line 29
    :goto_0
    if-eqz v4, :cond_0

    .line 30
    .line 31
    shr-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    add-int/lit8 v9, v9, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v4, v5

    .line 37
    :goto_1
    if-ge v4, v8, :cond_1

    .line 38
    .line 39
    invoke-static {v1, v9}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    rem-int/2addr v10, v0

    .line 44
    aput v10, v7, v4

    .line 45
    .line 46
    aput v3, v2, v10

    .line 47
    .line 48
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    aget v4, v7, v5

    .line 52
    .line 53
    aput v6, v2, v4

    .line 54
    .line 55
    if-eq v8, v6, :cond_d

    .line 56
    .line 57
    if-eq v8, v3, :cond_5

    .line 58
    .line 59
    const/4 v4, 0x3

    .line 60
    if-eq v8, v4, :cond_4

    .line 61
    .line 62
    aget v8, v7, v5

    .line 63
    .line 64
    aget v9, v7, v6

    .line 65
    .line 66
    if-eq v8, v9, :cond_2

    .line 67
    .line 68
    aget v10, v7, v3

    .line 69
    .line 70
    if-eq v8, v10, :cond_2

    .line 71
    .line 72
    aget v11, v7, v4

    .line 73
    .line 74
    if-eq v8, v11, :cond_2

    .line 75
    .line 76
    if-eq v9, v10, :cond_2

    .line 77
    .line 78
    if-eq v9, v11, :cond_2

    .line 79
    .line 80
    if-eq v10, v11, :cond_2

    .line 81
    .line 82
    move v8, v6

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    move v8, v5

    .line 85
    :goto_2
    invoke-static {v1, v6}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-ne v1, v6, :cond_3

    .line 90
    .line 91
    aget v1, v7, v3

    .line 92
    .line 93
    aput v4, v2, v1

    .line 94
    .line 95
    aget v1, v7, v4

    .line 96
    .line 97
    aput v4, v2, v1

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_3
    aget v1, v7, v5

    .line 101
    .line 102
    aput v3, v2, v1

    .line 103
    .line 104
    :goto_3
    move v6, v8

    .line 105
    goto :goto_6

    .line 106
    :cond_4
    aget v1, v7, v5

    .line 107
    .line 108
    aget v4, v7, v6

    .line 109
    .line 110
    if-eq v1, v4, :cond_c

    .line 111
    .line 112
    aget v3, v7, v3

    .line 113
    .line 114
    if-eq v1, v3, :cond_c

    .line 115
    .line 116
    if-eq v4, v3, :cond_c

    .line 117
    .line 118
    move v5, v6

    .line 119
    goto :goto_5

    .line 120
    :cond_5
    aget v1, v7, v5

    .line 121
    .line 122
    aget v3, v7, v6

    .line 123
    .line 124
    if-eq v1, v3, :cond_6

    .line 125
    .line 126
    move v5, v6

    .line 127
    :cond_6
    aput v6, v2, v3

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_7
    const/16 v3, 0x12

    .line 131
    .line 132
    new-array v7, v3, [I

    .line 133
    .line 134
    const/16 v8, 0x20

    .line 135
    .line 136
    move v10, v5

    .line 137
    move v9, v8

    .line 138
    :goto_4
    if-ge v4, v3, :cond_9

    .line 139
    .line 140
    if-lez v9, :cond_9

    .line 141
    .line 142
    sget-object v11, Lorg/brotli/dec/d;->a:[I

    .line 143
    .line 144
    aget v11, v11, v4

    .line 145
    .line 146
    invoke-static/range {p3 .. p3}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 147
    .line 148
    .line 149
    iget-wide v12, v1, Lorg/brotli/dec/a;->f:J

    .line 150
    .line 151
    iget v14, v1, Lorg/brotli/dec/a;->g:I

    .line 152
    .line 153
    ushr-long/2addr v12, v14

    .line 154
    long-to-int v12, v12

    .line 155
    and-int/lit8 v12, v12, 0xf

    .line 156
    .line 157
    sget-object v13, Lorg/brotli/dec/d;->d:[I

    .line 158
    .line 159
    aget v12, v13, v12

    .line 160
    .line 161
    shr-int/lit8 v13, v12, 0x10

    .line 162
    .line 163
    add-int/2addr v14, v13

    .line 164
    iput v14, v1, Lorg/brotli/dec/a;->g:I

    .line 165
    .line 166
    const v13, 0xffff

    .line 167
    .line 168
    .line 169
    and-int/2addr v12, v13

    .line 170
    aput v12, v7, v11

    .line 171
    .line 172
    if-eqz v12, :cond_8

    .line 173
    .line 174
    shr-int v11, v8, v12

    .line 175
    .line 176
    sub-int/2addr v9, v11

    .line 177
    add-int/lit8 v10, v10, 0x1

    .line 178
    .line 179
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_9
    if-eq v10, v6, :cond_a

    .line 183
    .line 184
    if-nez v9, :cond_b

    .line 185
    .line 186
    :cond_a
    move v5, v6

    .line 187
    :cond_b
    invoke-static {v7, p0, v2, v1}, Lorg/brotli/dec/d;->o([II[ILorg/brotli/dec/a;)V

    .line 188
    .line 189
    .line 190
    :cond_c
    :goto_5
    move v6, v5

    .line 191
    :cond_d
    :goto_6
    if-eqz v6, :cond_e

    .line 192
    .line 193
    const/16 v1, 0x8

    .line 194
    .line 195
    move-object/from16 v3, p1

    .line 196
    .line 197
    move/from16 v4, p2

    .line 198
    .line 199
    invoke-static {v3, v4, v1, v2, p0}, Lorg/brotli/dec/f;->a([III[II)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_e
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    .line 204
    .line 205
    const-string v1, "Can\'t readHuffmanCode"

    .line 206
    .line 207
    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v0
.end method

.method private static o([II[ILorg/brotli/dec/a;)V
    .locals 10

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    const/16 v2, 0x12

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v0, v3, v1, p0, v2}, Lorg/brotli/dec/f;->a([III[II)V

    .line 10
    .line 11
    .line 12
    const/16 p0, 0x8

    .line 13
    .line 14
    const v1, 0x8000

    .line 15
    .line 16
    .line 17
    move v4, v1

    .line 18
    move v2, v3

    .line 19
    move v5, v2

    .line 20
    move v6, v5

    .line 21
    :goto_0
    if-ge v2, p1, :cond_8

    .line 22
    .line 23
    if-lez v4, :cond_8

    .line 24
    .line 25
    invoke-static {p3}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p3}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 29
    .line 30
    .line 31
    iget-wide v7, p3, Lorg/brotli/dec/a;->f:J

    .line 32
    .line 33
    iget v9, p3, Lorg/brotli/dec/a;->g:I

    .line 34
    .line 35
    ushr-long/2addr v7, v9

    .line 36
    long-to-int v7, v7

    .line 37
    and-int/lit8 v7, v7, 0x1f

    .line 38
    .line 39
    aget v7, v0, v7

    .line 40
    .line 41
    shr-int/lit8 v8, v7, 0x10

    .line 42
    .line 43
    add-int/2addr v9, v8

    .line 44
    iput v9, p3, Lorg/brotli/dec/a;->g:I

    .line 45
    .line 46
    const v8, 0xffff

    .line 47
    .line 48
    .line 49
    and-int/2addr v7, v8

    .line 50
    const/16 v8, 0x10

    .line 51
    .line 52
    if-ge v7, v8, :cond_1

    .line 53
    .line 54
    add-int/lit8 v6, v2, 0x1

    .line 55
    .line 56
    aput v7, p2, v2

    .line 57
    .line 58
    if-eqz v7, :cond_0

    .line 59
    .line 60
    shr-int p0, v1, v7

    .line 61
    .line 62
    sub-int/2addr v4, p0

    .line 63
    move v2, v6

    .line 64
    move p0, v7

    .line 65
    :goto_1
    move v6, v3

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    move v2, v6

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    add-int/lit8 v9, v7, -0xe

    .line 70
    .line 71
    if-ne v7, v8, :cond_2

    .line 72
    .line 73
    move v7, p0

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    move v7, v3

    .line 76
    :goto_2
    if-eq v5, v7, :cond_3

    .line 77
    .line 78
    move v6, v3

    .line 79
    move v5, v7

    .line 80
    :cond_3
    if-lez v6, :cond_4

    .line 81
    .line 82
    add-int/lit8 v7, v6, -0x2

    .line 83
    .line 84
    shl-int/2addr v7, v9

    .line 85
    goto :goto_3

    .line 86
    :cond_4
    move v7, v6

    .line 87
    :goto_3
    invoke-static {p3, v9}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    add-int/lit8 v8, v8, 0x3

    .line 92
    .line 93
    add-int/2addr v7, v8

    .line 94
    sub-int v6, v7, v6

    .line 95
    .line 96
    add-int v8, v2, v6

    .line 97
    .line 98
    if-gt v8, p1, :cond_7

    .line 99
    .line 100
    move v8, v3

    .line 101
    :goto_4
    if-ge v8, v6, :cond_5

    .line 102
    .line 103
    add-int/lit8 v9, v2, 0x1

    .line 104
    .line 105
    aput v5, p2, v2

    .line 106
    .line 107
    add-int/lit8 v8, v8, 0x1

    .line 108
    .line 109
    move v2, v9

    .line 110
    goto :goto_4

    .line 111
    :cond_5
    if-eqz v5, :cond_6

    .line 112
    .line 113
    rsub-int/lit8 v8, v5, 0xf

    .line 114
    .line 115
    shl-int/2addr v6, v8

    .line 116
    sub-int/2addr v4, v6

    .line 117
    :cond_6
    move v6, v7

    .line 118
    goto :goto_0

    .line 119
    :cond_7
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    .line 120
    .line 121
    const-string p1, "symbol + repeatDelta > numSymbols"

    .line 122
    .line 123
    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_8
    if-nez v4, :cond_9

    .line 128
    .line 129
    sub-int/2addr p1, v2

    .line 130
    invoke-static {p2, v2, p1}, Lorg/brotli/dec/l;->b([III)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_9
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    .line 135
    .line 136
    const-string p1, "Unused space"

    .line 137
    .line 138
    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p0
.end method

.method private static p(Lorg/brotli/dec/j;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/brotli/dec/j;->c:Lorg/brotli/dec/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x1

    .line 7
    if-ge v2, v3, :cond_1

    .line 8
    .line 9
    iget-object v3, p0, Lorg/brotli/dec/j;->o:[I

    .line 10
    .line 11
    invoke-static {v0}, Lorg/brotli/dec/d;->h(Lorg/brotli/dec/a;)I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    add-int/2addr v5, v4

    .line 16
    aput v5, v3, v2

    .line 17
    .line 18
    iget-object v3, p0, Lorg/brotli/dec/j;->n:[I

    .line 19
    .line 20
    const/high16 v5, 0x10000000

    .line 21
    .line 22
    aput v5, v3, v2

    .line 23
    .line 24
    iget-object v3, p0, Lorg/brotli/dec/j;->o:[I

    .line 25
    .line 26
    aget v3, v3, v2

    .line 27
    .line 28
    if-le v3, v4, :cond_0

    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x2

    .line 31
    .line 32
    iget-object v4, p0, Lorg/brotli/dec/j;->e:[I

    .line 33
    .line 34
    mul-int/lit16 v5, v2, 0x438

    .line 35
    .line 36
    invoke-static {v3, v4, v5, v0}, Lorg/brotli/dec/d;->n(I[IILorg/brotli/dec/a;)V

    .line 37
    .line 38
    .line 39
    const/16 v3, 0x1a

    .line 40
    .line 41
    iget-object v4, p0, Lorg/brotli/dec/j;->f:[I

    .line 42
    .line 43
    invoke-static {v3, v4, v5, v0}, Lorg/brotli/dec/d;->n(I[IILorg/brotli/dec/a;)V

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lorg/brotli/dec/j;->n:[I

    .line 47
    .line 48
    iget-object v4, p0, Lorg/brotli/dec/j;->f:[I

    .line 49
    .line 50
    invoke-static {v4, v5, v0}, Lorg/brotli/dec/d;->m([IILorg/brotli/dec/a;)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    aput v4, v3, v2

    .line 55
    .line 56
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v0}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x2

    .line 63
    invoke-static {v0, v2}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    iput v5, p0, Lorg/brotli/dec/j;->K:I

    .line 68
    .line 69
    const/4 v5, 0x4

    .line 70
    invoke-static {v0, v5}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    iget v7, p0, Lorg/brotli/dec/j;->K:I

    .line 75
    .line 76
    shl-int/2addr v6, v7

    .line 77
    add-int/lit8 v6, v6, 0x10

    .line 78
    .line 79
    iput v6, p0, Lorg/brotli/dec/j;->I:I

    .line 80
    .line 81
    shl-int v8, v4, v7

    .line 82
    .line 83
    sub-int/2addr v8, v4

    .line 84
    iput v8, p0, Lorg/brotli/dec/j;->J:I

    .line 85
    .line 86
    const/16 v8, 0x30

    .line 87
    .line 88
    shl-int v7, v8, v7

    .line 89
    .line 90
    add-int/2addr v6, v7

    .line 91
    iget-object v7, p0, Lorg/brotli/dec/j;->o:[I

    .line 92
    .line 93
    aget v7, v7, v1

    .line 94
    .line 95
    new-array v7, v7, [B

    .line 96
    .line 97
    iput-object v7, p0, Lorg/brotli/dec/j;->z:[B

    .line 98
    .line 99
    move v7, v1

    .line 100
    :goto_1
    iget-object v8, p0, Lorg/brotli/dec/j;->o:[I

    .line 101
    .line 102
    aget v8, v8, v1

    .line 103
    .line 104
    if-ge v7, v8, :cond_3

    .line 105
    .line 106
    add-int/lit8 v9, v7, 0x60

    .line 107
    .line 108
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    :goto_2
    if-ge v7, v8, :cond_2

    .line 113
    .line 114
    iget-object v9, p0, Lorg/brotli/dec/j;->z:[B

    .line 115
    .line 116
    invoke-static {v0, v2}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    shl-int/2addr v10, v4

    .line 121
    int-to-byte v10, v10

    .line 122
    aput-byte v10, v9, v7

    .line 123
    .line 124
    add-int/lit8 v7, v7, 0x1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_2
    invoke-static {v0}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    shl-int/lit8 v7, v8, 0x6

    .line 132
    .line 133
    new-array v7, v7, [B

    .line 134
    .line 135
    iput-object v7, p0, Lorg/brotli/dec/j;->A:[B

    .line 136
    .line 137
    shl-int/lit8 v8, v8, 0x6

    .line 138
    .line 139
    invoke-static {v8, v7, v0}, Lorg/brotli/dec/d;->d(I[BLorg/brotli/dec/a;)I

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    iput-boolean v4, p0, Lorg/brotli/dec/j;->u:Z

    .line 144
    .line 145
    move v8, v1

    .line 146
    :goto_3
    iget-object v9, p0, Lorg/brotli/dec/j;->o:[I

    .line 147
    .line 148
    aget v10, v9, v1

    .line 149
    .line 150
    shl-int/lit8 v10, v10, 0x6

    .line 151
    .line 152
    if-ge v8, v10, :cond_5

    .line 153
    .line 154
    iget-object v10, p0, Lorg/brotli/dec/j;->A:[B

    .line 155
    .line 156
    aget-byte v10, v10, v8

    .line 157
    .line 158
    shr-int/lit8 v11, v8, 0x6

    .line 159
    .line 160
    if-eq v10, v11, :cond_4

    .line 161
    .line 162
    iput-boolean v1, p0, Lorg/brotli/dec/j;->u:Z

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_5
    :goto_4
    aget v8, v9, v2

    .line 169
    .line 170
    shl-int/lit8 v9, v8, 0x2

    .line 171
    .line 172
    new-array v9, v9, [B

    .line 173
    .line 174
    iput-object v9, p0, Lorg/brotli/dec/j;->H:[B

    .line 175
    .line 176
    shl-int/2addr v8, v2

    .line 177
    invoke-static {v8, v9, v0}, Lorg/brotli/dec/d;->d(I[BLorg/brotli/dec/a;)I

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    iget-object v9, p0, Lorg/brotli/dec/j;->k:Lorg/brotli/dec/g;

    .line 182
    .line 183
    const/16 v10, 0x100

    .line 184
    .line 185
    invoke-static {v9, v10, v7}, Lorg/brotli/dec/g;->b(Lorg/brotli/dec/g;II)V

    .line 186
    .line 187
    .line 188
    iget-object v7, p0, Lorg/brotli/dec/j;->l:Lorg/brotli/dec/g;

    .line 189
    .line 190
    iget-object v9, p0, Lorg/brotli/dec/j;->o:[I

    .line 191
    .line 192
    aget v9, v9, v4

    .line 193
    .line 194
    const/16 v10, 0x2c0

    .line 195
    .line 196
    invoke-static {v7, v10, v9}, Lorg/brotli/dec/g;->b(Lorg/brotli/dec/g;II)V

    .line 197
    .line 198
    .line 199
    iget-object v7, p0, Lorg/brotli/dec/j;->m:Lorg/brotli/dec/g;

    .line 200
    .line 201
    invoke-static {v7, v6, v8}, Lorg/brotli/dec/g;->b(Lorg/brotli/dec/g;II)V

    .line 202
    .line 203
    .line 204
    iget-object v6, p0, Lorg/brotli/dec/j;->k:Lorg/brotli/dec/g;

    .line 205
    .line 206
    invoke-static {v6, v0}, Lorg/brotli/dec/g;->a(Lorg/brotli/dec/g;Lorg/brotli/dec/a;)V

    .line 207
    .line 208
    .line 209
    iget-object v6, p0, Lorg/brotli/dec/j;->l:Lorg/brotli/dec/g;

    .line 210
    .line 211
    invoke-static {v6, v0}, Lorg/brotli/dec/g;->a(Lorg/brotli/dec/g;Lorg/brotli/dec/a;)V

    .line 212
    .line 213
    .line 214
    iget-object v6, p0, Lorg/brotli/dec/j;->m:Lorg/brotli/dec/g;

    .line 215
    .line 216
    invoke-static {v6, v0}, Lorg/brotli/dec/g;->a(Lorg/brotli/dec/g;Lorg/brotli/dec/a;)V

    .line 217
    .line 218
    .line 219
    iput v1, p0, Lorg/brotli/dec/j;->B:I

    .line 220
    .line 221
    iput v1, p0, Lorg/brotli/dec/j;->C:I

    .line 222
    .line 223
    sget-object v0, Lorg/brotli/dec/c;->b:[I

    .line 224
    .line 225
    iget-object v6, p0, Lorg/brotli/dec/j;->z:[B

    .line 226
    .line 227
    aget-byte v6, v6, v1

    .line 228
    .line 229
    aget v7, v0, v6

    .line 230
    .line 231
    iput v7, p0, Lorg/brotli/dec/j;->D:I

    .line 232
    .line 233
    add-int/2addr v6, v4

    .line 234
    aget v0, v0, v6

    .line 235
    .line 236
    iput v0, p0, Lorg/brotli/dec/j;->E:I

    .line 237
    .line 238
    iput v1, p0, Lorg/brotli/dec/j;->v:I

    .line 239
    .line 240
    iget-object v0, p0, Lorg/brotli/dec/j;->k:Lorg/brotli/dec/g;

    .line 241
    .line 242
    iget-object v0, v0, Lorg/brotli/dec/g;->c:[I

    .line 243
    .line 244
    aget v0, v0, v1

    .line 245
    .line 246
    iput v0, p0, Lorg/brotli/dec/j;->w:I

    .line 247
    .line 248
    iget-object v0, p0, Lorg/brotli/dec/j;->l:Lorg/brotli/dec/g;

    .line 249
    .line 250
    iget-object v0, v0, Lorg/brotli/dec/g;->c:[I

    .line 251
    .line 252
    aget v0, v0, v1

    .line 253
    .line 254
    iput v0, p0, Lorg/brotli/dec/j;->F:I

    .line 255
    .line 256
    iget-object p0, p0, Lorg/brotli/dec/j;->p:[I

    .line 257
    .line 258
    aput v4, p0, v5

    .line 259
    .line 260
    aput v4, p0, v2

    .line 261
    .line 262
    aput v4, p0, v1

    .line 263
    .line 264
    const/4 v0, 0x5

    .line 265
    aput v1, p0, v0

    .line 266
    .line 267
    aput v1, p0, v3

    .line 268
    .line 269
    aput v1, p0, v4

    .line 270
    .line 271
    return-void
.end method

.method private static q(Lorg/brotli/dec/j;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/brotli/dec/j;->c:Lorg/brotli/dec/a;

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/brotli/dec/j;->h:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    iput v0, p0, Lorg/brotli/dec/j;->b:I

    .line 10
    .line 11
    iget v0, p0, Lorg/brotli/dec/j;->r:I

    .line 12
    .line 13
    iput v0, p0, Lorg/brotli/dec/j;->Y:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lorg/brotli/dec/j;->X:I

    .line 17
    .line 18
    const/16 v0, 0xc

    .line 19
    .line 20
    iput v0, p0, Lorg/brotli/dec/j;->a:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v1, p0, Lorg/brotli/dec/j;->k:Lorg/brotli/dec/g;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    iput-object v2, v1, Lorg/brotli/dec/g;->b:[I

    .line 27
    .line 28
    iput-object v2, v1, Lorg/brotli/dec/g;->c:[I

    .line 29
    .line 30
    iget-object v1, p0, Lorg/brotli/dec/j;->l:Lorg/brotli/dec/g;

    .line 31
    .line 32
    iput-object v2, v1, Lorg/brotli/dec/g;->b:[I

    .line 33
    .line 34
    iput-object v2, v1, Lorg/brotli/dec/g;->c:[I

    .line 35
    .line 36
    iget-object v1, p0, Lorg/brotli/dec/j;->m:Lorg/brotli/dec/g;

    .line 37
    .line 38
    iput-object v2, v1, Lorg/brotli/dec/g;->b:[I

    .line 39
    .line 40
    iput-object v2, v1, Lorg/brotli/dec/g;->c:[I

    .line 41
    .line 42
    invoke-static {v0}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, p0}, Lorg/brotli/dec/d;->g(Lorg/brotli/dec/a;Lorg/brotli/dec/j;)V

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lorg/brotli/dec/j;->g:I

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    iget-boolean v1, p0, Lorg/brotli/dec/j;->j:Z

    .line 53
    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    iget-boolean v1, p0, Lorg/brotli/dec/j;->i:Z

    .line 58
    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    iget-boolean v1, p0, Lorg/brotli/dec/j;->j:Z

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v0, 0x2

    .line 67
    iput v0, p0, Lorg/brotli/dec/j;->a:I

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    :goto_0
    invoke-static {v0}, Lorg/brotli/dec/a;->g(Lorg/brotli/dec/a;)V

    .line 71
    .line 72
    .line 73
    iget-boolean v0, p0, Lorg/brotli/dec/j;->j:Z

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    const/4 v0, 0x4

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const/4 v0, 0x5

    .line 80
    :goto_1
    iput v0, p0, Lorg/brotli/dec/j;->a:I

    .line 81
    .line 82
    :goto_2
    iget-boolean v0, p0, Lorg/brotli/dec/j;->j:Z

    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    return-void

    .line 87
    :cond_5
    iget-wide v0, p0, Lorg/brotli/dec/j;->R:J

    .line 88
    .line 89
    iget v2, p0, Lorg/brotli/dec/j;->g:I

    .line 90
    .line 91
    int-to-long v2, v2

    .line 92
    add-long/2addr v0, v2

    .line 93
    iput-wide v0, p0, Lorg/brotli/dec/j;->R:J

    .line 94
    .line 95
    iget v0, p0, Lorg/brotli/dec/j;->Q:I

    .line 96
    .line 97
    iget v1, p0, Lorg/brotli/dec/j;->P:I

    .line 98
    .line 99
    if-ge v0, v1, :cond_6

    .line 100
    .line 101
    invoke-static {p0}, Lorg/brotli/dec/d;->k(Lorg/brotli/dec/j;)V

    .line 102
    .line 103
    .line 104
    :cond_6
    return-void
.end method

.method private static r([IILorg/brotli/dec/a;)I
    .locals 6

    .line 1
    iget-wide v0, p2, Lorg/brotli/dec/a;->f:J

    .line 2
    .line 3
    iget v2, p2, Lorg/brotli/dec/a;->g:I

    .line 4
    .line 5
    ushr-long/2addr v0, v2

    .line 6
    long-to-int v0, v0

    .line 7
    and-int/lit16 v1, v0, 0xff

    .line 8
    .line 9
    add-int/2addr p1, v1

    .line 10
    aget v1, p0, p1

    .line 11
    .line 12
    shr-int/lit8 v3, v1, 0x10

    .line 13
    .line 14
    const v4, 0xffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v1, v4

    .line 18
    const/16 v5, 0x8

    .line 19
    .line 20
    if-gt v3, v5, :cond_0

    .line 21
    .line 22
    add-int/2addr v2, v3

    .line 23
    iput v2, p2, Lorg/brotli/dec/a;->g:I

    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    add-int/2addr p1, v1

    .line 27
    const/4 v1, 0x1

    .line 28
    shl-int v3, v1, v3

    .line 29
    .line 30
    sub-int/2addr v3, v1

    .line 31
    and-int/2addr v0, v3

    .line 32
    ushr-int/2addr v0, v5

    .line 33
    add-int/2addr p1, v0

    .line 34
    aget p0, p0, p1

    .line 35
    .line 36
    shr-int/lit8 p1, p0, 0x10

    .line 37
    .line 38
    add-int/2addr p1, v5

    .line 39
    add-int/2addr v2, p1

    .line 40
    iput v2, p2, Lorg/brotli/dec/a;->g:I

    .line 41
    .line 42
    and-int/2addr p0, v4

    .line 43
    return p0
.end method

.method static s(Lorg/brotli/dec/j;[B)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    new-array p1, p1, [B

    .line 5
    .line 6
    :cond_0
    iput-object p1, p0, Lorg/brotli/dec/j;->S:[B

    .line 7
    .line 8
    return-void
.end method

.method private static t(I[II)I
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-ge p0, v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lorg/brotli/dec/d;->b:[I

    .line 6
    .line 7
    aget v0, v0, p0

    .line 8
    .line 9
    add-int/2addr p2, v0

    .line 10
    and-int/lit8 p2, p2, 0x3

    .line 11
    .line 12
    aget p1, p1, p2

    .line 13
    .line 14
    sget-object p2, Lorg/brotli/dec/d;->c:[I

    .line 15
    .line 16
    aget p0, p2, p0

    .line 17
    .line 18
    add-int/2addr p1, p0

    .line 19
    return p1

    .line 20
    :cond_0
    add-int/lit8 p0, p0, -0xf

    .line 21
    .line 22
    return p0
.end method

.method private static u(Lorg/brotli/dec/j;)Z
    .locals 7

    .line 1
    iget v0, p0, Lorg/brotli/dec/j;->T:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v2, p0, Lorg/brotli/dec/j;->X:I

    .line 7
    .line 8
    add-int/2addr v2, v0

    .line 9
    iput v2, p0, Lorg/brotli/dec/j;->X:I

    .line 10
    .line 11
    iput v1, p0, Lorg/brotli/dec/j;->T:I

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lorg/brotli/dec/j;->V:I

    .line 14
    .line 15
    iget v2, p0, Lorg/brotli/dec/j;->W:I

    .line 16
    .line 17
    sub-int/2addr v0, v2

    .line 18
    iget v2, p0, Lorg/brotli/dec/j;->Y:I

    .line 19
    .line 20
    iget v3, p0, Lorg/brotli/dec/j;->X:I

    .line 21
    .line 22
    sub-int/2addr v2, v3

    .line 23
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lorg/brotli/dec/j;->d:[B

    .line 30
    .line 31
    iget v3, p0, Lorg/brotli/dec/j;->X:I

    .line 32
    .line 33
    iget-object v4, p0, Lorg/brotli/dec/j;->Z:[B

    .line 34
    .line 35
    iget v5, p0, Lorg/brotli/dec/j;->U:I

    .line 36
    .line 37
    iget v6, p0, Lorg/brotli/dec/j;->W:I

    .line 38
    .line 39
    add-int/2addr v5, v6

    .line 40
    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    iget v2, p0, Lorg/brotli/dec/j;->W:I

    .line 44
    .line 45
    add-int/2addr v2, v0

    .line 46
    iput v2, p0, Lorg/brotli/dec/j;->W:I

    .line 47
    .line 48
    iget v2, p0, Lorg/brotli/dec/j;->X:I

    .line 49
    .line 50
    add-int/2addr v2, v0

    .line 51
    iput v2, p0, Lorg/brotli/dec/j;->X:I

    .line 52
    .line 53
    :cond_1
    iget v0, p0, Lorg/brotli/dec/j;->W:I

    .line 54
    .line 55
    iget p0, p0, Lorg/brotli/dec/j;->V:I

    .line 56
    .line 57
    if-ge v0, p0, :cond_2

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    :cond_2
    return v1
.end method
