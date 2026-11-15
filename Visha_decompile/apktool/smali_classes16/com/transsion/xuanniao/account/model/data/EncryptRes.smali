.class public Lcom/transsion/xuanniao/account/model/data/EncryptRes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public responseData:Ljava/lang/String;

.field public responseSign:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkSign()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/xuanniao/account/model/data/EncryptRes;->responseData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/model/data/EncryptRes;->responseSign:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/model/data/EncryptRes;->responseData:Ljava/lang/String;

    invoke-static {v0}, Lnr7;->c(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/EncryptRes;->responseSign:Ljava/lang/String;

    const-string v2, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC591VlH9xM+TZYuWM4WZnxKYryc6xrGWco+jDFRfMNyLmET3bcEPnaCkZNcuVxjFvofiXfN4yNXFFY7iSysLzZ5GdnvAwYne8ONRxJuX2ixvMYduBhaPj2AAfEHZ6H3yo2kV6q8CX3CGzmLkz8pDPia9wmafjXSxObaPFgOEF0GwIDAQAB"

    invoke-static {v0, p0, v2}, Lnr7;->b([BLjava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return v1
.end method

.method public dataJson(Lmk7;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/EncryptRes;->responseData:Ljava/lang/String;

    invoke-static {p0}, Lnr7;->c(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lmk7;->a([B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public isSafe(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/transsion/xuanniao/account/model/data/BaseEncryptRes;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/model/data/BaseEncryptRes;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/model/data/BaseEncryptRes;->verifyId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/BaseEncryptRes;->verifyId:Ljava/lang/String;

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
