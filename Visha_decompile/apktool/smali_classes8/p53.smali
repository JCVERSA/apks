.class public abstract Lp53;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([I)[I
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [I

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget p0, p0, v3

    aput p0, v1, v3

    goto :goto_0

    :cond_0
    array-length v2, p0

    if-ne v2, v0, :cond_6

    aget v0, p0, v3

    aget v2, p0, v4

    const/4 v5, 0x2

    if-ge v0, v2, :cond_2

    aget v6, p0, v5

    if-ge v0, v6, :cond_2

    aput v0, v1, v3

    if-ge v2, v6, :cond_1

    aput v2, v1, v4

    aput v6, v1, v5

    goto :goto_0

    :cond_1
    aput v6, v1, v4

    aget p0, p0, v4

    aput p0, v1, v5

    goto :goto_0

    :cond_2
    aget v0, p0, v5

    if-ge v2, v0, :cond_4

    aput v2, v1, v3

    aget p0, p0, v3

    if-ge p0, v0, :cond_3

    aput p0, v1, v4

    aput v0, v1, v5

    goto :goto_0

    :cond_3
    aput v0, v1, v4

    aput p0, v1, v5

    goto :goto_0

    :cond_4
    aput v0, v1, v3

    aget v0, p0, v3

    if-ge v0, v2, :cond_5

    aput v0, v1, v4

    aget p0, p0, v4

    aput p0, v1, v5

    goto :goto_0

    :cond_5
    aput v2, v1, v4

    aput v0, v1, v5

    :goto_0
    return-object v1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only Trinomials and pentanomials supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Li53;Lh53;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lh53;->a()Lt43;

    move-result-object v0

    invoke-virtual {p1}, Lh53;->b()Li53;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lrv3;

    invoke-virtual {p0, v1}, Li53;->l(Z)[B

    move-result-object p0

    invoke-virtual {v0}, Lt43;->m()Lw43;

    move-result-object v3

    invoke-virtual {v3}, Lw43;->e()[B

    move-result-object v3

    invoke-virtual {v0}, Lt43;->n()Lw43;

    move-result-object v0

    invoke-virtual {v0}, Lw43;->e()[B

    move-result-object v0

    invoke-virtual {p1, v1}, Li53;->l(Z)[B

    move-result-object p1

    invoke-static {p0, v3, v0, p1}, Lci;->m([B[B[B[B)[B

    move-result-object p0

    invoke-direct {v2, p0}, Lrv3;-><init>([B)V

    invoke-virtual {v2}, Lrv3;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lrv3;

    invoke-virtual {p0, v1}, Li53;->l(Z)[B

    move-result-object p0

    invoke-direct {p1, p0}, Lrv3;-><init>([B)V

    invoke-virtual {p1}, Lrv3;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ll1;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lf53;->c(Ll1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lqj8;Lh53;)Lu43;
    .locals 12

    instance-of v0, p1, Ld53;

    if-eqz v0, :cond_0

    check-cast p1, Ld53;

    invoke-virtual {p1}, Ld53;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lp53;->g(Ljava/lang/String;)Ll1;

    move-result-object v1

    new-instance p0, Lg53;

    invoke-virtual {p1}, Lh53;->a()Lt43;

    move-result-object v2

    invoke-virtual {p1}, Lh53;->b()Li53;

    move-result-object v3

    invoke-virtual {p1}, Lh53;->d()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lh53;->c()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lh53;->e()[B

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lg53;-><init>(Ll1;Lt43;Li53;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {p0}, Lqj8;->a()Lh53;

    move-result-object p0

    new-instance p1, Lu43;

    invoke-virtual {p0}, Lh53;->a()Lt43;

    move-result-object v1

    invoke-virtual {p0}, Lh53;->b()Li53;

    move-result-object v2

    invoke-virtual {p0}, Lh53;->d()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lh53;->c()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lh53;->e()[B

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lu43;-><init>(Lt43;Li53;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object p0, p1

    goto :goto_0

    :cond_1
    new-instance p0, Lu43;

    invoke-virtual {p1}, Lh53;->a()Lt43;

    move-result-object v7

    invoke-virtual {p1}, Lh53;->b()Li53;

    move-result-object v8

    invoke-virtual {p1}, Lh53;->d()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {p1}, Lh53;->c()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {p1}, Lh53;->e()[B

    move-result-object v11

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lu43;-><init>(Lt43;Li53;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    :goto_0
    return-object p0
.end method

.method public static e(Lqj8;Loqc;)Lu43;
    .locals 6

    invoke-virtual {p1}, Loqc;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Loqc;->n()Lp1;

    move-result-object p1

    invoke-static {p1}, Ll1;->D(Ljava/lang/Object;)Ll1;

    move-result-object p1

    invoke-static {p1}, Lp53;->f(Ll1;)Lqqc;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lqj8;->c()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lqqc;

    :cond_0
    new-instance p0, Lg53;

    invoke-direct {p0, p1, v0}, Lg53;-><init>(Ll1;Lqqc;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Loqc;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lqj8;->a()Lh53;

    move-result-object p0

    new-instance p1, Lu43;

    invoke-virtual {p0}, Lh53;->a()Lt43;

    move-result-object v1

    invoke-virtual {p0}, Lh53;->b()Li53;

    move-result-object v2

    invoke-virtual {p0}, Lh53;->d()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lh53;->c()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lh53;->e()[B

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lu43;-><init>(Lt43;Li53;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    :goto_0
    move-object p0, p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Loqc;->n()Lp1;

    move-result-object p0

    invoke-static {p0}, Lqqc;->p(Ljava/lang/Object;)Lqqc;

    move-result-object p0

    new-instance p1, Lu43;

    invoke-virtual {p0}, Lqqc;->m()Lt43;

    move-result-object v1

    invoke-virtual {p0}, Lqqc;->n()Li53;

    move-result-object v2

    invoke-virtual {p0}, Lqqc;->q()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lqqc;->o()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lqqc;->r()[B

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lu43;-><init>(Lt43;Li53;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public static f(Ll1;)Lqqc;
    .locals 1

    invoke-static {p0}, Loo1;->j(Ll1;)Lqqc;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lf53;->b(Ll1;)Lqqc;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ll1;
    .locals 2

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Lp53;->h(Ljava/lang/String;)Ll1;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    invoke-static {p0}, Lf53;->d(Ljava/lang/String;)Ll1;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Ljava/lang/String;)Ll1;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    :try_start_0
    new-instance v0, Ll1;

    invoke-direct {v0, p0}, Ll1;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Lqj8;Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .locals 0

    if-nez p1, :cond_2

    if-nez p0, :cond_0

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0}, Lqj8;->a()Lh53;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lh53;->d()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public static j(Ljava/lang/String;Ljava/math/BigInteger;Lh53;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lu0a;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfx3;

    invoke-direct {v2}, Lfx3;-><init>()V

    invoke-virtual {p2}, Lh53;->b()Li53;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lv2;->b(Li53;Ljava/math/BigInteger;)Li53;

    move-result-object p1

    invoke-virtual {p1}, Li53;->y()Li53;

    move-result-object p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " Private Key ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Lp53;->b(Li53;Lh53;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "            X: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Li53;->f()Lw43;

    move-result-object p0

    invoke-virtual {p0}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object p0

    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "            Y: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Li53;->g()Lw43;

    move-result-object p0

    invoke-virtual {p0}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/String;Li53;Lh53;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lu0a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " Public Key ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Lp53;->b(Li53;Lh53;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "            X: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Li53;->f()Lw43;

    move-result-object p0

    invoke-virtual {p0}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object p0

    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "            Y: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Li53;->g()Lw43;

    move-result-object p0

    invoke-virtual {p0}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
