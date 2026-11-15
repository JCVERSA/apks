.class public Lcom/transsion/playercommon/vishaapis/aistatistics/AESUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_STANDARD_LENGTH:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt([BLjava/lang/String;)[B
    .locals 3

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Encryption and decryption exception!"

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_0
    const-string p1, "AES/ECB/PKCS5Padding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Encryption and decryption error!"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/vishaapis/aistatistics/AESUtils;->decrypt([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, [B

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static decrypt_cbc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {v0, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "AES"

    invoke-direct {p2, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p1, "AES/CBC/PKCS5PADDING"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 p2, 0x0

    invoke-static {p0, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static encrypt([BLjava/lang/String;)[B
    .locals 3

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Encryption and decryption exception!"

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_0
    const-string p1, "AES/ECB/PKCS5Padding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Encryption and decryption error!"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/vishaapis/aistatistics/AESUtils;->encrypt([BLjava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encrypt_cbc([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {v0, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "AES"

    invoke-direct {p2, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p1, "AES/CBC/PKCS5PADDING"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getKey()Lcom/transsion/playercommon/vishaapis/aistatistics/KeyBean;
    .locals 4

    const-string v0, "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"

    const-string v1, "KeySetVishaAista"

    invoke-static {v0, v1}, Lcom/transsion/playercommon/vishaapis/aistatistics/AESUtils;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/playercommon/vishaapis/aistatistics/AESUtils$1;

    invoke-direct {v1}, Lcom/transsion/playercommon/vishaapis/aistatistics/AESUtils$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/Random;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    new-instance v2, Lcom/transsion/playercommon/vishaapis/aistatistics/KeyBean;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v2, v0, v1}, Lcom/transsion/playercommon/vishaapis/aistatistics/KeyBean;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method

.method public static mark(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/transsion/playercommon/vishaapis/aistatistics/KeyConstant;->keyBean:Lcom/transsion/playercommon/vishaapis/aistatistics/KeyBean;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/aistatistics/AESUtils;->getKey()Lcom/transsion/playercommon/vishaapis/aistatistics/KeyBean;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/vishaapis/aistatistics/KeyConstant;->keyBean:Lcom/transsion/playercommon/vishaapis/aistatistics/KeyBean;

    :cond_0
    const-string v0, "\\n"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/playercommon/vishaapis/aistatistics/GzipUtil;->compress(Ljava/lang/String;)[B

    move-result-object p0

    sget-object v2, Lcom/transsion/playercommon/vishaapis/aistatistics/KeyConstant;->keyBean:Lcom/transsion/playercommon/vishaapis/aistatistics/KeyBean;

    invoke-virtual {v2}, Lcom/transsion/playercommon/vishaapis/aistatistics/KeyBean;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "abcdefghijk1mnop"

    invoke-static {p0, v2, v3}, Lcom/transsion/playercommon/vishaapis/aistatistics/AESUtils;->encrypt_cbc([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
