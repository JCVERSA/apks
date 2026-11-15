.class public Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;
.implements Lorg/bouncycastle/pqc/jcajce/interfaces/LMSPrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x76ea24cf15920952L


# instance fields
.field private transient attributes:Lt1;

.field private transient keyParams:Lii5;


# direct methods
.method public constructor <init>(Lii5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;->keyParams:Lii5;

    return-void
.end method

.method public constructor <init>(Log8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;->init(Log8;)V

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

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;->attributes:Lt1;

    invoke-static {p1}, Lng8;->b(Log8;)Ldj;

    move-result-object p1

    check-cast p1, Lii5;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;->keyParams:Lii5;

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

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;->init(Log8;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;->getEncoded()[B

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
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;->keyParams:Lii5;

    invoke-virtual {p0}, Lii5;->getEncoded()[B

    move-result-object p0

    iget-object p1, p1, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;->keyParams:Lii5;

    invoke-virtual {p1}, Lii5;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Lci;->b([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unable to perform equals"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public extractKeyShard(I)Lorg/bouncycastle/pqc/jcajce/interfaces/LMSPrivateKey;
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;->keyParams:Lii5;

    instance-of v0, p0, Lji5;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;

    check-cast p0, Lji5;

    invoke-virtual {p0, p1}, Lji5;->c(I)Lji5;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;-><init>(Lii5;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;

    check-cast p0, Lcm4;

    invoke-virtual {p0, p1}, Lcm4;->b(I)Lcm4;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;-><init>(Lii5;)V

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "LMS"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;->keyParams:Lii5;

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;->attributes:Lt1;

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

.method public getIndex()J
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;->getUsagesRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;->keyParams:Lii5;

    instance-of v0, p0, Lji5;

    if-eqz v0, :cond_0

    check-cast p0, Lji5;

    invoke-virtual {p0}, Lji5;->h()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_0
    check-cast p0, Lcm4;

    invoke-virtual {p0}, Lcm4;->c()J

    move-result-wide v0

    return-wide v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "key exhausted"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKeyParams()Lcw0;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;->keyParams:Lii5;

    return-object p0
.end method

.method public getLevels()I
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;->keyParams:Lii5;

    instance-of v0, p0, Lji5;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    check-cast p0, Lcm4;

    invoke-virtual {p0}, Lcm4;->g()I

    move-result p0

    return p0
.end method

.method public getUsagesRemaining()J
    .locals 2

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;->keyParams:Lii5;

    instance-of v0, p0, Lji5;

    if-eqz v0, :cond_0

    check-cast p0, Lji5;

    invoke-virtual {p0}, Lji5;->p()J

    move-result-wide v0

    return-wide v0

    :cond_0
    check-cast p0, Lcm4;

    invoke-virtual {p0}, Lcm4;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;->keyParams:Lii5;

    invoke-virtual {p0}, Lii5;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lci;->v([B)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unable to calculate hashCode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
