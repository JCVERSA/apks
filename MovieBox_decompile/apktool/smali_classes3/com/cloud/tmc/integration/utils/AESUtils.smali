.class public final Lcom/cloud/tmc/integration/utils/AESUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004H\u0007J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0007J\u0008\u0010\u0016\u001a\u00020\u0004H\u0002J\u0018\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0007H\u0002J\u0008\u0010\u001a\u001a\u00020\u0004H\u0002J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001f\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/AESUtils;",
        "",
        "()V",
        "CHARSET",
        "",
        "DEFAULT_CIPHER_ALGORITHM",
        "GCM_IV_LENGTH",
        "",
        "GCM_TAG_LENGTH",
        "KEY_ALGORITHM",
        "VALUE_01",
        "VALUE_02",
        "VALUE_03",
        "VALUE_04",
        "bK3",
        "getBK3",
        "()Ljava/lang/String;",
        "key",
        "decrypt",
        "encrypted",
        "encrypt",
        "privateString",
        "garbleSalt",
        "get2PartSelfKey",
        "x",
        "y",
        "get4String",
        "parseByte2HexStr",
        "buf",
        "",
        "parseHexStr2Byte",
        "hexStr",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CHARSET:Ljava/lang/String; = "UTF8"

.field private static final DEFAULT_CIPHER_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field public static final GCM_IV_LENGTH:I = 0xc

.field public static final GCM_TAG_LENGTH:I = 0x10

.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/AESUtils;

.field private static final KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final VALUE_01:Ljava/lang/String; = "sOWGI8Lv"

.field private static final VALUE_02:Ljava/lang/String; = "FnvyH19r"

.field private static final VALUE_03:Ljava/lang/String; = "s2DytdII"

.field private static final VALUE_04:Ljava/lang/String; = "rUOL6ott"

.field private static key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/utils/AESUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/AESUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/utils/AESUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AESUtils;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    sput-object v0, Lcom/cloud/tmc/integration/utils/AESUtils;->key:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "this as java.lang.String).getBytes(charset)"

    .line 2
    .line 3
    const-string v1, "privateString"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/cloud/tmc/integration/utils/AESUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AESUtils;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/cloud/tmc/integration/utils/AESUtils;->garbleSalt()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :try_start_0
    sget-object v3, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/16 v3, 0xc

    .line 24
    .line 25
    new-array v4, v3, [B

    .line 26
    .line 27
    new-instance v5, Ljava/security/SecureRandom;

    .line 28
    .line 29
    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 33
    .line 34
    .line 35
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    .line 36
    .line 37
    const-string v6, "AES"

    .line 38
    .line 39
    invoke-direct {v5, v2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v2, "AES/GCM/NoPadding"

    .line 43
    .line 44
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    new-instance v6, Ljavax/crypto/spec/GCMParameterSpec;

    .line 49
    .line 50
    const/16 v7, 0x80

    .line 51
    .line 52
    invoke-direct {v6, v7, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 53
    .line 54
    .line 55
    const/4 v7, 0x1

    .line 56
    invoke-virtual {v2, v7, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 57
    .line 58
    .line 59
    const-string v5, "UTF8"

    .line 60
    .line 61
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const-string v6, "forName(charsetName)"

    .line 66
    .line 67
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    array-length v0, p0

    .line 82
    add-int/2addr v0, v3

    .line 83
    new-array v0, v0, [B

    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    invoke-static {v4, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    .line 88
    .line 89
    array-length v4, p0

    .line 90
    invoke-static {p0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/utils/AESUtils;->parseByte2HexStr([B)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 98
    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    const-string p0, ""

    .line 103
    .line 104
    :goto_0
    return-object p0
.end method

.method private final garbleSalt()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/AESUtils;->key:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {p0, v0, v1}, Lcom/cloud/tmc/integration/utils/AESUtils;->get2PartSelfKey(II)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/AESUtils;->getBK3()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/AESUtils;->get4String()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v4, "sOWGI8Lv"

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lcom/cloud/tmc/integration/utils/AESUtils;->key:Ljava/lang/String;

    .line 47
    .line 48
    :cond_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/AESUtils;->key:Ljava/lang/String;

    .line 49
    .line 50
    return-object v0
.end method

.method private final get2PartSelfKey(II)Ljava/lang/String;
    .locals 4

    .line 1
    mul-int v0, p1, p2

    .line 2
    .line 3
    const-string v1, "FnvyH19r"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-gt v2, v0, :cond_1

    .line 7
    .line 8
    :goto_0
    rem-int v3, v2, p1

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    rem-int v3, v2, p2

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    if-eq v2, v0, :cond_1

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-object v1
.end method

.method private final get4String()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "rUOL6ott"

    .line 2
    .line 3
    return-object v0
.end method

.method private final getBK3()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "s2DytdII"

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "encrypted"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/AESUtils;->garbleSalt()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :try_start_0
    sget-object v1, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "this as java.lang.String).getBytes(charset)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 22
    .line 23
    const-string v2, "AES"

    .line 24
    .line 25
    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/utils/AESUtils;->parseHexStr2Byte(Ljava/lang/String;)[B

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x0

    .line 33
    const/16 v2, 0xc

    .line 34
    .line 35
    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v3, "AES/GCM/NoPadding"

    .line 40
    .line 41
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    .line 46
    .line 47
    const/16 v5, 0x80

    .line 48
    .line 49
    invoke-direct {v4, v5, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    invoke-virtual {v3, v0, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 54
    .line 55
    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    array-length v0, p1

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p1

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    const/16 v0, -0xc

    .line 63
    .line 64
    :goto_0
    invoke-virtual {v3, p1, v2, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v0, Ljava/lang/String;

    .line 69
    .line 70
    const-string v1, "ciphertext"

    .line 71
    .line 72
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v1, "UTF8"

    .line 76
    .line 77
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v2, "forName(charsetName)"

    .line 82
    .line 83
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    const-string v0, ""

    .line 94
    .line 95
    :goto_2
    return-object v0
.end method

.method public final parseByte2HexStr([B)Ljava/lang/String;
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 8
    .line 9
    .line 10
    array-length v1, p1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_2

    .line 13
    .line 14
    aget-byte v3, p1, v2

    .line 15
    .line 16
    and-int/lit16 v3, v3, 0xff

    .line 17
    .line 18
    const/16 v4, 0x10

    .line 19
    .line 20
    invoke-static {v4}, Lkotlin/text/CharsKt;->a(I)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "toString(this, checkRadix(radix))"

    .line 29
    .line 30
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x1

    .line 38
    if-ne v4, v5, :cond_1

    .line 39
    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v5, "0"

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const-string v4, "this as java.lang.String).toUpperCase()"

    .line 62
    .line 63
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    .line 68
    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1
.end method

.method public final parseHexStr2Byte(Ljava/lang/String;)[B
    .locals 9

    .line 1
    const-string v0, "hexStr"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    div-int/lit8 v0, v0, 0x2

    .line 20
    .line 21
    new-array v0, v0, [B

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    div-int/lit8 v1, v1, 0x2

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    if-ge v2, v1, :cond_1

    .line 31
    .line 32
    mul-int/lit8 v3, v2, 0x2

    .line 33
    .line 34
    add-int/lit8 v4, v3, 0x1

    .line 35
    .line 36
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const-string v6, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 41
    .line 42
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/16 v7, 0x10

    .line 46
    .line 47
    invoke-static {v7}, Lkotlin/text/CharsKt;->a(I)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    invoke-static {v5, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    add-int/lit8 v3, v3, 0x2

    .line 56
    .line 57
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v7}, Lkotlin/text/CharsKt;->a(I)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    mul-int/2addr v5, v7

    .line 73
    add-int/2addr v5, v3

    .line 74
    int-to-byte v3, v5

    .line 75
    aput-byte v3, v0, v2

    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    return-object v0
.end method
