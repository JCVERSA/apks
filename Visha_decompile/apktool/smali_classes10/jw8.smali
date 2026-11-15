.class public Ljw8;
.super Ly2d;
.source "SourceFile"


# instance fields
.field public a:Ljavax/crypto/Cipher;

.field public final b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ly2d;-><init>()V

    invoke-virtual {p0, p1}, Ly2d;->b(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Ljw8;->b:[B

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljw8;->e([B)[B

    move-result-object p0

    return-object p0
.end method

.method public e([B)[B
    .locals 0

    invoke-virtual {p0}, Ljw8;->f()V

    iget-object p0, p0, Ljw8;->a:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Ljw8;->a:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    iget-object v1, p0, Ljw8;->b:[B

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iput-object v1, p0, Ljw8;->a:Ljavax/crypto/Cipher;

    :cond_0
    return-void
.end method
