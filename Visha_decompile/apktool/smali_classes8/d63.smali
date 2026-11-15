.class public abstract Ld63;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld63$b;,
        Ld63$c;,
        Ld63$d;,
        Ld63$e;
    }
.end annotation


# static fields
.field public static final a:[B

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:Ljava/lang/Object;

.field public static h:[Ld63$b;

.field public static i:[Ld63$b;

.field public static j:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ld63;->a:[B

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Ld63;->b:[I

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Ld63;->c:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Ld63;->d:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Ld63;->e:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Ld63;->f:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld63;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Ld63;->h:[Ld63$b;

    sput-object v0, Ld63;->i:[Ld63$b;

    sput-object v0, Ld63;->j:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x53t
        0x69t
        0x67t
        0x45t
        0x64t
        0x34t
        0x34t
        0x38t
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x70cc05e
        0x26a82bc
        0x938e26
        0x80e18b0
        0x511433b
        0xf72ab66
        0x412ae1a
        0xa3d3a46
        0xa6de324
        0xf1767e
        0x4657047
        0x36da9e1
        0x5a622bf
        0xed221d1
        0x66bed0d
        0x4f1970c
    .end array-data

    :array_3
    .array-data 4
        0x230fa14
        0x8795bf
        0x7c8ad98
        0x132c4ed
        0x9c4fdbd
        0x1ce67c3
        0x73ad3ff
        0x5a0c2d
        0x7789c1e
        0xa398408
        0xa73736c
        0xc7624be
        0x3756c9
        0x2488762
        0x16eb6bc
        0x693f467
    .end array-data

    :array_4
    .array-data 4
        0x6909ee2
        0x1d7605c
        0x995ec8a
        0xfc4d970
        0xcf2b361
        0x2d82e9d
        0x1225f55
        0x7f0ef6
        0xaee9c55
        0xa240c13
        0x5627b54
        0xd449d1e
        0x3a44575    # 9.655E-37f
        0x7164a7
        0xbd4bd71
        0x61a15fd
    .end array-data

    :array_5
    .array-data 4
        0xd3a9fe4
        0x30696b9
        0x7e7e326
        0x68308c7
        0xce0b8c8
        0x3ac222b
        0x304db8e
        0x83ee319
        0x5e5db0b
        0xeca503b
        0xb1c6539
        0x78a8dce
        0x2d256bc
        0x4a8b05e
        0xbd9fd57
        0xa1c3cb8
    .end array-data
.end method

.method public static a(Ld63$b;)I
    .locals 4

    invoke-static {}, Lzpc;->g()[I

    move-result-object v0

    invoke-static {}, Lzpc;->g()[I

    move-result-object v1

    invoke-static {}, Lzpc;->g()[I

    move-result-object v2

    iget-object v3, p0, Ld63$b;->a:[I

    invoke-static {v3, v1}, Lzpc;->H([I[I)V

    iget-object p0, p0, Ld63$b;->b:[I

    invoke-static {p0, v2}, Lzpc;->H([I[I)V

    invoke-static {v1, v2, v0}, Lzpc;->A([I[I[I)V

    invoke-static {v1, v2, v1}, Lzpc;->a([I[I[I)V

    const p0, 0x98a9

    invoke-static {v0, p0, v0}, Lzpc;->z([II[I)V

    invoke-static {v0}, Lzpc;->K([I)V

    invoke-static {v0, v1, v0}, Lzpc;->a([I[I[I)V

    invoke-static {v0}, Lzpc;->C([I)V

    invoke-static {v2}, Lzpc;->C([I)V

    invoke-static {v0}, Lzpc;->x([I)I

    move-result p0

    invoke-static {v2}, Lzpc;->x([I)I

    move-result v0

    not-int v0, v0

    and-int/2addr p0, v0

    return p0
.end method

.method public static b(Ld63$c;)I
    .locals 5

    invoke-static {}, Lzpc;->g()[I

    move-result-object v0

    invoke-static {}, Lzpc;->g()[I

    move-result-object v1

    invoke-static {}, Lzpc;->g()[I

    move-result-object v2

    invoke-static {}, Lzpc;->g()[I

    move-result-object v3

    iget-object v4, p0, Ld63$c;->a:[I

    invoke-static {v4, v1}, Lzpc;->H([I[I)V

    iget-object v4, p0, Ld63$c;->b:[I

    invoke-static {v4, v2}, Lzpc;->H([I[I)V

    iget-object p0, p0, Ld63$c;->c:[I

    invoke-static {p0, v3}, Lzpc;->H([I[I)V

    invoke-static {v1, v2, v0}, Lzpc;->A([I[I[I)V

    invoke-static {v1, v2, v1}, Lzpc;->a([I[I[I)V

    invoke-static {v1, v3, v1}, Lzpc;->A([I[I[I)V

    invoke-static {v3, v3}, Lzpc;->H([I[I)V

    const p0, 0x98a9

    invoke-static {v0, p0, v0}, Lzpc;->z([II[I)V

    invoke-static {v0, v3, v0}, Lzpc;->J([I[I[I)V

    invoke-static {v0, v1, v0}, Lzpc;->a([I[I[I)V

    invoke-static {v0}, Lzpc;->C([I)V

    invoke-static {v2}, Lzpc;->C([I)V

    invoke-static {v3}, Lzpc;->C([I)V

    invoke-static {v0}, Lzpc;->x([I)I

    move-result p0

    invoke-static {v2}, Lzpc;->x([I)I

    move-result v0

    not-int v0, v0

    and-int/2addr p0, v0

    invoke-static {v3}, Lzpc;->x([I)I

    move-result v0

    not-int v0, v0

    and-int/2addr p0, v0

    return p0
.end method

.method public static c([B)Z
    .locals 8

    const/16 v0, 0x38

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x34

    invoke-static {p0, v0}, La51;->a([BI)I

    move-result v0

    sget-object v2, Ld63;->b:[I

    const/16 v3, 0xd

    aget v2, v2, v3

    xor-int/2addr v2, v0

    const/16 v3, 0xc

    :goto_0
    const/high16 v4, -0x80000000

    if-lez v3, :cond_2

    mul-int/lit8 v5, v3, 0x4

    invoke-static {p0, v5}, La51;->a([BI)I

    move-result v5

    if-nez v2, :cond_1

    add-int v6, v5, v4

    sget-object v7, Ld63;->b:[I

    aget v7, v7, v3

    add-int/2addr v7, v4

    if-le v6, v7, :cond_1

    return v1

    :cond_1
    or-int/2addr v0, v5

    sget-object v4, Ld63;->b:[I

    aget v4, v4, v3

    xor-int/2addr v4, v5

    or-int/2addr v2, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, v1}, La51;->a([BI)I

    move-result p0

    const v3, -0x7fffffff

    if-nez v0, :cond_3

    add-int v0, p0, v4

    if-gt v0, v3, :cond_3

    return v1

    :cond_3
    if-nez v2, :cond_4

    add-int/2addr p0, v4

    sget-object v0, Ld63;->b:[I

    aget v0, v0, v1

    sub-int/2addr v0, v3

    if-lt p0, v0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static d([BII)[B
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static e()Lcsc;
    .locals 2

    new-instance v0, Lyx8;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lyx8;-><init>(I)V

    return-object v0
.end method

.method public static f([BZLd63$b;)Z
    .locals 4

    const/16 v0, 0x38

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0x80

    ushr-int/lit8 v0, v0, 0x7

    iget-object v1, p2, Ld63$b;->b:[I

    invoke-static {p0, v1}, Lzpc;->i([B[I)V

    invoke-static {}, Lzpc;->g()[I

    move-result-object p0

    invoke-static {}, Lzpc;->g()[I

    move-result-object v1

    iget-object v2, p2, Ld63$b;->b:[I

    invoke-static {v2, p0}, Lzpc;->H([I[I)V

    const v2, 0x98a9

    invoke-static {p0, v2, v1}, Lzpc;->z([II[I)V

    invoke-static {p0, p0}, Lzpc;->B([I[I)V

    invoke-static {p0}, Lzpc;->b([I)V

    invoke-static {v1}, Lzpc;->b([I)V

    iget-object v2, p2, Ld63$b;->a:[I

    invoke-static {p0, v1, v2}, Lzpc;->I([I[I[I)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    iget-object p0, p2, Ld63$b;->a:[I

    invoke-static {p0}, Lzpc;->C([I)V

    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    iget-object v2, p2, Ld63$b;->a:[I

    invoke-static {v2}, Lzpc;->y([I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p2, Ld63$b;->a:[I

    aget v3, v2, v1

    and-int/2addr v3, p0

    if-eq v0, v3, :cond_2

    move v1, p0

    :cond_2
    xor-int/2addr p1, v1

    if-eqz p1, :cond_3

    invoke-static {v2, v2}, Lzpc;->B([I[I)V

    iget-object p1, p2, Ld63$b;->a:[I

    invoke-static {p1}, Lzpc;->C([I)V

    :cond_3
    return p0
.end method

.method public static g(Ld63$e;[BI)V
    .locals 2

    iget-object v0, p0, Ld63$e;->a:[I

    const/16 v1, 0x10

    invoke-static {v0, v1, p1, p2}, Lzpc;->o([II[BI)V

    add-int/lit8 p2, p2, 0x38

    iget-object p0, p0, Ld63$e;->a:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x7

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static h(Ld63$b;)Ld63$e;
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [I

    iget-object v1, p0, Ld63$b;->a:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Lzpc;->f([II[II)V

    iget-object p0, p0, Ld63$b;->b:[I

    const/16 v1, 0x10

    invoke-static {p0, v2, v0, v1}, Lzpc;->f([II[II)V

    new-instance p0, Ld63$e;

    invoke-direct {p0, v0}, Ld63$e;-><init>([I)V

    return-object p0
.end method

.method public static i([BI)Ld63$e;
    .locals 4

    invoke-static {}, Ld63;->e()Lcsc;

    move-result-object v0

    const/16 v1, 0x72

    new-array v2, v1, [B

    const/16 v3, 0x39

    invoke-interface {v0, p0, p1, v3}, Lsb2;->update([BII)V

    const/4 p0, 0x0

    invoke-interface {v0, v2, p0, v1}, Lcsc;->f([BII)I

    new-array p1, v3, [B

    invoke-static {v2, p0, p1}, Ld63;->u([BI[B)V

    new-instance p0, Ld63$c;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ld63$c;-><init>(Ld63$a;)V

    invoke-static {p1, p0}, Ld63;->v([BLd63$c;)V

    new-instance p1, Ld63$b;

    invoke-direct {p1, v0}, Ld63$b;-><init>(Ld63$a;)V

    invoke-static {p0, p1}, Ld63;->k(Ld63$c;Ld63$b;)V

    invoke-static {p1}, Ld63;->a(Ld63$b;)I

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ld63;->h(Ld63$b;)Ld63$e;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static j([Ld63$c;)V
    .locals 7

    array-length v0, p0

    invoke-static {v0}, Lzpc;->h(I)[I

    move-result-object v1

    invoke-static {}, Lzpc;->g()[I

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, p0, v3

    iget-object v4, v4, Ld63$c;->c:[I

    invoke-static {v4, v3, v2, v3}, Lzpc;->f([II[II)V

    invoke-static {v2, v3, v1, v3}, Lzpc;->f([II[II)V

    move v4, v3

    :goto_0
    add-int/lit8 v5, v4, 0x1

    if-ge v5, v0, :cond_0

    aget-object v4, p0, v5

    iget-object v4, v4, Ld63$c;->c:[I

    invoke-static {v2, v4, v2}, Lzpc;->A([I[I[I)V

    mul-int/lit8 v4, v5, 0x10

    invoke-static {v2, v3, v1, v4}, Lzpc;->f([II[II)V

    move v4, v5

    goto :goto_0

    :cond_0
    invoke-static {v2, v2}, Lzpc;->w([I[I)V

    invoke-static {}, Lzpc;->g()[I

    move-result-object v0

    :goto_1
    if-lez v4, :cond_1

    add-int/lit8 v5, v4, -0x1

    mul-int/lit8 v6, v5, 0x10

    invoke-static {v1, v6, v0, v3}, Lzpc;->f([II[II)V

    invoke-static {v0, v2, v0}, Lzpc;->A([I[I[I)V

    aget-object v6, p0, v4

    iget-object v6, v6, Ld63$c;->c:[I

    invoke-static {v2, v6, v2}, Lzpc;->A([I[I[I)V

    aget-object v4, p0, v4

    iget-object v4, v4, Ld63$c;->c:[I

    invoke-static {v0, v3, v4, v3}, Lzpc;->f([II[II)V

    move v4, v5

    goto :goto_1

    :cond_1
    aget-object p0, p0, v3

    iget-object p0, p0, Ld63$c;->c:[I

    invoke-static {v2, v3, p0, v3}, Lzpc;->f([II[II)V

    return-void
.end method

.method public static k(Ld63$c;Ld63$b;)V
    .locals 3

    iget-object v0, p0, Ld63$c;->c:[I

    iget-object v1, p1, Ld63$b;->b:[I

    invoke-static {v0, v1}, Lzpc;->v([I[I)V

    iget-object v0, p1, Ld63$b;->b:[I

    iget-object v1, p0, Ld63$c;->a:[I

    iget-object v2, p1, Ld63$b;->a:[I

    invoke-static {v0, v1, v2}, Lzpc;->A([I[I[I)V

    iget-object v0, p1, Ld63$b;->b:[I

    iget-object p0, p0, Ld63$c;->b:[I

    invoke-static {v0, p0, v0}, Lzpc;->A([I[I[I)V

    iget-object p0, p1, Ld63$b;->a:[I

    invoke-static {p0}, Lzpc;->C([I)V

    iget-object p0, p1, Ld63$b;->b:[I

    invoke-static {p0}, Lzpc;->C([I)V

    return-void
.end method

.method public static l(Ld63$b;Ld63$c;Ld63$d;)V
    .locals 8

    iget-object v0, p2, Ld63$d;->b:[I

    iget-object v1, p2, Ld63$d;->c:[I

    iget-object v2, p2, Ld63$d;->d:[I

    iget-object v3, p2, Ld63$d;->e:[I

    iget-object v4, p2, Ld63$d;->f:[I

    iget-object v5, p2, Ld63$d;->g:[I

    iget-object p2, p2, Ld63$d;->h:[I

    iget-object v6, p1, Ld63$c;->c:[I

    invoke-static {v6, v0}, Lzpc;->H([I[I)V

    iget-object v6, p0, Ld63$b;->a:[I

    iget-object v7, p1, Ld63$c;->a:[I

    invoke-static {v6, v7, v1}, Lzpc;->A([I[I[I)V

    iget-object v6, p0, Ld63$b;->b:[I

    iget-object v7, p1, Ld63$c;->b:[I

    invoke-static {v6, v7, v2}, Lzpc;->A([I[I[I)V

    invoke-static {v1, v2, v3}, Lzpc;->A([I[I[I)V

    const v6, 0x98a9

    invoke-static {v3, v6, v3}, Lzpc;->z([II[I)V

    invoke-static {v0, v3, v4}, Lzpc;->a([I[I[I)V

    invoke-static {v0, v3, v5}, Lzpc;->J([I[I[I)V

    iget-object v6, p0, Ld63$b;->b:[I

    iget-object p0, p0, Ld63$b;->a:[I

    invoke-static {v6, p0, p2}, Lzpc;->a([I[I[I)V

    iget-object p0, p1, Ld63$c;->b:[I

    iget-object v6, p1, Ld63$c;->a:[I

    invoke-static {p0, v6, v3}, Lzpc;->a([I[I[I)V

    invoke-static {p2, v3, p2}, Lzpc;->A([I[I[I)V

    invoke-static {v2, v1, v0}, Lzpc;->a([I[I[I)V

    invoke-static {v2, v1, v3}, Lzpc;->J([I[I[I)V

    invoke-static {v0}, Lzpc;->c([I)V

    invoke-static {p2, v0, p2}, Lzpc;->J([I[I[I)V

    iget-object p0, p1, Ld63$c;->c:[I

    invoke-static {p2, p0, p2}, Lzpc;->A([I[I[I)V

    iget-object p0, p1, Ld63$c;->c:[I

    invoke-static {v3, p0, v3}, Lzpc;->A([I[I[I)V

    iget-object p0, p1, Ld63$c;->a:[I

    invoke-static {v4, p2, p0}, Lzpc;->A([I[I[I)V

    iget-object p0, p1, Ld63$c;->b:[I

    invoke-static {v3, v5, p0}, Lzpc;->A([I[I[I)V

    iget-object p0, p1, Ld63$c;->c:[I

    invoke-static {v4, v5, p0}, Lzpc;->A([I[I[I)V

    return-void
.end method

.method public static m(Ld63$c;Ld63$c;Ld63$d;)V
    .locals 9

    iget-object v0, p2, Ld63$d;->a:[I

    iget-object v1, p2, Ld63$d;->b:[I

    iget-object v2, p2, Ld63$d;->c:[I

    iget-object v3, p2, Ld63$d;->d:[I

    iget-object v4, p2, Ld63$d;->e:[I

    iget-object v5, p2, Ld63$d;->f:[I

    iget-object v6, p2, Ld63$d;->g:[I

    iget-object p2, p2, Ld63$d;->h:[I

    iget-object v7, p0, Ld63$c;->c:[I

    iget-object v8, p1, Ld63$c;->c:[I

    invoke-static {v7, v8, v0}, Lzpc;->A([I[I[I)V

    invoke-static {v0, v1}, Lzpc;->H([I[I)V

    iget-object v7, p0, Ld63$c;->a:[I

    iget-object v8, p1, Ld63$c;->a:[I

    invoke-static {v7, v8, v2}, Lzpc;->A([I[I[I)V

    iget-object v7, p0, Ld63$c;->b:[I

    iget-object v8, p1, Ld63$c;->b:[I

    invoke-static {v7, v8, v3}, Lzpc;->A([I[I[I)V

    invoke-static {v2, v3, v4}, Lzpc;->A([I[I[I)V

    const v7, 0x98a9

    invoke-static {v4, v7, v4}, Lzpc;->z([II[I)V

    invoke-static {v1, v4, v5}, Lzpc;->a([I[I[I)V

    invoke-static {v1, v4, v6}, Lzpc;->J([I[I[I)V

    iget-object v7, p0, Ld63$c;->b:[I

    iget-object p0, p0, Ld63$c;->a:[I

    invoke-static {v7, p0, p2}, Lzpc;->a([I[I[I)V

    iget-object p0, p1, Ld63$c;->b:[I

    iget-object v7, p1, Ld63$c;->a:[I

    invoke-static {p0, v7, v4}, Lzpc;->a([I[I[I)V

    invoke-static {p2, v4, p2}, Lzpc;->A([I[I[I)V

    invoke-static {v3, v2, v1}, Lzpc;->a([I[I[I)V

    invoke-static {v3, v2, v4}, Lzpc;->J([I[I[I)V

    invoke-static {v1}, Lzpc;->c([I)V

    invoke-static {p2, v1, p2}, Lzpc;->J([I[I[I)V

    invoke-static {p2, v0, p2}, Lzpc;->A([I[I[I)V

    invoke-static {v4, v0, v4}, Lzpc;->A([I[I[I)V

    iget-object p0, p1, Ld63$c;->a:[I

    invoke-static {v5, p2, p0}, Lzpc;->A([I[I[I)V

    iget-object p0, p1, Ld63$c;->b:[I

    invoke-static {v4, v6, p0}, Lzpc;->A([I[I[I)V

    iget-object p0, p1, Ld63$c;->c:[I

    invoke-static {v5, v6, p0}, Lzpc;->A([I[I[I)V

    return-void
.end method

.method public static n(Ld63$b;Ld63$c;)V
    .locals 3

    iget-object v0, p0, Ld63$b;->a:[I

    iget-object v1, p1, Ld63$c;->a:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lzpc;->f([II[II)V

    iget-object p0, p0, Ld63$b;->b:[I

    iget-object v0, p1, Ld63$c;->b:[I

    invoke-static {p0, v2, v0, v2}, Lzpc;->f([II[II)V

    iget-object p0, p1, Ld63$c;->c:[I

    invoke-static {p0}, Lzpc;->D([I)V

    return-void
.end method

.method public static o(Ld63$c;Ld63$c;)V
    .locals 3

    iget-object v0, p0, Ld63$c;->a:[I

    iget-object v1, p1, Ld63$c;->a:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lzpc;->f([II[II)V

    iget-object v0, p0, Ld63$c;->b:[I

    iget-object v1, p1, Ld63$c;->b:[I

    invoke-static {v0, v2, v1, v2}, Lzpc;->f([II[II)V

    iget-object p0, p0, Ld63$c;->c:[I

    iget-object p1, p1, Ld63$c;->c:[I

    invoke-static {p0, v2, p1, v2}, Lzpc;->f([II[II)V

    return-void
.end method

.method public static p(Ld63$c;Ld63$d;)V
    .locals 7

    iget-object v0, p1, Ld63$d;->b:[I

    iget-object v1, p1, Ld63$d;->c:[I

    iget-object v2, p1, Ld63$d;->d:[I

    iget-object v3, p1, Ld63$d;->e:[I

    iget-object v4, p1, Ld63$d;->h:[I

    iget-object p1, p1, Ld63$d;->a:[I

    iget-object v5, p0, Ld63$c;->a:[I

    iget-object v6, p0, Ld63$c;->b:[I

    invoke-static {v5, v6, v0}, Lzpc;->a([I[I[I)V

    invoke-static {v0, v0}, Lzpc;->H([I[I)V

    iget-object v5, p0, Ld63$c;->a:[I

    invoke-static {v5, v1}, Lzpc;->H([I[I)V

    iget-object v5, p0, Ld63$c;->b:[I

    invoke-static {v5, v2}, Lzpc;->H([I[I)V

    invoke-static {v1, v2, v3}, Lzpc;->a([I[I[I)V

    invoke-static {v3}, Lzpc;->c([I)V

    iget-object v5, p0, Ld63$c;->c:[I

    invoke-static {v5, v4}, Lzpc;->H([I[I)V

    invoke-static {v4, v4, v4}, Lzpc;->a([I[I[I)V

    invoke-static {v4}, Lzpc;->c([I)V

    invoke-static {v3, v4, p1}, Lzpc;->J([I[I[I)V

    invoke-static {v0, v3, v0}, Lzpc;->J([I[I[I)V

    invoke-static {v1, v2, v1}, Lzpc;->J([I[I[I)V

    iget-object v2, p0, Ld63$c;->a:[I

    invoke-static {v0, p1, v2}, Lzpc;->A([I[I[I)V

    iget-object v0, p0, Ld63$c;->b:[I

    invoke-static {v3, v1, v0}, Lzpc;->A([I[I[I)V

    iget-object p0, p0, Ld63$c;->c:[I

    invoke-static {v3, p1, p0}, Lzpc;->A([I[I[I)V

    return-void
.end method

.method public static q(IILd63$b;)V
    .locals 6

    mul-int/lit16 p0, p0, 0x200

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    xor-int v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v2, v2, 0x1f

    sget-object v3, Ld63;->j:[I

    iget-object v4, p2, Ld63$b;->a:[I

    invoke-static {v2, v3, p0, v4, v0}, Lzpc;->d(I[II[II)V

    add-int/lit8 v3, p0, 0x10

    sget-object v4, Ld63;->j:[I

    iget-object v5, p2, Ld63$b;->b:[I

    invoke-static {v2, v4, v3, v5, v0}, Lzpc;->d(I[II[II)V

    add-int/lit8 p0, p0, 0x20

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static r(Ld63$b;[Ld63$c;IILd63$d;)V
    .locals 5

    new-instance v0, Ld63$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld63$c;-><init>(Ld63$a;)V

    invoke-static {p0, v0}, Ld63;->n(Ld63$b;Ld63$c;)V

    invoke-static {v0, p4}, Ld63;->p(Ld63$c;Ld63$d;)V

    new-instance v2, Ld63$c;

    invoke-direct {v2, v1}, Ld63$c;-><init>(Ld63$a;)V

    aput-object v2, p1, p2

    invoke-static {p0, v2}, Ld63;->n(Ld63$b;Ld63$c;)V

    const/4 p0, 0x1

    :goto_0
    if-ge p0, p3, :cond_0

    add-int v2, p2, p0

    new-instance v3, Ld63$c;

    invoke-direct {v3, v1}, Ld63$c;-><init>(Ld63$a;)V

    aput-object v3, p1, v2

    add-int/lit8 v4, v2, -0x1

    aget-object v4, p1, v4

    invoke-static {v4, v3}, Ld63;->o(Ld63$c;Ld63$c;)V

    aget-object v2, p1, v2

    invoke-static {v0, v2, p4}, Ld63;->m(Ld63$c;Ld63$c;Ld63$d;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static s(Ld63$c;)V
    .locals 1

    iget-object v0, p0, Ld63$c;->a:[I

    invoke-static {v0}, Lzpc;->L([I)V

    iget-object v0, p0, Ld63$c;->b:[I

    invoke-static {v0}, Lzpc;->D([I)V

    iget-object p0, p0, Ld63$c;->c:[I

    invoke-static {p0}, Lzpc;->D([I)V

    return-void
.end method

.method public static t()V
    .locals 17

    sget-object v1, Ld63;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ld63;->j:[I

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    const/16 v0, 0x90

    new-array v2, v0, [Ld63$c;

    new-instance v3, Ld63$d;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ld63$d;-><init>(Ld63$a;)V

    new-instance v5, Ld63$b;

    invoke-direct {v5, v4}, Ld63$b;-><init>(Ld63$a;)V

    sget-object v6, Ld63;->c:[I

    iget-object v7, v5, Ld63$b;->a:[I

    const/4 v8, 0x0

    invoke-static {v6, v8, v7, v8}, Lzpc;->f([II[II)V

    sget-object v6, Ld63;->d:[I

    iget-object v7, v5, Ld63$b;->b:[I

    invoke-static {v6, v8, v7, v8}, Lzpc;->f([II[II)V

    const/16 v6, 0x20

    invoke-static {v5, v2, v8, v6, v3}, Ld63;->r(Ld63$b;[Ld63$c;IILd63$d;)V

    new-instance v7, Ld63$b;

    invoke-direct {v7, v4}, Ld63$b;-><init>(Ld63$a;)V

    sget-object v9, Ld63;->e:[I

    iget-object v10, v7, Ld63$b;->a:[I

    invoke-static {v9, v8, v10, v8}, Lzpc;->f([II[II)V

    sget-object v9, Ld63;->f:[I

    iget-object v10, v7, Ld63$b;->b:[I

    invoke-static {v9, v8, v10, v8}, Lzpc;->f([II[II)V

    invoke-static {v7, v2, v6, v6, v3}, Ld63;->r(Ld63$b;[Ld63$c;IILd63$d;)V

    new-instance v7, Ld63$c;

    invoke-direct {v7, v4}, Ld63$c;-><init>(Ld63$a;)V

    invoke-static {v5, v7}, Ld63;->n(Ld63$b;Ld63$c;)V

    const/4 v5, 0x5

    new-array v9, v5, [Ld63$c;

    move v10, v8

    :goto_0
    if-ge v10, v5, :cond_1

    new-instance v11, Ld63$c;

    invoke-direct {v11, v4}, Ld63$c;-><init>(Ld63$a;)V

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move v11, v8

    const/16 v12, 0x40

    :goto_1
    if-ge v11, v5, :cond_7

    add-int/lit8 v13, v12, 0x1

    new-instance v14, Ld63$c;

    invoke-direct {v14, v4}, Ld63$c;-><init>(Ld63$a;)V

    aput-object v14, v2, v12

    move v12, v8

    :goto_2
    const/4 v15, 0x1

    if-ge v12, v5, :cond_4

    if-nez v12, :cond_2

    invoke-static {v7, v14}, Ld63;->o(Ld63$c;Ld63$c;)V

    goto :goto_3

    :cond_2
    invoke-static {v7, v14, v3}, Ld63;->m(Ld63$c;Ld63$c;Ld63$d;)V

    :goto_3
    invoke-static {v7, v3}, Ld63;->p(Ld63$c;Ld63$d;)V

    aget-object v5, v9, v12

    invoke-static {v7, v5}, Ld63;->o(Ld63$c;Ld63$c;)V

    add-int v5, v11, v12

    const/16 v10, 0x8

    if-eq v5, v10, :cond_3

    :goto_4
    const/16 v5, 0x12

    if-ge v15, v5, :cond_3

    invoke-static {v7, v3}, Ld63;->p(Ld63$c;Ld63$d;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x5

    goto :goto_2

    :cond_4
    iget-object v5, v14, Ld63$c;->a:[I

    invoke-static {v5, v5}, Lzpc;->B([I[I)V

    move v5, v8

    move v12, v13

    :goto_5
    const/4 v10, 0x4

    if-ge v5, v10, :cond_6

    shl-int v10, v15, v5

    move v13, v8

    :goto_6
    if-ge v13, v10, :cond_5

    new-instance v14, Ld63$c;

    invoke-direct {v14, v4}, Ld63$c;-><init>(Ld63$a;)V

    aput-object v14, v2, v12

    sub-int v16, v12, v10

    aget-object v15, v2, v16

    invoke-static {v15, v14}, Ld63;->o(Ld63$c;Ld63$c;)V

    aget-object v14, v9, v5

    aget-object v15, v2, v12

    invoke-static {v14, v15, v3}, Ld63;->m(Ld63$c;Ld63$c;Ld63$d;)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v15, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    const/4 v15, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x5

    goto :goto_1

    :cond_7
    invoke-static {v2}, Ld63;->j([Ld63$c;)V

    new-array v3, v6, [Ld63$b;

    sput-object v3, Ld63;->h:[Ld63$b;

    move v3, v8

    :goto_7
    if-ge v3, v6, :cond_8

    aget-object v5, v2, v3

    sget-object v7, Ld63;->h:[Ld63$b;

    new-instance v9, Ld63$b;

    invoke-direct {v9, v4}, Ld63$b;-><init>(Ld63$a;)V

    aput-object v9, v7, v3

    iget-object v7, v5, Ld63$c;->a:[I

    iget-object v10, v5, Ld63$c;->c:[I

    iget-object v11, v9, Ld63$b;->a:[I

    invoke-static {v7, v10, v11}, Lzpc;->A([I[I[I)V

    iget-object v7, v9, Ld63$b;->a:[I

    invoke-static {v7}, Lzpc;->C([I)V

    iget-object v7, v5, Ld63$c;->b:[I

    iget-object v5, v5, Ld63$c;->c:[I

    iget-object v10, v9, Ld63$b;->b:[I

    invoke-static {v7, v5, v10}, Lzpc;->A([I[I[I)V

    iget-object v5, v9, Ld63$b;->b:[I

    invoke-static {v5}, Lzpc;->C([I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    new-array v3, v6, [Ld63$b;

    sput-object v3, Ld63;->i:[Ld63$b;

    move v3, v8

    :goto_8
    if-ge v3, v6, :cond_9

    add-int v5, v6, v3

    aget-object v5, v2, v5

    sget-object v7, Ld63;->i:[Ld63$b;

    new-instance v9, Ld63$b;

    invoke-direct {v9, v4}, Ld63$b;-><init>(Ld63$a;)V

    aput-object v9, v7, v3

    iget-object v7, v5, Ld63$c;->a:[I

    iget-object v10, v5, Ld63$c;->c:[I

    iget-object v11, v9, Ld63$b;->a:[I

    invoke-static {v7, v10, v11}, Lzpc;->A([I[I[I)V

    iget-object v7, v9, Ld63$b;->a:[I

    invoke-static {v7}, Lzpc;->C([I)V

    iget-object v7, v5, Ld63$c;->b:[I

    iget-object v5, v5, Ld63$c;->c:[I

    iget-object v10, v9, Ld63$b;->b:[I

    invoke-static {v7, v5, v10}, Lzpc;->A([I[I[I)V

    iget-object v5, v9, Ld63$b;->b:[I

    invoke-static {v5}, Lzpc;->C([I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    const/16 v3, 0xa0

    invoke-static {v3}, Lzpc;->h(I)[I

    move-result-object v3

    sput-object v3, Ld63;->j:[I

    move v3, v8

    const/16 v10, 0x40

    :goto_9
    if-ge v10, v0, :cond_a

    aget-object v4, v2, v10

    iget-object v5, v4, Ld63$c;->a:[I

    iget-object v6, v4, Ld63$c;->c:[I

    invoke-static {v5, v6, v5}, Lzpc;->A([I[I[I)V

    iget-object v5, v4, Ld63$c;->a:[I

    invoke-static {v5}, Lzpc;->C([I)V

    iget-object v5, v4, Ld63$c;->b:[I

    iget-object v6, v4, Ld63$c;->c:[I

    invoke-static {v5, v6, v5}, Lzpc;->A([I[I[I)V

    iget-object v5, v4, Ld63$c;->b:[I

    invoke-static {v5}, Lzpc;->C([I)V

    iget-object v5, v4, Ld63$c;->a:[I

    sget-object v6, Ld63;->j:[I

    invoke-static {v5, v8, v6, v3}, Lzpc;->f([II[II)V

    add-int/lit8 v5, v3, 0x10

    iget-object v4, v4, Ld63$c;->b:[I

    sget-object v6, Ld63;->j:[I

    invoke-static {v4, v8, v6, v5}, Lzpc;->f([II[II)V

    add-int/lit8 v3, v3, 0x20

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_a
    monitor-exit v1

    return-void

    :goto_a
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static u([BI[B)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x38

    invoke-static {p0, p1, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte p0, p2, v0

    and-int/lit16 p0, p0, 0xfc

    int-to-byte p0, p0

    aput-byte p0, p2, v0

    const/16 p0, 0x37

    aget-byte p1, p2, p0

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, p2, p0

    aput-byte v0, p2, v1

    return-void
.end method

.method public static v([BLd63$c;)V
    .locals 13

    invoke-static {}, Ld63;->t()V

    const/16 v0, 0xf

    new-array v1, v0, [I

    invoke-static {p0, v1}, Ll19;->a([B[I)V

    const/16 p0, 0x1c2

    invoke-static {p0, v1, v1}, Ll19;->b(I[I[I)V

    new-instance p0, Ld63$b;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Ld63$b;-><init>(Ld63$a;)V

    new-instance v3, Ld63$d;

    invoke-direct {v3, v2}, Ld63$d;-><init>(Ld63$a;)V

    invoke-static {p1}, Ld63;->s(Ld63$c;)V

    const/16 v2, 0x11

    :goto_0
    const/4 v4, 0x0

    move v6, v2

    move v5, v4

    :goto_1
    const/4 v7, 0x5

    if-ge v5, v7, :cond_1

    move v8, v4

    move v9, v8

    :goto_2
    const/4 v10, 0x1

    if-ge v8, v7, :cond_0

    ushr-int/lit8 v11, v6, 0x5

    aget v11, v1, v11

    and-int/lit8 v12, v6, 0x1f

    ushr-int/2addr v11, v12

    shl-int/2addr v10, v8

    not-int v10, v10

    and-int/2addr v9, v10

    shl-int v10, v11, v8

    xor-int/2addr v9, v10

    add-int/lit8 v6, v6, 0x12

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    ushr-int/lit8 v7, v9, 0x4

    and-int/2addr v7, v10

    neg-int v8, v7

    xor-int/2addr v8, v9

    and-int/2addr v8, v0

    invoke-static {v5, v8, p0}, Ld63;->q(IILd63$b;)V

    iget-object v8, p0, Ld63$b;->a:[I

    invoke-static {v7, v8}, Lzpc;->e(I[I)V

    invoke-static {p0, p1, v3}, Ld63;->l(Ld63$b;Ld63$c;Ld63$d;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_2

    return-void

    :cond_2
    invoke-static {p1, v3}, Ld63;->p(Ld63$c;Ld63$d;)V

    goto :goto_0
.end method

.method public static w(Lypc$a;[BI[I[I)V
    .locals 0

    if-eqz p0, :cond_1

    const/16 p0, 0x39

    new-array p0, p0, [B

    invoke-static {p1, p2, p0}, Ld63;->u([BI[B)V

    new-instance p1, Ld63$c;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ld63$c;-><init>(Ld63$a;)V

    invoke-static {p0, p1}, Ld63;->v([BLd63$c;)V

    invoke-static {p1}, Ld63;->b(Ld63$c;)I

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Ld63$c;->a:[I

    const/4 p2, 0x0

    invoke-static {p0, p2, p3, p2}, Lzpc;->f([II[II)V

    iget-object p0, p1, Ld63$c;->b:[I

    invoke-static {p0, p2, p4, p2}, Lzpc;->f([II[II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "This method is only for use by X448"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static x([BI)Ld63$e;
    .locals 2

    const/16 v0, 0x39

    invoke-static {p0, p1, v0}, Ld63;->d([BII)[B

    move-result-object p0

    invoke-static {p0}, Ld63;->c([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Ld63$b;

    invoke-direct {p1, v0}, Ld63$b;-><init>(Ld63$a;)V

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Ld63;->f([BZLd63$b;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Ld63;->h(Ld63$b;)Ld63$e;

    move-result-object p0

    return-object p0
.end method
