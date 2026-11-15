.class public Lao7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lao7$a;
    }
.end annotation


# instance fields
.field public a:Lmk7;

.field public b:Lul7;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lmk7;
    .locals 4

    iget-object v0, p0, Lao7;->a:Lmk7;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Lmk7;

    :try_start_0
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x0

    :goto_0
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-direct {v1, v3, v2, v0}, Lmk7;-><init>(Ljava/lang/String;[B[B)V

    iput-object v1, p0, Lao7;->a:Lmk7;

    :cond_0
    iget-object p0, p0, Lao7;->a:Lmk7;

    return-object p0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lao7;->n(Landroid/content/Context;)V

    iget-object p0, p0, Lao7;->b:Lul7;

    if-eqz p0, :cond_0

    check-cast p0, Lpm7;

    iget-object p0, p0, Lpm7;->a:Landroid/content/Context;

    sget-object p1, Lcom/transsion/security/api/hap/TranStoreManagerLite;->b:Lcom/transsion/security/api/hap/TranStoreManagerLite$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Ltn9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhyperion/hap/IStoreManager;

    const-string p1, "account"

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Lhyperion/hap/IStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AccountRes;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lao7;->n(Landroid/content/Context;)V

    iget-object p0, p0, Lao7;->b:Lul7;

    if-eqz p0, :cond_0

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p0, Lpm7;

    iget-object p0, p0, Lpm7;->a:Landroid/content/Context;

    sget-object p2, Lcom/transsion/security/api/hap/TranStoreManagerLite;->b:Lcom/transsion/security/api/hap/TranStoreManagerLite$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0}, Ltn9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhyperion/hap/IStoreManager;

    const-string p2, "account"

    invoke-interface {p0, p2, p1}, Lhyperion/hap/IStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lao7;->n(Landroid/content/Context;)V

    invoke-virtual {p0}, Lao7;->f()Lcom/transsion/xuanniao/account/model/data/Config;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/xuanniao/account/model/data/Config;

    invoke-direct {p1}, Lcom/transsion/xuanniao/account/model/data/Config;-><init>()V

    :cond_0
    iput-object p2, p1, Lcom/transsion/xuanniao/account/model/data/Config;->token:Ljava/lang/String;

    iput-object p3, p1, Lcom/transsion/xuanniao/account/model/data/Config;->refreshToken:Ljava/lang/String;

    iget-object p0, p0, Lao7;->b:Lul7;

    if-eqz p0, :cond_1

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p0, Lpm7;

    iget-object p0, p0, Lpm7;->a:Landroid/content/Context;

    sget-object p2, Lcom/transsion/security/api/hap/TranStoreManagerLite;->b:Lcom/transsion/security/api/hap/TranStoreManagerLite$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0}, Ltn9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhyperion/hap/IStoreManager;

    const-string p2, "config"

    invoke-interface {p0, p2, p1}, Lhyperion/hap/IStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public e(Landroid/content/Context;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lao7;->n(Landroid/content/Context;)V

    iget-object p0, p0, Lao7;->b:Lul7;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    check-cast p0, Lpm7;

    iget-object p0, p0, Lpm7;->a:Landroid/content/Context;

    sget-object p2, Lcom/transsion/security/api/hap/TranStoreManagerLite;->b:Lcom/transsion/security/api/hap/TranStoreManagerLite$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0}, Ltn9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhyperion/hap/IStoreManager;

    const-string p2, "isKeyUploaded"

    invoke-interface {p0, p2, p1}, Lhyperion/hap/IStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public f()Lcom/transsion/xuanniao/account/model/data/Config;
    .locals 2

    iget-object p0, p0, Lao7;->b:Lul7;

    if-eqz p0, :cond_0

    check-cast p0, Lpm7;

    iget-object p0, p0, Lpm7;->a:Landroid/content/Context;

    sget-object v0, Lcom/transsion/security/api/hap/TranStoreManagerLite;->b:Lcom/transsion/security/api/hap/TranStoreManagerLite$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Ltn9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhyperion/hap/IStoreManager;

    const-string v0, "config"

    invoke-interface {p0, v0}, Lhyperion/hap/IStoreManager;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/transsion/xuanniao/account/model/data/Config;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/model/data/Config;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfig error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.palm.id.log"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lao7;->b:Lul7;

    if-eqz p0, :cond_3

    check-cast p0, Lpm7;

    sget-object p0, Lcom/transsion/security/api/hap/TranCryptoManagerLite;->b:Lcom/transsion/security/api/hap/TranCryptoManagerLite$Companion;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltn9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperion/hap/ICryptoManager;

    const-string v1, "signatureAlias"

    invoke-interface {v0, v1}, Lhyperion/hap/ICryptoManager;->exportKey(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltn9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhyperion/hap/ICryptoManager;

    invoke-interface {v2}, Lhyperion/hap/ICryptoManager;->aliases()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltn9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperion/hap/ICryptoManager;

    const/16 v2, 0x425

    invoke-interface {v0, v1, v2}, Lhyperion/hap/ICryptoManager;->generateKey(Ljava/lang/String;I)V

    const-string v0, "com.palm.id.log"

    const-string v2, "generateSignatureKey"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltn9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhyperion/hap/ICryptoManager;

    invoke-interface {p0, v1}, Lhyperion/hap/ICryptoManager;->exportKey(Ljava/lang/String;)[B

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    const/4 p0, 0x2

    invoke-static {v0, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lao7;->b:Lul7;

    if-eqz p0, :cond_0

    check-cast p0, Lpm7;

    iget-object p0, p0, Lpm7;->a:Landroid/content/Context;

    sget-object v0, Lcom/transsion/security/api/hap/TranStoreManagerLite;->b:Lcom/transsion/security/api/hap/TranStoreManagerLite$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Ltn9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhyperion/hap/IStoreManager;

    const-string v0, "linked_bd"

    invoke-interface {p0, v0}, Lhyperion/hap/IStoreManager;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public i(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    iget-object p0, p0, Lao7;->b:Lul7;

    const-string v0, ""

    if-eqz p0, :cond_4

    check-cast p0, Lpm7;

    sget-object p0, Lcom/transsion/security/api/hap/TranCryptoManagerLite;->b:Lcom/transsion/security/api/hap/TranCryptoManagerLite$Companion;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltn9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhyperion/hap/ICryptoManager;

    const-string v2, "signatureAlias"

    invoke-interface {v1, v2}, Lhyperion/hap/ICryptoManager;->exportKey(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Ltn9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhyperion/hap/ICryptoManager;

    invoke-interface {v3}, Lhyperion/hap/ICryptoManager;->aliases()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltn9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhyperion/hap/ICryptoManager;

    const/16 v3, 0x425

    invoke-interface {v1, v2, v3}, Lhyperion/hap/ICryptoManager;->generateKey(Ljava/lang/String;I)V

    const-string v1, "com.palm.id.log"

    const-string v3, "generateSignatureKey"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltn9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhyperion/hap/ICryptoManager;

    invoke-interface {p0, v2}, Lhyperion/hap/ICryptoManager;->exportKey(Ljava/lang/String;)[B

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_4

    :try_start_0
    const-string p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const-string v3, "0"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    return-object v0
.end method

.method public j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;
    .locals 1

    invoke-virtual {p0, p1}, Lao7;->n(Landroid/content/Context;)V

    iget-object p0, p0, Lao7;->b:Lul7;

    if-eqz p0, :cond_0

    check-cast p0, Lpm7;

    iget-object p0, p0, Lpm7;->a:Landroid/content/Context;

    sget-object p1, Lcom/transsion/security/api/hap/TranStoreManagerLite;->b:Lcom/transsion/security/api/hap/TranStoreManagerLite$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Ltn9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhyperion/hap/IStoreManager;

    const-string p1, "account"

    invoke-interface {p0, p1}, Lhyperion/hap/IStoreManager;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAccountInfo error:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.palm.id.log"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public k(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lao7;->n(Landroid/content/Context;)V

    invoke-virtual {p0}, Lao7;->f()Lcom/transsion/xuanniao/account/model/data/Config;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/Config;->refreshToken:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public l(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lao7;->n(Landroid/content/Context;)V

    invoke-virtual {p0}, Lao7;->f()Lcom/transsion/xuanniao/account/model/data/Config;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "isKeyUploaded"

    const-string v2, "true"

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lcom/transsion/xuanniao/account/model/data/Config;->isKeyUploaded:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lao7;->b:Lul7;

    check-cast p0, Lpm7;

    iget-object p0, p0, Lpm7;->a:Landroid/content/Context;

    sget-object p1, Lcom/transsion/security/api/hap/TranStoreManagerLite;->b:Lcom/transsion/security/api/hap/TranStoreManagerLite$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Ltn9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhyperion/hap/IStoreManager;

    invoke-interface {p0, v1}, Lhyperion/hap/IStoreManager;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    iget-object p0, p0, Lao7;->b:Lul7;

    if-eqz p0, :cond_3

    check-cast p0, Lpm7;

    iget-object p0, p0, Lpm7;->a:Landroid/content/Context;

    sget-object p1, Lcom/transsion/security/api/hap/TranStoreManagerLite;->b:Lcom/transsion/security/api/hap/TranStoreManagerLite$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Ltn9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhyperion/hap/IStoreManager;

    invoke-interface {p0, v1}, Lhyperion/hap/IStoreManager;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public m(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lao7;->n(Landroid/content/Context;)V

    invoke-virtual {p0}, Lao7;->f()Lcom/transsion/xuanniao/account/model/data/Config;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/Config;->token:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public n(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lao7;->b:Lul7;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lao7;->b:Lul7;

    if-nez v0, :cond_0

    new-instance v0, Lpm7;

    invoke-direct {v0, p1}, Lpm7;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lao7;->b:Lul7;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-void
.end method
