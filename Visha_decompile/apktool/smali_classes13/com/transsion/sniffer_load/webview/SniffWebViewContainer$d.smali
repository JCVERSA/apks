.class public Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->V(Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$d;->b:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/sniffer_load/okdownload/a;I)Z
    .locals 1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/transsion/sniffer_load/okdownload/a;->j:Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$d;->b:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {v0}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/transsion/sniffer_load/okdownload/a;->k:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$d;->b:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    iget-object p0, p0, Lz9;->f:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->j(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic j(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lcom/transsion/sniffer_load/okdownload/a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$d;->a(Lcom/transsion/sniffer_load/okdownload/a;I)Z

    move-result p0

    return p0
.end method
