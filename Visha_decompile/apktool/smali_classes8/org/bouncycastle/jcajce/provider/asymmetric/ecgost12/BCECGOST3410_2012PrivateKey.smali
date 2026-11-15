.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;
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

.field private transient gostParams:Lpa4;

.field private transient publicKey:Ls0;

.field private withCompression:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lxu7;

    invoke-direct {v0}, Lxu7;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lxu7;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ll53;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lxu7;

    invoke-direct {v0}, Lxu7;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lxu7;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Ll53;->c()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ll53;Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;Lh53;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lxu7;

    invoke-direct {v0}, Lxu7;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lxu7;

    invoke-virtual {p2}, Lz43;->b()Lu43;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Ll53;->c()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

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
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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
    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->getGostParams()Lpa4;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->gostParams:Lpa4;

    invoke-direct {p0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getPublicKeyDetails(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;)Ls0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->publicKey:Ls0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ll53;Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;Ljava/security/spec/ECParameterSpec;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lxu7;

    invoke-direct {v0}, Lxu7;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lxu7;

    invoke-virtual {p2}, Lz43;->b()Lu43;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Ll53;->c()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

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

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->getGostParams()Lpa4;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->gostParams:Lpa4;

    invoke-direct {p0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getPublicKeyDetails(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;)Ls0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->publicKey:Ls0;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lxu7;

    invoke-direct {v0}, Lxu7;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lxu7;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPrivateKeySpec;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lxu7;

    invoke-direct {v0}, Lxu7;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lxu7;

    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Lm53;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "ECGOST3410-2012"

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    new-instance p1, Lxu7;

    invoke-direct {p1}, Lxu7;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lxu7;

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

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lxu7;

    invoke-direct {v0}, Lxu7;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lxu7;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->populateFromPrivKeyInfo(Log8;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lxu7;

    invoke-direct {v0}, Lxu7;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lxu7;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->withCompression:Z

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->withCompression:Z

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lxu7;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lxu7;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->publicKey:Ls0;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->publicKey:Ls0;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->gostParams:Lpa4;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->gostParams:Lpa4;

    return-void
.end method

.method private extractBytes([BIILjava/math/BigInteger;)V
    .locals 3

    invoke-virtual {p4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    array-length p4, p0

    const/4 v0, 0x0

    if-ge p4, p2, :cond_0

    new-array p4, p2, [B

    array-length v1, p0

    sub-int v1, p2, v1

    array-length v2, p0

    invoke-static {p0, v0, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p4

    :cond_0
    :goto_0
    if-eq v0, p2, :cond_1

    add-int p4, p3, v0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    aget-byte v1, p0, v1

    aput-byte v1, p1, p4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getPublicKeyDetails(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;)Ls0;
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Ls1a;->n(Ljava/lang/Object;)Ls1a;

    move-result-object p0

    invoke-virtual {p0}, Ls1a;->o()Ls0;

    move-result-object p0

    return-object p0
.end method

.method private populateFromPrivKeyInfo(Log8;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Log8;->p()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->p()Lx0;

    move-result-object v0

    invoke-interface {v0}, Lx0;->j()Lp1;

    move-result-object v0

    instance-of v1, v0, Ls1;

    if-eqz v1, :cond_3

    invoke-static {v0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object v0

    invoke-virtual {v0}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_3

    invoke-virtual {p1}, Log8;->p()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->p()Lx0;

    move-result-object v0

    invoke-static {v0}, Lpa4;->o(Ljava/lang/Object;)Lpa4;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->gostParams:Lpa4;

    invoke-virtual {v0}, Lpa4;->p()Ll1;

    move-result-object v0

    invoke-static {v0}, Ly43;->l(Ll1;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx43;->a(Ljava/lang/String;)Ld53;

    move-result-object v0

    invoke-virtual {v0}, Lh53;->a()Lt43;

    move-result-object v1

    invoke-virtual {v0}, Lh53;->e()[B

    move-result-object v2

    invoke-static {v1, v2}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v5

    new-instance v1, Le53;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->gostParams:Lpa4;

    invoke-virtual {v2}, Lpa4;->p()Ll1;

    move-result-object v2

    invoke-static {v2}, Ly43;->l(Ll1;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lh53;->b()Li53;

    move-result-object v2

    invoke-static {v2}, Lq43;->f(Li53;)Ljava/security/spec/ECPoint;

    move-result-object v6

    invoke-virtual {v0}, Lh53;->d()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, Lh53;->c()Ljava/math/BigInteger;

    move-result-object v8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Le53;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Log8;->o()Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Log8;->u()Lx0;

    move-result-object p1

    instance-of v0, p1, Lg1;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object p1

    invoke-virtual {p1}, Lg1;->z()Ljava/math/BigInteger;

    move-result-object p1

    goto/16 :goto_3

    :cond_1
    invoke-static {p1}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object p1

    invoke-virtual {p1}, Lm1;->z()[B

    move-result-object p1

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Lci;->E([B)[B

    move-result-object p1

    invoke-direct {v0, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    goto/16 :goto_4

    :cond_2
    :goto_0
    new-instance p1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    invoke-static {v0}, Lci;->E([B)[B

    move-result-object v0

    invoke-direct {p1, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p1}, Log8;->p()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->p()Lx0;

    move-result-object v0

    invoke-static {v0}, Loqc;->m(Ljava/lang/Object;)Loqc;

    move-result-object v0

    invoke-virtual {v0}, Loqc;->p()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Loqc;->n()Lp1;

    move-result-object v0

    invoke-static {v0}, Ll1;->D(Ljava/lang/Object;)Ll1;

    move-result-object v0

    invoke-static {v0}, Lp53;->f(Ll1;)Lqqc;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {v0}, Ly43;->k(Ll1;)Lqqc;

    move-result-object v1

    invoke-virtual {v1}, Lqqc;->m()Lt43;

    move-result-object v2

    invoke-virtual {v1}, Lqqc;->r()[B

    move-result-object v3

    invoke-static {v2, v3}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v6

    new-instance v2, Le53;

    invoke-static {v0}, Ly43;->l(Ll1;)Ljava/lang/String;

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

    goto :goto_1

    :cond_4
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

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Loqc;->o()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_2

    :cond_6
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

    :goto_1
    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_2
    invoke-virtual {p1}, Log8;->u()Lx0;

    move-result-object p1

    instance-of v0, p1, Lg1;

    if-eqz v0, :cond_7

    invoke-static {p1}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object p1

    invoke-virtual {p1}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    goto :goto_4

    :cond_7
    invoke-static {p1}, Lk53;->m(Ljava/lang/Object;)Lk53;

    move-result-object p1

    invoke-virtual {p1}, Lk53;->n()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lk53;->p()Ls0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->publicKey:Ls0;

    :goto_4
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

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->populateFromPrivKeyInfo(Log8;)V

    new-instance p1, Lxu7;

    invoke-direct {p1}, Lxu7;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lxu7;

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

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public engineGetSpec()Lh53;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->engineGetSpec()Lh53;

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->engineGetSpec()Lh53;

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

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getBagAttribute(Ll1;)Lx0;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lxu7;

    invoke-virtual {p0, p1}, Lxu7;->getBagAttribute(Ll1;)Lx0;

    move-result-object p0

    return-object p0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lxu7;

    invoke-virtual {p0}, Lxu7;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getD()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getEncoded()[B
    .locals 12

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lwv8;->h:Ll1;

    goto :goto_1

    :cond_1
    sget-object v1, Lwv8;->g:Ll1;

    :goto_1
    if-eqz v0, :cond_2

    const/16 v0, 0x40

    goto :goto_2

    :cond_2
    const/16 v0, 0x20

    :goto_2
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->gostParams:Lpa4;

    const-string v4, "DER"

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    new-array v3, v0, [B

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {p0, v3, v0, v2, v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->extractBytes([BIILjava/math/BigInteger;)V

    :try_start_0
    new-instance v0, Log8;

    new-instance v2, Loa;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->gostParams:Lpa4;

    invoke-direct {v2, v1, p0}, Loa;-><init>(Ll1;Lx0;)V

    new-instance p0, Lwp1;

    invoke-direct {p0, v3}, Lwp1;-><init>([B)V

    invoke-direct {v0, v2, p0}, Log8;-><init>(Loa;Lx0;)V

    invoke-virtual {v0, v4}, Lj1;->l(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v5

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v2, v0, Le53;

    if-eqz v2, :cond_5

    check-cast v0, Le53;

    invoke-virtual {v0}, Le53;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp53;->g(Ljava/lang/String;)Ll1;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ll1;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Le53;

    invoke-virtual {v2}, Le53;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ll1;-><init>(Ljava/lang/String;)V

    :cond_4
    new-instance v2, Loqc;

    invoke-direct {v2, v0}, Loqc;-><init>(Ll1;)V

    :goto_3
    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lqj8;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v0, v3, v6}, Lp53;->i(Lqj8;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v0

    goto :goto_4

    :cond_5
    if-nez v0, :cond_6

    new-instance v2, Loqc;

    sget-object v0, Lup1;->c:Lup1;

    invoke-direct {v2, v0}, Loqc;-><init>(Lh1;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lqj8;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v5, v3}, Lp53;->i(Lqj8;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v0

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lq43;->a(Ljava/security/spec/EllipticCurve;)Lt43;

    move-result-object v7

    new-instance v0, Lqqc;

    new-instance v8, Lsqc;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {v7, v2}, Lq43;->d(Lt43;Ljava/security/spec/ECPoint;)Li53;

    move-result-object v2

    iget-boolean v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->withCompression:Z

    invoke-direct {v8, v2, v3}, Lsqc;-><init>(Li53;Z)V

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v9

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v11

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lqqc;-><init>(Lt43;Lsqc;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v2, Loqc;

    invoke-direct {v2, v0}, Loqc;-><init>(Lqqc;)V

    goto :goto_3

    :goto_4
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->publicKey:Ls0;

    if-eqz v3, :cond_7

    new-instance v3, Lk53;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v6

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->publicKey:Ls0;

    invoke-direct {v3, v0, v6, p0, v2}, Lk53;-><init>(ILjava/math/BigInteger;Ls0;Lx0;)V

    goto :goto_5

    :cond_7
    new-instance v3, Lk53;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v3, v0, p0, v2}, Lk53;-><init>(ILjava/math/BigInteger;Lx0;)V

    :goto_5
    :try_start_1
    new-instance p0, Log8;

    new-instance v0, Loa;

    invoke-virtual {v2}, Loqc;->j()Lp1;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Loa;-><init>(Ll1;Lx0;)V

    invoke-virtual {v3}, Lk53;->j()Lp1;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Log8;-><init>(Loa;Lx0;)V

    invoke-virtual {p0, v4}, Lj1;->l(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    return-object v5
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public getParameters()Lh53;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object p0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->engineGetSpec()Lh53;

    move-result-object p0

    invoke-virtual {p0}, Lh53;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public setBagAttribute(Ll1;Lx0;)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lxu7;

    invoke-virtual {p0, p1, p2}, Lxu7;->setBagAttribute(Ll1;Lx0;)V

    return-void
.end method

.method public setPointFormat(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->withCompression:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->engineGetSpec()Lh53;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lp53;->j(Ljava/lang/String;Ljava/math/BigInteger;Lh53;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
