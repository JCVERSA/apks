.class Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->C(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

.field final synthetic val$request:Landroid/webkit/WebResourceRequest;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Landroid/webkit/WebResourceRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$5;->this$0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    iput-object p2, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$5;->val$request:Landroid/webkit/WebResourceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$5;->this$0:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-virtual {v0}, Lz9;->k()Landroid/webkit/WebView;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$5;->val$request:Landroid/webkit/WebResourceRequest;

    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->I(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Landroid/webkit/WebView;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    return-void
.end method
