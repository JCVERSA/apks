.class public Lak/d;
.super Lzj/a;
.source "source.java"


# instance fields
.field private a:Ljavax/crypto/Cipher;

.field private b:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lzj/a;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lak/e;->b()Lak/e;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lak/e;->a(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private f()V
    .locals 3

    .line 1
    invoke-static {}, Lak/d;->h()Ljava/security/PrivateKey;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lak/d;->a:Ljavax/crypto/Cipher;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 12
    .line 13
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-static {}, Lak/d;->h()Ljava/security/PrivateKey;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lak/d;->a:Ljavax/crypto/Cipher;

    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    .line 29
    .line 30
    const-string v1, "key not created, please try later"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method private g()V
    .locals 3

    .line 1
    invoke-static {}, Lak/d;->i()Ljava/security/PublicKey;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lak/d;->b:Ljavax/crypto/Cipher;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 12
    .line 13
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {}, Lak/d;->i()Ljava/security/PublicKey;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lak/d;->b:Ljavax/crypto/Cipher;

    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    .line 29
    .line 30
    const-string v1, "key not created, please try later"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method private static h()Ljava/security/PrivateKey;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "AndroidKeyStore"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 9
    .line 10
    .line 11
    const-string v2, "crypto"

    .line 12
    .line 13
    invoke-virtual {v1, v2, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    return-object v1

    .line 20
    :catch_0
    return-object v0
.end method

.method private static i()Ljava/security/PublicKey;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "AndroidKeyStore"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 9
    .line 10
    .line 11
    const-string v2, "crypto"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    return-object v0
.end method


# virtual methods
.method public d([B)[B
    .locals 1

    .line 1
    invoke-direct {p0}, Lak/d;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lak/d;->a:Ljavax/crypto/Cipher;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public e([B)[B
    .locals 1

    .line 1
    invoke-direct {p0}, Lak/d;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lak/d;->b:Ljavax/crypto/Cipher;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
