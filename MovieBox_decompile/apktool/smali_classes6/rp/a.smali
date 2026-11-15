.class public Lrp/a;
.super Lbz/a;
.source "source.java"


# instance fields
.field private a:Ljavax/crypto/Cipher;

.field private final b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbz/a;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lbz/a;->b(Ljava/lang/String;)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lrp/a;->b:[B

    .line 9
    .line 10
    return-void
.end method

.method private f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrp/a;->a:Ljavax/crypto/Cipher;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    .line 6
    .line 7
    iget-object v1, p0, Lrp/a;->b:[B

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
    iput-object v1, p0, Lrp/a;->a:Ljavax/crypto/Cipher;

    .line 33
    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)[B
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lrp/a;->e([B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public e([B)[B
    .locals 1

    .line 1
    invoke-direct {p0}, Lrp/a;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lrp/a;->a:Ljavax/crypto/Cipher;

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
