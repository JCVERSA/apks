.class public Lt9;
.super Ls90;
.source "SourceFile"


# instance fields
.field public a:Ljavax/crypto/Cipher;

.field public final b:[B

.field public final c:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 2

    invoke-direct {p0}, Ls90;-><init>()V

    iput-object p1, p0, Lt9;->c:[B

    iput-object p2, p0, Lt9;->b:[B

    array-length p0, p1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    array-length p0, p1

    const/16 v1, 0x18

    if-eq p0, v1, :cond_1

    array-length p0, p1

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    array-length p0, p2

    if-ne p0, v0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method public d([B)[B
    .locals 0

    invoke-virtual {p0}, Lt9;->e()V

    iget-object p0, p0, Lt9;->a:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lt9;->a:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lt9;->c:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v2, p0, Lt9;->b:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iput-object v2, p0, Lt9;->a:Ljavax/crypto/Cipher;

    :cond_0
    return-void
.end method
