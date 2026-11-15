.class public abstract Lq53;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/security/spec/ECParameterSpec;Z)Loqc;
    .locals 7

    instance-of v0, p0, Le53;

    if-eqz v0, :cond_1

    check-cast p0, Le53;

    invoke-virtual {p0}, Le53;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lp53;->g(Ljava/lang/String;)Ll1;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ll1;

    invoke-virtual {p0}, Le53;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ll1;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance p0, Loqc;

    invoke-direct {p0, p1}, Loqc;-><init>(Ll1;)V

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Loqc;

    sget-object p1, Lup1;->c:Lup1;

    invoke-direct {p0, p1}, Loqc;-><init>(Lh1;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lq43;->a(Ljava/security/spec/EllipticCurve;)Lt43;

    move-result-object v2

    new-instance v0, Lqqc;

    new-instance v3, Lsqc;

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v2, v1}, Lq43;->d(Lt43;Ljava/security/spec/ECPoint;)Li53;

    move-result-object v1

    invoke-direct {v3, v1, p1}, Lsqc;-><init>(Li53;Z)V

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result p1

    int-to-long v5, p1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lqqc;-><init>(Lt43;Lsqc;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance p0, Loqc;

    invoke-direct {p0, v0}, Loqc;-><init>(Lqqc;)V

    :goto_0
    return-object p0
.end method
