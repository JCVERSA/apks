.class public abstract Lcom/transsion/api/gateway/dns/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

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
    const-string p0, "AES/GCM/NoPadding"

    .line 22
    .line 23
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 28
    .line 29
    invoke-static {}, Lcom/transsion/api/gateway/GateWaySdk;->getSecret()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/16 v6, 0x10

    .line 34
    .line 35
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 40
    .line 41
    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v5, "AES"

    .line 46
    .line 47
    invoke-direct {v1, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    .line 51
    .line 52
    const/16 v5, 0x80

    .line 53
    .line 54
    invoke-direct {v3, v5, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 67
    .line 68
    .line 69
    return-object v0
.end method
