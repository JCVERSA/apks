.class public Lak/b;
.super Lzj/a;
.source "source.java"


# instance fields
.field private a:Ljavax/crypto/Cipher;

.field private b:Ljavax/crypto/Cipher;

.field private c:Ljavax/crypto/spec/SecretKeySpec;

.field private d:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzj/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lak/b;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lak/b;->d:[B

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lak/b;->a:Ljavax/crypto/Cipher;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 14
    .line 15
    iget-object v1, p0, Lak/b;->d:[B

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 18
    .line 19
    .line 20
    const-string v1, "AES/CBC/PKCS5Padding"

    .line 21
    .line 22
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x2

    .line 27
    iget-object v3, p0, Lak/b;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lak/b;->a:Ljavax/crypto/Cipher;

    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    .line 36
    .line 37
    const-string v1, "please call encrypt method first"

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method private h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lak/b;->b:Ljavax/crypto/Cipher;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "AES"

    .line 6
    .line 7
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/16 v2, 0x100

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "AES/CBC/PKCS5Padding"

    .line 21
    .line 22
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v3, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object v3, p0, Lak/b;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lak/b;->d:[B

    .line 46
    .line 47
    iput-object v2, p0, Lak/b;->b:Ljavax/crypto/Cipher;

    .line 48
    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public d([B)[B
    .locals 1

    .line 1
    invoke-direct {p0}, Lak/b;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lak/b;->a:Ljavax/crypto/Cipher;

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

.method public e(Ljava/lang/String;)[B
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lak/b;->f([B)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public f([B)[B
    .locals 1

    .line 1
    invoke-direct {p0}, Lak/b;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lak/b;->b:Ljavax/crypto/Cipher;

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

.method public i()[B
    .locals 6

    .line 1
    iget-object v0, p0, Lak/b;->d:[B

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lak/b;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lak/b;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lak/b;->d:[B

    .line 22
    .line 23
    array-length v2, v0

    .line 24
    const/16 v3, 0x20

    .line 25
    .line 26
    if-ne v2, v3, :cond_0

    .line 27
    .line 28
    array-length v2, v1

    .line 29
    const/16 v4, 0x10

    .line 30
    .line 31
    if-ne v2, v4, :cond_0

    .line 32
    .line 33
    const/16 v2, 0x30

    .line 34
    .line 35
    new-array v2, v2, [B

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    .line 46
    .line 47
    const-string v1, "key length is not valid"

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    .line 54
    .line 55
    const-string v1, "no valid key info"

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method
