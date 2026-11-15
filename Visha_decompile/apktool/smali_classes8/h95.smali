.class public Lh95;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/Set;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

.field public c:Ljava/security/SecureRandom;

.field public d:Loa;

.field public e:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lh95;->f:Ljava/util/Set;

    const-string v1, "DILITHIUM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "SPHINCS+"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "SPHINCSPlus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lz12;

    invoke-direct {v1}, Lz12;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Li95;)V

    iput-object v0, p0, Lh95;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    iput-object p1, p0, Lh95;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lh95;)Loa;
    .locals 0

    iget-object p0, p0, Lh95;->d:Loa;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/security/PrivateKey;)Lch1;
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/jcajce/CompositePrivateKey;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jcajce/CompositePrivateKey;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/CompositePrivateKey;->getAlgorithmIdentifier()Ll1;

    move-result-object v1

    sget-object v2, Lwp6;->Q:Ll1;

    invoke-virtual {v1, v2}, Lp1;->s(Lp1;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lh95;->c(Lorg/bouncycastle/jcajce/CompositePrivateKey;)Lch1;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lh95;->e:Ljava/security/spec/AlgorithmParameterSpec;

    if-nez v0, :cond_2

    sget-object v0, Lh95;->f:Ljava/util/Set;

    iget-object v1, p0, Lh95;->a:Ljava/lang/String;

    invoke-static {v1}, Lu0a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Log8;->n(Ljava/lang/Object;)Log8;

    move-result-object v0

    invoke-virtual {v0}, Log8;->p()Loa;

    move-result-object v0

    iput-object v0, p0, Lh95;->d:Loa;

    :goto_0
    iput-object v1, p0, Lh95;->e:Ljava/security/spec/AlgorithmParameterSpec;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance v0, Lj42;

    invoke-direct {v0}, Lj42;-><init>()V

    iget-object v2, p0, Lh95;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lj42;->b(Ljava/lang/String;)Loa;

    move-result-object v0

    iput-object v0, p0, Lh95;->d:Loa;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lh95;->d:Loa;

    iget-object v1, p0, Lh95;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->b(Loa;)Ljava/security/Signature;

    move-result-object v1

    iget-object v2, p0, Lh95;->c:Ljava/security/SecureRandom;

    if-eqz v2, :cond_3

    invoke-virtual {v1, p1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    :goto_2
    new-instance p1, Lh95$a;

    invoke-direct {p1, p0, v1, v0}, Lh95$a;-><init>(Lh95;Ljava/security/Signature;Loa;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_3
    new-instance p1, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot create signer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final c(Lorg/bouncycastle/jcajce/CompositePrivateKey;)Lch1;
    .locals 8

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/CompositePrivateKey;->getPrivateKeys()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lh95;->d:Loa;

    invoke-virtual {v0}, Loa;->p()Lx0;

    move-result-object v0

    invoke-static {v0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object v0

    invoke-virtual {v0}, Ls1;->size()I

    move-result v1

    new-array v2, v1, [Ljava/security/Signature;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Ls1;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    iget-object v5, p0, Lh95;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {v0, v4}, Ls1;->A(I)Lx0;

    move-result-object v6

    invoke-static {v6}, Loa;->o(Ljava/lang/Object;)Loa;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->b(Loa;)Ljava/security/Signature;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v6, p0, Lh95;->c:Ljava/security/SecureRandom;

    if-eqz v6, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/PrivateKey;

    iget-object v7, p0, Lh95;->c:Ljava/security/SecureRandom;

    invoke-virtual {v5, v6, v7}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/PrivateKey;

    invoke-virtual {v5, v6}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    aget-object p1, v2, v3

    invoke-static {p1}, Ltt7;->a(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object p1

    const/4 v0, 0x1

    :goto_2
    if-eq v0, v1, :cond_2

    new-instance v3, Llea;

    aget-object v4, v2, v0

    invoke-static {v4}, Ltt7;->a(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Llea;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    move-object p1, v3

    goto :goto_2

    :cond_2
    new-instance v0, Lh95$b;

    invoke-direct {v0, p0, p1, v2}, Lh95$b;-><init>(Lh95;Ljava/io/OutputStream;[Ljava/security/Signature;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_3
    new-instance p1, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot create signer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
