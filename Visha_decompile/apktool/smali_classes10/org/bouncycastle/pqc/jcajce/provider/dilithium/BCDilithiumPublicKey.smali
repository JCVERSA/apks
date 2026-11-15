.class public Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/jcajce/interfaces/DilithiumPublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient algorithm:Ljava/lang/String;

.field private transient encoding:[B

.field private transient params:Lcc2;


# direct methods
.method public constructor <init>(Lcc2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->init(Lcc2;)V

    return-void
.end method

.method public constructor <init>(Ls1a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->init(Ls1a;)V

    return-void
.end method

.method private init(Lcc2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->params:Lcc2;

    invoke-virtual {p1}, Lyb2;->b()Lac2;

    move-result-object p1

    invoke-virtual {p1}, Lac2;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu0a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->algorithm:Ljava/lang/String;

    return-void
.end method

.method private init(Ls1a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lik8;->a(Ls1a;)Ldj;

    move-result-object p1

    check-cast p1, Lcc2;

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->init(Lcc2;)V

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

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->init(Ls1a;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->getEncoded()[B

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
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->getEncoded()[B

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

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->encoding:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->params:Lcc2;

    invoke-static {v0}, Lxf5;->c(Ldj;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->encoding:[B

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->encoding:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "X.509"

    return-object p0
.end method

.method public getKeyParams()Lcc2;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->params:Lcc2;

    return-object p0
.end method

.method public getParameterSpec()Lzb2;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->params:Lcc2;

    invoke-virtual {p0}, Lyb2;->b()Lac2;

    move-result-object p0

    invoke-virtual {p0}, Lac2;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzb2;->a(Ljava/lang/String;)Lzb2;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lci;->v([B)I

    move-result p0

    return p0
.end method
