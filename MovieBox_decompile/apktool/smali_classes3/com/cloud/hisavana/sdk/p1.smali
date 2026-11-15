.class public abstract Lcom/cloud/hisavana/sdk/p1;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    new-array v2, v1, [B

    .line 9
    .line 10
    array-length v3, p0

    .line 11
    sub-int/2addr v3, v1

    .line 12
    new-array v4, v3, [B

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-static {p0, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v1, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v2}, Lcom/cloud/hisavana/sdk/p1;->b(I[B)Ljavax/crypto/Cipher;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance v0, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method private static b(I[B)Ljavax/crypto/Cipher;
    .locals 5

    .line 1
    const-string v0, "AES/GCM/NoPadding"

    .line 2
    .line 3
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/hisavana/sdk/f0;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/16 v4, 0x10

    .line 15
    .line 16
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "AES"

    .line 27
    .line 28
    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    .line 32
    .line 33
    const/16 v3, 0x80

    .line 34
    .line 35
    invoke-direct {v2, v3, p1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method
