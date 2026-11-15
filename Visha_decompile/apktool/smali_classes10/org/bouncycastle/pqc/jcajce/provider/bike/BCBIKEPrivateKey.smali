.class public Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;
.implements Lorg/bouncycastle/pqc/jcajce/interfaces/BIKEKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient attributes:Lt1;

.field private transient params:Lw40;


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

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;->init(Log8;)V

    return-void
.end method

.method public constructor <init>(Lw40;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;->params:Lw40;

    return-void
.end method

.method private init(Log8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Log8;->m()Lt1;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;->attributes:Lt1;

    invoke-static {p1}, Lng8;->b(Log8;)Ldj;

    move-result-object p1

    check-cast p1, Lw40;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;->params:Lw40;

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

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;->init(Log8;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;->getEncoded()[B

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
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;->params:Lw40;

    invoke-virtual {p0}, Lw40;->getEncoded()[B

    move-result-object p0

    iget-object p1, p1, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;->params:Lw40;

    invoke-virtual {p1}, Lw40;->getEncoded()[B

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

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;->params:Lw40;

    invoke-virtual {p0}, Lt40;->b()Lv40;

    move-result-object p0

    invoke-virtual {p0}, Lv40;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lu0a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEncoded()[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;->params:Lw40;

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;->attributes:Lt1;

    invoke-static {v0, p0}, Lpg8;->a(Ldj;Lt1;)Log8;

    move-result-object p0

    invoke-virtual {p0}, Lj1;->getEncoded()[B

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

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public getKeyParams()Lw40;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;->params:Lw40;

    return-object p0
.end method

.method public getParameterSpec()Lu40;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;->params:Lw40;

    invoke-virtual {p0}, Lt40;->b()Lv40;

    move-result-object p0

    invoke-virtual {p0}, Lv40;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lu40;->a(Ljava/lang/String;)Lu40;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;->params:Lw40;

    invoke-virtual {p0}, Lw40;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lci;->v([B)I

    move-result p0

    return p0
.end method
