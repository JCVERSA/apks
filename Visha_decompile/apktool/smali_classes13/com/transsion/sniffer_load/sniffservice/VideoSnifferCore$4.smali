.class Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;
.super Lcom/transsion/retrofit/callback/RetryCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->downloadScript(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/retrofit/callback/RetryCallback<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

.field final synthetic val$download_url:Ljava/lang/StringBuilder;

.field final synthetic val$entity:Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljq0;IJLjava/lang/StringBuilder;Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    iput-object p6, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;->val$download_url:Ljava/lang/StringBuilder;

    iput-object p7, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;->val$entity:Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;

    iput-object p8, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;->val$url:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/transsion/retrofit/callback/RetryCallback;-><init>(Ljq0;IJ)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;Lgu8;Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;->lambda$onRequestResponse$0(Lgu8;Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onRequestResponse$0(Lgu8;Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;Ljava/lang/String;)V
    .locals 5

    const-string v0, "dl_brower_sniff"

    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/JavaScriptHelper;->getJsContentFromHttpResponse(Lokhttp3/ResponseBody;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p2, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->script_content:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->script_updatetime:J

    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->getInstance()Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->updateSniffScriptDB(Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;Z)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    invoke-static {v1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->d(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, p1, v3}, Lcom/transsion/sniffer_load/sniffservice/JavaScriptHelper;->injectWebview(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :try_start_0
    new-instance p1, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_2002:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget v3, v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    invoke-virtual {p1, v3}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object v1, v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object v1, p2, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->sniff_domain:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setJsType(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setDomainName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    new-instance p1, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_2004:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget v3, v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    invoke-virtual {p1, v3}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object v1, v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object v1, p2, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->sniff_domain:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setJsType(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setDomainName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object v1, p2, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->script_url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setScriptUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->c(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setDuration(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    new-instance p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setErrorCode(Ljava/lang/Integer;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    const-string p1, "dl_brower_rp_adl_js"

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setVideoUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setStatus(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    iget-object p1, p2, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->sniff_domain:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setJsType(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setDomainName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffInjectSuccessDelay(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onRequestFail(Ljq0;Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->l()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get_js_content_from_online_failed_msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance p1, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_2003:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget v1, v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object v0, v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;->val$url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;->val$entity:Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->sniff_domain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setJsType(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;->val$url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setDomainName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;->val$entity:Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->script_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setScriptUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    invoke-static {v2}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->c(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setDuration(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    const-string v0, "dl_brower_sniff"

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setVideoUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;->val$url:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->onStartClientSniff(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public onRequestResponse(Ljq0;Lgu8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljq0<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lgu8<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->l()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download_js_file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;->val$download_url:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;->val$entity:Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;->val$url:Ljava/lang/String;

    new-instance v1, Lcom/transsion/sniffer_load/sniffservice/a;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/transsion/sniffer_load/sniffservice/a;-><init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;Lgu8;Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartRetry()V
    .locals 3

    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get_js_content_from_online_failed_and_try_time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/retrofit/callback/RetryCallback;->getCurrentRetryCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
