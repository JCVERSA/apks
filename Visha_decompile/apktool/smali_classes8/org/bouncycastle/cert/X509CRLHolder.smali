.class public Lorg/bouncycastle/cert/X509CRLHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly93;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4b244cad1L


# instance fields
.field private transient extensions:Lgk3;

.field private transient isIndirect:Z

.field private transient issuerName:Lld4;

.field private transient x509CRL:Lns0;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/cert/X509CRLHolder;->parseStream(Ljava/io/InputStream;)Lns0;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509CRLHolder;-><init>(Lns0;)V

    return-void
.end method

.method public constructor <init>(Lns0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509CRLHolder;->init(Lns0;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/cert/X509CRLHolder;->parseStream(Ljava/io/InputStream;)Lns0;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509CRLHolder;-><init>(Lns0;)V

    return-void
.end method

.method private init(Lns0;)V
    .locals 2

    iput-object p1, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lns0;

    invoke-virtual {p1}, Lns0;->s()Lmca;

    move-result-object v0

    invoke-virtual {v0}, Lmca;->m()Lgk3;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Lgk3;

    invoke-static {v0}, Lorg/bouncycastle/cert/X509CRLHolder;->isIndirectCRL(Lgk3;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->isIndirect:Z

    new-instance v0, Lld4;

    new-instance v1, Lkd4;

    invoke-virtual {p1}, Lns0;->n()Lcqc;

    move-result-object p1

    invoke-direct {v1, p1}, Lkd4;-><init>(Lcqc;)V

    invoke-direct {v0, v1}, Lld4;-><init>(Lkd4;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->issuerName:Lld4;

    return-void
.end method

.method private static isIndirectCRL(Lgk3;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lbk3;->q:Ll1;

    invoke-virtual {p0, v1}, Lgk3;->n(Ll1;)Lbk3;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lbk3;->q()Lx0;

    move-result-object p0

    invoke-static {p0}, Lo55;->o(Ljava/lang/Object;)Lo55;

    move-result-object p0

    invoke-virtual {p0}, Lo55;->p()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static parseStream(Ljava/io/InputStream;)Lns0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "malformed data: "

    :try_start_0
    new-instance v1, Lf1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lf1;-><init>(Ljava/io/InputStream;Z)V

    invoke-virtual {v1}, Lf1;->D()Lp1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lns0;->m(Ljava/lang/Object;)Lns0;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v1, "no content found"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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

    invoke-static {p1}, Lns0;->m(Ljava/lang/Object;)Lns0;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509CRLHolder;->init(Lns0;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CRLHolder;->getEncoded()[B

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
    instance-of v0, p1, Lorg/bouncycastle/cert/X509CRLHolder;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/bouncycastle/cert/X509CRLHolder;

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lns0;

    iget-object p1, p1, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lns0;

    invoke-virtual {p0, p1}, Lj1;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Lgk3;

    invoke-static {p0}, Lls0;->b(Lgk3;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getEncoded()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lns0;

    invoke-virtual {p0}, Lj1;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public getExtension(Ll1;)Lbk3;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Lgk3;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lgk3;->n(Ll1;)Lbk3;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtensionOIDs()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Lgk3;

    invoke-static {p0}, Lls0;->c(Lgk3;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getExtensions()Lgk3;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Lgk3;

    return-object p0
.end method

.method public getIssuer()Lcqc;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lns0;

    invoke-virtual {p0}, Lns0;->n()Lcqc;

    move-result-object p0

    invoke-static {p0}, Lcqc;->o(Ljava/lang/Object;)Lcqc;

    move-result-object p0

    return-object p0
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lns0;

    invoke-virtual {p0}, Lns0;->o()Lmna;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmna;->m()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Lgk3;

    invoke-static {p0}, Lls0;->d(Lgk3;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Lgqc;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->issuerName:Lld4;

    iget-object v1, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lns0;

    invoke-virtual {v1}, Lns0;->p()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmca$b;

    invoke-virtual {v2}, Lmca$b;->o()Lg1;

    move-result-object v3

    invoke-virtual {v3, p1}, Lg1;->C(Ljava/math/BigInteger;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p1, Lgqc;

    iget-boolean p0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->isIndirect:Z

    invoke-direct {p1, v2, p0, v0}, Lgqc;-><init>(Lmca$b;ZLld4;)V

    return-object p1

    :cond_1
    iget-boolean v3, p0, Lorg/bouncycastle/cert/X509CRLHolder;->isIndirect:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lmca$b;->p()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lmca$b;->m()Lgk3;

    move-result-object v2

    sget-object v3, Lbk3;->r:Ll1;

    invoke-virtual {v2, v3}, Lgk3;->n(Ll1;)Lbk3;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lbk3;->q()Lx0;

    move-result-object v0

    invoke-static {v0}, Lld4;->o(Ljava/lang/Object;)Lld4;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRevokedCertificates()Ljava/util/Collection;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lns0;

    invoke-virtual {v0}, Lns0;->q()[Lmca$b;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->issuerName:Lld4;

    iget-object v2, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lns0;

    invoke-virtual {v2}, Lns0;->p()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmca$b;

    new-instance v4, Lgqc;

    iget-boolean v5, p0, Lorg/bouncycastle/cert/X509CRLHolder;->isIndirect:Z

    invoke-direct {v4, v3, v5, v0}, Lgqc;-><init>(Lmca$b;ZLld4;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lgqc;->a()Lld4;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lns0;

    invoke-virtual {p0}, Lns0;->t()Lmna;

    move-result-object p0

    invoke-virtual {p0}, Lmna;->m()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public hasExtensions()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Lgk3;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lns0;

    invoke-virtual {p0}, Lns0;->hashCode()I

    move-result p0

    return p0
.end method

.method public isAlternativeSignatureValid(Lkh1;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lns0;

    invoke-virtual {p0}, Lns0;->s()Lmca;

    move-result-object p0

    invoke-virtual {p0}, Lmca;->m()Lgk3;

    move-result-object v0

    invoke-static {v0}, Lfb;->m(Lgk3;)Lfb;

    move-result-object v0

    invoke-virtual {p0}, Lmca;->m()Lgk3;

    move-result-object p0

    invoke-static {p0}, Lgb;->m(Lgk3;)Lgb;

    :try_start_0
    invoke-virtual {v0}, Lfb;->j()Lp1;

    move-result-object p0

    invoke-static {p0}, Loa;->o(Ljava/lang/Object;)Loa;

    move-result-object p0

    invoke-interface {p1, p0}, Lkh1;->a(Loa;)Ljh1;

    const/4 p0, 0x0

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cert/CertException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to process signature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/cert/CertException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public isSignatureValid(Lkh1;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lns0;

    invoke-virtual {v0}, Lns0;->s()Lmca;

    move-result-object v0

    invoke-virtual {v0}, Lmca;->s()Loa;

    move-result-object v1

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lns0;

    invoke-virtual {p0}, Lns0;->r()Loa;

    move-result-object p0

    invoke-static {v1, p0}, Lls0;->e(Loa;Loa;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lorg/bouncycastle/cert/CertException;

    const-string p1, "signature invalid - algorithm identifier mismatch"

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/CertException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lmca;->s()Loa;

    move-result-object p0

    invoke-interface {p1, p0}, Lkh1;->a(Loa;)Ljh1;

    const/4 p0, 0x0

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cert/CertException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to process signature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/cert/CertException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public toASN1Structure()Lns0;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lns0;

    return-object p0
.end method
