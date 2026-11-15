.class public Lorg/bouncycastle/operator/jcajce/OperatorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/operator/jcajce/OperatorHelper$OpCertificateException;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/Map;

.field public static final c:Ljava/util/Map;

.field public static final d:Ljava/util/Map;

.field public static final e:Ljava/util/Map;

.field public static final f:Ljava/util/Map;

.field public static g:Lk42;


# instance fields
.field public a:Li95;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->c:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->d:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->e:Ljava/util/Map;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->f:Ljava/util/Map;

    new-instance v5, Lk42;

    invoke-direct {v5}, Lk42;-><init>()V

    sput-object v5, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->g:Lk42;

    sget-object v5, Lo47;->i:Ll1;

    const-string v6, "SHA1"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcx6;->f:Ll1;

    const-string v6, "SHA224"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcx6;->c:Ll1;

    const-string v6, "SHA256"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcx6;->d:Ll1;

    const-string v6, "SHA384"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcx6;->e:Ll1;

    const-string v6, "SHA512"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lnea;->c:Ll1;

    const-string v6, "RIPEMD128"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lnea;->b:Ll1;

    const-string v6, "RIPEMD160"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lnea;->d:Ll1;

    const-string v6, "RIPEMD256"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyu7;->F1:Ll1;

    const-string v5, "RSA/ECB/PKCS1Padding"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo47;->l:Ll1;

    const-string v5, "Elgamal/ECB/PKCS1Padding"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyu7;->M1:Ll1;

    const-string v5, "RSA/ECB/OAEPPadding"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lwl1;->m:Ll1;

    const-string v5, "ECGOST3410"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyu7;->A3:Ll1;

    const-string v1, "DESEDEWrap"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lyu7;->B3:Ll1;

    const-string v5, "RC2Wrap"

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcx6;->B:Ll1;

    const-string v5, "AESWrap"

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcx6;->K:Ll1;

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcx6;->T:Ll1;

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lyx6;->d:Ll1;

    const-string v8, "CamelliaWrap"

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lyx6;->e:Ll1;

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lyx6;->f:Ll1;

    invoke-interface {v2, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lme5;->d:Ll1;

    const-string v11, "SEEDWrap"

    invoke-interface {v2, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lyu7;->m2:Ll1;

    const-string v12, "DESede"

    invoke-interface {v2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc0

    invoke-static {v2}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x80

    invoke-static {v0}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x100

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcx6;->w:Ll1;

    const-string v1, "AES"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcx6;->y:Ll1;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcx6;->H:Ll1;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcx6;->Q:Ll1;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyu7;->n2:Ll1;

    const-string v1, "RC2"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Li95;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->a:Li95;

    return-void
.end method

.method public static c(Loa;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->g:Lk42;

    invoke-virtual {v0, p0}, Lk42;->a(Loa;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Loa;)Ljava/security/MessageDigest;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Loa;->m()Ll1;

    move-result-object v0

    sget-object v1, Lcx6;->t:Ll1;

    invoke-virtual {v0, v1}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->a:Li95;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SHAKE256-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loa;->p()Lx0;

    move-result-object v2

    invoke-static {v2}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v2

    invoke-virtual {v2}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Li95;->b(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Loa;->m()Ll1;

    move-result-object v0

    sget-object v1, Lcx6;->s:Ll1;

    invoke-virtual {v0, v1}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->a:Li95;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SHAKE128-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loa;->p()Lx0;

    move-result-object v2

    invoke-static {v2}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v2

    invoke-virtual {v2}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->a:Li95;

    invoke-virtual {p1}, Loa;->m()Ll1;

    move-result-object v1

    invoke-static {v1}, Lsn6;->b(Ll1;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    sget-object v1, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->b:Ljava/util/Map;

    invoke-virtual {p1}, Loa;->m()Ll1;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Loa;->m()Ll1;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->a:Li95;

    invoke-interface {p0, p1}, Li95;->b(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_2
    throw v0
.end method

.method public b(Loa;)Ljava/security/Signature;
    .locals 4

    invoke-static {p1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->c(Loa;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->a:Li95;

    invoke-interface {v1, v0}, Li95;->d(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WITHRSAANDMGF1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x57

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WITHRSASSA-PSS"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->a:Li95;

    invoke-interface {v1, v0}, Li95;->d(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Loa;->m()Ll1;

    move-result-object v1

    sget-object v2, Lyu7;->P1:Ll1;

    invoke-virtual {v1, v2}, Lp1;->s(Lp1;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Loa;->p()Lx0;

    move-result-object p1

    invoke-static {p1}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->d(Ls1;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object p0, p0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->a:Li95;

    const-string v1, "PSS"

    invoke-interface {p0, v1}, Li95;->a(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    invoke-virtual {p1}, Lj1;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/AlgorithmParameters;->init([B)V

    const-class p1, Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {p0, p1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to process PSS parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    throw v1
.end method

.method public final d(Ls1;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ls1;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lgn8;->n(Ljava/lang/Object;)Lgn8;

    move-result-object p1

    invoke-virtual {p1}, Lgn8;->o()Loa;

    move-result-object v1

    invoke-virtual {v1}, Loa;->m()Ll1;

    move-result-object v1

    sget-object v2, Lyu7;->N1:Ll1;

    invoke-virtual {v1, v2}, Lp1;->s(Lp1;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lgn8;->m()Loa;

    move-result-object v1

    invoke-virtual {p1}, Lgn8;->o()Loa;

    move-result-object v3

    invoke-virtual {v3}, Loa;->p()Lx0;

    move-result-object v3

    invoke-static {v3}, Loa;->o(Ljava/lang/Object;)Loa;

    move-result-object v3

    invoke-virtual {v1, v3}, Lj1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Lgn8;->m()Loa;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->a(Loa;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p1}, Lgn8;->p()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {p0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result p0

    if-eq p1, p0, :cond_3

    move v0, v2

    :cond_3
    :goto_0
    return v0
.end method
