.class public final Lcom/doman/core/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String;

.field private static d:Lcom/doman/core/b/c;


# instance fields
.field public a:Lcom/android/net/o;

.field public b:Landroid/content/Context;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "TWFnaWNBZCMxMjM0NTY3IQ=="

    invoke-static {v0}, Lcom/doman/core/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/doman/core/b/c;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NetInterfaceManager"

    iput-object v0, p0, Lcom/doman/core/b/c;->e:Ljava/lang/String;

    :try_start_0
    iput-object p1, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/net/toolbox/p;->a(Landroid/content/Context;)Lcom/android/net/o;

    move-result-object p1

    iput-object p1, p0, Lcom/doman/core/b/c;->a:Lcom/android/net/o;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/doman/core/b/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/doman/core/b/c;->d:Lcom/doman/core/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/doman/core/b/c;

    invoke-direct {v0, p0}, Lcom/doman/core/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/doman/core/b/c;->d:Lcom/doman/core/b/c;

    :cond_0
    sget-object p0, Lcom/doman/core/b/c;->d:Lcom/doman/core/b/c;

    return-object p0
.end method

.method public static a(Lcom/doman/core/b/f;Ljava/util/Map;)Lcom/doman/core/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/doman/core/b/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/doman/core/b/e;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/doman/core/b/e;

    invoke-direct {v0, p0}, Lcom/doman/core/b/e;-><init>(Lcom/doman/core/b/f;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/doman/core/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    .line 3
    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doman/core/CoreMain;->getACName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "dFzVcOTg3zkcESsXYE1/1e02fgkxiWlU"

    const-string v2, "mapkey@2023timeSave"

    invoke-static {v1, v2}, Lcom/doman/core/d/c/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/doman/core/d/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/doman/core/b/c;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/doman/core/d/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v1}, Lcom/doman/core/b/c;->a(Lorg/json/JSONObject;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "event_id"

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "task_info"

    invoke-virtual {v1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "event_msg"

    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "event_url"

    invoke-virtual {v1, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string/jumbo p0, "task_id"

    invoke-virtual {v1, p0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/doman/core/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "params"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/doman/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    sget-object p2, Lcom/doman/core/b/f;->g:Lcom/doman/core/b/f;

    invoke-static {p2, p1}, Lcom/doman/core/b/c;->a(Lcom/doman/core/b/f;Ljava/util/Map;)Lcom/doman/core/b/e;

    move-result-object p1

    new-instance p2, Lcom/doman/core/b/a/h;

    iget-object p3, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-direct {p2, p3, p1}, Lcom/doman/core/b/a/h;-><init>(Landroid/content/Context;Lcom/doman/core/b/e;)V

    iget-object p0, p0, Lcom/doman/core/b/c;->a:Lcom/android/net/o;

    invoke-virtual {p0, p2}, Lcom/android/net/o;->a(Lcom/android/net/n;)Lcom/android/net/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 5

    .line 6
    const-string v0, "lt"

    :try_start_0
    const-string v1, "imei"

    invoke-static {}, Lcom/doman/core/d/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "android_id"

    iget-object v2, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/doman/core/d/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appkey"

    iget-object v2, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/doman/core/d/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "oaid"

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v2

    invoke-virtual {v2}, Lcom/doman/core/CoreMain;->getOAID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ch"

    iget-object v2, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/doman/core/d/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mac"

    invoke-static {}, Lcom/doman/core/d/b/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os"

    const-string v2, "android"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "osver"

    invoke-static {}, Lcom/doman/core/d/b/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "brand"

    invoke-static {}, Lcom/doman/core/d/b/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "model"

    invoke-static {}, Lcom/doman/core/d/b/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "sw"

    sget v2, Lcom/doman/core/d/m;->a:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "sh"

    sget v2, Lcom/doman/core/d/m;->b:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "ua"

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v2

    invoke-virtual {v2}, Lcom/doman/core/CoreMain;->getUA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "connection_type"

    invoke-static {}, Lcom/doman/core/d/h;->a()Lcom/doman/core/d/h;

    iget-object v2, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/doman/core/d/h;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "carrier_type"

    invoke-static {}, Lcom/doman/core/d/h;->a()Lcom/doman/core/d/h;

    iget-object v2, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/doman/core/d/h;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "device_type"

    const/16 v2, 0x20

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "app_version"

    invoke-static {}, Lcom/doman/core/d/b/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_version"

    const-string v3, "l_1133_20240730"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "orientation"

    iget-object v3, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/doman/core/d/b/a;->c(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "lg"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "pkgname"

    iget-object v4, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "screen_tag"

    invoke-static {}, Lcom/doman/core/d/m;->a()Z

    move-result v4

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isappon"

    iget-object v4, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/doman/core/CoreMain;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isvip"

    sget-boolean v4, Lcom/doman/core/CoreMain;->isvip:Z

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "did"

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v4

    invoke-virtual {v4}, Lcom/doman/core/CoreMain;->getDID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "source"

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v4

    invoke-virtual {v4}, Lcom/doman/core/CoreMain;->getAdSdkSourceFrom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lm_mid"

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v4

    invoke-virtual {v4}, Lcom/doman/core/CoreMain;->getLm_mid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rs"

    iget-object v4, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/doman/core/d/b/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/doman/core/d/b/a;->e(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "ts"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "ntime"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "dpi"

    iget-object v1, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/doman/core/d/b/a;->f(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    move-result-object v0

    iget-object v0, v0, Lcom/doman/core/manager/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "vid"

    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    move-result-object v1

    iget-object v1, v1, Lcom/doman/core/manager/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    move-result-object v0

    iget-object v0, v0, Lcom/doman/core/manager/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "liveid"

    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    move-result-object v1

    iget-object v1, v1, Lcom/doman/core/manager/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {}, Lcom/doman/core/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ac_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/doman/core/d/b/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "hms"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v0, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/doman/core/d/b/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ag"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-static {}, Lcom/doman/core/d/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "maker"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v0, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/doman/core/d/b/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    const-string v1, "operator"

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mcc"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string v0, "carrier_name"

    iget-object p0, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/doman/core/d/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "local_tz_name"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "startup_time"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "cpu_num"

    invoke-static {}, Lcom/doman/core/d/b/a;->g()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "disk_total"

    invoke-static {}, Lcom/doman/core/d/b/a;->h()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "mem_total"

    invoke-static {}, Lcom/doman/core/d/b/a;->i()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
