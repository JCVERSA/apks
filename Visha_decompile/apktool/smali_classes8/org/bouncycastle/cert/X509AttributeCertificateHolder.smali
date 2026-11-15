.class public Lorg/bouncycastle/cert/X509AttributeCertificateHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly93;
.implements Ljava/io/Serializable;


# static fields
.field private static EMPTY_ARRAY:[Lel; = null

.field private static final serialVersionUID:J = 0x4b244cad1L


# instance fields
.field private transient attrCert:Lgl;

.field private transient extensions:Lgk3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lel;

    sput-object v0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->EMPTY_ARRAY:[Lel;

    return-void
.end method

.method public constructor <init>(Lgl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->init(Lgl;)V

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
    invoke-static {p1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->parseBytes([B)Lgl;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;-><init>(Lgl;)V

    return-void
.end method

.method private init(Lgl;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    invoke-virtual {p1}, Lgl;->m()Lil;

    move-result-object p1

    invoke-virtual {p1}, Lil;->o()Lgk3;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Lgk3;

    return-void
.end method

.method private static parseBytes([B)Lgl;
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

    invoke-static {p0}, Lgl;->n(Ljava/lang/Object;)Lgl;

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

    invoke-static {p1}, Lgl;->n(Ljava/lang/Object;)Lgl;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->init(Lgl;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->getEncoded()[B

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
    instance-of v0, p1, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    iget-object p1, p1, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    invoke-virtual {p0, p1}, Lj1;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAttributes()[Lel;
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    invoke-virtual {p0}, Lgl;->m()Lil;

    move-result-object p0

    invoke-virtual {p0}, Lil;->n()Ls1;

    move-result-object p0

    invoke-virtual {p0}, Ls1;->size()I

    move-result v0

    new-array v0, v0, [Lel;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ls1;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lel;->n(Ljava/lang/Object;)Lel;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAttributes(Ll1;)[Lel;
    .locals 4

    .line 2
    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    invoke-virtual {p0}, Lgl;->m()Lil;

    move-result-object p0

    invoke-virtual {p0}, Lil;->n()Ls1;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ls1;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lel;->n(Ljava/lang/Object;)Lel;

    move-result-object v2

    invoke-virtual {v2}, Lel;->m()Ll1;

    move-result-object v3

    invoke-virtual {v3, p1}, Lp1;->s(Lp1;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->EMPTY_ARRAY:[Lel;

    return-object p0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lel;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lel;

    return-object p0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Lgk3;

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

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    invoke-virtual {p0}, Lj1;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public getExtension(Ll1;)Lbk3;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Lgk3;

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

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Lgk3;

    invoke-static {p0}, Lls0;->c(Lgk3;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getExtensions()Lgk3;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Lgk3;

    return-object p0
.end method

.method public getHolder()Lhl;
    .locals 1

    new-instance v0, Lhl;

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    invoke-virtual {p0}, Lgl;->m()Lil;

    move-result-object p0

    invoke-virtual {p0}, Lil;->p()Lvr4;

    move-result-object p0

    invoke-virtual {p0}, Lvr4;->j()Lp1;

    move-result-object p0

    check-cast p0, Ls1;

    invoke-direct {v0, p0}, Lhl;-><init>(Ls1;)V

    return-object v0
.end method

.method public getIssuer()Ljl;
    .locals 1

    new-instance v0, Ljl;

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    invoke-virtual {p0}, Lgl;->m()Lil;

    move-result-object p0

    invoke-virtual {p0}, Lil;->r()Lal;

    move-result-object p0

    invoke-direct {v0, p0}, Ljl;-><init>(Lal;)V

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    invoke-virtual {p0}, Lgl;->m()Lil;

    move-result-object p0

    invoke-virtual {p0}, Lil;->s()Ls0;

    move-result-object p0

    invoke-static {p0}, Lls0;->a(Ls0;)[Z

    move-result-object p0

    return-object p0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Lgk3;

    invoke-static {p0}, Lls0;->d(Lgk3;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    invoke-virtual {p0}, Lgl;->m()Lil;

    move-result-object p0

    invoke-virtual {p0}, Lil;->m()Lbl;

    move-result-object p0

    invoke-virtual {p0}, Lbl;->n()Lc1;

    move-result-object p0

    invoke-static {p0}, Lls0;->g(Lc1;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    invoke-virtual {p0}, Lgl;->m()Lil;

    move-result-object p0

    invoke-virtual {p0}, Lil;->m()Lbl;

    move-result-object p0

    invoke-virtual {p0}, Lbl;->o()Lc1;

    move-result-object p0

    invoke-static {p0}, Lls0;->g(Lc1;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    invoke-virtual {p0}, Lgl;->m()Lil;

    move-result-object p0

    invoke-virtual {p0}, Lil;->t()Lg1;

    move-result-object p0

    invoke-virtual {p0}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getSignature()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    invoke-virtual {p0}, Lgl;->p()Ls0;

    move-result-object p0

    invoke-virtual {p0}, Ls0;->A()[B

    move-result-object p0

    return-object p0
.end method

.method public getSignatureAlgorithm()Loa;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    invoke-virtual {p0}, Lgl;->o()Loa;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    invoke-virtual {p0}, Lgl;->m()Lil;

    move-result-object p0

    invoke-virtual {p0}, Lil;->v()Lg1;

    move-result-object p0

    invoke-virtual {p0}, Lg1;->F()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasExtensions()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Lgk3;

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

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    invoke-virtual {p0}, Lj1;->hashCode()I

    move-result p0

    return p0
.end method

.method public isSignatureValid(Lkh1;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    invoke-virtual {v0}, Lgl;->m()Lil;

    move-result-object v0

    invoke-virtual {v0}, Lil;->u()Loa;

    move-result-object v1

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    invoke-virtual {p0}, Lgl;->o()Loa;

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
    invoke-virtual {v0}, Lil;->u()Loa;

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

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    invoke-virtual {p0}, Lgl;->m()Lil;

    move-result-object p0

    invoke-virtual {p0}, Lil;->m()Lbl;

    move-result-object p0

    invoke-virtual {p0}, Lbl;->o()Lc1;

    move-result-object v0

    invoke-static {v0}, Lls0;->g(Lc1;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbl;->n()Lc1;

    move-result-object p0

    invoke-static {p0}, Lls0;->g(Lc1;)Ljava/util/Date;

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

.method public toASN1Structure()Lgl;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lgl;

    return-object p0
.end method
