.class public Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jce/interfaces/GOST3410PublicKey;


# static fields
.field static final serialVersionUID:J = -0x56c0189c9719fcd6L


# instance fields
.field private transient gost3410Spec:Lma4;

.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lka4;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jce/interfaces/GOST3410PublicKey;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/GOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/GOST3410PublicKey;->getParameters()Lma4;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    return-void
.end method

.method public constructor <init>(Lra4;Lka4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lra4;->c()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    return-void
.end method

.method public constructor <init>(Ls1a;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ls1a;->m()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->p()Lx0;

    move-result-object v0

    invoke-static {v0}, Lpa4;->o(Ljava/lang/Object;)Lpa4;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Ls1a;->p()Lp1;

    move-result-object p1

    check-cast p1, Lwp1;

    invoke-virtual {p1}, Lm1;->z()[B

    move-result-object p1

    array-length v1, p1

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    array-length v3, p1

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lka4;->e(Lpa4;)Lka4;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid info structure in GOST3410 public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lsa4;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p0, 0x0

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lka4;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, p1}, Lka4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    goto :goto_0

    :cond_0
    new-instance v0, Lka4;

    new-instance v1, Lqa4;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3, v4}, Lqa4;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1}, Lka4;-><init>(Lqa4;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    invoke-interface {v0}, Lma4;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    invoke-interface {v0}, Lma4;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    invoke-interface {v0}, Lma4;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    invoke-interface {p0}, Lma4;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    invoke-interface {v0}, Lma4;->a()Lqa4;

    move-result-object v0

    invoke-virtual {v0}, Lqa4;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    invoke-interface {v0}, Lma4;->a()Lqa4;

    move-result-object v0

    invoke-virtual {v0}, Lqa4;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    invoke-interface {v0}, Lma4;->a()Lqa4;

    move-result-object v0

    invoke-virtual {v0}, Lqa4;->a()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "GOST3410"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 8

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    if-nez v2, :cond_0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    new-array v2, v2, [B

    goto :goto_1

    :cond_0
    array-length v2, v0

    goto :goto_0

    :goto_1
    array-length v3, v2

    if-eq v1, v3, :cond_1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    aget-byte v3, v0, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    instance-of v1, v0, Lka4;

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lma4;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ls1a;

    new-instance v1, Loa;

    sget-object v3, Lwl1;->l:Ll1;

    new-instance v4, Lpa4;

    new-instance v5, Ll1;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    invoke-interface {v6}, Lma4;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ll1;-><init>(Ljava/lang/String;)V

    new-instance v6, Ll1;

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    invoke-interface {v7}, Lma4;->d()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ll1;-><init>(Ljava/lang/String;)V

    new-instance v7, Ll1;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    invoke-interface {p0}, Lma4;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v7, p0}, Ll1;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6, v7}, Lpa4;-><init>(Ll1;Ll1;Ll1;)V

    invoke-direct {v1, v3, v4}, Loa;-><init>(Ll1;Lx0;)V

    new-instance p0, Lwp1;

    invoke-direct {p0, v2}, Lwp1;-><init>([B)V

    invoke-direct {v0, v1, p0}, Ls1a;-><init>(Loa;Lx0;)V

    goto :goto_2

    :cond_2
    new-instance v0, Ls1a;

    new-instance v1, Loa;

    sget-object v3, Lwl1;->l:Ll1;

    new-instance v4, Lpa4;

    new-instance v5, Ll1;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    invoke-interface {v6}, Lma4;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ll1;-><init>(Ljava/lang/String;)V

    new-instance v6, Ll1;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    invoke-interface {p0}, Lma4;->d()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v6, p0}, Ll1;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lpa4;-><init>(Ll1;Ll1;)V

    invoke-direct {v1, v3, v4}, Loa;-><init>(Ll1;Lx0;)V

    new-instance p0, Lwp1;

    invoke-direct {p0, v2}, Lwp1;-><init>([B)V

    invoke-direct {v0, v1, p0}, Ls1a;-><init>(Loa;Lx0;)V

    goto :goto_2

    :cond_3
    new-instance v0, Ls1a;

    new-instance p0, Loa;

    sget-object v1, Lwl1;->l:Ll1;

    invoke-direct {p0, v1}, Loa;-><init>(Ll1;)V

    new-instance v1, Lwp1;

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-direct {v0, p0, v1}, Ls1a;-><init>(Loa;Lx0;)V

    :goto_2
    invoke-static {v0}, Lyf5;->e(Ls1a;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

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

.method public getParameters()Lma4;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    return-object p0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lma4;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "GOST3410"

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    invoke-static {p0}, Lta4;->b(Ljava/security/PublicKey;)Ldj;

    move-result-object p0

    check-cast p0, Lra4;

    invoke-virtual {p0}, Lha4;->b()Lla4;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lua4;->c(Ljava/lang/String;Ljava/math/BigInteger;Lla4;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
