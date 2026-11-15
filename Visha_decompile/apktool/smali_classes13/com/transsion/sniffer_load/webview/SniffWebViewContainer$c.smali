.class public Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->onClientScriptSniffResult(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

.field public final synthetic c:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

.field public final synthetic d:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$c;->d:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    iput-object p2, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$c;->b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    iput-object p3, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$c;->c:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/sniffer_load/okdownload/a;I)Z
    .locals 1

    iget-object p2, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$c;->d:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {p2}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/transsion/sniffer_load/okdownload/a;->k:Ljava/lang/String;

    iget-object p2, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$c;->b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getCookie()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$c;->b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getCookie()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/transsion/sniffer_load/okdownload/a;->o:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$c;->c:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getFirstVideoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/just/agentweb/AgentWebConfig;->getCookiesByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/transsion/sniffer_load/okdownload/a;->o:Ljava/lang/String;

    :goto_0
    iget-object p2, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$c;->d:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {p2}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/sniffer_load/sniffservice/SniffTiktokUtil;->isTiktokSite(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/SniffTiktokUtil;->fillDownloadingItem(Lcom/transsion/sniffer_load/okdownload/a;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$c;->d:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    iget-object p0, p0, Lz9;->f:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->j(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic j(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lcom/transsion/sniffer_load/okdownload/a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$c;->a(Lcom/transsion/sniffer_load/okdownload/a;I)Z

    move-result p0

    return p0
.end method
