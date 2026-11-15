.class public Lil7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lil7;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lil7;
    .locals 2

    sget-object v0, Lil7;->a:Lil7;

    if-nez v0, :cond_1

    const-class v0, Lil7;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lil7;->a:Lil7;

    if-nez v1, :cond_0

    new-instance v1, Lil7;

    invoke-direct {v1}, Lil7;-><init>()V

    sput-object v1, Lil7;->a:Lil7;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lil7;->a:Lil7;

    return-object v0
.end method

.method public static b(Lil7;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Law7;->c(Landroid/content/Context;)Law7;

    move-result-object v1

    move-object/from16 v7, p2

    invoke-virtual {v1, v7}, Law7;->b(Ljava/lang/String;)Lcom/transsion/palmsdk/data/PalmAuthRequest;

    move-result-object v9

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v9}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthParam()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->toMap()Ljava/util/Map;

    move-result-object v10

    const-string v11, "code"

    move-object/from16 v8, p3

    invoke-interface {v10, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "authorization_code"

    const-string v12, "grant_type"

    invoke-interface {v10, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x28

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    new-instance v13, Lbo7;

    const-class v4, Lcom/transsion/xuanniao/account/auth/data/AuthTokenRes;

    move-object v1, v13

    move-object v2, p0

    move-object v3, p1

    move-object v5, p1

    move-object v6, v9

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lbo7;-><init>(Lil7;Landroid/content/Context;Ljava/lang/Class;Landroid/content/Context;Lcom/transsion/palmsdk/data/PalmAuthRequest;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;

    invoke-direct {v1}, Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;-><init>()V

    const-string v2, "client_id"

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;->setClientId(Ljava/lang/String;)V

    const-string v2, "redirect_uri"

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;->setRedirectUri(Ljava/lang/String;)V

    const-string v2, "scope"

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;->setScope(Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;->setCode(Ljava/lang/String;)V

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;->setGrantType(Ljava/lang/String;)V

    sget-object v2, Lao7$a;->a:Lao7;

    invoke-virtual {v2}, Lao7;->a()Lmk7;

    move-result-object v2

    iput-object v2, v13, LOppOOp0/OppO0O0;->f:Lmk7;

    invoke-static {p1, v2, v1}, Lcom/transsion/xuanniao/account/model/data/CommReq;->generateReq(Landroid/content/Context;Lmk7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lzn7;

    invoke-direct {v2}, Lzn7;-><init>()V

    const-string v3, "/client/token-crypt"

    invoke-static {v3}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1, v13}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const v1, 0x9ca8

    invoke-virtual {v9, v1, v0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->setException(ILjava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "version"

    const-string v3, "2.0.1.03"

    const-string v4, "appid"

    invoke-static {v9, v0, v4, v2, v3}, Lok7;->a(Lcom/transsion/palmsdk/data/PalmAuthRequest;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ti_s_result"

    const-string v3, "failure"

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "errcode"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1e1e

    const/4 v2, 0x0

    const-string v3, "sdk_auth_result"

    invoke-static {v3, v1, v0, v2}, Lxm7;->a(Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_3

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    const v0, 0x9ca7

    const-string v1, "network unavailable"

    invoke-virtual {v9, v0, v1}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->setException(ILjava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)V
    .locals 8

    const-string v0, "sign"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "AccountPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "is_logged_in"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lil7$b;

    const-class v6, Lcom/transsion/xuanniao/account/model/data/AccountRes;

    const/4 v5, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lil7$b;-><init>(Lil7;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Landroid/content/Context;)V

    sget-object p0, Lao7$a;->a:Lao7;

    invoke-virtual {p0}, Lao7;->a()Lmk7;

    move-result-object p0

    iput-object p0, v1, LOppOOp0/OppO0O0;->f:Lmk7;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enableBase64Img"

    const-string v3, "1"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p0, v2}, Lcom/transsion/xuanniao/account/model/data/CommReq;->generateReq(Landroid/content/Context;Lmk7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "/sdk/account/get-profile-crypt"

    sget-object v2, Lcr7$b;->a:Lcr7;

    invoke-virtual {v2, p1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lzn7;

    invoke-direct {v2}, Lzn7;-><init>()V

    invoke-static {v0}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0, p0, v1}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    if-eqz p0, :cond_2

    move-object p0, p1

    check-cast p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_2
    instance-of p0, p1, Landroid/app/Activity;

    if-eqz p0, :cond_3

    invoke-virtual {v2, p1}, Lcr7;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "getAccountFromNet e = "

    invoke-static {p1}, Lxo7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.palm.id.log"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    invoke-static {p1}, Law7;->c(Landroid/content/Context;)Law7;

    move-result-object v0

    invoke-virtual {v0, p2}, Law7;->b(Ljava/lang/String;)Lcom/transsion/palmsdk/data/PalmAuthRequest;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_2
    :goto_0
    invoke-virtual {v3}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthParam()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Bearer "

    invoke-static {v1}, Lxo7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lao7$a;->a:Lao7;

    invoke-virtual {v2, p1}, Lao7;->n(Landroid/content/Context;)V

    invoke-virtual {v2}, Lao7;->f()Lcom/transsion/xuanniao/account/model/data/Config;

    move-result-object v2

    const-string v4, ""

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/transsion/xuanniao/account/model/data/Config;->token:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_4

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_language:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_4
    const-string v1, "Language"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Client-ID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppSign()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppSign"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/transsion/palmsdk/PalmAuthParam;->getPkgName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppPackage"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/transsion/palmsdk/PalmAuthParam;->toMap()Ljava/util/Map;

    move-result-object v7

    const-string v1, "grant_type"

    const-string v2, "authorization_code"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "response_type"

    const-string v2, "code"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ldk7;

    invoke-direct {v8}, Ldk7;-><init>()V

    new-instance v9, Lil7$a;

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lil7$a;-><init>(Lil7;Lcom/transsion/palmsdk/data/PalmAuthRequest;Landroid/content/Context;Ljava/lang/String;Lcom/transsion/palmsdk/PalmAuthParam;)V

    invoke-virtual {v8, v0, v7, v9}, Ldk7;->d(Ljava/util/Map;Ljava/util/Map;Lokhttp3/Callback;)V

    return-void

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_3
    const p0, 0x9ca7

    const-string p1, "network unavailable"

    invoke-virtual {v3, p0, p1}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->setException(ILjava/lang/String;)V

    return-void
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/palmsdk/PalmID$a;)Z
    .locals 8

    const-string p0, "refreshLocalToken -----> start"

    const-string v0, "com.palm.id.log"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    move-object p0, p2

    goto :goto_0

    :cond_0
    sget-object p0, Lao7$a;->a:Lao7;

    invoke-virtual {p0, p1}, Lao7;->n(Landroid/content/Context;)V

    invoke-virtual {p0}, Lao7;->f()Lcom/transsion/xuanniao/account/model/data/Config;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/Config;->refreshToken:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x9ca9

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const-string p0, "refreshLocalToken rt = null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    const-string p0, "not login"

    invoke-interface {p3, v2, p0}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V

    :cond_2
    return v3

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "refreshToken"

    invoke-virtual {v1, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0x9ca8

    :try_start_0
    new-instance v4, Lzn7;

    invoke-direct {v4}, Lzn7;-><init>()V

    const-string v5, "/sdk/login/refresh-token"

    invoke-static {v5}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5, v1}, Lzn7;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/Response;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    const-string v2, "refreshLocalToken -----> success"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;

    invoke-virtual {v2, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;

    sget-object v2, Lao7$a;->a:Lao7;

    iget-object v4, v1, Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;->accessToken:Ljava/lang/String;

    iget-object v5, v1, Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;->refreshToken:Ljava/lang/String;

    invoke-virtual {v2, p1, v4, v5}, Lao7;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "AccountPrefs"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "is_logged_in"

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v4, "key_refresh_time"

    invoke-interface {v2, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "key_tudc_relogin"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_4
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v2, "notify"

    invoke-virtual {p2, v2, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "is_login"

    invoke-virtual {p2, v2, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lwk7;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v2, p2}, Lam7;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    :cond_5
    if-eqz p3, :cond_6

    iget-object p1, v1, Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;->accessToken:Ljava/lang/String;

    invoke-interface {p3, p1}, Lcom/transsion/palmsdk/PalmID$a;->onSuccess(Ljava/lang/Object;)V

    :cond_6
    move v3, v5

    goto/16 :goto_3

    :cond_7
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x190

    if-ne p2, v4, :cond_9

    :try_start_1
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshLocalToken -----> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    invoke-virtual {v1, p2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    iget v1, p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    const v4, 0x61a86

    if-ne v1, v4, :cond_8

    invoke-static {p1}, Lvo7;->a(Landroid/content/Context;)V

    invoke-static {}, Lwk7;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {p1, v1, v4}, Lam7;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    if-eqz p3, :cond_a

    iget-object p1, p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->message:Ljava/lang/String;

    invoke-interface {p3, v2, p1}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_8
    if-eqz p3, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    :try_start_2
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    if-nez v1, :cond_a

    const-string p1, "refreshLocalToken -----> response = null"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_a

    const-string p1, "response is null"

    invoke-interface {p3, p0, p1}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_a
    :goto_3
    return v3

    :goto_4
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V

    :cond_b
    return v3
.end method
