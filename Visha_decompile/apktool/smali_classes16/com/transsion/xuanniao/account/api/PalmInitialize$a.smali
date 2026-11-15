.class public Lcom/transsion/xuanniao/account/api/PalmInitialize$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/palmsdk/account/XNManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/api/PalmInitialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/api/PalmInitialize$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/palmsdk/PalmID$a;)Z
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/api/PalmInitialize$a;->g(Landroid/content/Context;)J

    move-result-wide v0

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    const-wide/32 v2, 0x1b7740

    cmp-long p0, v0, v2

    if-gtz p0, :cond_1

    :cond_0
    invoke-static {}, Lil7;->a()Lil7;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lil7;->e(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/palmsdk/PalmID$a;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.palm.id.log"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7

    const-string v0, "com.palm.id.log"

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p3, v3, :cond_1

    :try_start_0
    const-string v4, "debug.palmsdk.test_mode"

    invoke-static {p1, v4, v1}, Lrr7;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    if-ne p3, v2, :cond_2

    sput v2, Ljb0;->a:I

    sput v2, Lbw7;->a:I

    goto :goto_2

    :catch_0
    move-exception p3

    goto :goto_1

    :cond_1
    :goto_0
    sput v3, Ljb0;->a:I

    sput v3, Lbw7;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    :try_start_1
    invoke-static {p1}, Ljr7;->i(Landroid/content/Context;)Z

    sget-object p3, Lgo7$a;->a:Lgo7;

    iput-object p2, p3, Lgo7;->a:Ljava/lang/String;

    sget-object p2, Lao7$a;->a:Lao7;

    invoke-virtual {p2, p1}, Lao7;->l(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-string v3, "connectivity"

    invoke-virtual {p3, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/ConnectivityManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez p3, :cond_3

    goto/16 :goto_6

    :cond_3
    :try_start_2
    invoke-virtual {p3}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p3, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p3

    if-eqz p3, :cond_7

    const/4 v3, 0x1

    invoke-virtual {p3, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p3, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p3, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz p3, :cond_7

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_3
    :try_start_3
    new-instance p3, Lcom/transsion/xuanniao/account/model/data/ApplyKeyReq;

    invoke-direct {p3}, Lcom/transsion/xuanniao/account/model/data/ApplyKeyReq;-><init>()V

    invoke-virtual {p2, p1}, Lao7;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/transsion/xuanniao/account/model/data/ApplyKeyReq;->publicKey1061:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lao7;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/transsion/xuanniao/account/model/data/ApplyKeyReq;->keyId:Ljava/lang/String;

    new-instance p2, Lcom/transsion/xuanniao/account/api/PalmInitialize$a$a;

    const-string v4, ""

    const-class v5, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/xuanniao/account/api/PalmInitialize$a$a;-><init>(Lcom/transsion/xuanniao/account/api/PalmInitialize$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Landroid/content/Context;)V

    invoke-static {p1}, Lmp7;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/transsion/xuanniao/account/model/data/ApplyKeyReq;->deviceId:Ljava/lang/String;

    const-string p0, "/sdk/config/apply-key"

    sget-object v1, Lcr7$b;->a:Lcr7;

    invoke-virtual {v1, p1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Lzn7;

    invoke-direct {v1}, Lzn7;-><init>()V

    invoke-static {p0}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0, p3, p2}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

    goto :goto_6

    :catch_2
    move-exception p0

    goto :goto_5

    :cond_5
    instance-of p0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    if-eqz p0, :cond_6

    move-object p0, p1

    check-cast p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_6
    instance-of p0, p1, Landroid/app/Activity;

    if-eqz p0, :cond_7

    invoke-virtual {v1, p1}, Lcr7;->b(Landroid/content/Context;)V

    goto :goto_6

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :goto_5
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_6
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    sget-object p0, Lao7$a;->a:Lao7;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-virtual {p0, p1, p2}, Lao7;->c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lao7$a;->a:Lao7;

    invoke-virtual {p0, p1}, Lao7;->n(Landroid/content/Context;)V

    invoke-virtual {p0}, Lao7;->f()Lcom/transsion/xuanniao/account/model/data/Config;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/Config;->token:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public e(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AccountPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_logged_in"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/xuanniao/account/api/PalmInitialize$a;->a:Z

    if-nez v1, :cond_0

    :try_start_0
    sget-object v1, Lao7$a;->a:Lao7;

    invoke-virtual {v1, p1}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    iget-object v1, v1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->xuanniaoId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lxj;->h(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/api/PalmInitialize$a;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {}, Lil7;->a()Lil7;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lil7;->d(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.palm.id.log"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public g(Landroid/content/Context;)J
    .locals 9

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/api/PalmInitialize$a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object p0, p0, v2

    const/16 v2, 0xb

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "exp"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string v1, "iat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0

    :catch_0
    :cond_0
    const-wide/32 v0, 0x6ddd00

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "AccountPrefs"

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "key_refresh_time"

    const-wide/16 v4, 0x0

    invoke-interface {p0, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sub-long v6, v2, p0

    cmp-long v8, v6, v4

    if-lez v8, :cond_1

    cmp-long v8, v6, v0

    if-gez v8, :cond_1

    sub-long/2addr v0, v6

    return-wide v0

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "etime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", ltime = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", ctime = "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.palm.id.log"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4
.end method

.method public h(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    sget-object p0, Lao7$a;->a:Lao7;

    invoke-virtual {p0, p1}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object p0

    if-nez p2, :cond_0

    if-eqz p0, :cond_0

    iget-object p2, p0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->xuanniaoId:Ljava/lang/String;

    if-nez p2, :cond_1

    :cond_0
    invoke-static {}, Lil7;->a()Lil7;

    move-result-object p2

    invoke-virtual {p2, p1}, Lil7;->c(Landroid/content/Context;)V

    :cond_1
    if-eqz p0, :cond_2

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object p0, Lao7$a;->a:Lao7;

    invoke-virtual {p0, p1, p2, p3}, Lao7;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "AccountPrefs"

    invoke-virtual {v1, v2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v1, "is_logged_in"

    invoke-interface {p3, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-eqz p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "key_refresh_time"

    invoke-interface {p3, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lao7;->b(Landroid/content/Context;)V

    :cond_2
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p2, "notify"

    invoke-virtual {p0, p2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "is_login"

    invoke-virtual {p0, p2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lwk7;->a()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lam7;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
