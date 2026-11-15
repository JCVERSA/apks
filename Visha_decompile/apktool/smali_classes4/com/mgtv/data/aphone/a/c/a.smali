.class public Lcom/mgtv/data/aphone/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/data/aphone/a/c/b;


# static fields
.field private static b:Ljava/lang/String; = "a"


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/data/aphone/a/c/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method private a()V
    .locals 1

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/data/aphone/a/c/a;->d:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/mgtv/data/aphone/a/c/a;->f:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/mgtv/data/aphone/a/c/a;->e:Ljava/lang/String;

    .line 136
    iget-object p0, p0, Lcom/mgtv/data/aphone/a/c/a;->a:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method private declared-synchronized a(Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;Ljava/util/Map;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mgtv/data/aphone/core/exception/CheckParamsException;
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_0
    invoke-virtual {p0, p2, p1, p3}, Lcom/mgtv/data/aphone/a/c/a;->a(Ljava/util/Map;Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;)V

    .line 60
    const-string p3, "big_data_sdk"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##############  getAndroidUrlAndParams()   act =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  params:  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "   url: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mgtv/data/aphone/a/c/a;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;)V
    .locals 3

    .line 55
    iget-object v0, p1, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->logtype:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p1, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->cntp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 57
    :cond_1
    new-instance v0, Lcom/mgtv/data/aphone/core/c/b;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/c/b;-><init>()V

    .line 58
    iget-object p0, p0, Lcom/mgtv/data/aphone/a/c/a;->c:Landroid/content/Context;

    iget-object v1, p1, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->logtype:Ljava/lang/String;

    iget-object v2, p1, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->cntp:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/mgtv/data/aphone/core/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;Lcom/mgtv/data/aphone/a/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;",
            "Lcom/mgtv/data/aphone/a/a/a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mgtv/data/aphone/core/exception/CheckParamsException;
        }
    .end annotation

    monitor-enter p0

    .line 102
    :try_start_0
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/mgtv/data/aphone/a/c/a;->a(Ljava/util/Map;Ljava/lang/String;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;Lcom/mgtv/data/aphone/a/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(Ljava/lang/String;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;)Z
    .locals 1

    .line 126
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 127
    const-string p2, "data"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 128
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 129
    const-string p2, "all"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 130
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sget-object p2, Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;->OFF:Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;

    invoke-virtual {p2}, Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;->OFF:Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/constants/EventContants$OnOffType;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return v0

    .line 132
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private b(Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;)V
    .locals 2

    iget-object v0, p1, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->logtype:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->cntp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/mgtv/data/aphone/core/c/a;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/c/a;-><init>()V

    iget-object p0, p0, Lcom/mgtv/data/aphone/a/c/a;->c:Landroid/content/Context;

    iget-object v1, p1, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->logtype:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lcom/mgtv/data/aphone/core/c/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;)V

    return-void
.end method

.method private c(Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;)V
    .locals 2

    iget-object v0, p1, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->logtype:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->cntp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/mgtv/data/aphone/core/c/c;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/c/c;-><init>()V

    iget-object p0, p0, Lcom/mgtv/data/aphone/a/c/a;->c:Landroid/content/Context;

    iget-object v1, p1, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->logtype:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lcom/mgtv/data/aphone/core/c/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/data/aphone/a/c/a;->c:Landroid/content/Context;

    return-void
.end method

.method public declared-synchronized a(Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;Ljava/lang/String;Lcom/mgtv/data/aphone/a/a/a;Lcom/mgtv/data/aphone/a/b/b;)V
    .locals 0

    monitor-enter p0

    .line 39
    :try_start_0
    const-string p1, "big_data_sdk"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "H5  json: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/mgtv/data/aphone/core/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-class p1, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    invoke-static {p2, p1}, Lcom/mgtv/json/a;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mgtv/json/JsonInterface;

    move-result-object p1

    check-cast p1, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 41
    monitor-exit p0

    return-void

    .line 42
    :cond_0
    :try_start_1
    iget-object p2, p1, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->logtype:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 43
    monitor-exit p0

    return-void

    .line 44
    :cond_1
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "event_webview_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->logtype:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 45
    const-string p3, "event_webview_pv"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 46
    invoke-direct {p0, p1}, Lcom/mgtv/data/aphone/a/c/a;->a(Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 47
    :cond_2
    const-string p3, "event_webview_click"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 48
    invoke-direct {p0, p1}, Lcom/mgtv/data/aphone/a/c/a;->b(Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;)V

    goto :goto_0

    .line 49
    :cond_3
    const-string p3, "event_webview_cv"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 50
    invoke-direct {p0, p1}, Lcom/mgtv/data/aphone/a/c/a;->c(Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 52
    :goto_1
    :try_start_3
    sget-object p2, Lcom/mgtv/data/aphone/a/c/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;Ljava/util/Map;Lcom/mgtv/data/aphone/a/a/a;Lcom/mgtv/data/aphone/a/b/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;",
            "Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mgtv/data/aphone/a/a/a;",
            "Lcom/mgtv/data/aphone/a/b/b;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p2, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;->data:Ljava/lang/Object;

    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 3
    :cond_0
    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    const-string p2, "{\"appId\":\"5\",\"config\":{\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_appls\":{\"httpMethod\":0,\"params\":[\"act\",\"list\"],\"url\":\"https://moblie-ex.log.mgtv.com/appls.php\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0}},\"data\":{\"event_phonewifi\":\"0\",\"event_buffer\":\"0\",\"event_pv\":\"0\",\"event_appls\":\"0\",\"event_hb\":\"0\",\"event_st\":\"0\",\"event_vv\":\"0\"},\"flag\":{},\"version\":\"android_6.1.1.01\"}"

    const-class v0, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    invoke-static {p2, v0}, Lcom/mgtv/json/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    goto :goto_1

    .line 5
    :cond_1
    const-string p2, "{\"appId\":\"5\",\"config\":{\"event_perr\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_hls_dlrs\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlrs.php\",\"isSave\":0},\"event_hls_dlproc\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlproc.php\",\"isSave\":0},\"event_appls\":{\"httpMethod\":1,\"params\":[\"act\",\"list\"],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_ppv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_pend\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0},\"event_pvv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0}},\"data\":{\"event_perr\":\"1\",\"event_phonewifi\":\"1\",\"event_buffer\":\"0\",\"event_hls_dlrs\":\"0\",\"event_hls_dlproc\":\"0\",\"event_appls\":\"0\",\"event_st\":\"0\",\"event_ppv\":\"1\",\"event_vv\":\"0\",\"event_pv\":\"0\",\"event_hb\":\"0\",\"event_pend\":\"1\",\"event_pvv\":\"1\"},\"flag\":{},\"version\":\"android_6.1.1.0.7\"}"

    const-class v0, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    invoke-static {p2, v0}, Lcom/mgtv/json/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    .line 6
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/mgtv/data/aphone/a/c/a;->a(Ljava/lang/String;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;)Z

    move-result v0
    :try_end_0
    .catch Lcom/mgtv/data/aphone/core/exception/CheckParamsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    monitor-exit p0

    return-void

    .line 7
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/mgtv/data/aphone/a/c/a;->a()V

    .line 8
    invoke-direct {p0, p1, p3, p2}, Lcom/mgtv/data/aphone/a/c/a;->a(Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;Ljava/util/Map;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;)V

    .line 9
    const-string p2, "big_data_sdk"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##############  onEvent()   act =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  params:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "   url: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/mgtv/data/aphone/a/c/a;->d:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/mgtv/data/aphone/a/c/a;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/mgtv/data/aphone/core/j/g;->a(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 11
    iget-boolean p2, p4, Lcom/mgtv/data/aphone/a/a/a;->b:Z

    if-eqz p2, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->getEventId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mgtv/data/aphone/a/c/a;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/mgtv/data/aphone/a/c/a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/mgtv/data/aphone/a/c/a;->e:Ljava/lang/String;

    sget-object v5, Lcom/mgtv/data/aphone/core/db/a;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/mgtv/data/aphone/a/c/a;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static/range {v0 .. v6}, Lcom/mgtv/data/aphone/core/j/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/mgtv/data/aphone/core/exception/CheckParamsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    .line 14
    :cond_4
    :try_start_2
    const-string p2, "big_data_sdk"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "##############  onEvent()    httpParams: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/mgtv/data/aphone/a/c/a;->a:Ljava/util/HashMap;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance p2, Lcom/mgtv/data/aphone/b/a/a;

    iget-object v1, p0, Lcom/mgtv/data/aphone/a/c/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->getEventId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mgtv/data/aphone/a/c/a;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/mgtv/data/aphone/a/c/a;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/mgtv/data/aphone/a/c/a;->a:Ljava/util/HashMap;

    new-instance v6, Lcom/mgtv/data/aphone/a/c/a$1;

    invoke-direct {v6, p0, p5}, Lcom/mgtv/data/aphone/a/c/a$1;-><init>(Lcom/mgtv/data/aphone/a/c/a;Lcom/mgtv/data/aphone/a/b/b;)V

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/mgtv/data/aphone/b/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mgtv/data/aphone/b/c/a;)V

    .line 16
    iget-object p1, p0, Lcom/mgtv/data/aphone/a/c/a;->d:Ljava/lang/String;

    iget-object p3, p0, Lcom/mgtv/data/aphone/a/c/a;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Lcom/mgtv/data/aphone/b/a/a;->a(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_2
    .catch Lcom/mgtv/data/aphone/core/exception/CheckParamsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    .line 18
    :goto_2
    :try_start_3
    sget-object p2, Lcom/mgtv/data/aphone/a/c/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;Ljava/util/Map;Lcom/mgtv/data/aphone/a/a/a;Lcom/mgtv/data/aphone/a/b/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mgtv/data/aphone/a/a/a;",
            "Lcom/mgtv/data/aphone/a/b/b;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 21
    :try_start_0
    iget-object v0, p2, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;->data:Ljava/lang/Object;

    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 22
    :cond_0
    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 23
    const-string p2, "{\"appId\":\"5\",\"config\":{\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_appls\":{\"httpMethod\":0,\"params\":[\"act\",\"list\"],\"url\":\"https://moblie-ex.log.mgtv.com/appls.php\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0}},\"data\":{\"event_phonewifi\":\"0\",\"event_buffer\":\"0\",\"event_pv\":\"0\",\"event_appls\":\"0\",\"event_hb\":\"0\",\"event_st\":\"0\",\"event_vv\":\"0\"},\"flag\":{},\"version\":\"android_6.1.1.01\"}"

    const-class v0, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    invoke-static {p2, v0}, Lcom/mgtv/json/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    goto :goto_1

    .line 24
    :cond_1
    const-string p2, "{\"appId\":\"5\",\"config\":{\"event_perr\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_hls_dlrs\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlrs.php\",\"isSave\":0},\"event_hls_dlproc\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlproc.php\",\"isSave\":0},\"event_appls\":{\"httpMethod\":1,\"params\":[\"act\",\"list\"],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_ppv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_pend\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0},\"event_pvv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0}},\"data\":{\"event_perr\":\"1\",\"event_phonewifi\":\"1\",\"event_buffer\":\"0\",\"event_hls_dlrs\":\"0\",\"event_hls_dlproc\":\"0\",\"event_appls\":\"0\",\"event_st\":\"0\",\"event_ppv\":\"1\",\"event_vv\":\"0\",\"event_pv\":\"0\",\"event_hb\":\"0\",\"event_pend\":\"1\",\"event_pvv\":\"1\"},\"flag\":{},\"version\":\"android_6.1.1.0.7\"}"

    const-class v0, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    invoke-static {p2, v0}, Lcom/mgtv/json/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    .line 25
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/mgtv/data/aphone/a/c/a;->a(Ljava/lang/String;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    monitor-exit p0

    return-void

    .line 26
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/mgtv/data/aphone/a/c/a;->a()V

    .line 27
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/mgtv/data/aphone/a/c/a;->a(Ljava/lang/String;Ljava/util/Map;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;Lcom/mgtv/data/aphone/a/a/a;)V

    .line 28
    iget-object p2, p0, Lcom/mgtv/data/aphone/a/c/a;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/mgtv/data/aphone/core/j/g;->a(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 29
    iget-boolean p2, p4, Lcom/mgtv/data/aphone/a/a/a;->b:Z

    if-eqz p2, :cond_4

    .line 30
    iget-object v1, p0, Lcom/mgtv/data/aphone/a/c/a;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/mgtv/data/aphone/a/c/a;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/mgtv/data/aphone/a/c/a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/mgtv/data/aphone/a/c/a;->e:Ljava/lang/String;

    sget-object v5, Lcom/mgtv/data/aphone/core/db/a;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/mgtv/data/aphone/a/c/a;->c:Landroid/content/Context;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/mgtv/data/aphone/core/j/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    .line 32
    :cond_4
    :try_start_2
    const-string p1, "big_data_sdk"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "##############  onEvent()    httpParams: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/mgtv/data/aphone/a/c/a;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance p1, Lcom/mgtv/data/aphone/b/a/a;

    iget-object v1, p0, Lcom/mgtv/data/aphone/a/c/a;->c:Landroid/content/Context;

    const-string v2, ""

    iget-object v3, p0, Lcom/mgtv/data/aphone/a/c/a;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/mgtv/data/aphone/a/c/a;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/mgtv/data/aphone/a/c/a;->a:Ljava/util/HashMap;

    new-instance v6, Lcom/mgtv/data/aphone/a/c/a$2;

    invoke-direct {v6, p0, p5}, Lcom/mgtv/data/aphone/a/c/a$2;-><init>(Lcom/mgtv/data/aphone/a/c/a;Lcom/mgtv/data/aphone/a/b/b;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/mgtv/data/aphone/b/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mgtv/data/aphone/b/c/a;)V

    .line 34
    iget-object p2, p0, Lcom/mgtv/data/aphone/a/c/a;->d:Ljava/lang/String;

    iget-object p3, p0, Lcom/mgtv/data/aphone/a/c/a;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p3}, Lcom/mgtv/data/aphone/b/a/a;->a(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 36
    :goto_2
    :try_start_3
    sget-object p2, Lcom/mgtv/data/aphone/a/c/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/Map;Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;",
            "Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 62
    :try_start_0
    invoke-static {}, Lcom/mgtv/data/aphone/b/a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 63
    invoke-static {p1}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p3, :cond_8

    .line 64
    iget-object v0, p3, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;->config:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 65
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    const-string p3, "config"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    .line 67
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 68
    const-string v0, "params"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 69
    const-string v1, "common_param"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    .line 70
    const-string v1, "params"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    .line 71
    const-string v1, "url"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    const-string v2, "httpMethod"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 73
    const-string v3, "isSave"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 74
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 75
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 76
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 77
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 78
    const-string v7, "del_"

    .line 79
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_1

    const/4 v7, 0x4

    .line 80
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :catch_0
    move-exception p1

    goto/16 :goto_8

    .line 81
    :cond_1
    invoke-interface {p2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 82
    :cond_2
    :goto_2
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 83
    invoke-virtual {p3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 84
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result p3

    if-lez p3, :cond_4

    .line 85
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 86
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 89
    :cond_4
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 90
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 91
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    if-nez v2, :cond_6

    .line 94
    const-string p2, "GET"

    iput-object p2, p0, Lcom/mgtv/data/aphone/a/c/a;->e:Ljava/lang/String;

    goto :goto_5

    .line 95
    :cond_6
    const-string p2, "POST"

    iput-object p2, p0, Lcom/mgtv/data/aphone/a/c/a;->e:Ljava/lang/String;

    .line 96
    :goto_5
    iput-object v1, p0, Lcom/mgtv/data/aphone/a/c/a;->d:Ljava/lang/String;

    .line 97
    iget-object p2, p0, Lcom/mgtv/data/aphone/a/c/a;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 98
    const-string p2, "bid"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "null"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p1, ""

    goto :goto_6

    :cond_7
    const-string p2, "bid"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_6
    iput-object p1, p0, Lcom/mgtv/data/aphone/a/c/a;->f:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    .line 99
    :cond_8
    :goto_7
    monitor-exit p0

    return-void

    .line 100
    :goto_8
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :goto_9
    monitor-exit p0

    return-void

    :goto_a
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/Map;Ljava/lang/String;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;Lcom/mgtv/data/aphone/a/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;",
            "Lcom/mgtv/data/aphone/a/a/a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mgtv/data/aphone/core/exception/CheckParamsException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_5

    .line 104
    :try_start_0
    iget-object v0, p3, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;->config:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p4, :cond_1

    .line 105
    iget-boolean p4, p4, Lcom/mgtv/data/aphone/a/a/a;->a:Z

    if-eqz p4, :cond_1

    .line 106
    invoke-static {}, Lcom/mgtv/data/aphone/b/a;->a()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 107
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    .line 108
    new-instance p4, Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    const-string p3, "config"

    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/json/JSONObject;

    .line 110
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    .line 111
    new-instance p4, Lorg/json/JSONObject;

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    const-string p2, "params"

    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 113
    const-string p2, "url"

    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 114
    const-string p3, "httpMethod"

    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 115
    const-string v0, "isSave"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    if-nez p3, :cond_2

    .line 116
    const-string p3, "GET"

    iput-object p3, p0, Lcom/mgtv/data/aphone/a/c/a;->e:Ljava/lang/String;

    goto :goto_1

    .line 117
    :cond_2
    const-string p3, "POST"

    iput-object p3, p0, Lcom/mgtv/data/aphone/a/c/a;->e:Ljava/lang/String;

    .line 118
    :goto_1
    iput-object p2, p0, Lcom/mgtv/data/aphone/a/c/a;->d:Ljava/lang/String;

    .line 119
    :cond_3
    iget-object p2, p0, Lcom/mgtv/data/aphone/a/c/a;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 120
    const-string p2, "bid"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "null"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, ""

    goto :goto_2

    :cond_4
    const-string p2, "bid"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/mgtv/data/aphone/a/c/a;->f:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 122
    :goto_3
    :try_start_1
    sget-object p2, Lcom/mgtv/data/aphone/a/c/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 125
    :cond_5
    :goto_5
    monitor-exit p0

    return-void
.end method
