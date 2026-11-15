.class public final Ls94;
.super Ly94;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ly94;-><init>()V

    return-void
.end method


# virtual methods
.method public a(S)S
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ls94;->c(SS)S

    move-result p0

    return p0
.end method

.method public b(SS)S
    .locals 4

    and-int/lit8 v0, p2, 0x1

    mul-int/2addr v0, p1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0xd

    if-ge v2, v3, :cond_0

    shl-int v3, v1, v2

    and-int/2addr v3, p2

    mul-int/2addr v3, p1

    xor-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ls94;->d(I)S

    move-result p0

    return p0
.end method

.method public c(SS)S
    .locals 1

    invoke-virtual {p0, p1, p1}, Ls94;->g(SS)S

    move-result p1

    invoke-virtual {p0, p1, p1}, Ls94;->f(SS)S

    move-result p1

    invoke-virtual {p0, p1}, Ls94;->e(S)S

    move-result v0

    invoke-virtual {p0, v0, p1}, Ls94;->f(SS)S

    move-result v0

    invoke-virtual {p0, v0}, Ls94;->e(S)S

    move-result v0

    invoke-virtual {p0, v0, p1}, Ls94;->f(SS)S

    move-result p1

    invoke-virtual {p0, p1, p2}, Ls94;->g(SS)S

    move-result p0

    return p0
.end method

.method public d(I)S
    .locals 4

    and-int/lit16 p0, p1, 0x1fff

    ushr-int/lit8 p1, p1, 0xd

    shl-int/lit8 v0, p1, 0x4

    shl-int/lit8 v1, p1, 0x3

    xor-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xd

    and-int/lit16 v0, v0, 0x1fff

    shl-int/lit8 v2, v1, 0x4

    shl-int/lit8 v3, v1, 0x3

    xor-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x1

    xor-int/2addr v2, v3

    xor-int/2addr p0, p1

    xor-int/2addr p0, v1

    xor-int/2addr p0, v0

    xor-int/2addr p0, v2

    int-to-short p0, p0

    return p0
.end method

.method public final e(S)S
    .locals 0

    invoke-static {p1}, Li45;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ls94;->d(I)S

    move-result p1

    invoke-static {p1}, Li45;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ls94;->d(I)S

    move-result p0

    return p0
.end method

.method public final f(SS)S
    .locals 9

    int-to-long v0, p1

    int-to-long p1, p2

    const/16 v2, 0x12

    shl-long v3, p1, v2

    const-wide/16 v5, 0x40

    and-long/2addr v5, v0

    mul-long/2addr v3, v5

    const/16 v5, 0x15

    shl-long v5, v0, v5

    xor-long/2addr v0, v5

    const-wide/32 v5, 0x10000001

    and-long/2addr v5, v0

    mul-long/2addr v5, p1

    xor-long/2addr v3, v5

    const/4 v5, 0x3

    shl-long v5, p1, v5

    const-wide/32 v7, 0x20000002

    and-long/2addr v7, v0

    mul-long/2addr v5, v7

    xor-long/2addr v3, v5

    const/4 v5, 0x6

    shl-long v5, p1, v5

    const-wide/32 v7, 0x40000004

    and-long/2addr v7, v0

    mul-long/2addr v5, v7

    xor-long/2addr v3, v5

    const/16 v5, 0x9

    shl-long v5, p1, v5

    const-wide v7, 0x80000008L

    and-long/2addr v7, v0

    mul-long/2addr v5, v7

    xor-long/2addr v3, v5

    const/16 v5, 0xc

    shl-long v5, p1, v5

    const-wide v7, 0x100000010L

    and-long/2addr v7, v0

    mul-long/2addr v5, v7

    xor-long/2addr v3, v5

    const/16 v5, 0xf

    shl-long/2addr p1, v5

    const-wide v5, 0x200000020L

    and-long/2addr v0, v5

    mul-long/2addr p1, v0

    xor-long/2addr p1, v3

    const-wide v0, 0x1ffff80000000000L

    and-long/2addr v0, p1

    ushr-long v3, v0, v2

    const/16 v5, 0x14

    ushr-long v6, v0, v5

    xor-long/2addr v3, v6

    const/16 v6, 0x18

    ushr-long v7, v0, v6

    xor-long/2addr v3, v7

    const/16 v7, 0x1a

    ushr-long/2addr v0, v7

    xor-long/2addr v0, v3

    xor-long/2addr p1, v0

    const-wide v0, 0x7fffc000000L

    and-long/2addr v0, p1

    ushr-long v2, v0, v2

    ushr-long v4, v0, v5

    xor-long/2addr v2, v4

    ushr-long v4, v0, v6

    xor-long/2addr v2, v4

    ushr-long/2addr v0, v7

    xor-long/2addr v0, v2

    xor-long/2addr p1, v0

    long-to-int p1, p1

    const p2, 0x3ffffff

    and-int/2addr p1, p2

    invoke-virtual {p0, p1}, Ls94;->d(I)S

    move-result p0

    return p0
.end method

.method public final g(SS)S
    .locals 8

    int-to-long v0, p1

    int-to-long p1, p2

    const/4 v2, 0x6

    shl-long v2, p1, v2

    const-wide/16 v4, 0x40

    and-long/2addr v4, v0

    mul-long/2addr v2, v4

    const/4 v4, 0x7

    shl-long v4, v0, v4

    xor-long/2addr v0, v4

    const-wide/16 v4, 0x4001

    and-long/2addr v4, v0

    mul-long/2addr v4, p1

    xor-long/2addr v2, v4

    const/4 v4, 0x1

    shl-long v4, p1, v4

    const-wide/32 v6, 0x8002

    and-long/2addr v6, v0

    mul-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x2

    shl-long v4, p1, v4

    const-wide/32 v6, 0x10004

    and-long/2addr v6, v0

    mul-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x3

    shl-long v4, p1, v4

    const-wide/32 v6, 0x20008

    and-long/2addr v6, v0

    mul-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x4

    shl-long v4, p1, v4

    const-wide/32 v6, 0x40010

    and-long/2addr v6, v0

    mul-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x5

    shl-long/2addr p1, v4

    const-wide/32 v4, 0x80020

    and-long/2addr v0, v4

    mul-long/2addr p1, v0

    xor-long/2addr p1, v2

    const-wide v0, 0x1ffc000000L

    and-long/2addr v0, p1

    const/16 v2, 0x12

    ushr-long v2, v0, v2

    const/16 v4, 0x14

    ushr-long v4, v0, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x18

    ushr-long v4, v0, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x1a

    ushr-long/2addr v0, v4

    xor-long/2addr v0, v2

    xor-long/2addr p1, v0

    long-to-int p1, p1

    const p2, 0x3ffffff

    and-int/2addr p1, p2

    invoke-virtual {p0, p1}, Ls94;->d(I)S

    move-result p0

    return p0
.end method
