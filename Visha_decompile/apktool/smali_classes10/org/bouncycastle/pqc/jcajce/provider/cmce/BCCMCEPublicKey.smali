.class public Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;
.implements Lorg/bouncycastle/pqc/jcajce/interfaces/CMCEKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient params:Ldp0;


# direct methods
.method public constructor <init>(Ldp0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;->params:Ldp0;

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

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;->init(Ls1a;)V

    return-void
.end method

.method private init(Ls1a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lik8;->a(Ls1a;)Ldj;

    move-result-object p1

    check-cast p1, Ldp0;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;->params:Ldp0;

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

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;->init(Ls1a;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;->getEncoded()[B

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
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;->params:Ldp0;

    invoke-virtual {p0}, Ldp0;->getEncoded()[B

    move-result-object p0

    iget-object p1, p1, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;->params:Ldp0;

    invoke-virtual {p1}, Ldp0;->getEncoded()[B

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

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;->params:Ldp0;

    invoke-virtual {p0}, Lxo0;->b()Lzo0;

    move-result-object p0

    invoke-virtual {p0}, Lzo0;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lu0a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEncoded()[B
    .locals 0

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;->params:Ldp0;

    invoke-static {p0}, Lt1a;->a(Ldj;)Ls1a;

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

    const-string p0, "X.509"

    return-object p0
.end method

.method public getKeyParams()Ldp0;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;->params:Ldp0;

    return-object p0
.end method

.method public getParameterSpec()Lyo0;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;->params:Ldp0;

    invoke-virtual {p0}, Lxo0;->b()Lzo0;

    move-result-object p0

    invoke-virtual {p0}, Lzo0;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyo0;->a(Ljava/lang/String;)Lyo0;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;->params:Ldp0;

    invoke-virtual {p0}, Ldp0;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lci;->v([B)I

    move-result p0

    return p0
.end method
