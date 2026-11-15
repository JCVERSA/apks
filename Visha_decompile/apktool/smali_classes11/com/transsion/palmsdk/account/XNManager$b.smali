.class public Lcom/transsion/palmsdk/account/XNManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/palmsdk/account/XNManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/palmsdk/account/XNManager;->d(Lcom/transsion/palmsdk/PalmAuthParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/palmsdk/PalmAuthParam;

.field public final synthetic b:Lcom/transsion/palmsdk/account/XNManager;


# direct methods
.method public constructor <init>(Lcom/transsion/palmsdk/account/XNManager;Lcom/transsion/palmsdk/PalmAuthParam;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    iput-object p2, p0, Lcom/transsion/palmsdk/account/XNManager$b;->a:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/palmsdk/PalmID$a;)Z
    .locals 5

    const-string v0, "refresh_token"

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/transsion/palmsdk/account/XNManager$b;->g(Landroid/content/Context;)J

    move-result-wide v1

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    const-wide/32 v3, 0x1b7740

    cmp-long p2, v1, v3

    if-gtz p2, :cond_2

    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/palmsdk/account/XNManager$b;->j()Lcom/transsion/palmsdk/account/XNManager$Config;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/transsion/palmsdk/account/XNManager$Config;->refreshToken:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "grant_type"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "client_id"

    iget-object v1, p0, Lcom/transsion/palmsdk/account/XNManager$b;->a:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "scope"

    iget-object v1, p0, Lcom/transsion/palmsdk/account/XNManager$b;->a:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->getScopes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LOooO0Oo/OooO0o;->e()LOooO0Oo/OooO0o;

    move-result-object v0

    new-instance v1, Lcom/transsion/palmsdk/account/XNManager$b$a;

    invoke-direct {v1, p0, p1, p3}, Lcom/transsion/palmsdk/account/XNManager$b$a;-><init>(Lcom/transsion/palmsdk/account/XNManager$b;Landroid/content/Context;Lcom/transsion/palmsdk/PalmID$a;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lxj7;->a()Lxj7;

    move-result-object p0

    new-instance p1, LOooO0Oo/OooOO0O;

    invoke-direct {p1, v0, p2, v1}, LOooO0Oo/OooOO0O;-><init>(LOooO0Oo/OooO0o;Ljava/util/Map;Lrj7;)V

    invoke-virtual {p0, p1}, Lxj7;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object p1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {p1}, Lcom/transsion/palmsdk/account/XNManager;->a(Lcom/transsion/palmsdk/account/XNManager;)Lmj7;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {p0}, Lcom/transsion/palmsdk/account/XNManager;->a(Lcom/transsion/palmsdk/account/XNManager;)Lmj7;

    move-result-object p0

    const-string p1, "account"

    iget-object p0, p0, Lmj7;->a:Lhyperion/hap/IStoreManager;

    invoke-interface {p0, p1, p2}, Lhyperion/hap/IStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/palmsdk/account/XNManager$b;->j()Lcom/transsion/palmsdk/account/XNManager$Config;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager$Config;->token:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public e(Landroid/content/Context;)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {p0}, Lcom/transsion/palmsdk/account/XNManager;->b(Lcom/transsion/palmsdk/account/XNManager;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "is_logged_in"

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Law7;->c(Landroid/content/Context;)Law7;

    move-result-object p1

    invoke-virtual {p1, p2}, Law7;->b(Ljava/lang/String;)Lcom/transsion/palmsdk/data/PalmAuthRequest;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthParam()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object p2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Bearer "

    invoke-static {v1}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/palmsdk/account/XNManager$b;->j()Lcom/transsion/palmsdk/account/XNManager$Config;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/transsion/palmsdk/account/XNManager$Config;->token:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Language"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Client-ID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppSign()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppSign"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/palmsdk/PalmAuthParam;->getPkgName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppPackage"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/palmsdk/PalmAuthParam;->toMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "grant_type"

    const-string v3, "authorization_code"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "response_type"

    const-string v3, "code"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LOooO0Oo/OooO0o;->e()LOooO0Oo/OooO0o;

    move-result-object v2

    new-instance v3, Lcom/transsion/palmsdk/account/XNManager$b$c;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/transsion/palmsdk/account/XNManager$b$c;-><init>(Lcom/transsion/palmsdk/account/XNManager$b;Lcom/transsion/palmsdk/data/PalmAuthRequest;Lcom/transsion/palmsdk/PalmAuthParam;Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lxj7;->a()Lxj7;

    move-result-object p0

    new-instance p1, LOooO0Oo/OooO;

    invoke-direct {p1, v2, v0, v1, v3}, LOooO0Oo/OooO;-><init>(LOooO0Oo/OooO0o;Ljava/util/Map;Ljava/util/Map;Lrj7;)V

    invoke-virtual {p0, p1}, Lxj7;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g(Landroid/content/Context;)J
    .locals 9

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/palmsdk/account/XNManager$b;->j()Lcom/transsion/palmsdk/account/XNManager$Config;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/transsion/palmsdk/account/XNManager$Config;->token:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p1, ""

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object p1, p1, v2

    const/16 v2, 0xb

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "exp"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "iat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr p1, v0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_2

    :goto_1
    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    :cond_1
    const-wide/32 v0, 0x6ddd00

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {p0}, Lcom/transsion/palmsdk/account/XNManager;->b(Lcom/transsion/palmsdk/account/XNManager;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "key_refresh_time"

    const-wide/16 v4, 0x0

    invoke-interface {p0, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sub-long v6, v2, p0

    cmp-long v8, v6, v4

    if-lez v8, :cond_2

    cmp-long v8, v6, v0

    if-gez v8, :cond_2

    sub-long/2addr v0, v6

    return-wide v0

    :cond_2
    sget-object v6, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "etime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", ltime = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", ctime = "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-wide v4
.end method

.method public h(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3

    iget-object p1, p0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {p1}, Lcom/transsion/palmsdk/account/XNManager;->a(Lcom/transsion/palmsdk/account/XNManager;)Lmj7;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {p1}, Lcom/transsion/palmsdk/account/XNManager;->a(Lcom/transsion/palmsdk/account/XNManager;)Lmj7;

    move-result-object p1

    iget-object p1, p1, Lmj7;->a:Lhyperion/hap/IStoreManager;

    const-string v1, "account"

    invoke-interface {p1, v1}, Lhyperion/hap/IStoreManager;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    const-string p2, "xuanniaoId"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Bearer "

    invoke-static {v1}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/palmsdk/account/XNManager$b;->j()Lcom/transsion/palmsdk/account/XNManager$Config;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/transsion/palmsdk/account/XNManager$Config;->token:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/palmsdk/account/XNManager$b;->a:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Client-ID"

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LOooO0Oo/OooO0o;->e()LOooO0Oo/OooO0o;

    move-result-object v1

    new-instance v2, Lcom/transsion/palmsdk/account/XNManager$b$b;

    invoke-direct {v2, p0}, Lcom/transsion/palmsdk/account/XNManager$b$b;-><init>(Lcom/transsion/palmsdk/account/XNManager$b;)V

    const-string p0, "/openapi/user/get-profile"

    invoke-virtual {v1, p0, p2, v0, v2}, LOooO0Oo/OooO0o;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lrj7;)V

    :cond_3
    return-object p1
.end method

.method public i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/transsion/palmsdk/account/XNManager$Config;

    invoke-direct {v0}, Lcom/transsion/palmsdk/account/XNManager$Config;-><init>()V

    iput-object p2, v0, Lcom/transsion/palmsdk/account/XNManager$Config;->token:Ljava/lang/String;

    iput-object p3, v0, Lcom/transsion/palmsdk/account/XNManager$Config;->refreshToken:Ljava/lang/String;

    iget-object p3, p0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {p3}, Lcom/transsion/palmsdk/account/XNManager;->a(Lcom/transsion/palmsdk/account/XNManager;)Lmj7;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {p3}, Lcom/transsion/palmsdk/account/XNManager;->a(Lcom/transsion/palmsdk/account/XNManager;)Lmj7;

    move-result-object p3

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p3, p3, Lmj7;->a:Lhyperion/hap/IStoreManager;

    const-string v1, "config"

    invoke-interface {p3, v1, v0}, Lhyperion/hap/IStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p3, "is_logged_in"

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {p2}, Lcom/transsion/palmsdk/account/XNManager;->a(Lcom/transsion/palmsdk/account/XNManager;)Lmj7;

    move-result-object p2

    const-string v0, ""

    iget-object p2, p2, Lmj7;->a:Lhyperion/hap/IStoreManager;

    const-string v1, "account"

    invoke-interface {p2, v1, v0}, Lhyperion/hap/IStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {p0}, Lcom/transsion/palmsdk/account/XNManager;->b(Lcom/transsion/palmsdk/account/XNManager;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p0, p3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {p0}, Lcom/transsion/palmsdk/account/XNManager;->b(Lcom/transsion/palmsdk/account/XNManager;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p2, 0x1

    invoke-interface {p0, p3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-string v0, "key_refresh_time"

    invoke-interface {p0, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "intent.action.PALM_ID_CHANGE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public j()Lcom/transsion/palmsdk/account/XNManager$Config;
    .locals 2

    iget-object v0, p0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {v0}, Lcom/transsion/palmsdk/account/XNManager;->a(Lcom/transsion/palmsdk/account/XNManager;)Lmj7;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {p0}, Lcom/transsion/palmsdk/account/XNManager;->a(Lcom/transsion/palmsdk/account/XNManager;)Lmj7;

    move-result-object p0

    const-string v0, "config"

    iget-object p0, p0, Lmj7;->a:Lhyperion/hap/IStoreManager;

    invoke-interface {p0, v0}, Lhyperion/hap/IStoreManager;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/transsion/palmsdk/account/XNManager$Config;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/palmsdk/account/XNManager$Config;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public k(Landroid/content/Context;Z)V
    .locals 2

    sget-object p2, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "silentLogout"

    invoke-virtual {p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {p2}, Lcom/transsion/palmsdk/account/XNManager;->a(Lcom/transsion/palmsdk/account/XNManager;)Lmj7;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {p2}, Lcom/transsion/palmsdk/account/XNManager;->a(Lcom/transsion/palmsdk/account/XNManager;)Lmj7;

    move-result-object p2

    const-string v0, "config"

    iget-object p2, p2, Lmj7;->a:Lhyperion/hap/IStoreManager;

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Lhyperion/hap/IStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {p2}, Lcom/transsion/palmsdk/account/XNManager;->a(Lcom/transsion/palmsdk/account/XNManager;)Lmj7;

    move-result-object p2

    const-string v0, "account"

    iget-object p2, p2, Lmj7;->a:Lhyperion/hap/IStoreManager;

    invoke-interface {p2, v0, v1}, Lhyperion/hap/IStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {p0}, Lcom/transsion/palmsdk/account/XNManager;->b(Lcom/transsion/palmsdk/account/XNManager;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "is_logged_in"

    const/4 v0, 0x0

    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "intent.action.PALM_ID_CHANGE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
