.class public abstract Ltu/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Ltu/c;->a:Ljavax/crypto/spec/IvParameterSpec;

    .line 14
    .line 15
    return-void

    .line 16
    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "seed"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p0}, Ltu/c;->c(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {}, Lcom/cloud/hisavana/sdk/c;->a()Ljava/util/Base64$Encoder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/g;->a(Ljava/util/Base64$Encoder;[B)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    const-string p0, "tag"

    .line 24
    .line 25
    const-string v0, "msg"

    .line 26
    .line 27
    const-string v1, "AesUtils"

    .line 28
    .line 29
    const-string v2, "fail to generate key"

    .line 30
    .line 31
    invoke-static {v1, p0, v2, v0}, Lnu/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    sget-boolean p0, Ltu/g;->a:Z

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-wide v5, Ltu/g;->b:J

    .line 41
    .line 42
    sub-long v5, v3, v5

    .line 43
    .line 44
    const-wide/16 v7, 0x1388

    .line 45
    .line 46
    cmp-long v0, v5, v7

    .line 47
    .line 48
    if-gez v0, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    sput-wide v3, Ltu/g;->b:J

    .line 52
    .line 53
    const-string p0, "upgradeSdkLog"

    .line 54
    .line 55
    const/4 v0, 0x3

    .line 56
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    const/4 p0, 0x1

    .line 63
    sput-boolean p0, Ltu/g;->a:Z

    .line 64
    .line 65
    :cond_2
    sget-boolean p0, Ltu/g;->a:Z

    .line 66
    .line 67
    :goto_0
    sget-object v0, Lqu/f;->o:Lqu/d;

    .line 68
    .line 69
    invoke-virtual {v0}, Lqu/d;->a()Lqu/f;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-boolean v0, v0, Lqu/f;->d:Z

    .line 74
    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    if-eqz p0, :cond_4

    .line 78
    .line 79
    :cond_3
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :cond_4
    const/4 p0, 0x0

    .line 83
    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "gaid"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "packageName"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    invoke-static {p1}, Ltu/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    invoke-static {}, Ltu/a;->a()Ljava/util/Base64$Decoder;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2, p1}, Ltu/b;->a(Ljava/util/Base64$Decoder;Ljava/lang/String;)[B

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 29
    .line 30
    array-length v3, p1

    .line 31
    const-string v4, "AES"

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-direct {v2, p1, v5, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string p1, "AES/CBC/PKCS5Padding"

    .line 38
    .line 39
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget-object v3, Ltu/c;->a:Ljavax/crypto/spec/IvParameterSpec;

    .line 44
    .line 45
    invoke-virtual {p1, v0, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 46
    .line 47
    .line 48
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 49
    .line 50
    const-string v3, "UTF_8"

    .line 51
    .line 52
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string v2, "this as java.lang.String).getBytes(charset)"

    .line 60
    .line 61
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {}, Lcom/cloud/hisavana/sdk/c;->a()Ljava/util/Base64$Encoder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1, p0}, Lcom/cloud/hisavana/sdk/g;->a(Ljava/util/Base64$Encoder;[B)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-object p0

    .line 77
    :catch_0
    move-exception p0

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v2, "fail to encrypt "

    .line 81
    .line 82
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    const-string p1, "tag"

    .line 97
    .line 98
    const-string v2, "AesUtils"

    .line 99
    .line 100
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string p1, "msg"

    .line 104
    .line 105
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 109
    .line 110
    .line 111
    move-result-wide v3

    .line 112
    sget-boolean p1, Ltu/g;->a:Z

    .line 113
    .line 114
    if-eqz p1, :cond_1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    sget-wide v5, Ltu/g;->b:J

    .line 118
    .line 119
    sub-long v5, v3, v5

    .line 120
    .line 121
    const-wide/16 v7, 0x1388

    .line 122
    .line 123
    cmp-long v5, v5, v7

    .line 124
    .line 125
    if-gez v5, :cond_2

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    sput-wide v3, Ltu/g;->b:J

    .line 129
    .line 130
    const-string p1, "upgradeSdkLog"

    .line 131
    .line 132
    const/4 v3, 0x3

    .line 133
    invoke-static {p1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_3

    .line 138
    .line 139
    sput-boolean v0, Ltu/g;->a:Z

    .line 140
    .line 141
    :cond_3
    sget-boolean p1, Ltu/g;->a:Z

    .line 142
    .line 143
    :goto_0
    sget-object v0, Lqu/f;->o:Lqu/d;

    .line 144
    .line 145
    invoke-virtual {v0}, Lqu/d;->a()Lqu/f;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget-boolean v0, v0, Lqu/f;->d:Z

    .line 150
    .line 151
    if-nez v0, :cond_4

    .line 152
    .line 153
    if-eqz p1, :cond_5

    .line 154
    .line 155
    :cond_4
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    :cond_5
    return-object v1
.end method

.method public static c(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 5

    .line 1
    sget-object v0, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "this as java.lang.String).getBytes(charset)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "PBKDF2WithHmacSHA256"

    .line 13
    .line 14
    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string v3, "this as java.lang.String).toCharArray()"

    .line 25
    .line 26
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/high16 v3, 0x10000

    .line 30
    .line 31
    const/16 v4, 0x100

    .line 32
    .line 33
    invoke-direct {v2, p0, v0, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 34
    .line 35
    .line 36
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "AES"

    .line 47
    .line 48
    invoke-direct {p0, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "plainText"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, ""

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    :try_start_0
    const-string v0, "MD5"

    .line 15
    .line 16
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v2, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v2, "this as java.lang.String).getBytes(charset)"

    .line 27
    .line 28
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    array-length v2, p0

    .line 44
    const/4 v3, 0x0

    .line 45
    :goto_0
    if-ge v3, v2, :cond_2

    .line 46
    .line 47
    aget-byte v4, p0, v3

    .line 48
    .line 49
    if-gez v4, :cond_0

    .line 50
    .line 51
    add-int/lit16 v4, v4, 0x100

    .line 52
    .line 53
    :cond_0
    const/16 v5, 0x10

    .line 54
    .line 55
    if-ge v4, v5, :cond_1

    .line 56
    .line 57
    const-string v5, "0"

    .line 58
    .line 59
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    .line 68
    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const-string v0, "toString(...)"

    .line 77
    .line 78
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    return-object p0

    .line 82
    :catch_0
    :cond_3
    return-object v1
.end method
