.class public Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static bDebug:Z

.field public static volatile singleton:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;


# instance fields
.field private callBackWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/sniffer_load/sniffservice/ISniffCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mScriptStartDownloadTime:J

.field private mSniffWebView:Landroid/webkit/WebView;

.field private mStrCurrSniffUrl:Ljava/lang/String;

.field private mbGettingScript:Z

.field private mbWaitingInject:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mbGettingScript:Z

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mbWaitingInject:Z

    return-void
.end method

.method public static synthetic a(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->lambda$onSubmitSniffInfo$0(Ljava/lang/String;Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->callBackWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mScriptStartDownloadTime:J

    return-wide v0
.end method

.method public static bridge synthetic d(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mSniffWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method private downloadScript(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mScriptStartDownloadTime:J

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->script_url:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "?timestamp="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_js_file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/FileServiceManager;->getInstance()Lcom/transsion/playercommon/vishaapis/FileServiceManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/FileService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/FileService;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/playercommon/vishaapis/FileService;->downloadFileWithDynamicUrlAsync(Ljava/lang/String;)Ljq0;

    move-result-object v0

    new-instance v1, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;

    const/4 v5, 0x3

    const-wide/16 v6, 0x3e8

    move-object v2, v1

    move-object v3, p0

    move-object v4, v0

    move-object v9, p2

    move-object v10, p1

    invoke-direct/range {v2 .. v10}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;-><init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljq0;IJLjava/lang/StringBuilder;Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljq0;->enqueue(Ltq0;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mStrCurrSniffUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mbWaitingInject:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mbGettingScript:Z

    return-void
.end method

.method public static bridge synthetic h(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mbWaitingInject:Z

    return-void
.end method

.method public static bridge synthetic i(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->downloadScript(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;)V

    return-void
.end method

.method private injectWebView(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mSniffWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-static {p4}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mSniffWebView:Landroid/webkit/WebView;

    invoke-static {p3, p4, v0}, Lcom/transsion/sniffer_load/sniffservice/JavaScriptHelper;->injectAssetJsWebView(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mSniffWebView:Landroid/webkit/WebView;

    iget-object p4, p2, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->script_content:Ljava/lang/String;

    invoke-static {p3, p4, v0}, Lcom/transsion/sniffer_load/sniffservice/JavaScriptHelper;->injectWebview(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_0
    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/SniffTiktokUtil;->isTiktokSite(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mSniffWebView:Landroid/webkit/WebView;

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffTiktokUtil;->openSniff(Landroid/webkit/WebView;)V

    :cond_2
    :try_start_0
    new-instance p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object p3, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_2002:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget p4, p3, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    invoke-virtual {p0, p4}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    iget-object p3, p3, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p3, ""

    if-nez p2, :cond_3

    move-object p4, p3

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object p4, p2, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->sniff_domain:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, p4}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setJsType(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    new-instance p4, Ljava/net/URL;

    invoke-direct {p4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setDomainName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    const-string p4, "dl_brower_sniff"

    invoke-virtual {p0, p4}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    new-instance p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    const/4 p4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setErrorCode(Ljava/lang/Integer;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    const-string v0, "dl_brower_rp_adl_js"

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setVideoUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setStatus(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    iget-object p3, p2, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->sniff_domain:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, p3}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setJsType(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setDomainName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffInjectSuccessDelay(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public static bridge synthetic j(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->injectWebView(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;ZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->startSniff(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$onSubmitSniffInfo$0(Ljava/lang/String;Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p2, ""

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubmitSniffInfo json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "post_value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "sniff_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v3, "param_value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v5, "coverUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "token_info"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "cookies"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "getCookiesKey"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Luj1;->c()Luj1;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mStrCurrSniffUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Luj1;->d(Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    new-instance v7, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$2;

    invoke-direct {v7, p0}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$2;-><init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)V

    invoke-virtual {v7}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-static {v3, v7}, Lek4;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    invoke-static {}, Luj1;->c()Luj1;

    move-result-object v7

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Luj1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, p2

    move-object p2, v2

    move-object v2, v9

    goto/16 :goto_4

    :catch_0
    move-exception v1

    move-object v9, v1

    move-object v1, p2

    move-object p2, v2

    move-object v2, v9

    goto :goto_3

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    new-instance v1, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;

    invoke-direct {v1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setResourceTitle(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setResourceCover(Ljava/lang/String;)V

    invoke-static {}, Luj1;->c()Luj1;

    move-result-object p2

    iget-object v3, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mStrCurrSniffUrl:Ljava/lang/String;

    invoke-virtual {p2, v3}, Luj1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setCookie(Ljava/lang/String;)V

    sget-object p2, Lfr9;->d:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setUserAgent(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setSniffRequestBody(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setAsyncServerTask(Z)V

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setSniffUrl(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->onServerSniffResult(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V

    goto/16 :goto_5

    :catchall_1
    move-exception v1

    move-object v4, p2

    move-object p2, v2

    :goto_1
    move-object v2, v1

    move-object v1, v4

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v4, p2

    move-object p2, v2

    :goto_2
    move-object v2, v1

    move-object v1, v4

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v4, p2

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v4, p2

    goto :goto_2

    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object v3, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_SEVER_2010:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget v5, v3, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    invoke-virtual {v2, v5}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v2

    iget-object v3, v3, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v2

    const-string v3, "dl_brower_sniff"

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    new-instance v2, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;

    invoke-direct {v2, p2}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setResourceTitle(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setResourceCover(Ljava/lang/String;)V

    invoke-static {}, Luj1;->c()Luj1;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mStrCurrSniffUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Luj1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setCookie(Ljava/lang/String;)V

    sget-object v1, Lfr9;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setUserAgent(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setSniffRequestBody(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setAsyncServerTask(Z)V

    invoke-virtual {v2, p2}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setSniffUrl(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v2}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->onServerSniffResult(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V

    goto :goto_5

    :catchall_3
    move-exception v2

    :goto_4
    new-instance v3, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;

    invoke-direct {v3, p2}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setResourceTitle(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setResourceCover(Ljava/lang/String;)V

    invoke-static {}, Luj1;->c()Luj1;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mStrCurrSniffUrl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Luj1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setCookie(Ljava/lang/String;)V

    sget-object v1, Lfr9;->d:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setUserAgent(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setSniffRequestBody(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setAsyncServerTask(Z)V

    invoke-virtual {v3, p2}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->setSniffUrl(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v3}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->onServerSniffResult(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V

    throw v2

    :cond_2
    :goto_5
    return-void
.end method

.method private onSubmitSniffInfo(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lh7c;

    invoke-direct {v1, p0, p1}, Lh7c;-><init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public static seDebug(Z)V
    .locals 3

    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sniff_debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    sput-boolean p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->bDebug:Z

    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->getInstance()Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->clearSniffScriptFromDatabase()V

    return-void
.end method

.method private startSniff(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mbWaitingInject:Z

    new-instance v0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;-><init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getSniffResultFromServer(Ljava/lang/String;IILcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;)V
    .locals 6

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p4, :cond_2

    if-nez p2, :cond_0

    const/4 p2, 0x3

    :cond_0
    move v2, p2

    if-nez p3, :cond_1

    const/16 p3, 0x3e8

    :cond_1
    new-instance p0, Lcom/transsion/dbdata/beans/sniff/SniffGetResultReqBean;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/sniff/SniffGetResultReqBean;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffGetResultReqBean;->setSniffUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/APIServiceManager;->getInstance()Lcom/transsion/playercommon/vishaapis/APIServiceManager;

    move-result-object p1

    const-class p2, Lcom/transsion/playercommon/vishaapis/APIService;

    invoke-virtual {p1, p2}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/vishaapis/APIService;

    invoke-interface {p1, p0}, Lcom/transsion/playercommon/vishaapis/APIService;->getSniffResultFromServer(Lcom/transsion/dbdata/beans/sniff/SniffGetResultReqBean;)Ljq0;

    move-result-object p0

    new-instance p1, Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData;

    int-to-long v3, p3

    move-object v0, p1

    move-object v1, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData;-><init>(Ljq0;IJLcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;)V

    invoke-interface {p0, p1}, Ljq0;->enqueue(Ltq0;)V

    :cond_2
    return-void
.end method

.method public init(Landroid/webkit/WebView;Lcom/transsion/sniffer_load/sniffservice/ISniffCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mSniffWebView:Landroid/webkit/WebView;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->callBackWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onClientScriptSniffFailed(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->callBackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->callBackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/sniffservice/ISniffCallBack;

    invoke-interface {p0, p1}, Lcom/transsion/sniffer_load/sniffservice/ISniffCallBack;->onClientScriptSniffFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$6;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$6;-><init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClientScriptSniffResult(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->callBackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->callBackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/sniffservice/ISniffCallBack;

    invoke-interface {p0, p1}, Lcom/transsion/sniffer_load/sniffservice/ISniffCallBack;->onClientScriptSniffResult(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$5;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$5;-><init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onJsSniffResult(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V
    .locals 1

    new-instance v0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$11;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$11;-><init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServerSniffFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->callBackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->callBackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/sniffservice/ISniffCallBack;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/sniffservice/ISniffCallBack;->onServerSniffFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$9;-><init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onServerSniffResult(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->callBackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->callBackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/sniffservice/ISniffCallBack;

    invoke-interface {p0, p1, p2}, Lcom/transsion/sniffer_load/sniffservice/ISniffCallBack;->onServerSniffResult(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$8;-><init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onServerSniffResultAsync(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->callBackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->callBackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/sniffservice/ISniffCallBack;

    invoke-interface {p0, p1, p2}, Lcom/transsion/sniffer_load/sniffservice/ISniffCallBack;->onServerSniffResultAsync(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$7;-><init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStartClientSniff(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$10;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$10;-><init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestSniffScript(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->getInstance()Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->isForbidSeverSniff(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forbid server sniff:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->getInstance()Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->getSupportSniffScript(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local_script_exist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/SniffTiktokUtil;->isTiktokSite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->sniffVideo(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start_request_script_from_server:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mbGettingScript:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->getInstance()Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    move-result-object v2

    new-instance v3, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;-><init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;J)V

    invoke-virtual {v2, p1, v3}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->requestConfigFromServer(Ljava/lang/String;Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;)V

    return-void
.end method

.method public sniffVideo(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sniff_video_start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lir8;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sniff_video_must_http_url:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object p1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_2000:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget v0, p1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    const-string p1, "dl_brower_sniff"

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mStrCurrSniffUrl:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mbGettingScript:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting_script_wait:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mbWaitingInject:Z

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->startSniff(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public submitSniffInfo(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->onSubmitSniffInfo(Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->mSniffWebView:Landroid/webkit/WebView;

    return-void
.end method
