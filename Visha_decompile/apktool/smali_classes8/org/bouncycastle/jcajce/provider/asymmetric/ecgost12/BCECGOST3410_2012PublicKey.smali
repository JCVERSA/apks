.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lorg/bouncycastle/jce/interfaces/ECPublicKey;


# static fields
.field static final serialVersionUID:J = 0x61823879c4d16022L


# instance fields
.field private algorithm:Ljava/lang/String;

.field private transient ecPublicKey:Ln53;

.field private transient ecSpec:Ljava/security/spec/ECParameterSpec;

.field private transient gostParams:Lpa4;

.field private withCompression:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ln53;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Ln53;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ln53;Lh53;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lz43;->b()Lu43;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Ln53;

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lu43;->a()Lt43;

    move-result-object p1

    invoke-virtual {v0}, Lu43;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lu43;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lh53;->a()Lt43;

    move-result-object p1

    invoke-virtual {p3}, Lh53;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1, p3}, Lq43;->h(Ljava/security/spec/EllipticCurve;Lh53;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ln53;Ljava/security/spec/ECParameterSpec;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lz43;->b()Lu43;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Ln53;

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lu43;->a()Lt43;

    move-result-object p1

    invoke-virtual {v0}, Lu43;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lu43;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ln53;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {v0, v2}, Lq43;->e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Li53;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-static {v2, p1}, Lq43;->l(Lqj8;Ljava/security/spec/ECParameterSpec;)Lu43;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ln53;-><init>(Li53;Lu43;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Ln53;

    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPublicKeySpec;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ln53;

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {v0, v2}, Lq43;->e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Li53;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-static {v2, p1}, Lq43;->l(Lqj8;Ljava/security/spec/ECParameterSpec;)Lu43;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ln53;-><init>(Li53;Lu43;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Ln53;

    return-void
.end method

.method public constructor <init>(Lo53;Lqj8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "ECGOST3410-2012"

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Ln53;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Ln53;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->withCompression:Z

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->withCompression:Z

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->gostParams:Lpa4;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->gostParams:Lpa4;

    return-void
.end method

.method public constructor <init>(Ls1a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->populateFromPubKeyInfo(Ls1a;)V

    return-void
.end method

.method private createSpec(Ljava/security/spec/EllipticCurve;Lu43;)Ljava/security/spec/ECParameterSpec;
    .locals 2

    new-instance p0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p2}, Lu43;->b()Li53;

    move-result-object v0

    invoke-static {v0}, Lq43;->f(Li53;)Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {p2}, Lu43;->d()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Lu43;->c()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object p0
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

.method private populateFromPubKeyInfo(Ls1a;)V
    .locals 10

    invoke-virtual {p1}, Ls1a;->m()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->m()Ll1;

    move-result-object v0

    invoke-virtual {p1}, Ls1a;->o()Ls0;

    move-result-object v1

    const-string v2, "ECGOST3410-2012"

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v1}, Ls0;->x()[B

    move-result-object v1

    invoke-static {v1}, Lp1;->t([B)Lp1;

    move-result-object v1

    check-cast v1, Lm1;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lm1;->z()[B

    move-result-object v1

    sget-object v2, Lwv8;->h:Ll1;

    invoke-virtual {v0, v2}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x4

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    :goto_1
    if-gt v4, v0, :cond_1

    sub-int v5, v0, v4

    aget-byte v5, v1, v5

    aput-byte v5, v3, v4

    add-int v5, v4, v0

    sub-int v6, v2, v4

    aget-byte v6, v1, v6

    aput-byte v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ls1a;->m()Loa;

    move-result-object p1

    invoke-virtual {p1}, Loa;->p()Lx0;

    move-result-object p1

    invoke-static {p1}, Lpa4;->o(Ljava/lang/Object;)Lpa4;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->gostParams:Lpa4;

    invoke-virtual {p1}, Lpa4;->p()Ll1;

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

    move-result-object v6

    new-instance v1, Ln53;

    invoke-virtual {v0, v3}, Lt43;->i([B)Li53;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lp53;->d(Lqj8;Lh53;)Lu43;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ln53;-><init>(Li53;Lu43;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Ln53;

    new-instance v0, Le53;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->gostParams:Lpa4;

    invoke-virtual {v1}, Lpa4;->p()Ll1;

    move-result-object v1

    invoke-static {v1}, Ly43;->l(Ll1;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lh53;->b()Li53;

    move-result-object v1

    invoke-static {v1}, Lq43;->f(Li53;)Ljava/security/spec/ECPoint;

    move-result-object v7

    invoke-virtual {p1}, Lh53;->d()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p1}, Lh53;->c()Ljava/math/BigInteger;

    move-result-object v9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Le53;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "error recovering public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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

    invoke-static {p1}, Ls1a;->n(Ljava/lang/Object;)Ls1a;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->populateFromPubKeyInfo(Ls1a;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public engineGetKeyParameters()Ln53;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Ln53;

    return-object p0
.end method

.method public engineGetSpec()Lh53;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Ln53;

    invoke-virtual {v0}, Ln53;->c()Li53;

    move-result-object v0

    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Ln53;

    invoke-virtual {v2}, Ln53;->c()Li53;

    move-result-object v2

    invoke-virtual {v0, v2}, Li53;->e(Li53;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->engineGetSpec()Lh53;

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->engineGetSpec()Lh53;

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

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getEncoded()[B
    .locals 13

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Ln53;

    invoke-virtual {v0}, Ln53;->c()Li53;

    move-result-object v0

    invoke-virtual {v0}, Li53;->f()Lw43;

    move-result-object v0

    invoke-virtual {v0}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Ln53;

    invoke-virtual {v1}, Ln53;->c()Li53;

    move-result-object v1

    invoke-virtual {v1}, Li53;->g()Lw43;

    move-result-object v1

    invoke-virtual {v1}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x100

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->getGostParams()Lpa4;

    move-result-object v3

    const/4 v5, 0x0

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v6, v3, Le53;

    if-eqz v6, :cond_4

    check-cast v3, Le53;

    invoke-virtual {v3}, Le53;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ly43;->m(Ljava/lang/String;)Ll1;

    move-result-object v3

    if-eqz v2, :cond_1

    new-instance v6, Lpa4;

    sget-object v7, Lwv8;->d:Ll1;

    invoke-direct {v6, v3, v7}, Lpa4;-><init>(Ll1;Ll1;)V

    goto :goto_2

    :cond_1
    sget-object v6, Lwv8;->p:Ll1;

    invoke-virtual {v3, v6}, Lp1;->s(Lp1;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lwv8;->q:Ll1;

    invoke-virtual {v3, v6}, Lp1;->s(Lp1;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lwv8;->r:Ll1;

    invoke-virtual {v3, v6}, Lp1;->s(Lp1;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance v6, Lpa4;

    sget-object v7, Lwv8;->c:Ll1;

    invoke-direct {v6, v3, v7}, Lpa4;-><init>(Ll1;Ll1;)V

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v6, Lpa4;

    invoke-direct {v6, v3, v5}, Lpa4;-><init>(Ll1;Ll1;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-static {v3}, Lq43;->a(Ljava/security/spec/EllipticCurve;)Lt43;

    move-result-object v7

    new-instance v3, Lqqc;

    new-instance v8, Lsqc;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v6}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v6

    invoke-static {v7, v6}, Lq43;->d(Lt43;Ljava/security/spec/ECPoint;)Li53;

    move-result-object v6

    iget-boolean v9, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->withCompression:Z

    invoke-direct {v8, v6, v9}, Lsqc;-><init>(Li53;Z)V

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v6}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v9

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v6}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v6

    int-to-long v10, v6

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v6}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v11

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lqqc;-><init>(Lt43;Lsqc;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v6, Loqc;

    invoke-direct {v6, v3}, Loqc;-><init>(Lqqc;)V

    :goto_2
    move-object v3, v6

    :cond_5
    const/16 v6, 0x40

    if-eqz v2, :cond_6

    sget-object v2, Lwv8;->h:Ll1;

    const/16 v7, 0x80

    move v12, v7

    move v7, v6

    move v6, v12

    goto :goto_3

    :cond_6
    sget-object v2, Lwv8;->g:Ll1;

    const/16 v7, 0x20

    :goto_3
    new-array v8, v6, [B

    div-int/lit8 v6, v6, 0x2

    invoke-direct {p0, v8, v6, v4, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->extractBytes([BIILjava/math/BigInteger;)V

    invoke-direct {p0, v8, v6, v7, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->extractBytes([BIILjava/math/BigInteger;)V

    :try_start_0
    new-instance p0, Ls1a;

    new-instance v0, Loa;

    invoke-direct {v0, v2, v3}, Loa;-><init>(Ll1;Lx0;)V

    new-instance v1, Lwp1;

    invoke-direct {v1, v8}, Lwp1;-><init>([B)V

    invoke-direct {p0, v0, v1}, Ls1a;-><init>(Loa;Lx0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lyf5;->e(Ls1a;)[B

    move-result-object p0

    return-object p0

    :catch_0
    return-object v5
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "X.509"

    return-object p0
.end method

.method public getGostParams()Lpa4;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->gostParams:Lpa4;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v0, v0, Le53;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Ln53;

    invoke-virtual {v0}, Ln53;->c()Li53;

    move-result-object v0

    invoke-virtual {v0}, Li53;->f()Lw43;

    move-result-object v0

    invoke-virtual {v0}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v1, Le53;

    invoke-virtual {v1}, Le53;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ly43;->m(Ljava/lang/String;)Ll1;

    move-result-object v1

    if-eqz v0, :cond_1

    new-instance v0, Lpa4;

    sget-object v2, Lwv8;->d:Ll1;

    invoke-direct {v0, v1, v2}, Lpa4;-><init>(Ll1;Ll1;)V

    :goto_1
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->gostParams:Lpa4;

    goto :goto_3

    :cond_1
    sget-object v0, Lwv8;->p:Ll1;

    invoke-virtual {v1, v0}, Lp1;->s(Lp1;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lwv8;->q:Ll1;

    invoke-virtual {v1, v0}, Lp1;->s(Lp1;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lwv8;->r:Ll1;

    invoke-virtual {v1, v0}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lpa4;

    sget-object v2, Lwv8;->c:Ll1;

    invoke-direct {v0, v1, v2}, Lpa4;-><init>(Ll1;Ll1;)V

    goto :goto_1

    :cond_3
    :goto_2
    new-instance v0, Lpa4;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpa4;-><init>(Ll1;Ll1;)V

    goto :goto_1

    :cond_4
    :goto_3
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->gostParams:Lpa4;

    return-object p0
.end method

.method public getParameters()Lh53;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object p0
.end method

.method public getQ()Li53;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Ln53;

    invoke-virtual {p0}, Ln53;->c()Li53;

    move-result-object p0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li53;->k()Li53;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Ln53;

    invoke-virtual {p0}, Ln53;->c()Li53;

    move-result-object p0

    invoke-static {p0}, Lq43;->f(Li53;)Ljava/security/spec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Ln53;

    invoke-virtual {v0}, Ln53;->c()Li53;

    move-result-object v0

    invoke-virtual {v0}, Li53;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->engineGetSpec()Lh53;

    move-result-object p0

    invoke-virtual {p0}, Lh53;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public setPointFormat(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->withCompression:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Ln53;

    invoke-virtual {v1}, Ln53;->c()Li53;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->engineGetSpec()Lh53;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lp53;->k(Ljava/lang/String;Li53;Lh53;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
