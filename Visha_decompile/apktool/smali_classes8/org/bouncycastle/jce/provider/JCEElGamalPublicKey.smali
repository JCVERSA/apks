.class public Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jce/interfaces/ElGamalPublicKey;
.implements Ljavax/crypto/interfaces/DHPublicKey;


# static fields
.field static final serialVersionUID:J = 0x78e9d455552c6634L


# instance fields
.field private elSpec:Lw73;

.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(La83;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lw73;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lw73;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/interfaces/DHPublicKey;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    new-instance v0, Lw73;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lw73;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lw73;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    new-instance v0, Lw73;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lw73;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lw73;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jce/interfaces/ElGamalPublicKey;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/ElGamalPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/ElGamalPublicKey;->getParameters()Lw73;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lw73;

    return-void
.end method

.method public constructor <init>(Ls1a;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ls1a;->m()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->p()Lx0;

    move-result-object v0

    invoke-static {v0}, Lv73;->n(Ljava/lang/Object;)Lv73;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Ls1a;->p()Lp1;

    move-result-object p1

    check-cast p1, Lg1;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    new-instance p1, Lw73;

    invoke-virtual {v0}, Lv73;->o()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lv73;->m()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lw73;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lw73;

    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid info structure in DSA public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lz73;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p0, 0x0

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    new-instance v0, Lw73;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {v0, v1, p1}, Lw73;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lw73;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lw73;

    invoke-virtual {v0}, Lw73;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lw73;

    invoke-virtual {p0}, Lw73;->a()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "ElGamal"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 5

    new-instance v0, Loa;

    sget-object v1, Ln47;->l:Ll1;

    new-instance v2, Lv73;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lw73;

    invoke-virtual {v3}, Lw73;->b()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lw73;

    invoke-virtual {v4}, Lw73;->a()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lv73;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Loa;-><init>(Ll1;Lx0;)V

    new-instance v1, Lg1;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    invoke-direct {v1, p0}, Lg1;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Lyf5;->c(Loa;Lx0;)[B

    move-result-object p0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "X.509"

    return-object p0
.end method

.method public getParameters()Lw73;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lw73;

    return-object p0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 2

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lw73;

    invoke-virtual {v1}, Lw73;->b()Ljava/math/BigInteger;

    move-result-object v1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lw73;

    invoke-virtual {p0}, Lw73;->a()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    return-object p0
.end method
