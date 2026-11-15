.class public final Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhyperion/hap/ICryptoManager;


# instance fields
.field public final a:Lmw4;

.field public final b:Lqw4;

.field public final c:Lpw4;

.field public final d:Low4;

.field public final e:Lnw4;

.field public final f:Ljava/lang/String;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmw4;Lqw4;Lpw4;Low4;Lnw4;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "authStatus"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "usageDelegate"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mStore"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ks"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "asn1Helper"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->a:Lmw4;

    iput-object p3, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->b:Lqw4;

    iput-object p4, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->c:Lpw4;

    iput-object p5, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->d:Low4;

    iput-object p6, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->e:Lnw4;

    const-string p1, "TranHapCryptoManagerImpl"

    iput-object p1, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->f:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->g:Z

    return-void
.end method


# virtual methods
.method public final a([BLw74;)V
    .locals 3

    array-length p0, p1

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    array-length p0, p1

    sub-int/2addr p0, v0

    array-length v1, p1

    invoke-static {p1, p0, v1}, Lfi;->r([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v1, v0, p0}, Lw74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "incorrect argument size!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public aliases()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->a:Lmw4;

    invoke-interface {v0}, Lmw4;->a()Z

    new-instance v0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$aliases$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$aliases$1;-><init>(Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;Lwh1;)V

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final b([BLy74;)V
    .locals 8

    array-length p0, p1

    add-int/lit8 v0, p0, -0x1

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    aget-byte v1, p1, v0

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_0

    const/16 v2, -0x80

    if-lt v1, v2, :cond_0

    add-int/lit8 p0, p0, -0xd

    invoke-static {p1, p0, v0}, Lfi;->r([BII)[B

    move-result-object v7

    sub-int v0, p0, v1

    invoke-static {p1, v0, p0}, Lfi;->r([BII)[B

    move-result-object v6

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v2, p2

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Ly74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "incorrect size of aad[${Byte.MIN_VALUE} - ${Byte.MAX_VALUE}"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "incorrect argument size!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Ljava/security/KeyPair;)Ljava/security/cert/X509Certificate;
    .locals 10

    const-string p0, "keyPair"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v6, Ljava/util/Date;

    const-wide v2, 0x757b12c00L

    add-long/2addr v0, v2

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v7, Ljava/util/Locale;

    const-string p0, "en"

    const-string v0, "GB"

    invoke-direct {v7, p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    new-instance v8, Lcqc;

    const-string p0, "CN=TranHap Self Signed Certificate"

    invoke-direct {v8, p0}, Lcqc;-><init>(Ljava/lang/String;)V

    new-instance p0, Llqc;

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Ls1a;->n(Ljava/lang/Object;)Ls1a;

    move-result-object v9

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v2 .. v9}, Llqc;-><init>(Lcqc;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Locale;Lcqc;Ls1a;)V

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RSA"

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "SHA256withRSA"

    goto :goto_0

    :cond_0
    const-string v1, "EC"

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SHA256withECDSA"

    :goto_0
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    new-instance v1, Lh95;

    invoke-direct {v1, v0}, Lh95;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lh95;->b(Ljava/security/PrivateKey;)Lch1;

    move-result-object p1

    const-string v0, "JcaContentSignerBuilder(sigAlg).build(privateKey)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {v0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    invoke-virtual {p0, p1}, Llqc;->a(Lch1;)Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->a(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    const-string p1, "JcaX509CertificateConver\u2026der.build(contentSigner))"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unsupported key algorithm: "

    invoke-static {v0, p1}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()Low4;
    .locals 0

    iget-object p0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->d:Low4;

    return-object p0
.end method

.method public decrypt(Ljava/lang/String;[B)[B
    .locals 5

    const-string v0, "alias"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->a:Lmw4;

    invoke-interface {v0}, Lmw4;->a()Z

    iget-object v0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->d:Low4;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Low4;->a(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->d:Low4;

    invoke-interface {v2, p1}, Low4;->b(Ljava/lang/String;)Llxa;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Llxa;->b()I

    move-result p1

    invoke-static {p1}, Lmxa;->a(I)Lna;

    move-result-object p1

    instance-of v2, v0, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v2, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lna;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lawa;->a:Lawa;

    invoke-virtual {v3}, Lawa;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lna;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$decrypt$1$1;

    invoke-direct {v2, p1, v0, v1}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$decrypt$1$1;-><init>(Ljavax/crypto/Cipher;Ljava/security/KeyStore$Entry;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, p2, v2}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->a([BLw74;)V

    iget-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, [B

    return-object p0

    :cond_2
    invoke-virtual {v3}, Lawa;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lna;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$decrypt$1$2;

    invoke-direct {v2, p1, v0, v1}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$decrypt$1$2;-><init>(Ljavax/crypto/Cipher;Ljava/security/KeyStore$Entry;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, p2, v2}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->b([BLy74;)V

    iget-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, [B
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "incorrect argument size!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    instance-of p0, v0, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lna;->a()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lawa;->a:Lawa;

    invoke-virtual {p1}, Lawa;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "keyEntry.privateKey"

    if-eqz v2, :cond_4

    sget-object p0, Lixa;->a:Lixa;

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    invoke-static {p1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lixa;->f(Ljava/security/PrivateKey;[B)[B

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lawa;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lixa;->a:Lixa;

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    invoke-static {p1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lixa;->h(Ljava/security/PrivateKey;[B)[B

    move-result-object p0

    :goto_0
    return-object p0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public final e()Lpw4;
    .locals 0

    iget-object p0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->c:Lpw4;

    return-object p0
.end method

.method public encrypt(Ljava/lang/String;[B)[B
    .locals 5

    const-string v0, "alias"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->a:Lmw4;

    invoke-interface {v0}, Lmw4;->a()Z

    iget-object v0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->d:Low4;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Low4;->a(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->d:Low4;

    invoke-interface {v2, p1}, Low4;->b(Ljava/lang/String;)Llxa;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Llxa;->b()I

    move-result p1

    invoke-static {p1}, Lmxa;->a(I)Lna;

    move-result-object p1

    instance-of v2, v0, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v2, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lna;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lawa;->a:Lawa;

    invoke-virtual {v3}, Lawa;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lna;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$encrypt$1$1;

    invoke-direct {v2, p1, v0, v1}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$encrypt$1$1;-><init>(Ljavax/crypto/Cipher;Ljava/security/KeyStore$Entry;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, p2, v2}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->a([BLw74;)V

    iget-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, [B

    return-object p0

    :cond_2
    invoke-virtual {v3}, Lawa;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lna;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$encrypt$1$2;

    invoke-direct {v2, p1, v0, v1}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$encrypt$1$2;-><init>(Ljavax/crypto/Cipher;Ljava/security/KeyStore$Entry;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, p2, v2}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->b([BLy74;)V

    iget-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, [B
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "incorrect argument size!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    instance-of p0, v0, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lna;->a()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lawa;->a:Lawa;

    invoke-virtual {p1}, Lawa;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "keyEntry.certificate.publicKey"

    if-eqz v2, :cond_4

    sget-object p0, Lixa;->a:Lixa;

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-static {p1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lixa;->g(Ljava/security/PublicKey;[B)[B

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lawa;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lixa;->a:Lixa;

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-static {p1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lixa;->i(Ljava/security/PublicKey;[B)[B

    move-result-object p0

    :goto_0
    return-object p0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public exportKey(Ljava/lang/String;)[B
    .locals 2

    const-string v0, "alias"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->a:Lmw4;

    invoke-interface {v0}, Lmw4;->a()Z

    new-instance v0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$exportKey$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$exportKey$1;-><init>(Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;Ljava/lang/String;Lwh1;)V

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->a:Lmw4;

    invoke-interface {v0}, Lmw4;->a()Z

    new-instance v0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$removeCKey$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$removeCKey$1;-><init>(Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;Ljava/lang/String;Lwh1;)V

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public generateKey(Ljava/lang/String;I)V
    .locals 10

    const-string v0, "alias"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->a:Lmw4;

    invoke-interface {v0}, Lmw4;->a()Z

    iget-object v1, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->b:Lqw4;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lqw4$a;->b(Lqw4;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[[BILjava/lang/Object;)Z

    new-instance v0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$generateKey$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$generateKey$1;-><init>(Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;Ljava/lang/String;Lwh1;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lmxa;->a(I)Lna;

    move-result-object v0

    invoke-virtual {v0}, Lna;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lawa;->a:Lawa;

    invoke-virtual {v1}, Lawa;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "AES"

    const/4 v4, 0x0

    const-string v5, "Builder(\n               \u2026                 .build()"

    const/4 v6, 0x3

    if-eqz v2, :cond_1

    sget-object v0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->a:Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;

    invoke-virtual {v0}, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-direct {v1, p1, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v2, "CBC"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v3, "PKCS7Padding"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    invoke-static {p2}, Lmxa;->a(I)Lna;

    move-result-object v7

    invoke-virtual {v7}, Lna;->b()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    const-string v7, "Builder(alias,\n         \u2026                 .build()"

    invoke-static {v1, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lmxa;->a(I)Lna;

    move-result-object v1

    invoke-virtual {v1}, Lna;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->d()Low4;

    move-result-object p0

    new-instance v1, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v1, v0}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v0, Landroid/security/keystore/KeyProtection$Builder;

    invoke-direct {v0, v6}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v0

    invoke-static {v0, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2, v1, v0}, Low4;->c(Ljava/lang/String;ILjava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v1}, Lawa;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->a:Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;

    invoke-virtual {v0}, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    invoke-static {p2}, Lmxa;->a(I)Lna;

    move-result-object v1

    invoke-virtual {v1}, Lna;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->d()Low4;

    move-result-object p0

    new-instance v1, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v1, v0}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v0, Landroid/security/keystore/KeyProtection$Builder;

    invoke-direct {v0, v6}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v2, "GCM"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    const-string v2, "NoPadding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v0

    invoke-static {v0, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2, v1, v0}, Low4;->c(Ljava/lang/String;ILjava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1}, Lawa;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "OAEPPadding"

    const/16 v4, 0x20

    const-string v7, "RSA"

    const-string v8, "it"

    if-eqz v2, :cond_3

    sget-object v0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->a:Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;

    invoke-virtual {v0}, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    invoke-static {p2}, Lmxa;->a(I)Lna;

    move-result-object v1

    invoke-virtual {v1}, Lna;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->d()Low4;

    move-result-object v1

    new-instance v2, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v7

    invoke-static {v0, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->c(Ljava/security/KeyPair;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    filled-new-array {p0}, [Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-direct {v2, v7, p0}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    new-instance p0, Landroid/security/keystore/KeyProtection$Builder;

    or-int/lit8 v0, v4, 0x3

    invoke-direct {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p0

    const-string v0, "SHA-1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p0

    invoke-static {p0, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1, p2, v2, p0}, Low4;->c(Ljava/lang/String;ILjava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1}, Lawa;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v9, "SHA-256"

    if-eqz v2, :cond_4

    sget-object v0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->a:Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;

    invoke-virtual {v0}, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    invoke-static {p2}, Lmxa;->a(I)Lna;

    move-result-object v1

    invoke-virtual {v1}, Lna;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->d()Low4;

    move-result-object v1

    new-instance v2, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v7

    invoke-static {v0, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->c(Ljava/security/KeyPair;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    filled-new-array {p0}, [Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-direct {v2, v7, p0}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    new-instance p0, Landroid/security/keystore/KeyProtection$Builder;

    or-int/lit8 v0, v4, 0x3

    invoke-direct {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v0, "ECB"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p0

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p0

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p0

    invoke-static {p0, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1, p2, v2, p0}, Low4;->c(Ljava/lang/String;ILjava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Lawa;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->a:Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;

    invoke-virtual {v0}, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmacSHA256"

    invoke-static {v1, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    invoke-static {p2}, Lmxa;->a(I)Lna;

    move-result-object v1

    invoke-virtual {v1}, Lna;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->d()Low4;

    move-result-object p0

    new-instance v1, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v1, v0}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v0, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v0

    const-string v2, "Builder(KeyProperties.PU\u2026                 .build()"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2, v1, v0}, Low4;->c(Ljava/lang/String;ILjava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lawa;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->a:Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;

    invoke-virtual {v0}, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EC"

    invoke-static {v1, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string v2, "secp256r1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->d()Low4;

    move-result-object v1

    new-instance v2, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-static {v0, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->c(Ljava/security/KeyPair;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    filled-new-array {p0}, [Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    new-instance p0, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p0

    invoke-static {p0, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1, p2, v2, p0}, Low4;->c(Ljava/lang/String;ILjava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public getImportKeyAAD(I)[B
    .locals 1

    iget-object v0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->a:Lmw4;

    invoke-interface {v0}, Lmw4;->a()Z

    iget-object p0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->e:Lnw4;

    invoke-interface {p0, p1}, Lnw4;->a(I)[B

    move-result-object p0

    return-object p0
.end method

.method public importKey(Ljava/lang/String;ILjava/lang/String;[B[B[B[B[B)V
    .locals 7

    const-string v0, "alias"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decryptKeyalias"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedTmpKey"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedKey"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iv"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aad"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "tag"

    invoke-static {p8, p7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p7, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->a:Lmw4;

    invoke-interface {p7}, Lmw4;->a()Z

    iget-object v0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->b:Lqw4;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lqw4$a;->b(Lqw4;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[[BILjava/lang/Object;)Z

    new-instance p7, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$importKey$1;

    const/4 v0, 0x0

    invoke-direct {p7, p0, p1, v0}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$importKey$1;-><init>(Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;Ljava/lang/String;Lwh1;)V

    const/4 v1, 0x1

    invoke-static {v0, p7, v1, v0}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Boolean;

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p7

    if-eqz p7, :cond_0

    return-void

    :cond_0
    iget-object p7, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->d:Low4;

    invoke-interface {p7, p3, v0}, Low4;->a(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p7

    if-eqz p7, :cond_4

    instance-of p7, p7, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz p7, :cond_3

    sget-object p7, Lixa;->a:Lixa;

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0, p3, p4}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->decrypt(Ljava/lang/String;[B)[B

    move-result-object p3

    const-string p4, "AES"

    invoke-direct {v0, p3, p4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p5, p8}, Lfi;->z([B[B)[B

    move-result-object p3

    const/16 p5, 0x41a

    if-ne p2, p5, :cond_1

    const/4 p5, 0x2

    goto :goto_0

    :cond_1
    move p5, v1

    :goto_0
    invoke-virtual {p0, p5}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->getImportKeyAAD(I)[B

    move-result-object p5

    invoke-virtual {p7, v0, p3, p5, p6}, Lixa;->a(Ljavax/crypto/SecretKey;[B[B[B)[B

    move-result-object p3

    iget-object p0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->d:Low4;

    invoke-static {p2}, Lmxa;->a(I)Lna;

    move-result-object p5

    invoke-virtual {p5}, Lna;->a()Ljava/lang/String;

    move-result-object p5

    const-string p6, "mac"

    invoke-static {p5, p6, v1}, Lj1a;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p6

    if-eqz p6, :cond_2

    move-object p4, p5

    :cond_2
    new-instance p5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p5, p3, p4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p3, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {p3, p5}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance p4, Landroid/security/keystore/KeyProtection$Builder;

    const/4 p5, 0x7

    invoke-direct {p4, p5}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string p5, "CBC"

    const-string p6, "GCM"

    filled-new-array {p5, p6}, [Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p4

    const-string p5, "PKCS7Padding"

    const-string p6, "NoPadding"

    filled-new-array {p5, p6}, [Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p4

    const/4 p5, 0x0

    invoke-virtual {p4, p5}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p4

    invoke-virtual {p4}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p4

    const-string p5, "Builder(KeyProperties.PU\u2026\n                .build()"

    invoke-static {p4, p5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2, p3, p4}, Low4;->c(Ljava/lang/String;ILjava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "specified key type not correct!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "specified key not exist!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "alias"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->a:Lmw4;

    invoke-interface {v0}, Lmw4;->a()Z

    invoke-virtual {p0, p1}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->f(Ljava/lang/String;)V

    return-void
.end method

.method public sign(Ljava/lang/String;[B)[B
    .locals 3

    const-string v0, "alias"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->a:Lmw4;

    invoke-interface {v0}, Lmw4;->a()Z

    iget-object v0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->d:Low4;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Low4;->a(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->d:Low4;

    invoke-interface {p0, p1}, Low4;->b(Ljava/lang/String;)Llxa;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Llxa;->b()I

    move-result p0

    invoke-static {p0}, Lmxa;->a(I)Lna;

    move-result-object p0

    invoke-virtual {p0}, Lna;->a()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lawa;->a:Lawa;

    invoke-virtual {p1}, Lawa;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "AES"

    invoke-static {p0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_3

    instance-of p0, v0, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz p0, :cond_4

    sget-object p0, Lixa;->a:Lixa;

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    const-string v0, "keyEntry.secretKey"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lixa;->d(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lawa;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    instance-of p0, v0, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz p0, :cond_4

    sget-object p0, Lixa;->a:Lixa;

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    const-string v0, "keyEntry.privateKey"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lixa;->b(Ljava/security/PrivateKey;[B)[B

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public updateKey(Ljava/lang/String;I)V
    .locals 8

    const-string v0, "alias"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->a:Lmw4;

    invoke-interface {v0}, Lmw4;->a()Z

    iget-object v1, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->b:Lqw4;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lqw4$a;->b(Lqw4;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[[BILjava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->removeKey(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->generateKey(Ljava/lang/String;I)V

    return-void
.end method

.method public verify(Ljava/lang/String;[B[B)Z
    .locals 3

    const-string v0, "alias"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->a:Lmw4;

    invoke-interface {v0}, Lmw4;->a()Z

    iget-object v0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->d:Low4;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Low4;->a(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->d:Low4;

    invoke-interface {p0, p1}, Low4;->b(Ljava/lang/String;)Llxa;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Llxa;->b()I

    move-result p0

    invoke-static {p0}, Lmxa;->a(I)Lna;

    move-result-object p0

    invoke-virtual {p0}, Lna;->a()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lawa;->a:Lawa;

    invoke-virtual {p1}, Lawa;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of p0, v0, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz p0, :cond_3

    sget-object p0, Lixa;->a:Lixa;

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    const-string v0, "keyEntry.secretKey"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lixa;->e(Ljavax/crypto/SecretKey;[B[B)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Lawa;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    instance-of p0, v0, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz p0, :cond_3

    sget-object p0, Lixa;->a:Lixa;

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    const-string v0, "keyEntry.certificate.publicKey"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lixa;->c(Ljava/security/PublicKey;[B[B)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method
