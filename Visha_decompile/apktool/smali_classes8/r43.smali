.class public abstract Lr43;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Li53;)Li53;
    .locals 1

    invoke-virtual {p0}, Li53;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid result"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lt43;Li53;)Li53;
    .locals 1

    invoke-virtual {p1}, Li53;->i()Lt43;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt43;->k(Lt43;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lt43;->v(Li53;)Li53;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point must be on the same curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lt43;)Z
    .locals 0

    invoke-virtual {p0}, Lt43;->q()Lvv3;

    move-result-object p0

    invoke-static {p0}, Lr43;->d(Lvv3;)Z

    move-result p0

    return p0
.end method

.method public static d(Lvv3;)Z
    .locals 3

    invoke-interface {p0}, Lvv3;->a()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-interface {p0}, Lvv3;->b()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Ls43;->c:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p0, p0, Lsc8;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static e(Lt43;)Z
    .locals 0

    invoke-virtual {p0}, Lt43;->q()Lvv3;

    move-result-object p0

    invoke-static {p0}, Lr43;->f(Lvv3;)Z

    move-result p0

    return p0
.end method

.method public static f(Lvv3;)Z
    .locals 1

    invoke-interface {p0}, Lvv3;->a()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static g([Lw43;IILw43;)V
    .locals 4

    new-array v0, p2, [Lw43;

    aget-object v1, p0, p1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :goto_0
    add-int/lit8 v1, v2, 0x1

    if-ge v1, p2, :cond_0

    aget-object v2, v0, v2

    add-int v3, p1, v1

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Lw43;->j(Lw43;)Lw43;

    move-result-object v2

    aput-object v2, v0, v1

    move v2, v1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    aget-object p2, v0, v2

    invoke-virtual {p2, p3}, Lw43;->j(Lw43;)Lw43;

    move-result-object p2

    aput-object p2, v0, v2

    :cond_1
    aget-object p2, v0, v2

    invoke-virtual {p2}, Lw43;->g()Lw43;

    move-result-object p2

    :goto_1
    if-lez v2, :cond_2

    add-int/lit8 p3, v2, -0x1

    add-int/2addr v2, p1

    aget-object v1, p0, v2

    aget-object v3, v0, p3

    invoke-virtual {v3, p2}, Lw43;->j(Lw43;)Lw43;

    move-result-object v3

    aput-object v3, p0, v2

    invoke-virtual {p2, v1}, Lw43;->j(Lw43;)Lw43;

    move-result-object p2

    move v2, p3

    goto :goto_1

    :cond_2
    aput-object p2, p0, p1

    return-void
.end method

.method public static h(Li53;Ljava/math/BigInteger;)Li53;
    .locals 5

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Li53;->i()Lt43;

    move-result-object v1

    invoke-virtual {v1}, Lt43;->s()Li53;

    move-result-object v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, p0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p0}, Li53;->E()Li53;

    move-result-object p0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, p0}, Li53;->a(Li53;)Li53;

    move-result-object v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-gez p0, :cond_3

    invoke-virtual {v1}, Li53;->x()Li53;

    move-result-object v1

    :cond_3
    return-object v1
.end method
