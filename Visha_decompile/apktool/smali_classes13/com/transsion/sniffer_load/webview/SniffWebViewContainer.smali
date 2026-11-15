.class public Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;
.super Lz9;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/sniffer_load/sniffservice/ISniffCallBack;
.implements Landroid/webkit/DownloadListener;


# instance fields
.field public final o:Ljava/lang/String;

.field public final p:I

.field public q:Z


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lz9;-><init>(Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;)V

    const-string p1, ".m3u8"

    iput-object p1, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->o:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->p:I

    return-void
.end method

.method public static synthetic D(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Lcom/transsion/sniffer_load/okdownload/a;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->Q(Lcom/transsion/sniffer_load/okdownload/a;Z)V

    return-void
.end method

.method public static synthetic E(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    return-void
.end method

.method public static synthetic F(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->R(Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V

    return-void
.end method

.method public static synthetic G(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    return-void
.end method

.method public static synthetic H(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->P(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V

    return-void
.end method

.method public static bridge synthetic I(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Landroid/webkit/WebView;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->S(Landroid/webkit/WebView;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    return-void
.end method

.method public static bridge synthetic J(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->T(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic K(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->U(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    return-void
.end method

.method public static M(Landroid/app/Activity;Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;Ljava/lang/String;Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;Ljava/lang/String;Z)Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;
    .locals 2

    new-instance v0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-direct {v0, p3}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;-><init>(Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;)V

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    iput-object p3, v0, Lz9;->b:Landroid/os/Bundle;

    const-string v1, "url_key"

    invoke-virtual {p3, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lz9;->x(Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;)V

    invoke-virtual {v0, p0, p4}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->e(Landroid/app/Activity;Ljava/lang/String;)V

    iput-boolean p5, v0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->q:Z

    return-object v0
.end method


# virtual methods
.method public A(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lz9;->A(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {p2}, Lpy2;->e(Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lz9;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportSniff: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz9;->e:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->sniffVideo(Ljava/lang/String;)V

    iget-object p1, p0, Lz9;->g:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lz9;->p(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public B(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lz9;->B(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {p2}, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil;->isSniffWebSite(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/transsion/sniffer_load/data/SniffDataManager;->clearSniffData(Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Lpy2;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lz9;->e:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    invoke-virtual {p0, p2}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->requestSniffScript(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public C(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 4

    sget-object v0, Lz9;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil;->isSniffWebSite(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil;->isShouldSniffUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$5;

    invoke-direct {v0, p0, p2}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$5;-><init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Landroid/webkit/WebResourceRequest;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_0
    invoke-static {}, Lcom/transsion/moduleservice/IBtDownloadService$ServiceInstance;->getService()Lcom/transsion/moduleservice/IBtDownloadService;

    move-result-object v0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/sniffer_load/sniffservice/SniffTorrentUtil;->isTorrentSource(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, p1, p2, v2}, Lcom/transsion/moduleservice/IBtDownloadService;->sniffTorrent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)Z

    :cond_1
    return v1

    :cond_2
    invoke-super {p0, p1, p2}, Lz9;->C(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p0

    return p0
.end method

.method public final L(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v7, Lhr9;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lhr9;-><init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    invoke-static {v7}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 7

    invoke-static {p1, p2}, Lcom/transsion/sniffer_load/data/SniffDataManager;->isVideoUrlExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/transsion/sniffer_load/data/SniffDataManager;->mExist:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

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

    if-eqz p3, :cond_4

    invoke-static {p2}, Lcom/transsion/sniffer_load/data/SniffDataManager;->getM3u8Extra(Ljava/lang/String;)Lcom/transsion/sniffer_load/data/M3u8Extra;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/transsion/sniffer_load/data/M3u8Extra;->isAudioOnly()Z

    move-result p4

    if-nez p4, :cond_2

    invoke-virtual {p5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object p2

    const/4 p4, 0x0

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {p3}, Lcom/transsion/sniffer_load/data/M3u8Extra;->getSize()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->setSize(J)V

    invoke-virtual {p5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {p3}, Lcom/transsion/sniffer_load/data/M3u8Extra;->getResolution()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->setResolution(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/transsion/sniffer_load/data/M3u8Extra;->getImg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoCover(Ljava/lang/String;)V

    sget-object p2, Lcom/transsion/sniffer_load/data/SniffDataManager;->mExist:Ljava/util/Set;

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p1, p5}, Lcom/transsion/sniffer_load/data/SniffDataManager;->addData(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/transsion/sniffer_load/data/M3u8Extra;->isAudioOnly()Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p3, Lz9;->n:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing audio track url: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p2, Lcom/transsion/sniffer_load/data/SniffDataManager;->mExist:Ljava/util/Set;

    invoke-interface {p2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {p1, p5}, Lcom/transsion/sniffer_load/data/SniffDataManager;->removeData(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lz9;->p(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p0

    move-object v2, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->U(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Lz9;->p(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final synthetic O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 7

    new-instance v6, Lkr9;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lkr9;-><init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    invoke-static {p1, p2, p3, v6}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->parseVideoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper$VideoCheckResultListener;)V

    return-void
.end method

.method public final synthetic P(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V
    .locals 4

    iget-object v0, p0, Lz9;->f:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->x()V

    :cond_0
    sget-object v0, Lz9;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "script_sniff_result:"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->isNotEmpty(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {p0}, Lz9;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/transsion/sniffer_load/data/SniffDataManager;->addData(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->isCanDownload()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->isNotEmpty(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lz9;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    new-instance v3, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$c;

    invoke-direct {v3, p0, v0, p1}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$c;-><init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V

    iget-object p1, p0, Lz9;->h:[I

    iget-object p0, p0, Lz9;->i:[I

    invoke-static {v2, v1, v3, p1, p0}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->c(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;[I[I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "dl_brower_script_sniff_sfailed"

    const-string v1, "0"

    invoke-static {v0, v1, p0, p1}, Lp06;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final synthetic Q(Lcom/transsion/sniffer_load/okdownload/a;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p2

    iget-object p0, p0, Lz9;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->p(Landroid/content/Context;Lba0;)Z

    :cond_0
    return-void
.end method

.method public final synthetic R(Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V
    .locals 3

    iget-object v0, p0, Lz9;->f:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->x()V

    :cond_0
    if-eqz p1, :cond_2

    sget-object v0, Lz9;->n:Ljava/lang/String;

    const-string v1, "sever_sniff_result:"

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->checkName()V

    invoke-static {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->fromSniffResultBean(Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->isNotEmpty(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->isAsyncServerTask()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    iget-object p1, p0, Lz9;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v1, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$d;

    invoke-direct {v1, p0}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$d;-><init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V

    iget-object v2, p0, Lz9;->h:[I

    iget-object p0, p0, Lz9;->i:[I

    invoke-static {p1, v0, v1, v2, p0}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->c(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;[I[I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "dl_brower_script_sniff_sfailed"

    const-string v1, "0"

    invoke-static {v0, v1, p0, p1}, Lp06;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final S(Landroid/webkit/WebView;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 7

    invoke-static {p2}, Lpy2;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->getInstance()Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->isClientForbidSniff(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v6

    iget-boolean p1, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->q:Z

    if-eqz p1, :cond_2

    invoke-static {v5}, Lcom/transsion/sniffer_load/sniffservice/SniffGoMovieUtil;->isGoMoviesWebSite(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->W(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->L(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final T(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lcom/transsion/sniffer_load/data/SniffDataManager;->parseM3U8Stream(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsv5;

    sget-object v5, Lz9;->n:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sniff stream:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lsv5;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cover url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lsv5;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolution:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lsv5;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filename:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "title:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lsv5;->h()Lpv5;

    move-result-object v7

    invoke-virtual {v7}, Lpv5;->d()J

    move-result-wide v13

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    filled-new-array/range {v8 .. v13}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-direct {v5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;-><init>()V

    invoke-static {}, Ldr9;->g()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setSource(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setTitle(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoFileName(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setHasResources(Z)V

    invoke-virtual {v4}, Lsv5;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoCover(Ljava/lang/String;)V

    new-instance v6, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-direct {v6}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lsv5;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoList(Ljava/util/List;)V

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v4}, Lsv5;->h()Lpv5;

    move-result-object v7

    invoke-virtual {v7}, Lpv5;->d()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->setSize(J)V

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v4}, Lsv5;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->setResolution(Ljava/lang/String;)V

    sget-object v4, Lcom/transsion/sniffer_load/data/SniffDataManager;->mExist:Ljava/util/Set;

    move-object/from16 v6, p2

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v5}, Lcom/transsion/sniffer_load/data/SniffDataManager;->addData(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    move-object v4, p0

    invoke-virtual {p0, v1}, Lz9;->p(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public final U(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 5

    sget-object v0, Lcom/transsion/sniffer_load/data/SniffDataManager;->mExist:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p3, p1}, Lcom/transsion/sniffer_load/data/SniffDataManager;->addData(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    invoke-virtual {p1, p4}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoCover(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoCover()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoCover()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoCover(Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoFileName(Ljava/lang/String;)V

    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setTitle(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object p5

    const/4 v0, 0x0

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {p5}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p5, v1, v3

    if-gtz p5, :cond_4

    invoke-static {p4}, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil;->isShouldSniffUrl(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_4

    new-instance p5, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;

    invoke-direct {p5}, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;-><init>()V

    invoke-virtual {p5, p4}, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->parseSync(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p5}, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->hasVideoTrack()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {p5}, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->getVideoResolution()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->setResolution(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getUaAgent()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->getContentLength(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {p5, v1, v2}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->setSize(J)V

    sget-object p5, Lcom/transsion/sniffer_load/data/SniffDataManager;->mExist:Ljava/util/Set;

    invoke-interface {p5, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p3, p1}, Lcom/transsion/sniffer_load/data/SniffDataManager;->addData(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    invoke-virtual {p0, p3}, Lz9;->p(Ljava/lang/String;)V

    :cond_4
    invoke-static {p4}, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil;->isShouldSniffUrl(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    sget-object p4, Lcom/transsion/sniffer_load/data/SniffDataManager;->mExist:Ljava/util/Set;

    invoke-interface {p4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p3, p1}, Lcom/transsion/sniffer_load/data/SniffDataManager;->addData(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    invoke-virtual {p0, p3}, Lz9;->p(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final V(Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V
    .locals 2

    iget-object v0, p0, Lz9;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz9;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lir9;

    invoke-direct {v1, p0, p1}, Lir9;-><init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final W(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v7, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$6;-><init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    invoke-static {v7}, Lcom/blankj/utilcode/util/ThreadUtils;->j(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public e(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lz9;->e(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object p1, p0, Lz9;->l:Lfr9;

    new-instance p2, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$a;

    invoke-direct {p2, p0}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$a;-><init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V

    invoke-virtual {p1, p2}, Lfr9;->e(Lfr9$a;)V

    iget-object p1, p0, Lz9;->e:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    invoke-virtual {p0}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->init(Landroid/webkit/WebView;Lcom/transsion/sniffer_load/sniffservice/ISniffCallBack;)V

    return-void
.end method

.method public i()Lcom/just/agentweb/IAgentWebSettings;
    .locals 1

    new-instance v0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$b;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$b;-><init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V

    return-object v0
.end method

.method public onClientScriptSniffFailed(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "dl_brower_script_sniff_cfailed"

    invoke-static {v1, p1, p0, v0}, Lp06;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClientScriptSniffResult(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V
    .locals 2

    iget-object v0, p0, Lz9;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz9;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lgr9;

    invoke-direct {v1, p0, p1}, Lgr9;-><init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    sget-object v0, Lz9;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userAgent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentDisposition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimetype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v3, "onDownloadStart"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p4}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadUtil;->getFileTypeFromMineType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p1}, Lut4;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;-><init>()V

    invoke-virtual {v0, p3}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoFileName(Ljava/lang/String;)V

    const/4 p3, 0x1

    invoke-virtual {v0, p3}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setHasResources(Z)V

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoCover(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setUaAgent(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/just/agentweb/AgentWebConfig;->getCookiesByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setCookie(Ljava/lang/String;)V

    new-instance p2, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-direct {p2}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->setType(Ljava/lang/String;)V

    invoke-virtual {p2, p5, p6}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->setSize(J)V

    invoke-virtual {v0, p3}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoList(Ljava/util/List;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/transsion/sniffer_load/data/SniffDataManager;->mExist:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/transsion/sniffer_load/data/SniffDataManager;->addData(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    invoke-virtual {p0}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz9;->p(Ljava/lang/String;)V

    return-void
.end method

.method public onJsSniffResults(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V
    .locals 10

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v0

    :goto_1
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lz9;->n:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "video cover:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoCover()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "title:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "url:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {p0, v5, v4, v2}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->S(Landroid/webkit/WebView;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public onServerSniffFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p0

    const-string p2, "dl_brower_script_sniff_sfailed"

    invoke-static {p2, p3, p0, p1}, Lp06;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServerSniffResult(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V
    .locals 0

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lz9;->n:Ljava/lang/String;

    const-string p1, "sniff failed:no url"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->V(Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V

    return-void
.end method

.method public onServerSniffResultAsync(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V
    .locals 6

    iget-object v0, p0, Lz9;->f:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->x()V

    :cond_0
    new-instance v0, Lcom/transsion/sniffer_load/okdownload/a;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/okdownload/a;-><init>()V

    iput-object p1, v0, Lcom/transsion/sniffer_load/okdownload/a;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getUserAgent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/sniffer_load/okdownload/a;->n:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getCookie()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/sniffer_load/okdownload/a;->o:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/transsion/sniffer_load/okdownload/a;->j:Z

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getSniffRequestBody()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/sniffer_load/okdownload/a;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getResourceTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "mp4"

    const-string v3, "."

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getResourceTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/sniffer_load/okdownload/a;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/sniffer_load/okdownload/a;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getResourceCover()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;->getResourceCover()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/okdownload/a;->j(Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lz9;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sever_sniff_result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downing_item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/transsion/sniffer_load/okdownload/a;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->inject(Lcom/transsion/sniffer_load/okdownload/a;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Le6b;

    iget-object v1, p0, Lz9;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v2, Ljr9;

    invoke-direct {v2, p0, v0}, Ljr9;-><init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Lcom/transsion/sniffer_load/okdownload/a;)V

    invoke-direct {p2, v1, v2}, Le6b;-><init>(Landroid/content/Context;Le6b$c;)V

    invoke-virtual {p2, p1}, Le6b;->b(Z)V

    return-void
.end method

.method public onStartClientSniff(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
