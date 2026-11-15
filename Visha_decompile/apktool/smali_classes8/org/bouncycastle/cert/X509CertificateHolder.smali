.class public Lorg/bouncycastle/cert/X509CertificateHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly93;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4b244cad1L


# instance fields
.field private transient extensions:Lgk3;

.field private transient x509Certificate:Lms0;


# direct methods
.method public constructor <init>(Lms0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->init(Lms0;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->parseBytes([B)Lms0;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>(Lms0;)V

    return-void
.end method

.method private init(Lms0;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    invoke-virtual {p1}, Lms0;->v()Lnca;

    move-result-object p1

    invoke-virtual {p1}, Lnca;->n()Lgk3;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Lgk3;

    return-void
.end method

.method private static parseBytes([B)Lms0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "malformed data: "

    :try_start_0
    invoke-static {p0}, Lls0;->f([B)Lp1;

    move-result-object p0

    invoke-static {p0}, Lms0;->n(Ljava/lang/Object;)Lms0;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

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

    invoke-static {p1}, Lms0;->n(Ljava/lang/Object;)Lms0;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->init(Lms0;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

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
    instance-of v0, p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    iget-object p1, p1, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    invoke-virtual {p0, p1}, Lj1;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Lgk3;

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

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    invoke-virtual {p0}, Lj1;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public getExtension(Ll1;)Lbk3;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Lgk3;

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

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Lgk3;

    invoke-static {p0}, Lls0;->c(Lgk3;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getExtensions()Lgk3;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Lgk3;

    return-object p0
.end method

.method public getIssuer()Lcqc;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    invoke-virtual {p0}, Lms0;->o()Lcqc;

    move-result-object p0

    invoke-static {p0}, Lcqc;->o(Ljava/lang/Object;)Lcqc;

    move-result-object p0

    return-object p0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Lgk3;

    invoke-static {p0}, Lls0;->d(Lgk3;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    invoke-virtual {p0}, Lms0;->m()Lmna;

    move-result-object p0

    invoke-virtual {p0}, Lmna;->m()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    invoke-virtual {p0}, Lms0;->s()Lmna;

    move-result-object p0

    invoke-virtual {p0}, Lmna;->m()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    invoke-virtual {p0}, Lms0;->p()Lg1;

    move-result-object p0

    invoke-virtual {p0}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getSignature()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    invoke-virtual {p0}, Lms0;->q()Ls0;

    move-result-object p0

    invoke-virtual {p0}, Ls0;->A()[B

    move-result-object p0

    return-object p0
.end method

.method public getSignatureAlgorithm()Loa;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    invoke-virtual {p0}, Lms0;->r()Loa;

    move-result-object p0

    return-object p0
.end method

.method public getSubject()Lcqc;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    invoke-virtual {p0}, Lms0;->t()Lcqc;

    move-result-object p0

    invoke-static {p0}, Lcqc;->o(Ljava/lang/Object;)Lcqc;

    move-result-object p0

    return-object p0
.end method

.method public getSubjectPublicKeyInfo()Ls1a;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    invoke-virtual {p0}, Lms0;->u()Ls1a;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    invoke-virtual {p0}, Lms0;->w()I

    move-result p0

    return p0
.end method

.method public getVersionNumber()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    invoke-virtual {p0}, Lms0;->w()I

    move-result p0

    return p0
.end method

.method public hasExtensions()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Lgk3;

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

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    invoke-virtual {p0}, Lj1;->hashCode()I

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

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    invoke-virtual {p0}, Lms0;->v()Lnca;

    move-result-object p0

    invoke-virtual {p0}, Lnca;->n()Lgk3;

    move-result-object v0

    invoke-static {v0}, Lfb;->m(Lgk3;)Lfb;

    move-result-object v0

    invoke-virtual {p0}, Lnca;->n()Lgk3;

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

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    invoke-virtual {v0}, Lms0;->v()Lnca;

    move-result-object v0

    invoke-virtual {v0}, Lnca;->s()Loa;

    move-result-object v1

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    invoke-virtual {p0}, Lms0;->r()Loa;

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
    invoke-virtual {v0}, Lnca;->s()Loa;

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

.method public isValidOn(Ljava/util/Date;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    invoke-virtual {v0}, Lms0;->s()Lmna;

    move-result-object v0

    invoke-virtual {v0}, Lmna;->m()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    invoke-virtual {p0}, Lms0;->m()Lmna;

    move-result-object p0

    invoke-virtual {p0}, Lmna;->m()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toASN1Structure()Lms0;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lms0;

    return-object p0
.end method
