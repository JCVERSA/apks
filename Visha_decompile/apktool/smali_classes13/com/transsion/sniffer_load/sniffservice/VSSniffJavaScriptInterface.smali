.class public Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final JS_CALL_JAVA_OBJCET_NAME_SNIFFWEBVIEWJS:Ljava/lang/String; = "SniffWebViewJs"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mVideoSnifferCore:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;->mVideoSnifferCore:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;->lambda$setBuriedPointCommon$0(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$setBuriedPointCommon$0(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;

    invoke-static {p0, v0}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;->getPost()Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lhb0;->markTrackMap(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getClipboardContent()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {}, Ldy0;->b()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentLanguage error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, ""

    :goto_0
    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClipboardContent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    return-object p0
.end method

.method public onCanDownloadMedia(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get_video_info_from_js:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    new-instance v3, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface$2;

    invoke-direct {v3, p0}, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface$2;-><init>(Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;)V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {p1, v3}, Lek4;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->setMultiVideoList(Ljava/util/List;)V

    invoke-static {v1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->isNotEmpty(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video_info:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;->mVideoSnifferCore:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->onJsSniffResult(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V

    :cond_0
    return-void
.end method

.method public onGetVideos(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetVideos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    new-instance v3, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface$3;

    invoke-direct {v3, p0}, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface$3;-><init>(Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;)V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {p1, v3}, Lek4;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->setMultiVideoList(Ljava/util/List;)V

    invoke-static {v1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->isNotEmpty(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video_info:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;->mVideoSnifferCore:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->onJsSniffResult(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V

    :cond_0
    return-void
.end method

.method public final popupVideoInfo(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public pushMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public setBuriedPoint(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffFromJson(Ljava/lang/String;)V

    return-void
.end method

.method public setBuriedPointCommon(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance p0, Lwmb;

    invoke-direct {p0, p1}, Lwmb;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCanDownload(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public setJsMedia(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get_video_info_from_js:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    new-instance v3, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface$1;

    invoke-direct {v3, p0}, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface$1;-><init>(Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;)V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {p1, v3}, Lek4;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->setMultiVideoList(Ljava/util/List;)V

    invoke-static {v1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->isNotEmpty(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video_info:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;->mVideoSnifferCore:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->onClientScriptSniffResult(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;->mVideoSnifferCore:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get_video_info_from_js_failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->onClientScriptSniffFailed(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object p0, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript_call_back_setValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public submitSniff(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;->TAG:Ljava/lang/String;

    const-string v1, "get_sniff_info_should_request_server"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;->mVideoSnifferCore:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->submitSniffInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
