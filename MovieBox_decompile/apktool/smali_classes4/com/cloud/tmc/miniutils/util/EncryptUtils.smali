.class public final Lcom/cloud/tmc/miniutils/util/EncryptUtils;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    const-string v1, "u can\'t instantiate me..."

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw v0
.end method

.method public static decrypt3DES([B[BLjava/lang/String;[B)[B
    .locals 6

    .line 1
    const-string v2, "DESede"

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static decryptAES([B[BLjava/lang/String;[B)[B
    .locals 6

    .line 1
    const-string v2, "AES"

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static decryptBase64AES([B[BLjava/lang/String;[B)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->base64Decode([B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->decryptAES([B[BLjava/lang/String;[B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static decryptBase64DES([B[BLjava/lang/String;[B)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->base64Decode([B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->decryptDES([B[BLjava/lang/String;[B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static decryptBase64RSA([B[BILjava/lang/String;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->base64Decode([B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->decryptRSA([B[BILjava/lang/String;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static decryptBase64_3DES([B[BLjava/lang/String;[B)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->base64Decode([B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->decrypt3DES([B[BLjava/lang/String;[B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static decryptDES([B[BLjava/lang/String;[B)[B
    .locals 6

    .line 1
    const-string v2, "DES"

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static decryptRSA([B[BILjava/lang/String;)[B
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, p3, v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->rsaTemplate([B[BILjava/lang/String;Z)[B

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static encrypt3DES([B[BLjava/lang/String;[B)[B
    .locals 6

    .line 1
    const-string v2, "DESede"

    .line 2
    .line 3
    const/4 v5, 0x1

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static encrypt3DES2Base64([B[BLjava/lang/String;[B)[B
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encrypt3DES([B[BLjava/lang/String;[B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->base64Encode([B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static encrypt3DES2HexString([B[BLjava/lang/String;[B)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encrypt3DES([B[BLjava/lang/String;[B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static encryptAES([B[BLjava/lang/String;[B)[B
    .locals 6

    .line 1
    const-string v2, "AES"

    .line 2
    .line 3
    const/4 v5, 0x1

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static encryptAES2Base64([B[BLjava/lang/String;[B)[B
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptAES([B[BLjava/lang/String;[B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->base64Encode([B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static encryptAES2HexString([B[BLjava/lang/String;[B)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptAES([B[BLjava/lang/String;[B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static encryptDES([B[BLjava/lang/String;[B)[B
    .locals 6

    .line 1
    const-string v2, "DES"

    .line 2
    .line 3
    const/4 v5, 0x1

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static encryptDES2Base64([B[BLjava/lang/String;[B)[B
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptDES([B[BLjava/lang/String;[B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->base64Encode([B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static encryptDES2HexString([B[BLjava/lang/String;[B)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptDES([B[BLjava/lang/String;[B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static encryptHmacMD5([B[B)[B
    .locals 1

    .line 1
    const-string v0, "HmacMD5"

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static encryptHmacMD5ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptHmacMD5ToString([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static encryptHmacMD5ToString([B[B)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptHmacMD5([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptHmacSHA1([B[B)[B
    .locals 1

    .line 1
    const-string v0, "HmacSHA1"

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static encryptHmacSHA1ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptHmacSHA1ToString([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static encryptHmacSHA1ToString([B[B)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptHmacSHA1([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptHmacSHA224([B[B)[B
    .locals 1

    .line 1
    const-string v0, "HmacSHA224"

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static encryptHmacSHA224ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptHmacSHA224ToString([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static encryptHmacSHA224ToString([B[B)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptHmacSHA224([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptHmacSHA256([B[B)[B
    .locals 1

    .line 1
    const-string v0, "HmacSHA256"

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static encryptHmacSHA256ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptHmacSHA256ToString([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static encryptHmacSHA256ToString([B[B)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptHmacSHA256([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptHmacSHA384([B[B)[B
    .locals 1

    .line 1
    const-string v0, "HmacSHA384"

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static encryptHmacSHA384ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptHmacSHA384ToString([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static encryptHmacSHA384ToString([B[B)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptHmacSHA384([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptHmacSHA512([B[B)[B
    .locals 1

    .line 1
    const-string v0, "HmacSHA512"

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static encryptHmacSHA512ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptHmacSHA512ToString([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static encryptHmacSHA512ToString([B[B)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptHmacSHA512([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD2([B)[B
    .locals 1

    .line 1
    const-string v0, "MD2"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static encryptMD2ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD2ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static encryptMD2ToString([B)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD2([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5([B)[B
    .locals 1

    .line 1
    const-string v0, "MD5"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static encryptMD5File(Ljava/io/File;)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3
    new-array p0, v0, [B

    return-object p0

    .line 4
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    const-string p0, "MD5"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 6
    new-instance v2, Ljava/security/DigestInputStream;

    invoke-direct {v2, v1, p0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/high16 p0, 0x40000

    .line 7
    :try_start_2
    new-array p0, p0, [B

    .line 8
    :cond_1
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_1

    .line 9
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 11
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 13
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_6
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 14
    :goto_1
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 15
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    new-array p0, v0, [B

    return-object p0
.end method

.method public static encryptMD5File(Ljava/lang/String;)[B
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    .line 2
    :goto_0
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5File(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5File2String(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5File(Ljava/io/File;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5File2String(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    .line 2
    :goto_0
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5File2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static encryptMD5ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 4
    const-string p0, ""

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5ToString([B)Ljava/lang/String;
    .locals 0

    .line 8
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5ToString([B[B)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 9
    const-string p0, ""

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 10
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    .line 11
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_2
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 13
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptRSA([B[BILjava/lang/String;)[B
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, p2, p3, v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->rsaTemplate([B[BILjava/lang/String;Z)[B

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static encryptRSA2Base64([B[BILjava/lang/String;)[B
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptRSA([B[BILjava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->base64Encode([B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static encryptRSA2HexString([B[BILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptRSA([B[BILjava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static encryptSHA1([B)[B
    .locals 1

    .line 1
    const-string v0, "SHA-1"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static encryptSHA1ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptSHA1ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static encryptSHA1ToString([B)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptSHA1([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA224([B)[B
    .locals 1

    .line 1
    const-string v0, "SHA224"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static encryptSHA224ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptSHA224ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static encryptSHA224ToString([B)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptSHA224([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA256([B)[B
    .locals 1

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static encryptSHA256ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptSHA256ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static encryptSHA256ToString([B)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptSHA256([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA384([B)[B
    .locals 1

    .line 1
    const-string v0, "SHA-384"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static encryptSHA384ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptSHA384ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static encryptSHA384ToString([B)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptSHA384([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA512([B)[B
    .locals 1

    .line 1
    const-string v0, "SHA-512"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static encryptSHA512ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptSHA512ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static encryptSHA512ToString([B)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptSHA512([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static hashTemplate([BLjava/lang/String;)[B
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    if-gtz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static hmacTemplate([B[BLjava/lang/String;)[B
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 14
    .line 15
    invoke-direct {v1, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception p0

    .line 33
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_1
    return-object v0
.end method

.method private static joins([B[B)[B
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    add-int/2addr v0, v1

    .line 4
    new-array v0, v0, [B

    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    array-length p0, p0

    .line 12
    array-length v1, p1

    .line 13
    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static rc4([B[B)[B
    .locals 8

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_3

    .line 9
    :cond_0
    array-length v0, p1

    .line 10
    const/4 v1, 0x1

    .line 11
    if-lt v0, v1, :cond_4

    .line 12
    .line 13
    array-length v0, p1

    .line 14
    const/16 v2, 0x100

    .line 15
    .line 16
    if-gt v0, v2, :cond_4

    .line 17
    .line 18
    new-array v0, v2, [B

    .line 19
    .line 20
    new-array v3, v2, [B

    .line 21
    .line 22
    array-length v4, p1

    .line 23
    const/4 v5, 0x0

    .line 24
    move v6, v5

    .line 25
    :goto_0
    if-ge v6, v2, :cond_1

    .line 26
    .line 27
    int-to-byte v7, v6

    .line 28
    aput-byte v7, v0, v6

    .line 29
    .line 30
    rem-int v7, v6, v4

    .line 31
    .line 32
    aget-byte v7, p1, v7

    .line 33
    .line 34
    aput-byte v7, v3, v6

    .line 35
    .line 36
    add-int/lit8 v6, v6, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move p1, v5

    .line 40
    move v4, p1

    .line 41
    :goto_1
    if-ge p1, v2, :cond_2

    .line 42
    .line 43
    aget-byte v6, v0, p1

    .line 44
    .line 45
    add-int/2addr v4, v6

    .line 46
    aget-byte v7, v3, p1

    .line 47
    .line 48
    add-int/2addr v4, v7

    .line 49
    and-int/lit16 v4, v4, 0xff

    .line 50
    .line 51
    aget-byte v7, v0, v4

    .line 52
    .line 53
    aput-byte v6, v0, v4

    .line 54
    .line 55
    aput-byte v7, v0, p1

    .line 56
    .line 57
    add-int/lit8 p1, p1, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    array-length p1, p0

    .line 61
    new-array p1, p1, [B

    .line 62
    .line 63
    move v2, v5

    .line 64
    :goto_2
    array-length v3, p0

    .line 65
    if-ge v5, v3, :cond_3

    .line 66
    .line 67
    add-int/2addr v2, v1

    .line 68
    and-int/lit16 v2, v2, 0xff

    .line 69
    .line 70
    aget-byte v3, v0, v2

    .line 71
    .line 72
    add-int/2addr v4, v3

    .line 73
    and-int/lit16 v4, v4, 0xff

    .line 74
    .line 75
    aget-byte v6, v0, v4

    .line 76
    .line 77
    aput-byte v3, v0, v4

    .line 78
    .line 79
    aput-byte v6, v0, v2

    .line 80
    .line 81
    aget-byte v3, v0, v4

    .line 82
    .line 83
    add-int/2addr v6, v3

    .line 84
    and-int/lit16 v3, v6, 0xff

    .line 85
    .line 86
    aget-byte v3, v0, v3

    .line 87
    .line 88
    aget-byte v6, p0, v5

    .line 89
    .line 90
    xor-int/2addr v3, v6

    .line 91
    int-to-byte v3, v3

    .line 92
    aput-byte v3, p1, v5

    .line 93
    .line 94
    add-int/lit8 v5, v5, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    return-object p1

    .line 98
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    const-string p1, "key must be between 1 and 256 bytes"

    .line 101
    .line 102
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_5
    :goto_3
    const/4 p0, 0x0

    .line 107
    return-object p0
.end method

.method private static rsaTemplate([B[BILjava/lang/String;Z)[B
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_9

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    if-eqz v1, :cond_9

    .line 6
    .line 7
    if-eqz p1, :cond_9

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    const/16 v2, 0x1c

    .line 17
    .line 18
    const-string v3, "RSA"

    .line 19
    .line 20
    if-ge v1, v2, :cond_1

    .line 21
    .line 22
    :try_start_1
    const-string v1, "BC"

    .line 23
    .line 24
    invoke-static {v3, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_1
    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_0
    if-eqz p4, :cond_2

    .line 37
    .line 38
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    .line 39
    .line 40
    invoke-direct {v2, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 49
    .line 50
    invoke-direct {v2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :goto_1
    if-nez p1, :cond_3

    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_3
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz p4, :cond_4

    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    const/4 v2, 0x2

    .line 69
    :goto_2
    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 70
    .line 71
    .line 72
    array-length p1, p0

    .line 73
    div-int/lit8 p2, p2, 0x8

    .line 74
    .line 75
    if-eqz p4, :cond_5

    .line 76
    .line 77
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    const-string p4, "pkcs1padding"

    .line 82
    .line 83
    invoke-virtual {p3, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    if-eqz p3, :cond_5

    .line 88
    .line 89
    add-int/lit8 p2, p2, -0xb

    .line 90
    .line 91
    :cond_5
    div-int p3, p1, p2

    .line 92
    .line 93
    if-lez p3, :cond_8

    .line 94
    .line 95
    const/4 p4, 0x0

    .line 96
    new-array v2, p4, [B

    .line 97
    .line 98
    new-array v3, p2, [B

    .line 99
    .line 100
    move v4, p4

    .line 101
    move v5, v4

    .line 102
    :goto_3
    if-ge v4, p3, :cond_6

    .line 103
    .line 104
    invoke-static {p0, v5, v3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-static {v2, v6}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->joins([B[B)[B

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    add-int/2addr v5, p2

    .line 116
    add-int/lit8 v4, v4, 0x1

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    if-eq v5, p1, :cond_7

    .line 120
    .line 121
    sub-int/2addr p1, v5

    .line 122
    new-array p2, p1, [B

    .line 123
    .line 124
    invoke-static {p0, v5, p2, p4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {v2, p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->joins([B[B)[B

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    :cond_7
    return-object v2

    .line 136
    :cond_8
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 137
    .line 138
    .line 139
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    return-object p0

    .line 141
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    :cond_9
    :goto_5
    return-object v0
.end method

.method private static symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_6

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    if-eqz v1, :cond_6

    .line 6
    .line 7
    if-eqz p1, :cond_6

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_4

    .line 13
    :cond_0
    :try_start_0
    const-string v1, "DES"

    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    new-instance v1, Ljavax/crypto/spec/DESKeySpec;

    .line 22
    .line 23
    invoke-direct {v1, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_3

    .line 37
    :cond_1
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 38
    .line 39
    invoke-direct {v1, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    move-object p1, v1

    .line 43
    :goto_0
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    const/4 p3, 0x2

    .line 48
    const/4 v1, 0x1

    .line 49
    if-eqz p4, :cond_4

    .line 50
    .line 51
    array-length v2, p4

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    .line 56
    .line 57
    invoke-direct {v2, p4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 58
    .line 59
    .line 60
    if-eqz p5, :cond_3

    .line 61
    .line 62
    move p3, v1

    .line 63
    :cond_3
    invoke-virtual {p2, p3, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_4
    :goto_1
    if-eqz p5, :cond_5

    .line 68
    .line 69
    move p3, v1

    .line 70
    :cond_5
    invoke-virtual {p2, p3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 71
    .line 72
    .line 73
    :goto_2
    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 74
    .line 75
    .line 76
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    return-object p0

    .line 78
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :cond_6
    :goto_4
    return-object v0
.end method
