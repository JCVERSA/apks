.class public Lu43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls43;


# instance fields
.field public final g:Lt43;

.field public final h:[B

.field public final i:Li53;

.field public final j:Ljava/math/BigInteger;

.field public final k:Ljava/math/BigInteger;

.field public l:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lqqc;)V
    .locals 6

    .line 3
    invoke-virtual {p1}, Lqqc;->m()Lt43;

    move-result-object v1

    invoke-virtual {p1}, Lqqc;->n()Li53;

    move-result-object v2

    invoke-virtual {p1}, Lqqc;->q()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lqqc;->o()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lqqc;->r()[B

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lu43;-><init>(Lt43;Li53;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lt43;Li53;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lu43;-><init>(Lt43;Li53;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lt43;Li53;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lu43;->l:Ljava/math/BigInteger;

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lu43;->g:Lt43;

    invoke-static {p1, p2}, Lu43;->g(Lt43;Li53;)Li53;

    move-result-object p1

    iput-object p1, p0, Lu43;->i:Li53;

    iput-object p3, p0, Lu43;->j:Ljava/math/BigInteger;

    iput-object p4, p0, Lu43;->k:Ljava/math/BigInteger;

    invoke-static {p5}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lu43;->h:[B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "n"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "curve"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Lt43;Li53;)Li53;
    .locals 0

    if-eqz p1, :cond_2

    invoke-static {p0, p1}, Lr43;->b(Lt43;Li53;)Li53;

    move-result-object p0

    invoke-virtual {p0}, Li53;->y()Li53;

    move-result-object p0

    invoke-virtual {p0}, Li53;->t()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Li53;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point not on curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point at infinity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Point cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Lt43;
    .locals 0

    iget-object p0, p0, Lu43;->g:Lt43;

    return-object p0
.end method

.method public b()Li53;
    .locals 0

    iget-object p0, p0, Lu43;->i:Li53;

    return-object p0
.end method

.method public c()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lu43;->k:Ljava/math/BigInteger;

    return-object p0
.end method

.method public d()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lu43;->j:Ljava/math/BigInteger;

    return-object p0
.end method

.method public e()[B
    .locals 0

    iget-object p0, p0, Lu43;->h:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lu43;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lu43;

    iget-object v1, p0, Lu43;->g:Lt43;

    iget-object v3, p1, Lu43;->g:Lt43;

    invoke-virtual {v1, v3}, Lt43;->k(Lt43;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lu43;->i:Li53;

    iget-object v3, p1, Lu43;->i:Li53;

    invoke-virtual {v1, v3}, Li53;->e(Li53;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lu43;->j:Ljava/math/BigInteger;

    iget-object p1, p1, Lu43;->j:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_1

    sget-object v0, Ls43;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lu43;->d()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Scalar is not in the interval [1, n - 1]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Scalar cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h(Li53;)Li53;
    .locals 0

    invoke-virtual {p0}, Lu43;->a()Lt43;

    move-result-object p0

    invoke-static {p0, p1}, Lu43;->g(Lt43;Li53;)Li53;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lu43;->g:Lt43;

    invoke-virtual {v0}, Lt43;->hashCode()I

    move-result v0

    const/16 v1, 0x404

    xor-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x101

    iget-object v1, p0, Lu43;->i:Li53;

    invoke-virtual {v1}, Li53;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x101

    iget-object p0, p0, Lu43;->j:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
