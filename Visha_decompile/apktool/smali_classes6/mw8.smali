.class public Lmw8;
.super Ls90;
.source "SourceFile"


# instance fields
.field public a:Ljavax/crypto/Cipher;

.field public b:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ls90;-><init>()V

    invoke-static {}, Low8;->b()Low8;

    move-result-object p0

    invoke-virtual {p0, p1}, Low8;->a(Landroid/content/Context;)Z

    return-void
.end method

.method private f()V
    .locals 3

    invoke-static {}, Lmw8;->h()Ljava/security/PrivateKey;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmw8;->a:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {}, Lmw8;->h()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iput-object v0, p0, Lmw8;->a:Ljavax/crypto/Cipher;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "key not created, please try later"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private g()V
    .locals 3

    invoke-static {}, Lmw8;->i()Ljava/security/PublicKey;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmw8;->b:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Lmw8;->i()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iput-object v0, p0, Lmw8;->b:Ljavax/crypto/Cipher;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "key not created, please try later"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h()Ljava/security/PrivateKey;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v2, "crypto"

    invoke-virtual {v1, v2, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static i()Ljava/security/PublicKey;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v2, "crypto"

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public d([B)[B
    .locals 0

    invoke-direct {p0}, Lmw8;->f()V

    iget-object p0, p0, Lmw8;->a:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public e([B)[B
    .locals 0

    invoke-direct {p0}, Lmw8;->g()V

    iget-object p0, p0, Lmw8;->b:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method
