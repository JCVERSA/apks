.class public Lorg/bouncycastle/jcajce/CompositePublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private final algorithmIdentifier:Ll1;

.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ll1;[Ljava/security/PublicKey;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/CompositePublicKey;->algorithmIdentifier:Ll1;

    if-eqz p2, :cond_1

    array-length p1, p2

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-object v1, p2, v0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/CompositePublicKey;->keys:Ljava/util/List;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "at least one public key must be provided for the composite public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ls1a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ls1a;->m()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->m()Ll1;

    move-result-object v0

    :try_start_0
    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants;->a:[Ll1;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "unable to create CompositePublicKey from SubjectPublicKeyInfo"

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;-><init>()V

    invoke-interface {v0, p1}, Lcj;->a(Ls1a;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/jcajce/CompositePublicKey;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/CompositePublicKey;->getPublicKeys()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/CompositePublicKey;->keys:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/CompositePublicKey;->getAlgorithmIdentifier()Ll1;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/CompositePublicKey;->algorithmIdentifier:Ll1;

    return-void

    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public varargs constructor <init>([Ljava/security/PublicKey;)V
    .locals 1

    .line 3
    sget-object v0, Lvp6;->Q:Ll1;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jcajce/CompositePublicKey;-><init>(Ll1;[Ljava/security/PublicKey;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/jcajce/CompositePublicKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lorg/bouncycastle/jcajce/CompositePublicKey;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/CompositePublicKey;->getAlgorithmIdentifier()Ll1;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/jcajce/CompositePublicKey;->algorithmIdentifier:Ll1;

    invoke-virtual {v1, v3}, Lp1;->s(Lp1;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/CompositePublicKey;->keys:Ljava/util/List;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/CompositePublicKey;->keys:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants;->d:Ljava/util/HashMap;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/CompositePublicKey;->algorithmIdentifier:Ll1;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAlgorithmIdentifier()Ll1;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/CompositePublicKey;->algorithmIdentifier:Ll1;

    return-object p0
.end method

.method public getEncoded()[B
    .locals 4

    new-instance v0, Ly0;

    invoke-direct {v0}, Ly0;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/CompositePublicKey;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/CompositePublicKey;->algorithmIdentifier:Ll1;

    sget-object v3, Lvp6;->Q:Ll1;

    invoke-virtual {v2, v3}, Lp1;->s(Lp1;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/jcajce/CompositePublicKey;->keys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Ls1a;->n(Ljava/lang/Object;)Ls1a;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ly0;->a(Lx0;)V

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/CompositePublicKey;->keys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Ls1a;->n(Ljava/lang/Object;)Ls1a;

    move-result-object v2

    invoke-virtual {v2}, Ls1a;->o()Ls0;

    move-result-object v2

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Ls1a;

    new-instance v2, Loa;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/CompositePublicKey;->algorithmIdentifier:Ll1;

    invoke-direct {v2, p0}, Loa;-><init>(Ll1;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    invoke-direct {v1, v2, p0}, Ls1a;-><init>(Loa;Lx0;)V

    const-string p0, "DER"

    invoke-virtual {v1, p0}, Lj1;->l(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to encode composite public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "X.509"

    return-object p0
.end method

.method public getPublicKeys()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/CompositePublicKey;->keys:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/CompositePublicKey;->keys:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    return p0
.end method
