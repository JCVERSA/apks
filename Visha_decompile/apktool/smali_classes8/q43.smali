.class public abstract Lq43;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq43$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/security/spec/EllipticCurve;)Lt43;
    .locals 10

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v7

    instance-of p0, v0, Ljava/security/spec/ECFieldFp;

    if-eqz p0, :cond_0

    new-instance p0, Lt43$f;

    check-cast v0, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lt43$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {p0}, Lq43$a;->b(Lt43;)Lt43;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast v0, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v2

    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getMidTermsOfReductionPolynomial()[I

    move-result-object p0

    invoke-static {p0}, Lp53;->a([I)[I

    move-result-object p0

    new-instance v0, Lt43$e;

    const/4 v1, 0x0

    aget v3, p0, v1

    const/4 v1, 0x1

    aget v4, p0, v1

    const/4 v1, 0x2

    aget v5, p0, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lt43$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static b(Lt43;[B)Ljava/security/spec/EllipticCurve;
    .locals 3

    invoke-virtual {p0}, Lt43;->q()Lvv3;

    move-result-object p1

    invoke-static {p1}, Lq43;->c(Lvv3;)Ljava/security/spec/ECField;

    move-result-object p1

    invoke-virtual {p0}, Lt43;->m()Lw43;

    move-result-object v0

    invoke-virtual {v0}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lt43;->n()Lw43;

    move-result-object p0

    invoke-virtual {p0}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v1, Ljava/security/spec/EllipticCurve;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, p0, v2}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method

.method public static c(Lvv3;)Ljava/security/spec/ECField;
    .locals 3

    invoke-static {p0}, Lr43;->f(Lvv3;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/spec/ECFieldFp;

    invoke-interface {p0}, Lvv3;->b()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    check-cast p0, Lsc8;

    invoke-interface {p0}, Lsc8;->c()Lrc8;

    move-result-object p0

    invoke-interface {p0}, Lrc8;->a()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Lci;->r([III)[I

    move-result-object v0

    invoke-static {v0}, Lci;->G([I)[I

    move-result-object v0

    new-instance v1, Ljava/security/spec/ECFieldF2m;

    invoke-interface {p0}, Lrc8;->b()I

    move-result p0

    invoke-direct {v1, p0, v0}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    return-object v1
.end method

.method public static d(Lt43;Ljava/security/spec/ECPoint;)Li53;
    .locals 1

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lt43;->g(Ljava/math/BigInteger;Ljava/math/BigInteger;)Li53;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Li53;
    .locals 0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-static {p0}, Lq43;->a(Ljava/security/spec/EllipticCurve;)Lt43;

    move-result-object p0

    invoke-static {p0, p1}, Lq43;->d(Lt43;Ljava/security/spec/ECPoint;)Li53;

    move-result-object p0

    return-object p0
.end method

.method public static f(Li53;)Ljava/security/spec/ECPoint;
    .locals 2

    invoke-virtual {p0}, Li53;->y()Li53;

    move-result-object p0

    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-virtual {p0}, Li53;->f()Lw43;

    move-result-object v1

    invoke-virtual {v1}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Li53;->g()Lw43;

    move-result-object p0

    invoke-virtual {p0}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static g(Ljava/security/spec/ECParameterSpec;)Lh53;
    .locals 9

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lq43;->a(Ljava/security/spec/EllipticCurve;)Lt43;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lq43;->d(Lt43;Ljava/security/spec/ECPoint;)Li53;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v7

    instance-of v1, p0, Le53;

    if-eqz v1, :cond_0

    new-instance v8, Ld53;

    check-cast p0, Le53;

    invoke-virtual {p0}, Le53;->a()Ljava/lang/String;

    move-result-object v2

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Ld53;-><init>(Ljava/lang/String;Lt43;Li53;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v8

    :cond_0
    new-instance p0, Lh53;

    move-object v1, p0

    move-object v2, v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lh53;-><init>(Lt43;Li53;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object p0
.end method

.method public static h(Ljava/security/spec/EllipticCurve;Lh53;)Ljava/security/spec/ECParameterSpec;
    .locals 7

    invoke-virtual {p1}, Lh53;->b()Li53;

    move-result-object v0

    invoke-static {v0}, Lq43;->f(Li53;)Ljava/security/spec/ECPoint;

    move-result-object v4

    instance-of v0, p1, Ld53;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ld53;

    invoke-virtual {v0}, Ld53;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Le53;

    invoke-virtual {p1}, Lh53;->d()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lh53;->c()Ljava/math/BigInteger;

    move-result-object v6

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Le53;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Lh53;->d()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lh53;->c()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v0, p0, v4, v1, p1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public static i(Loqc;Lt43;)Ljava/security/spec/ECParameterSpec;
    .locals 8

    invoke-virtual {p0}, Loqc;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Loqc;->n()Lp1;

    move-result-object p0

    check-cast p0, Ll1;

    invoke-static {p0}, Lp53;->f(Ll1;)Lqqc;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lqj8;

    invoke-interface {v1}, Lqj8;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqqc;

    :cond_0
    invoke-virtual {v0}, Lqqc;->r()[B

    move-result-object v1

    invoke-static {p1, v1}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v4

    new-instance p1, Le53;

    invoke-static {p0}, Lp53;->c(Ll1;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lqqc;->n()Li53;

    move-result-object p0

    invoke-static {p0}, Lq43;->f(Li53;)Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {v0}, Lqqc;->q()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lqqc;->o()Ljava/math/BigInteger;

    move-result-object v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Le53;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Loqc;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Loqc;->n()Lp1;

    move-result-object p0

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-virtual {p0}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    invoke-static {p0}, Lqqc;->p(Ljava/lang/Object;)Lqqc;

    move-result-object p0

    invoke-virtual {p0}, Lqqc;->r()[B

    move-result-object v0

    invoke-static {p1, v0}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-virtual {p0}, Lqqc;->o()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lqqc;->n()Li53;

    move-result-object v1

    invoke-static {v1}, Lq43;->f(Li53;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p0}, Lqqc;->q()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lqqc;->o()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {v0, p1, v1, v2, p0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lqqc;->n()Li53;

    move-result-object v1

    invoke-static {v1}, Lq43;->f(Li53;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p0}, Lqqc;->q()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p0, v2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lpa4;->o(Ljava/lang/Object;)Lpa4;

    move-result-object p0

    invoke-virtual {p0}, Lpa4;->p()Ll1;

    move-result-object p1

    invoke-static {p1}, Ly43;->l(Ll1;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lx43;->a(Ljava/lang/String;)Ld53;

    move-result-object p1

    invoke-virtual {p1}, Lh53;->a()Lt43;

    move-result-object v0

    invoke-virtual {p1}, Lh53;->e()[B

    move-result-object v1

    invoke-static {v0, v1}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v4

    new-instance v0, Le53;

    invoke-virtual {p0}, Lpa4;->p()Ll1;

    move-result-object p0

    invoke-static {p0}, Ly43;->l(Ll1;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lh53;->b()Li53;

    move-result-object p0

    invoke-static {p0}, Lq43;->f(Li53;)Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {p1}, Lh53;->d()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1}, Lh53;->c()Ljava/math/BigInteger;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Le53;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public static j(Lqqc;)Ljava/security/spec/ECParameterSpec;
    .locals 4

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lqqc;->m()Lt43;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {p0}, Lqqc;->n()Li53;

    move-result-object v2

    invoke-static {v2}, Lq43;->f(Li53;)Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {p0}, Lqqc;->q()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lqqc;->o()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public static k(Lqj8;Loqc;)Lt43;
    .locals 2

    invoke-interface {p0}, Lqj8;->b()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Loqc;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Loqc;->n()Lp1;

    move-result-object p1

    invoke-static {p1}, Ll1;->D(Ljava/lang/Object;)Ll1;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "named curve not acceptable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lp53;->f(Ll1;)Lqqc;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lqj8;->c()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lqqc;

    :cond_2
    invoke-virtual {v0}, Lqqc;->m()Lt43;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Loqc;->o()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Lqj8;->a()Lh53;

    move-result-object p0

    invoke-virtual {p0}, Lh53;->a()Lt43;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Loqc;->n()Lp1;

    move-result-object p0

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ls1;->size()I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_5

    invoke-static {p0}, Lqqc;->p(Ljava/lang/Object;)Lqqc;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Lqqc;->m()Lt43;

    move-result-object p0

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ls1;->A(I)Lx0;

    move-result-object p0

    invoke-static {p0}, Ll1;->D(Ljava/lang/Object;)Ll1;

    move-result-object p0

    invoke-static {p0}, Ly43;->k(Ll1;)Lqqc;

    move-result-object p0

    goto :goto_1

    :goto_2
    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "encoded parameters not acceptable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(Lqj8;Ljava/security/spec/ECParameterSpec;)Lu43;
    .locals 6

    if-nez p1, :cond_0

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

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lq43;->g(Ljava/security/spec/ECParameterSpec;)Lh53;

    move-result-object p1

    invoke-static {p0, p1}, Lp53;->d(Lqj8;Lh53;)Lu43;

    move-result-object p1

    :goto_0
    return-object p1
.end method
