.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jcajce/interfaces/XDHPrivateKey;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private final attributes:[B

.field private final hasPublicKey:Z

.field transient hashCode:I

.field transient xdhPrivateKey:Ldj;

.field transient xdhPublicKey:Ldj;


# direct methods
.method public constructor <init>(Ldj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->hasPublicKey:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->attributes:[B

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPrivateKey:Ldj;

    instance-of v0, p1, Laqc;

    if-eqz v0, :cond_0

    check-cast p1, Laqc;

    invoke-virtual {p1}, Laqc;->b()Lbqc;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPublicKey:Ldj;

    goto :goto_1

    :cond_0
    check-cast p1, Lwpc;

    invoke-virtual {p1}, Lwpc;->b()Lxpc;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->calculateHashCode()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->hashCode:I

    return-void
.end method

.method public constructor <init>(Log8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Log8;->t()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->hasPublicKey:Z

    invoke-virtual {p1}, Log8;->m()Lt1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Log8;->m()Lt1;

    move-result-object v0

    invoke-virtual {v0}, Lj1;->getEncoded()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->attributes:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->populateFromPrivateKeyInfo(Log8;)V

    return-void
.end method

.method private calculateHashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPublicKey:Ldj;

    instance-of v1, v0, Lbqc;

    if-eqz v1, :cond_0

    check-cast v0, Lbqc;

    invoke-virtual {v0}, Lbqc;->getEncoded()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lxpc;

    invoke-virtual {v0}, Lxpc;->getEncoded()[B

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {v0}, Lci;->v([B)I

    move-result v0

    add-int/2addr p0, v0

    return p0
.end method

.method private getPrivateKeyInfo()Log8;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->attributes:[B

    invoke-static {v0}, Lt1;->y(Ljava/lang/Object;)Lt1;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPrivateKey:Ldj;

    invoke-static {v1, v0}, Lqg8;->a(Ldj;Lt1;)Log8;

    move-result-object v1

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->hasPublicKey:Z

    if-eqz p0, :cond_0

    const-string p0, "org.bouncycastle.pkcs8.v1_info_only"

    invoke-static {p0}, Lqi8;->c(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    new-instance p0, Log8;

    invoke-virtual {v1}, Log8;->p()Loa;

    move-result-object v2

    invoke-virtual {v1}, Log8;->u()Lx0;

    move-result-object v1

    invoke-direct {p0, v2, v1, v0}, Log8;-><init>(Loa;Lx0;Lt1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private populateFromPrivateKeyInfo(Log8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Log8;->q()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x38

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Log8;->u()Lx0;

    move-result-object v0

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p1}, Log8;->o()Lm1;

    move-result-object v0

    goto :goto_0

    :goto_2
    sget-object v1, Lg63;->c:Ll1;

    invoke-virtual {p1}, Log8;->p()Loa;

    move-result-object p1

    invoke-virtual {p1}, Loa;->m()Ll1;

    move-result-object p1

    invoke-virtual {v1, p1}, Lp1;->s(Lp1;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Laqc;

    invoke-direct {p1, v0}, Laqc;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPrivateKey:Ldj;

    invoke-virtual {p1}, Laqc;->b()Lbqc;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPublicKey:Ldj;

    goto :goto_4

    :cond_2
    new-instance p1, Lwpc;

    invoke-direct {p1, v0}, Lwpc;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPrivateKey:Ldj;

    invoke-virtual {p1}, Lwpc;->b()Lxpc;

    move-result-object p1

    goto :goto_3

    :goto_4
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->calculateHashCode()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->hashCode:I

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

    invoke-static {p1}, Log8;->n(Ljava/lang/Object;)Log8;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->populateFromPrivateKeyInfo(Log8;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public engineGetKeyParameters()Ldj;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPrivateKey:Ldj;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Ljava/security/PrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Ljava/security/PrivateKey;

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->getPrivateKeyInfo()Log8;

    move-result-object p0

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->getPrivateKeyInfo()Log8;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Log8;->n(Ljava/lang/Object;)Log8;

    move-result-object p1

    :goto_0
    if-eqz p0, :cond_4

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Log8;->p()Loa;

    move-result-object v0

    invoke-virtual {v0}, Lj1;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1}, Log8;->p()Loa;

    move-result-object v2

    invoke-virtual {v2}, Lj1;->getEncoded()[B

    move-result-object v2

    invoke-static {v0, v2}, Lci;->o([B[B)Z

    move-result v0

    invoke-virtual {p0}, Log8;->o()Lm1;

    move-result-object p0

    invoke-virtual {p0}, Lj1;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1}, Log8;->o()Lm1;

    move-result-object p1

    invoke-virtual {p1}, Lj1;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Lci;->o([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr p0, v0

    return p0

    :catch_0
    :cond_4
    :goto_1
    return v1
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
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPrivateKey:Ldj;

    instance-of p0, p0, Laqc;

    if-eqz p0, :cond_1

    const-string p0, "X448"

    goto :goto_0

    :cond_1
    const-string p0, "X25519"

    :goto_0
    return-object p0
.end method

.method public getEncoded()[B
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->getPrivateKeyInfo()Log8;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lj1;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public getPublicKey()Lorg/bouncycastle/jcajce/interfaces/XDHPublicKey;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPublicKey:Ldj;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;-><init>(Ldj;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->hashCode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->xdhPublicKey:Ldj;

    const-string v1, "Private Key"

    invoke-static {v1, v0, p0}, Lbmb;->c(Ljava/lang/String;Ljava/lang/String;Ldj;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
