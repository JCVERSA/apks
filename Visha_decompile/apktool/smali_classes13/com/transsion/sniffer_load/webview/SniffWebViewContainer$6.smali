.class Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;
.super Lcom/blankj/utilcode/util/ThreadUtils$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->W(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

.field final synthetic val$sniffVideoInfoBean:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$userAgent:Ljava/lang/String;

.field final synthetic val$videoUrl:Ljava/lang/String;

.field final synthetic val$webViewUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;->this$0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    iput-object p2, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;->val$webViewUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;->val$videoUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;->val$userAgent:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;->val$sniffVideoInfoBean:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;->lambda$doInBackground$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    return-void
.end method

.method private synthetic lambda$doInBackground$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 8

    sget-object v0, Lz9;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSniffCatch: page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "videoName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/transsion/sniffer_load/data/SniffDataManager;->isVideoUrlExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/transsion/sniffer_load/data/SniffDataManager;->mExist:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectFile: detect and shake: fileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    sget-object v0, Lfr9;->d:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p5, p3}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setUaAgent(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Ldr9;->g()I

    move-result p3

    invoke-virtual {p5, p3}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setSource(I)V

    invoke-virtual {p5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoFileName()Ljava/lang/String;

    move-result-object p3

    const-string v0, ".m3u8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p0, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;->this$0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-static {p0, p5, v4, p2, p1}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->J(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;->this$0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-object v3, p5

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->K(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;->this$0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {p0, p1}, Lz9;->p(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;->val$title:Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;->val$webViewUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;->val$videoUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;->val$userAgent:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;->val$sniffVideoInfoBean:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    new-instance v9, Lcom/transsion/sniffer_load/webview/a;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v7

    move-object v4, v8

    invoke-direct/range {v1 .. v6}, Lcom/transsion/sniffer_load/webview/a;-><init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    invoke-static {v0, v7, v8, v9}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->parseVideoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper$VideoCheckResultListener;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
