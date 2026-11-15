.class public Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/jcajce/interfaces/FalconPrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient algorithm:Ljava/lang/String;

.field private transient attributes:Lt1;

.field private transient encoding:[B

.field private transient params:Lwo3;


# direct methods
.method public constructor <init>(Log8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->init(Log8;)V

    return-void
.end method

.method public constructor <init>(Lwo3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->init(Lwo3;Lt1;)V

    return-void
.end method

.method private init(Log8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lng8;->b(Log8;)Ldj;

    move-result-object v0

    check-cast v0, Lwo3;

    invoke-virtual {p1}, Log8;->m()Lt1;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->init(Lwo3;Lt1;)V

    return-void
.end method

.method private init(Lwo3;Lt1;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->attributes:Lt1;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->params:Lwo3;

    invoke-virtual {p1}, Lso3;->b()Luo3;

    move-result-object p1

    invoke-virtual {p1}, Luo3;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu0a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->algorithm:Ljava/lang/String;

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

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->init(Log8;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Lci;->b([B[B)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->encoding:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->params:Lwo3;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->attributes:Lt1;

    invoke-static {v0, v1}, Lxf5;->a(Ldj;Lt1;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->encoding:[B

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->encoding:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public getKeyParams()Lwo3;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->params:Lwo3;

    return-object p0
.end method

.method public getParameterSpec()Lto3;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->params:Lwo3;

    invoke-virtual {p0}, Lso3;->b()Luo3;

    move-result-object p0

    invoke-virtual {p0}, Luo3;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lto3;->a(Ljava/lang/String;)Lto3;

    move-result-object p0

    return-object p0
.end method

.method public getPublicKey()Lorg/bouncycastle/pqc/jcajce/interfaces/FalconPublicKey;
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPublicKey;

    new-instance v1, Lyo3;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->params:Lwo3;

    invoke-virtual {v2}, Lso3;->b()Luo3;

    move-result-object v2

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->params:Lwo3;

    invoke-virtual {p0}, Lwo3;->d()[B

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lyo3;-><init>(Luo3;[B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPublicKey;-><init>(Lyo3;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lci;->v([B)I

    move-result p0

    return p0
.end method
