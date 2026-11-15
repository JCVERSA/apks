.class public Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;
.implements Lorg/bouncycastle/pqc/jcajce/interfaces/SPHINCSKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient attributes:Lt1;

.field private transient params:Lyy8;

.field private transient treeDigest:Ll1;


# direct methods
.method public constructor <init>(Ll1;Lyy8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->treeDigest:Ll1;

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->params:Lyy8;

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

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->init(Log8;)V

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

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->attributes:Lt1;

    invoke-virtual {p1}, Log8;->p()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->p()Lx0;

    move-result-object v0

    invoke-static {v0}, Lny8;->m(Ljava/lang/Object;)Lny8;

    move-result-object v0

    invoke-virtual {v0}, Lny8;->n()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->m()Ll1;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->treeDigest:Ll1;

    invoke-static {p1}, Lng8;->b(Log8;)Ldj;

    move-result-object p1

    check-cast p1, Lyy8;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->params:Lyy8;

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

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->init(Log8;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->treeDigest:Ll1;

    iget-object v3, p1, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->treeDigest:Ll1;

    invoke-virtual {v1, v3}, Lp1;->s(Lp1;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->params:Lyy8;

    invoke-virtual {p0}, Lyy8;->c()[B

    move-result-object p0

    iget-object p1, p1, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->params:Lyy8;

    invoke-virtual {p1}, Lyy8;->c()[B

    move-result-object p1

    invoke-static {p0, p1}, Lci;->b([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "SPHINCS-256"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->params:Lyy8;

    invoke-virtual {v0}, Loy8;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->params:Lyy8;

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->attributes:Lt1;

    invoke-static {v0, p0}, Lpg8;->a(Ldj;Lt1;)Log8;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Loa;

    sget-object v1, Lav7;->r:Ll1;

    new-instance v2, Lny8;

    new-instance v3, Loa;

    iget-object v4, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->treeDigest:Ll1;

    invoke-direct {v3, v4}, Loa;-><init>(Ll1;)V

    invoke-direct {v2, v3}, Lny8;-><init>(Loa;)V

    invoke-direct {v0, v1, v2}, Loa;-><init>(Ll1;Lx0;)V

    new-instance v1, Log8;

    new-instance v2, Lwp1;

    iget-object v3, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->params:Lyy8;

    invoke-virtual {v3}, Lyy8;->c()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lwp1;-><init>([B)V

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->attributes:Lt1;

    invoke-direct {v1, v0, v2, p0}, Log8;-><init>(Loa;Lx0;Lt1;)V

    move-object p0, v1

    :goto_0
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

.method public getKeyData()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->params:Lyy8;

    invoke-virtual {p0}, Lyy8;->c()[B

    move-result-object p0

    return-object p0
.end method

.method public getKeyParams()Lcw0;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->params:Lyy8;

    return-object p0
.end method

.method public getTreeDigest()Ll1;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->treeDigest:Ll1;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->treeDigest:Ll1;

    invoke-virtual {v0}, Ll1;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->params:Lyy8;

    invoke-virtual {p0}, Lyy8;->c()[B

    move-result-object p0

    invoke-static {p0}, Lci;->v([B)I

    move-result p0

    mul-int/lit8 p0, p0, 0x25

    add-int/2addr v0, p0

    return v0
.end method
