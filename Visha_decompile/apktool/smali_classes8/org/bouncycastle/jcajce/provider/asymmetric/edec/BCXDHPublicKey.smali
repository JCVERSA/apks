.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jcajce/interfaces/XDHPublicKey;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field transient xdhPublicKey:Ldj;


# direct methods
.method public constructor <init>(Ldj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->xdhPublicKey:Ldj;

    return-void
.end method

.method public constructor <init>(Ls1a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->populateFromPubKeyInfo(Ls1a;)V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {p1, p2}, Lbmb;->b([B[B)Z

    move-result p1

    const-string v1, "raw key data not recognised"

    if-eqz p1, :cond_2

    array-length p1, p2

    sub-int/2addr p1, v0

    const/16 v2, 0x38

    if-ne p1, v2, :cond_0

    new-instance p1, Lbqc;

    invoke-direct {p1, p2, v0}, Lbqc;-><init>([BI)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->xdhPublicKey:Ldj;

    goto :goto_1

    :cond_0
    array-length p1, p2

    sub-int/2addr p1, v0

    const/16 v2, 0x20

    if-ne p1, v2, :cond_1

    new-instance p1, Lxpc;

    invoke-direct {p1, p2, v0}, Lxpc;-><init>([BI)V

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private populateFromPubKeyInfo(Ls1a;)V
    .locals 2

    invoke-virtual {p1}, Ls1a;->o()Ls0;

    move-result-object v0

    invoke-virtual {v0}, Ls0;->A()[B

    move-result-object v0

    sget-object v1, Lg63;->c:Ll1;

    invoke-virtual {p1}, Ls1a;->m()Loa;

    move-result-object p1

    invoke-virtual {p1}, Loa;->m()Ll1;

    move-result-object p1

    invoke-virtual {v1, p1}, Lp1;->s(Lp1;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lbqc;

    invoke-direct {p1, v0}, Lbqc;-><init>([B)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->xdhPublicKey:Ldj;

    goto :goto_1

    :cond_0
    new-instance p1, Lxpc;

    invoke-direct {p1, v0}, Lxpc;-><init>([B)V

    goto :goto_0

    :goto_1
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

    invoke-static {p1}, Ls1a;->n(Ljava/lang/Object;)Ls1a;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->populateFromPubKeyInfo(Ls1a;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public engineGetKeyParameters()Ldj;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->xdhPublicKey:Ldj;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Ljava/security/PublicKey;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Ljava/security/PublicKey;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p1, p0}, Lci;->b([B[B)Z

    move-result p0

    return p0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "org.bouncycastle.emulate.oracle"

    invoke-static {v0}, Lqi8;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "XDH"

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->xdhPublicKey:Ldj;

    instance-of p0, p0, Lbqc;

    if-eqz p0, :cond_1

    const-string p0, "X448"

    goto :goto_0

    :cond_1
    const-string p0, "X25519"

    :goto_0
    return-object p0
.end method

.method public getEncoded()[B
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->xdhPublicKey:Ldj;

    instance-of v0, v0, Lbqc;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lqf5;->a:[B

    array-length v2, v0

    add-int/lit8 v2, v2, 0x38

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->xdhPublicKey:Ldj;

    check-cast p0, Lbqc;

    array-length v0, v0

    invoke-virtual {p0, v2, v0}, Lbqc;->b([BI)V

    return-object v2

    :cond_0
    sget-object v0, Lqf5;->b:[B

    array-length v2, v0

    add-int/lit8 v2, v2, 0x20

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->xdhPublicKey:Ldj;

    check-cast p0, Lxpc;

    array-length v0, v0

    invoke-virtual {p0, v2, v0}, Lxpc;->b([BI)V

    return-object v2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "X.509"

    return-object p0
.end method

.method public getU()Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->getUEncoding()[B

    move-result-object p0

    invoke-static {p0}, Lci;->F([B)[B

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public getUEncoding()[B
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->xdhPublicKey:Ldj;

    instance-of v0, p0, Lbqc;

    if-eqz v0, :cond_0

    check-cast p0, Lbqc;

    invoke-virtual {p0}, Lbqc;->getEncoded()[B

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Lxpc;

    invoke-virtual {p0}, Lxpc;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lci;->v([B)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->xdhPublicKey:Ldj;

    const-string v1, "Public Key"

    invoke-static {v1, v0, p0}, Lbmb;->c(Ljava/lang/String;Ljava/lang/String;Ldj;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
