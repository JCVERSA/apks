.class public final Lp3h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkfh;->c:[B

    iput-object v0, p0, Lp3h;->a:[B

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3h;->a:[B

    iput p2, p0, Lp3h;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lp3h;->d:I

    iget v1, p0, Lp3h;->b:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget p0, p0, Lp3h;->c:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lp3h;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln7g;->f(Z)V

    iget p0, p0, Lp3h;->b:I

    return p0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lp3h;->b:I

    mul-int/lit8 v0, v0, 0x8

    iget p0, p0, Lp3h;->c:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final d(I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lp3h;->c:I

    add-int/2addr v1, p1

    iput v1, p0, Lp3h;->c:I

    move v1, v0

    :goto_0
    iget v2, p0, Lp3h;->c:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lp3h;->c:I

    iget-object v3, p0, Lp3h;->a:[B

    iget v4, p0, Lp3h;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lp3h;->b:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lp3h;->a:[B

    iget v5, p0, Lp3h;->b:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v6, v2, 0x8

    shr-int/2addr v4, v6

    or-int/2addr v1, v4

    rsub-int/lit8 p1, p1, 0x20

    if-ne v2, v3, :cond_2

    iput v0, p0, Lp3h;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lp3h;->b:I

    :cond_2
    const/4 v0, -0x1

    ushr-int p1, v0, p1

    and-int/2addr p1, v1

    invoke-virtual {p0}, Lp3h;->q()V

    return p1
.end method

.method public final e(I)J
    .locals 5

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    if-gt p1, v2, :cond_0

    invoke-virtual {p0, p1}, Lp3h;->d(I)I

    move-result p0

    sget p1, Lkfh;->a:I

    int-to-long p0, p0

    and-long/2addr p0, v0

    return-wide p0

    :cond_0
    add-int/lit8 p1, p1, -0x20

    invoke-virtual {p0, p1}, Lp3h;->d(I)I

    move-result p1

    invoke-virtual {p0, v2}, Lp3h;->d(I)I

    move-result p0

    sget v3, Lkfh;->a:I

    int-to-long v3, p0

    int-to-long p0, p1

    and-long/2addr p0, v0

    shl-long/2addr p0, v2

    and-long/2addr v0, v3

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public final f()V
    .locals 1

    iget v0, p0, Lp3h;->c:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lp3h;->c:I

    iget v0, p0, Lp3h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp3h;->b:I

    invoke-virtual {p0}, Lp3h;->q()V

    return-void
.end method

.method public final g(II)V
    .locals 9

    iget p2, p0, Lp3h;->c:I

    const/16 v0, 0x8

    rsub-int/lit8 p2, p2, 0x8

    const/16 v1, 0xe

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget v2, p0, Lp3h;->c:I

    rsub-int/lit8 v3, v2, 0x8

    sub-int/2addr v3, p2

    const v4, 0xff00

    shr-int v2, v4, v2

    iget-object v4, p0, Lp3h;->a:[B

    iget v5, p0, Lp3h;->b:I

    aget-byte v6, v4, v5

    const/4 v7, 0x1

    shl-int v8, v7, v3

    add-int/lit8 v8, v8, -0x1

    or-int/2addr v2, v8

    and-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v4, v5

    rsub-int/lit8 p2, p2, 0xe

    and-int/lit16 p1, p1, 0x3fff

    ushr-int v6, p1, p2

    shl-int v3, v6, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v4, v5

    add-int/2addr v5, v7

    :goto_0
    if-le p2, v0, :cond_0

    iget-object v2, p0, Lp3h;->a:[B

    add-int/lit8 v3, v5, 0x1

    add-int/lit8 p2, p2, -0x8

    ushr-int v4, p1, p2

    int-to-byte v4, v4

    aput-byte v4, v2, v5

    move v5, v3

    goto :goto_0

    :cond_0
    rsub-int/lit8 v0, p2, 0x8

    iget-object v2, p0, Lp3h;->a:[B

    aget-byte v3, v2, v5

    shl-int v4, v7, v0

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    shl-int p2, v7, p2

    add-int/lit8 p2, p2, -0x1

    and-int/2addr p1, p2

    shl-int/2addr p1, v0

    or-int/2addr p1, v3

    int-to-byte p1, p1

    aput-byte p1, v2, v5

    invoke-virtual {p0, v1}, Lp3h;->n(I)V

    invoke-virtual {p0}, Lp3h;->q()V

    return-void
.end method

.method public final h([BII)V
    .locals 8

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    shr-int/lit8 v1, p3, 0x3

    const/16 v2, 0xff

    const/16 v3, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lp3h;->a:[B

    iget v4, p0, Lp3h;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lp3h;->b:I

    aget-byte v4, v1, v4

    iget v6, p0, Lp3h;->c:I

    shl-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    aget-byte v1, v1, v5

    and-int/2addr v1, v2

    sub-int/2addr v3, v6

    shr-int/2addr v1, v3

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p3, p3, 0x7

    if-nez p3, :cond_1

    return-void

    :cond_1
    aget-byte v0, p1, v1

    shr-int v4, v2, p3

    and-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    iget v4, p0, Lp3h;->c:I

    add-int v5, v4, p3

    if-le v5, v3, :cond_2

    iget-object v5, p0, Lp3h;->a:[B

    iget v6, p0, Lp3h;->b:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lp3h;->b:I

    aget-byte v5, v5, v6

    and-int/2addr v5, v2

    shl-int/2addr v5, v4

    or-int/2addr v0, v5

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    add-int/lit8 v4, v4, -0x8

    :cond_2
    add-int/2addr v4, p3

    iput v4, p0, Lp3h;->c:I

    iget-object v5, p0, Lp3h;->a:[B

    iget v6, p0, Lp3h;->b:I

    aget-byte v5, v5, v6

    and-int/2addr v2, v5

    rsub-int/lit8 v5, v4, 0x8

    rsub-int/lit8 p3, p3, 0x8

    shr-int/2addr v2, v5

    shl-int p3, v2, p3

    int-to-byte p3, p3

    or-int/2addr p3, v0

    int-to-byte p3, p3

    aput-byte p3, p1, v1

    if-ne v4, v3, :cond_3

    iput p2, p0, Lp3h;->c:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lp3h;->b:I

    :cond_3
    invoke-virtual {p0}, Lp3h;->q()V

    return-void
.end method

.method public final i([BII)V
    .locals 2

    iget p2, p0, Lp3h;->c:I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-static {p2}, Ln7g;->f(Z)V

    iget-object p2, p0, Lp3h;->a:[B

    iget v1, p0, Lp3h;->b:I

    invoke-static {p2, v1, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lp3h;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lp3h;->b:I

    invoke-virtual {p0}, Lp3h;->q()V

    return-void
.end method

.method public final j(Lu4h;)V
    .locals 2

    invoke-virtual {p1}, Lu4h;->n()[B

    move-result-object v0

    invoke-virtual {p1}, Lu4h;->x()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lp3h;->k([BI)V

    invoke-virtual {p1}, Lu4h;->w()I

    move-result p1

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lp3h;->l(I)V

    return-void
.end method

.method public final k([BI)V
    .locals 0

    iput-object p1, p0, Lp3h;->a:[B

    const/4 p1, 0x0

    iput p1, p0, Lp3h;->b:I

    iput p1, p0, Lp3h;->c:I

    iput p2, p0, Lp3h;->d:I

    return-void
.end method

.method public final l(I)V
    .locals 1

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lp3h;->b:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, Lp3h;->c:I

    invoke-virtual {p0}, Lp3h;->q()V

    return-void
.end method

.method public final m()V
    .locals 2

    iget v0, p0, Lp3h;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp3h;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lp3h;->c:I

    iget v0, p0, Lp3h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp3h;->b:I

    :cond_0
    invoke-virtual {p0}, Lp3h;->q()V

    return-void
.end method

.method public final n(I)V
    .locals 3

    iget v0, p0, Lp3h;->b:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lp3h;->b:I

    mul-int/lit8 v1, v1, 0x8

    iget v2, p0, Lp3h;->c:I

    sub-int/2addr p1, v1

    add-int/2addr v2, p1

    iput v2, p0, Lp3h;->c:I

    const/4 p1, 0x7

    if-le v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp3h;->b:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lp3h;->c:I

    :cond_0
    invoke-virtual {p0}, Lp3h;->q()V

    return-void
.end method

.method public final o(I)V
    .locals 1

    iget v0, p0, Lp3h;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln7g;->f(Z)V

    iget v0, p0, Lp3h;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lp3h;->b:I

    invoke-virtual {p0}, Lp3h;->q()V

    return-void
.end method

.method public final p()Z
    .locals 3

    iget-object v0, p0, Lp3h;->a:[B

    iget v1, p0, Lp3h;->b:I

    aget-byte v0, v0, v1

    const/16 v1, 0x80

    iget v2, p0, Lp3h;->c:I

    shr-int/2addr v1, v2

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lp3h;->m()V

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final q()V
    .locals 4

    iget v0, p0, Lp3h;->b:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget v2, p0, Lp3h;->d:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_0

    if-ne v0, v2, :cond_1

    iget p0, p0, Lp3h;->c:I

    if-nez p0, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    invoke-static {v1}, Ln7g;->f(Z)V

    return-void
.end method
