.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lorg/bouncycastle/jce/interfaces/ECPrivateKey;
.implements Lwu7;


# static fields
.field static final serialVersionUID:J = 0x648ee5f4b1b13042L


# instance fields
.field private algorithm:Ljava/lang/String;

.field private transient attrCarrier:Lxu7;

.field private transient d:Ljava/math/BigInteger;

.field private transient ecSpec:Ljava/security/spec/ECParameterSpec;

.field private transient publicKey:Ls0;

.field private withCompression:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lxu7;

    invoke-direct {v0}, Lxu7;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->attrCarrier:Lxu7;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ll53;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lxu7;

    invoke-direct {v0}, Lxu7;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->attrCarrier:Lxu7;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Ll53;->c()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->d:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ll53;Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;Lh53;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lxu7;

    invoke-direct {v0}, Lxu7;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->attrCarrier:Lxu7;

    invoke-virtual {p2}, Lz43;->b()Lu43;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Ll53;->c()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->d:Ljava/math/BigInteger;

    if-nez p4, :cond_0

    invoke-virtual {v0}, Lu43;->a()Lt43;

    move-result-object p1

    invoke-virtual {v0}, Lu43;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    new-instance p2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Lu43;->b()Li53;

    move-result-object p4

    invoke-static {p4}, Lq43;->f(Li53;)Ljava/security/spec/ECPoint;

    move-result-object p4

    invoke-virtual {v0}, Lu43;->d()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lu43;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {p2, p1, p4, v1, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_1

    :cond_0
    invoke-virtual {p4}, Lh53;->a()Lt43;

    move-result-object p1

    invoke-virtual {p4}, Lh53;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    new-instance p2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p4}, Lh53;->b()Li53;

    move-result-object v0

    invoke-static {v0}, Lq43;->f(Li53;)Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {p4}, Lh53;->d()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p4}, Lh53;->c()Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p4}, Ljava/math/BigInteger;->intValue()I

    move-result p4

    invoke-direct {p2, p1, v0, v1, p4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_0

    :goto_1
    invoke-direct {p0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->getPublicKeyDetails(Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;)Ls0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->publicKey:Ls0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ll53;Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;Ljava/security/spec/ECParameterSpec;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lxu7;

    invoke-direct {v0}, Lxu7;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->attrCarrier:Lxu7;

    invoke-virtual {p2}, Lz43;->b()Lu43;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Ll53;->c()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->d:Ljava/math/BigInteger;

    if-nez p4, :cond_0

    invoke-virtual {v0}, Lu43;->a()Lt43;

    move-result-object p1

    invoke-virtual {v0}, Lu43;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    new-instance p2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Lu43;->b()Li53;

    move-result-object p4

    invoke-static {p4}, Lq43;->f(Li53;)Ljava/security/spec/ECPoint;

    move-result-object p4

    invoke-virtual {v0}, Lu43;->d()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lu43;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {p2, p1, p4, v1, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    invoke-direct {p0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->getPublicKeyDetails(Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;)Ls0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->publicKey:Ls0;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lxu7;

    invoke-direct {v0}, Lxu7;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->attrCarrier:Lxu7;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->d:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPrivateKeySpec;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lxu7;

    invoke-direct {v0}, Lxu7;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->attrCarrier:Lxu7;

    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Lm53;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "DSTU4145"

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->algorithm:Ljava/lang/String;

    new-instance p1, Lxu7;

    invoke-direct {p1}, Lxu7;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->attrCarrier:Lxu7;

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Log8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lxu7;

    invoke-direct {v0}, Lxu7;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->attrCarrier:Lxu7;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->populateFromPrivKeyInfo(Log8;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lxu7;

    invoke-direct {v0}, Lxu7;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->attrCarrier:Lxu7;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->d:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->d:Ljava/math/BigInteger;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->withCompression:Z

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->withCompression:Z

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->attrCarrier:Lxu7;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->attrCarrier:Lxu7;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->publicKey:Ls0;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->publicKey:Ls0;

    return-void
.end method

.method private getPublicKeyDetails(Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;)Ls0;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lp1;->t([B)Lp1;

    move-result-object p0

    invoke-static {p0}, Ls1a;->n(Ljava/lang/Object;)Ls1a;

    move-result-object p0

    invoke-virtual {p0}, Ls1a;->o()Ls0;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private populateFromPrivKeyInfo(Log8;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Log8;->p()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->p()Lx0;

    move-result-object v0

    invoke-static {v0}, Loqc;->m(Ljava/lang/Object;)Loqc;

    move-result-object v0

    invoke-virtual {v0}, Loqc;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Loqc;->n()Lp1;

    move-result-object v0

    invoke-static {v0}, Ll1;->D(Ljava/lang/Object;)Ll1;

    move-result-object v0

    invoke-static {v0}, Lp53;->f(Ll1;)Lqqc;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lor1;->a(Ll1;)Lu43;

    move-result-object v1

    invoke-virtual {v1}, Lu43;->a()Lt43;

    move-result-object v2

    invoke-virtual {v1}, Lu43;->e()[B

    move-result-object v3

    invoke-static {v2, v3}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v6

    new-instance v2, Le53;

    invoke-virtual {v0}, Ll1;->B()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lu43;->b()Li53;

    move-result-object v0

    invoke-static {v0}, Lq43;->f(Li53;)Ljava/security/spec/ECPoint;

    move-result-object v7

    invoke-virtual {v1}, Lu43;->d()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, Lu43;->c()Ljava/math/BigInteger;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Le53;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lqqc;->m()Lt43;

    move-result-object v2

    invoke-virtual {v1}, Lqqc;->r()[B

    move-result-object v3

    invoke-static {v2, v3}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v6

    new-instance v2, Le53;

    invoke-static {v0}, Lp53;->c(Ll1;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lqqc;->n()Li53;

    move-result-object v0

    invoke-static {v0}, Lq43;->f(Li53;)Ljava/security/spec/ECPoint;

    move-result-object v7

    invoke-virtual {v1}, Lqqc;->q()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, Lqqc;->o()Ljava/math/BigInteger;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Le53;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Loqc;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0}, Loqc;->n()Lp1;

    move-result-object v1

    invoke-static {v1}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ls1;->A(I)Lx0;

    move-result-object v2

    instance-of v2, v2, Lg1;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Loqc;->n()Lp1;

    move-result-object v0

    invoke-static {v0}, Lqqc;->p(Ljava/lang/Object;)Lqqc;

    move-result-object v0

    invoke-virtual {v0}, Lqqc;->m()Lt43;

    move-result-object v1

    invoke-virtual {v0}, Lqqc;->r()[B

    move-result-object v2

    invoke-static {v1, v2}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Lqqc;->n()Li53;

    move-result-object v3

    invoke-static {v3}, Lq43;->f(Li53;)Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v0}, Lqqc;->q()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lqqc;->o()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {v2, v1, v3, v4, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    :goto_0
    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto/16 :goto_2

    :cond_3
    invoke-static {v1}, Lpr1;->p(Ljava/lang/Object;)Lpr1;

    move-result-object v0

    invoke-virtual {v0}, Lpr1;->r()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lpr1;->q()Ll1;

    move-result-object v0

    invoke-static {v0}, Lor1;->a(Ll1;)Lu43;

    move-result-object v1

    new-instance v9, Ld53;

    invoke-virtual {v0}, Ll1;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lu43;->a()Lt43;

    move-result-object v4

    invoke-virtual {v1}, Lu43;->b()Li53;

    move-result-object v5

    invoke-virtual {v1}, Lu43;->d()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Lu43;->c()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lu43;->e()[B

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Ld53;-><init>(Ljava/lang/String;Lt43;Li53;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lpr1;->o()Lnr1;

    move-result-object v0

    invoke-virtual {v0}, Lnr1;->n()[B

    move-result-object v1

    invoke-virtual {p1}, Log8;->p()Loa;

    move-result-object v2

    invoke-virtual {v2}, Loa;->m()Ll1;

    move-result-object v2

    sget-object v3, Lpdb;->b:Ll1;

    invoke-virtual {v2, v3}, Lp1;->s(Lp1;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->reverseBytes([B)V

    :cond_5
    invoke-virtual {v0}, Lnr1;->o()Lmr1;

    move-result-object v2

    new-instance v13, Lt43$e;

    invoke-virtual {v2}, Lmr1;->q()I

    move-result v5

    invoke-virtual {v2}, Lmr1;->n()I

    move-result v6

    invoke-virtual {v2}, Lmr1;->o()I

    move-result v7

    invoke-virtual {v2}, Lmr1;->p()I

    move-result v8

    invoke-virtual {v0}, Lnr1;->m()Ljava/math/BigInteger;

    move-result-object v9

    new-instance v10, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v10, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Lt43$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lnr1;->p()[B

    move-result-object v1

    invoke-virtual {p1}, Log8;->p()Loa;

    move-result-object v2

    invoke-virtual {v2}, Loa;->m()Ll1;

    move-result-object v2

    invoke-virtual {v2, v3}, Lp1;->s(Lp1;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->reverseBytes([B)V

    :cond_6
    new-instance v9, Lh53;

    invoke-static {v13, v1}, Lqr1;->a(Lt43;[B)Li53;

    move-result-object v1

    invoke-virtual {v0}, Lnr1;->r()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v9, v13, v1, v0}, Lh53;-><init>(Lt43;Li53;Ljava/math/BigInteger;)V

    :goto_1
    invoke-virtual {v9}, Lh53;->a()Lt43;

    move-result-object v0

    invoke-virtual {v9}, Lh53;->e()[B

    move-result-object v1

    invoke-static {v0, v1}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    new-instance v1, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v9}, Lh53;->b()Li53;

    move-result-object v2

    invoke-static {v2}, Lq43;->f(Li53;)Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {v9}, Lh53;->d()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v9}, Lh53;->c()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_2
    invoke-virtual {p1}, Log8;->u()Lx0;

    move-result-object p1

    instance-of v0, p1, Lg1;

    if-eqz v0, :cond_7

    invoke-static {p1}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object p1

    invoke-virtual {p1}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->d:Ljava/math/BigInteger;

    goto :goto_3

    :cond_7
    invoke-static {p1}, Lk53;->m(Ljava/lang/Object;)Lk53;

    move-result-object p1

    invoke-virtual {p1}, Lk53;->n()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lk53;->p()Ls0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->publicKey:Ls0;

    :goto_3
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lp1;->t([B)Lp1;

    move-result-object p1

    invoke-static {p1}, Log8;->n(Ljava/lang/Object;)Log8;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->populateFromPrivKeyInfo(Log8;)V

    new-instance p1, Lxu7;

    invoke-direct {p1}, Lxu7;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->attrCarrier:Lxu7;

    return-void
.end method

.method private reverseBytes([B)V
    .locals 2

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    if-ge p0, v0, :cond_0

    aget-byte v0, p1, p0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p0

    aget-byte v1, p1, v1

    aput-byte v1, p1, p0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p0

    aput-byte v0, p1, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public engineGetSpec()Lh53;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lq43;->g(Ljava/security/spec/ECParameterSpec;)Lh53;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lqj8;

    invoke-interface {p0}, Lqj8;->a()Lh53;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->engineGetSpec()Lh53;

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->engineGetSpec()Lh53;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh53;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getBagAttribute(Ll1;)Lx0;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->attrCarrier:Lxu7;

    invoke-virtual {p0, p1}, Lxu7;->getBagAttribute(Ll1;)Lx0;

    move-result-object p0

    return-object p0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->attrCarrier:Lxu7;

    invoke-virtual {p0}, Lxu7;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getD()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->d:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getEncoded()[B
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Le53;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Le53;

    invoke-virtual {v0}, Le53;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp53;->g(Ljava/lang/String;)Ll1;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ll1;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v1, Le53;

    invoke-virtual {v1}, Le53;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ll1;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Loqc;

    invoke-direct {v1, v0}, Loqc;-><init>(Ll1;)V

    :goto_0
    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lqj8;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lp53;->i(Lqj8;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v0

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    new-instance v1, Loqc;

    sget-object v0, Lup1;->c:Lup1;

    invoke-direct {v1, v0}, Loqc;-><init>(Lh1;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lqj8;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lp53;->i(Lqj8;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lq43;->a(Ljava/security/spec/EllipticCurve;)Lt43;

    move-result-object v4

    new-instance v0, Lqqc;

    new-instance v5, Lsqc;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v4, v1}, Lq43;->d(Lt43;Ljava/security/spec/ECPoint;)Li53;

    move-result-object v1

    iget-boolean v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->withCompression:Z

    invoke-direct {v5, v1, v3}, Lsqc;-><init>(Li53;Z)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v6

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v7, v1

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lqqc;-><init>(Lt43;Lsqc;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v1, Loqc;

    invoke-direct {v1, v0}, Loqc;-><init>(Lqqc;)V

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->publicKey:Ls0;

    if-eqz v3, :cond_3

    new-instance v3, Lk53;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->publicKey:Ls0;

    invoke-direct {v3, v0, v4, v5, v1}, Lk53;-><init>(ILjava/math/BigInteger;Ls0;Lx0;)V

    goto :goto_2

    :cond_3
    new-instance v3, Lk53;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v0, v4, v1}, Lk53;-><init>(ILjava/math/BigInteger;Lx0;)V

    :goto_2
    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->algorithm:Ljava/lang/String;

    const-string v0, "DSTU4145"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Log8;

    new-instance v0, Loa;

    sget-object v4, Lpdb;->c:Ll1;

    invoke-virtual {v1}, Loqc;->j()Lp1;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Loa;-><init>(Ll1;Lx0;)V

    invoke-virtual {v3}, Lk53;->j()Lp1;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Log8;-><init>(Loa;Lx0;)V

    goto :goto_3

    :cond_4
    new-instance p0, Log8;

    new-instance v0, Loa;

    sget-object v4, Lwqc;->m5:Ll1;

    invoke-virtual {v1}, Loqc;->j()Lp1;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Loa;-><init>(Ll1;Lx0;)V

    invoke-virtual {v3}, Lk53;->j()Lp1;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Log8;-><init>(Loa;Lx0;)V

    :goto_3
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lj1;->l(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public getParameters()Lh53;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lq43;->g(Ljava/security/spec/ECParameterSpec;)Lh53;

    move-result-object p0

    return-object p0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object p0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->d:Ljava/math/BigInteger;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->engineGetSpec()Lh53;

    move-result-object p0

    invoke-virtual {p0}, Lh53;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public setBagAttribute(Ll1;Lx0;)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->attrCarrier:Lxu7;

    invoke-virtual {p0, p1, p2}, Lxu7;->setBagAttribute(Ll1;Lx0;)V

    return-void
.end method

.method public setPointFormat(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->withCompression:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->algorithm:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;->engineGetSpec()Lh53;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lp53;->j(Ljava/lang/String;Ljava/math/BigInteger;Lh53;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
