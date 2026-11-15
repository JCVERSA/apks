.class public abstract Lt43;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt43$b;,
        Lt43$c;,
        Lt43$d;,
        Lt43$e;,
        Lt43$f;
    }
.end annotation


# instance fields
.field public a:Lvv3;

.field public b:Lw43;

.field public c:Lw43;

.field public d:Ljava/math/BigInteger;

.field public e:Ljava/math/BigInteger;

.field public f:I

.field public g:Lv43;

.field public h:Lc53;


# direct methods
.method public constructor <init>(Lvv3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lt43;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lt43;->g:Lv43;

    iput-object v0, p0, Lt43;->h:Lc53;

    iput-object p1, p0, Lt43;->a:Lvv3;

    return-void
.end method

.method public static synthetic a(II)I
    .locals 0

    invoke-static {p0, p1}, Lt43;->t(II)I

    move-result p0

    return p0
.end method

.method public static t(II)I
    .locals 4

    const/16 v0, 0x600

    const/4 v1, 0x4

    const/16 v2, 0x64

    if-lt p0, v0, :cond_2

    if-gt p1, v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/16 p0, 0x80

    if-gt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, -0x7f

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    :goto_0
    return v1

    :cond_2
    const/16 v0, 0x400

    const/4 v3, 0x5

    if-lt p0, v0, :cond_5

    if-gt p1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 p0, 0x70

    if-gt p1, p0, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, -0x6f

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 v1, p1, 0x5

    :goto_1
    return v1

    :cond_5
    const/16 v0, 0x200

    const/16 v1, 0x50

    if-lt p0, v0, :cond_8

    if-gt p1, v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x7

    if-gt p1, v2, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 p1, p1, -0x63

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v3, p1

    :goto_2
    return v3

    :cond_8
    const/16 p0, 0x28

    if-gt p1, v1, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 p1, p1, -0x4f

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    :goto_3
    return p0
.end method


# virtual methods
.method public abstract A(I)Z
.end method

.method public B(Ljava/math/BigInteger;Ljava/math/BigInteger;)Li53;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lt43;->g(Ljava/math/BigInteger;Ljava/math/BigInteger;)Li53;

    move-result-object p0

    invoke-virtual {p0}, Li53;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid point coordinates"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Li53;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Li53;->i()Lt43;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'point\' must be non-null and on this curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c([Li53;II)V
    .locals 2

    if-eqz p1, :cond_4

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    add-int v1, p2, v0

    aget-object v1, p1, v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Li53;->i()Lt43;

    move-result-object v1

    if-ne p0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'points\' entries must be null or on this curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid range specified for \'points\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'points\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract d()Lt43;
.end method

.method public declared-synchronized e()Lt43$d;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lt43$d;

    iget v1, p0, Lt43;->f:I

    iget-object v2, p0, Lt43;->g:Lv43;

    iget-object v3, p0, Lt43;->h:Lc53;

    invoke-direct {v0, p0, v1, v2, v3}, Lt43$d;-><init>(Lt43;ILv43;Lc53;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lt43;

    if-eqz v0, :cond_0

    check-cast p1, Lt43;

    invoke-virtual {p0, p1}, Lt43;->k(Lt43;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public f([Li53;II)Lb53;
    .locals 12

    invoke-virtual {p0}, Lt43;->r()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    mul-int v1, p3, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, p3, :cond_2

    add-int v5, p2, v3

    aget-object v5, p1, v5

    invoke-virtual {v5}, Li53;->n()Lw43;

    move-result-object v6

    invoke-virtual {v6}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5}, Li53;->o()Lw43;

    move-result-object v5

    invoke-virtual {v5}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v0, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    move v7, v2

    :goto_1
    array-length v9, v6

    sub-int/2addr v9, v7

    array-length v10, v5

    if-le v10, v0, :cond_1

    goto :goto_2

    :cond_1
    move v8, v2

    :goto_2
    array-length v10, v5

    sub-int/2addr v10, v8

    add-int/2addr v4, v0

    sub-int v11, v4, v9

    invoke-static {v6, v7, v1, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v0

    sub-int v6, v4, v10

    invoke-static {v5, v8, v1, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lt43$a;

    invoke-direct {p1, p0, p3, v0, v1}, Lt43$a;-><init>(Lt43;II[B)V

    return-object p1
.end method

.method public g(Ljava/math/BigInteger;Ljava/math/BigInteger;)Li53;
    .locals 0

    invoke-virtual {p0, p1}, Lt43;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object p1

    invoke-virtual {p0, p2}, Lt43;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lt43;->h(Lw43;Lw43;)Li53;

    move-result-object p0

    return-object p0
.end method

.method public abstract h(Lw43;Lw43;)Li53;
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lt43;->q()Lvv3;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lt43;->m()Lw43;

    move-result-object v1

    invoke-virtual {v1}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lc35;->c(II)I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lt43;->n()Lw43;

    move-result-object p0

    invoke-virtual {p0}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lc35;->c(II)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public i([B)Li53;
    .locals 7

    invoke-virtual {p0}, Lt43;->r()I

    move-result v0

    const/4 v1, 0x7

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    const/4 v2, 0x0

    aget-byte v3, p1, v2

    const/4 v4, 0x1

    if-eqz v3, :cond_a

    const/4 v5, 0x2

    if-eq v3, v5, :cond_7

    const/4 v5, 0x3

    if-eq v3, v5, :cond_7

    const/4 v5, 0x4

    if-eq v3, v5, :cond_5

    const/4 v5, 0x6

    if-eq v3, v5, :cond_1

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid point encoding 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-static {v3, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    array-length v5, p1

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v4

    if-ne v5, v6, :cond_4

    invoke-static {p1, v4, v0}, Lge0;->f([BII)Ljava/math/BigInteger;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-static {p1, v6, v0}, Lge0;->f([BII)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-ne v3, v1, :cond_2

    move v2, v4

    :cond_2
    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v5, p1}, Lt43;->B(Ljava/math/BigInteger;Ljava/math/BigInteger;)Li53;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Inconsistent Y coordinate in hybrid encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incorrect length for hybrid encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    array-length v1, p1

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v4

    if-ne v1, v2, :cond_6

    invoke-static {p1, v4, v0}, Lge0;->f([BII)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-static {p1, v2, v0}, Lge0;->f([BII)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lt43;->B(Ljava/math/BigInteger;Ljava/math/BigInteger;)Li53;

    move-result-object p0

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incorrect length for uncompressed encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    array-length v1, p1

    add-int/lit8 v2, v0, 0x1

    if-ne v1, v2, :cond_9

    and-int/lit8 v1, v3, 0x1

    invoke-static {p1, v4, v0}, Lge0;->f([BII)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lt43;->j(ILjava/math/BigInteger;)Li53;

    move-result-object p0

    invoke-virtual {p0, v4, v4}, Li53;->s(ZZ)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid point"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incorrect length for compressed encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    array-length p1, p1

    if-ne p1, v4, :cond_d

    invoke-virtual {p0}, Lt43;->s()Li53;

    move-result-object p0

    :goto_1
    if-eqz v3, :cond_c

    invoke-virtual {p0}, Li53;->t()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_2

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid infinity encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_2
    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incorrect length for infinity encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract j(ILjava/math/BigInteger;)Li53;
.end method

.method public k(Lt43;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lt43;->q()Lvv3;

    move-result-object v0

    invoke-virtual {p1}, Lt43;->q()Lvv3;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lt43;->m()Lw43;

    move-result-object v0

    invoke-virtual {v0}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lt43;->m()Lw43;

    move-result-object v1

    invoke-virtual {v1}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lt43;->n()Lw43;

    move-result-object p0

    invoke-virtual {p0}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1}, Lt43;->n()Lw43;

    move-result-object p1

    invoke-virtual {p1}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public abstract l(Ljava/math/BigInteger;)Lw43;
.end method

.method public m()Lw43;
    .locals 0

    iget-object p0, p0, Lt43;->b:Lw43;

    return-object p0
.end method

.method public n()Lw43;
    .locals 0

    iget-object p0, p0, Lt43;->c:Lw43;

    return-object p0
.end method

.method public o()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lt43;->e:Ljava/math/BigInteger;

    return-object p0
.end method

.method public p()I
    .locals 0

    iget p0, p0, Lt43;->f:I

    return p0
.end method

.method public q()Lvv3;
    .locals 0

    iget-object p0, p0, Lt43;->a:Lvv3;

    return-object p0
.end method

.method public abstract r()I
.end method

.method public abstract s()Li53;
.end method

.method public u()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lt43;->d:Ljava/math/BigInteger;

    return-object p0
.end method

.method public v(Li53;)Li53;
    .locals 1

    invoke-virtual {p1}, Li53;->i()Lt43;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Li53;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lt43;->s()Li53;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Li53;->y()Li53;

    move-result-object p1

    invoke-virtual {p1}, Li53;->p()Lw43;

    move-result-object v0

    invoke-virtual {v0}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Li53;->q()Lw43;

    move-result-object p1

    invoke-virtual {p1}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lt43;->g(Ljava/math/BigInteger;Ljava/math/BigInteger;)Li53;

    move-result-object p0

    return-object p0
.end method

.method public w([Li53;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lt43;->x([Li53;IILw43;)V

    return-void
.end method

.method public x([Li53;IILw43;)V
    .locals 7

    invoke-virtual {p0, p1, p2, p3}, Lt43;->c([Li53;II)V

    invoke-virtual {p0}, Lt43;->p()I

    move-result p0

    if-eqz p0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_5

    new-array p0, p3, [Lw43;

    new-array v0, p3, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p3, :cond_2

    add-int v4, p2, v2

    aget-object v5, p1, v4

    if-eqz v5, :cond_1

    if-nez p4, :cond_0

    invoke-virtual {v5}, Li53;->u()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {v5, v1}, Li53;->r(I)Lw43;

    move-result-object v5

    aput-object v5, p0, v3

    add-int/lit8 v5, v3, 0x1

    aput v4, v0, v3

    move v3, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    return-void

    :cond_3
    invoke-static {p0, v1, v3, p4}, Lr43;->g([Lw43;IILw43;)V

    :goto_1
    if-ge v1, v3, :cond_4

    aget p2, v0, v1

    aget-object p3, p1, p2

    aget-object p4, p0, v1

    invoke-virtual {p3, p4}, Li53;->z(Lw43;)Li53;

    move-result-object p3

    aput-object p3, p1, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    if-nez p4, :cond_6

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'iso\' not valid for affine coordinates"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public y(Li53;Ljava/lang/String;Lpd8;)Lqd8;
    .locals 1

    invoke-virtual {p0, p1}, Lt43;->b(Li53;)V

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Li53;->e:Ljava/util/Hashtable;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/Hashtable;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Ljava/util/Hashtable;-><init>(I)V

    iput-object p0, p1, Li53;->e:Ljava/util/Hashtable;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqd8;

    invoke-interface {p3, p1}, Lpd8;->a(Lqd8;)Lqd8;

    move-result-object p3

    if-eq p3, p1, :cond_1

    invoke-virtual {p0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    return-object p3

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :goto_3
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public abstract z(Ljava/security/SecureRandom;)Lw43;
.end method
