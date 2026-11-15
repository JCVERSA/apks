.class public Llw8;
.super Ly2d;
.source "SourceFile"


# instance fields
.field public a:Ljavax/crypto/Cipher;

.field public b:Ljavax/crypto/Cipher;

.field public c:Ljava/security/Key;

.field public d:Ljava/security/Key;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ly2d;-><init>()V

    return-void
.end method

.method private h()V
    .locals 3

    invoke-virtual {p0}, Llw8;->i()V

    iget-object v0, p0, Llw8;->b:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, p0, Llw8;->d:Ljava/security/Key;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iput-object v0, p0, Llw8;->b:Ljavax/crypto/Cipher;

    :cond_0
    return-void
.end method


# virtual methods
.method public d([B)[B
    .locals 0

    invoke-virtual {p0}, Llw8;->g()V

    iget-object p0, p0, Llw8;->a:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public e(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Llw8;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public f([B)[B
    .locals 0

    invoke-direct {p0}, Llw8;->h()V

    iget-object p0, p0, Llw8;->b:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final g()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Llw8;->i()V

    iget-object v0, p0, Llw8;->a:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, p0, Llw8;->c:Ljava/security/Key;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iput-object v0, p0, Llw8;->a:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "NoClassDefFound..."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i()V
    .locals 3

    const-string v0, "crypto"

    iget-object v1, p0, Llw8;->c:Ljava/security/Key;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llw8;->d:Ljava/security/Key;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v1, v0, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    iput-object v2, p0, Llw8;->c:Ljava/security/Key;

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Llw8;->d:Ljava/security/Key;

    :cond_1
    return-void
.end method
