.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lorg/bouncycastle/jce/interfaces/ECPublicKey;


# static fields
.field static final serialVersionUID:J = 0x61823879c4d16022L


# instance fields
.field private algorithm:Ljava/lang/String;

.field private transient dstuParams:Lpr1;

.field private transient ecPublicKey:Ln53;

.field private transient ecSpec:Ljava/security/spec/ECParameterSpec;

.field private withCompression:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ln53;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Ln53;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ln53;Lh53;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lz43;->b()Lu43;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lu43;->a()Lt43;

    move-result-object p1

    invoke-virtual {v0}, Lu43;->e()[B

    move-result-object p3

    invoke-static {p1, p3}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lu43;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lh53;->a()Lt43;

    move-result-object p1

    invoke-virtual {p3}, Lh53;->e()[B

    move-result-object v0

    invoke-static {p1, v0}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1, p3}, Lq43;->h(Ljava/security/spec/EllipticCurve;Lh53;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    goto :goto_0

    :goto_1
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Ln53;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ln53;Ljava/security/spec/ECParameterSpec;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lz43;->b()Lu43;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Ln53;

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lu43;->a()Lt43;

    move-result-object p1

    invoke-virtual {v0}, Lu43;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lu43;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPublicKeySpec;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ln53;

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    invoke-static {v0, p1}, Lq43;->e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Li53;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-static {v0, v2}, Lq43;->l(Lqj8;Ljava/security/spec/ECParameterSpec;)Lu43;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ln53;-><init>(Li53;Lu43;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Ln53;

    return-void
.end method

.method public constructor <init>(Lo53;Lqj8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "DSTU4145"

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Ln53;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Ln53;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->withCompression:Z

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->withCompression:Z

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->dstuParams:Lpr1;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->dstuParams:Lpr1;

    return-void
.end method

.method public constructor <init>(Ls1a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->populateFromPubKeyInfo(Ls1a;)V

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

.method private populateFromPubKeyInfo(Ls1a;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ls1a;->o()Ls0;

    move-result-object v1

    const-string v2, "DSTU4145"

    iput-object v2, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

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

    invoke-virtual/range {p1 .. p1}, Ls1a;->m()Loa;

    move-result-object v2

    invoke-virtual {v2}, Loa;->m()Ll1;

    move-result-object v2

    sget-object v3, Lpdb;->b:Ll1;

    invoke-virtual {v2, v3}, Lp1;->s(Lp1;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->reverseBytes([B)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ls1a;->m()Loa;

    move-result-object v2

    invoke-virtual {v2}, Loa;->p()Lx0;

    move-result-object v2

    invoke-static {v2}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ls1;->A(I)Lx0;

    move-result-object v4

    instance-of v4, v4, Lg1;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-static {v2}, Lqqc;->p(Ljava/lang/Object;)Lqqc;

    move-result-object v2

    new-instance v3, Lh53;

    invoke-virtual {v2}, Lqqc;->m()Lt43;

    move-result-object v7

    invoke-virtual {v2}, Lqqc;->n()Li53;

    move-result-object v8

    invoke-virtual {v2}, Lqqc;->q()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v2}, Lqqc;->o()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2}, Lqqc;->r()[B

    move-result-object v11

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lh53;-><init>(Lt43;Li53;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto/16 :goto_1

    :cond_1
    invoke-static {v2}, Lpr1;->p(Ljava/lang/Object;)Lpr1;

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->dstuParams:Lpr1;

    invoke-virtual {v2}, Lpr1;->r()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->dstuParams:Lpr1;

    invoke-virtual {v2}, Lpr1;->q()Ll1;

    move-result-object v2

    invoke-static {v2}, Lor1;->a(Ll1;)Lu43;

    move-result-object v3

    new-instance v4, Ld53;

    invoke-virtual {v2}, Ll1;->B()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lu43;->a()Lt43;

    move-result-object v8

    invoke-virtual {v3}, Lu43;->b()Li53;

    move-result-object v9

    invoke-virtual {v3}, Lu43;->d()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v3}, Lu43;->c()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v3}, Lu43;->e()[B

    move-result-object v12

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Ld53;-><init>(Ljava/lang/String;Lt43;Li53;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v3, v4

    :goto_0
    move-object v2, v5

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->dstuParams:Lpr1;

    invoke-virtual {v2}, Lpr1;->o()Lnr1;

    move-result-object v2

    invoke-virtual {v2}, Lnr1;->n()[B

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ls1a;->m()Loa;

    move-result-object v6

    invoke-virtual {v6}, Loa;->m()Ll1;

    move-result-object v6

    invoke-virtual {v6, v3}, Lp1;->s(Lp1;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {v0, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->reverseBytes([B)V

    :cond_3
    invoke-virtual {v2}, Lnr1;->o()Lmr1;

    move-result-object v6

    new-instance v15, Lt43$e;

    invoke-virtual {v6}, Lmr1;->q()I

    move-result v8

    invoke-virtual {v6}, Lmr1;->n()I

    move-result v9

    invoke-virtual {v6}, Lmr1;->o()I

    move-result v10

    invoke-virtual {v6}, Lmr1;->p()I

    move-result v11

    invoke-virtual {v2}, Lnr1;->m()Ljava/math/BigInteger;

    move-result-object v12

    new-instance v13, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v13, v6, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v14, 0x0

    const/4 v4, 0x0

    move-object v7, v15

    move-object v6, v15

    move-object v15, v4

    invoke-direct/range {v7 .. v15}, Lt43$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Lnr1;->p()[B

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ls1a;->m()Loa;

    move-result-object v7

    invoke-virtual {v7}, Loa;->m()Ll1;

    move-result-object v7

    invoke-virtual {v7, v3}, Lp1;->s(Lp1;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {v0, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->reverseBytes([B)V

    :cond_4
    new-instance v3, Lh53;

    invoke-static {v6, v4}, Lqr1;->a(Lt43;[B)Li53;

    move-result-object v4

    invoke-virtual {v2}, Lnr1;->r()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v3, v6, v4, v2}, Lh53;-><init>(Lt43;Li53;Ljava/math/BigInteger;)V

    goto :goto_0

    :goto_1
    invoke-virtual {v3}, Lh53;->a()Lt43;

    move-result-object v4

    invoke-virtual {v3}, Lh53;->e()[B

    move-result-object v6

    invoke-static {v4, v6}, Lq43;->b(Lt43;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v9

    iget-object v6, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->dstuParams:Lpr1;

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Lh53;->b()Li53;

    move-result-object v2

    invoke-static {v2}, Lq43;->f(Li53;)Ljava/security/spec/ECPoint;

    move-result-object v10

    iget-object v2, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->dstuParams:Lpr1;

    invoke-virtual {v2}, Lpr1;->r()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->dstuParams:Lpr1;

    invoke-virtual {v2}, Lpr1;->q()Ll1;

    move-result-object v2

    invoke-virtual {v2}, Ll1;->B()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Le53;

    invoke-virtual {v3}, Lh53;->d()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v3}, Lh53;->c()Ljava/math/BigInteger;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Le53;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Lh53;->d()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3}, Lh53;->c()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v2, v9, v10, v6, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_2

    :cond_6
    invoke-static {v2}, Lq43;->j(Lqqc;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    :goto_2
    iput-object v2, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    new-instance v2, Ln53;

    invoke-static {v4, v1}, Lqr1;->a(Lt43;[B)Li53;

    move-result-object v1

    iget-object v3, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-static {v5, v3}, Lq43;->l(Lqj8;Ljava/security/spec/ECParameterSpec;)Lu43;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ln53;-><init>(Li53;Lu43;)V

    iput-object v2, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Ln53;

    return-void

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "error recovering public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->populateFromPubKeyInfo(Ls1a;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public engineGetKeyParameters()Ln53;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Ln53;

    return-object p0
.end method

.method public engineGetSpec()Lh53;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Ln53;

    invoke-virtual {v0}, Ln53;->c()Li53;

    move-result-object v0

    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Ln53;

    invoke-virtual {v2}, Ln53;->c()Li53;

    move-result-object v2

    invoke-virtual {v0, v2}, Li53;->e(Li53;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->engineGetSpec()Lh53;

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->engineGetSpec()Lh53;

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

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getEncoded()[B
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->dstuParams:Lpr1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Le53;

    if-eqz v1, :cond_1

    new-instance v0, Lpr1;

    new-instance v1, Ll1;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Le53;

    invoke-virtual {v2}, Le53;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ll1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lpr1;-><init>(Ll1;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lq43;->a(Ljava/security/spec/EllipticCurve;)Lt43;

    move-result-object v2

    new-instance v0, Lqqc;

    new-instance v3, Lsqc;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v2, v1}, Lq43;->d(Lt43;Ljava/security/spec/ECPoint;)Li53;

    move-result-object v1

    iget-boolean v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->withCompression:Z

    invoke-direct {v3, v1, v4}, Lsqc;-><init>(Li53;Z)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lqqc;-><init>(Lt43;Lsqc;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v1, Loqc;

    invoke-direct {v1, v0}, Loqc;-><init>(Lqqc;)V

    move-object v0, v1

    :goto_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Ln53;

    invoke-virtual {p0}, Ln53;->c()Li53;

    move-result-object p0

    invoke-static {p0}, Lqr1;->b(Li53;)[B

    move-result-object p0

    :try_start_0
    new-instance v1, Ls1a;

    new-instance v2, Loa;

    sget-object v3, Lpdb;->c:Ll1;

    invoke-direct {v2, v3, v0}, Loa;-><init>(Ll1;Lx0;)V

    new-instance v0, Lwp1;

    invoke-direct {v0, p0}, Lwp1;-><init>([B)V

    invoke-direct {v1, v2, v0}, Ls1a;-><init>(Loa;Lx0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lyf5;->e(Ls1a;)[B

    move-result-object p0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "X.509"

    return-object p0
.end method

.method public getParameters()Lh53;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object p0
.end method

.method public getQ()Li53;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Ln53;

    invoke-virtual {v0}, Ln53;->c()Li53;

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez p0, :cond_0

    invoke-virtual {v0}, Li53;->k()Li53;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getSbox()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->dstuParams:Lpr1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lpr1;->m()[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lpr1;->n()[B

    move-result-object p0

    return-object p0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Ln53;

    invoke-virtual {p0}, Ln53;->c()Li53;

    move-result-object p0

    invoke-static {p0}, Lq43;->f(Li53;)Ljava/security/spec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Ln53;

    invoke-virtual {v0}, Ln53;->c()Li53;

    move-result-object v0

    invoke-virtual {v0}, Li53;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->engineGetSpec()Lh53;

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

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->withCompression:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Ln53;

    invoke-virtual {v1}, Ln53;->c()Li53;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->engineGetSpec()Lh53;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lp53;->k(Ljava/lang/String;Li53;Lh53;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
