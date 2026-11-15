.class public final Lr94;
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
    .locals 3

    invoke-virtual {p0, p1}, Lr94;->d(S)S

    move-result v0

    invoke-virtual {p0, v0, p1}, Lr94;->b(SS)S

    move-result v0

    invoke-virtual {p0, v0}, Lr94;->d(S)S

    move-result v1

    invoke-virtual {p0, v1}, Lr94;->d(S)S

    move-result v1

    invoke-virtual {p0, v1, v0}, Lr94;->b(SS)S

    move-result v1

    invoke-virtual {p0, v1}, Lr94;->d(S)S

    move-result v2

    invoke-virtual {p0, v2}, Lr94;->d(S)S

    move-result v2

    invoke-virtual {p0, v2}, Lr94;->d(S)S

    move-result v2

    invoke-virtual {p0, v2}, Lr94;->d(S)S

    move-result v2

    invoke-virtual {p0, v2, v1}, Lr94;->b(SS)S

    move-result v1

    invoke-virtual {p0, v1}, Lr94;->d(S)S

    move-result v1

    invoke-virtual {p0, v1}, Lr94;->d(S)S

    move-result v1

    invoke-virtual {p0, v1, v0}, Lr94;->b(SS)S

    move-result v0

    invoke-virtual {p0, v0}, Lr94;->d(S)S

    move-result v0

    invoke-virtual {p0, v0, p1}, Lr94;->b(SS)S

    move-result p1

    invoke-virtual {p0, p1}, Lr94;->d(S)S

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
    const/16 v3, 0xc

    if-ge v2, v3, :cond_0

    shl-int v3, v1, v2

    and-int/2addr v3, p2

    mul-int/2addr v3, p1

    xor-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lr94;->c(I)S

    move-result p0

    return p0
.end method

.method public c(I)S
    .locals 3

    and-int/lit16 p0, p1, 0xfff

    ushr-int/lit8 v0, p1, 0xc

    const v1, 0x1ff000

    and-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x9

    const/high16 v2, 0xe00000

    and-int/2addr v2, p1

    ushr-int/lit8 v2, v2, 0x12

    ushr-int/lit8 p1, p1, 0x15

    xor-int/2addr p0, v0

    xor-int/2addr p0, v1

    xor-int/2addr p0, v2

    xor-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public d(S)S
    .locals 0

    invoke-static {p1}, Li45;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lr94;->c(I)S

    move-result p0

    return p0
.end method
