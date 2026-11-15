.class public Lak/c;
.super Lzj/a;
.source "source.java"


# instance fields
.field private a:Ljavax/crypto/Cipher;

.field private final b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzj/a;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lzj/a;->b(Ljava/lang/String;)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lak/c;->b:[B

    .line 9
    .line 10
    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lak/c;->a:Ljavax/crypto/Cipher;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    .line 6
    .line 7
    iget-object v1, p0, Lak/c;->b:[B

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 10
    .line 11
    .line 12
    const-string v1, "RSA"

    .line 13
    .line 14
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 23
    .line 24
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lak/c;->a:Ljavax/crypto/Cipher;

    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private f([B[B)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    .line 2
    .line 3
    iget-object v1, p0, Lak/c;->b:[B

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 6
    .line 7
    .line 8
    const-string v1, "RSA"

    .line 9
    .line 10
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MD5withRSA"

    .line 19
    .line 20
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p2}, Ljava/security/Signature;->verify([B)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method


# virtual methods
.method public d([B)[B
    .locals 1

    .line 1
    invoke-direct {p0}, Lak/c;->e()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lak/c;->a:Ljavax/crypto/Cipher;

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

.method public g([B[B)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lak/c;->f([B[B)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
