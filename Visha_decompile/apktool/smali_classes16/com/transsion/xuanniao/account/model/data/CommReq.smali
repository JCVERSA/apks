.class public Lcom/transsion/xuanniao/account/model/data/CommReq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public data:Ljava/lang/String;

.field public keyId:Ljava/lang/String;

.field public requestKey:Ljava/lang/String;

.field public requestSign:Ljava/lang/String;

.field public signTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateReq(Landroid/content/Context;Lmk7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lao7$a;->a:Lao7;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/transsion/xuanniao/account/model/data/CommReq;

    invoke-direct {v2}, Lcom/transsion/xuanniao/account/model/data/CommReq;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "AccountPrefs"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "key_time_diff"

    const-wide/16 v8, 0x0

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/transsion/xuanniao/account/model/data/CommReq;->signTime:J

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-class v3, Ljava/util/HashMap;

    invoke-virtual {v1, p2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    iget-wide v3, v2, Lcom/transsion/xuanniao/account/model/data/CommReq;->signTime:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "signTime"

    invoke-virtual {p2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p1, Lmk7;->b:[B

    const-string v4, "AES"

    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p1, Lmk7;->c:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v4, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    invoke-static {p2, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v2, Lcom/transsion/xuanniao/account/model/data/CommReq;->data:Ljava/lang/String;

    iget-object v1, p1, Lmk7;->b:[B

    array-length v3, v1

    iget-object v4, p1, Lmk7;->c:[B

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v3, v3, [B

    array-length v4, v1

    invoke-static {v1, v7, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lmk7;->c:[B

    iget-object p1, p1, Lmk7;->b:[B

    array-length p1, p1

    array-length v4, v1

    invoke-static {v1, v7, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC591VlH9xM+TZYuWM4WZnxKYryc6xrGWco+jDFRfMNyLmET3bcEPnaCkZNcuVxjFvofiXfN4yNXFFY7iSysLzZ5GdnvAwYne8ONRxJuX2ixvMYduBhaPj2AAfEHZ6H3yo2kV6q8CX3CGzmLkz8pDPia9wmafjXSxObaPFgOEF0GwIDAQAB"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v7}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1, v5, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/transsion/xuanniao/account/model/data/CommReq;->requestKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lao7;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/transsion/xuanniao/account/model/data/CommReq;->keyId:Ljava/lang/String;

    iget-object p1, v0, Lao7;->b:Lul7;

    const-string v0, ""

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/security/api/hap/TranCryptoManagerLite;->b:Lcom/transsion/security/api/hap/TranCryptoManagerLite$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Ltn9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhyperion/hap/ICryptoManager;

    const-string p1, "signatureAlias"

    invoke-interface {p0, p1, p2}, Lhyperion/hap/ICryptoManager;->sign(Ljava/lang/String;[B)[B

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, v2, Lcom/transsion/xuanniao/account/model/data/CommReq;->requestSign:Ljava/lang/String;

    return-object v2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
