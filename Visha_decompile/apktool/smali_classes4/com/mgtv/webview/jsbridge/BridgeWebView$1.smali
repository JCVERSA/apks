.class Lcom/mgtv/webview/jsbridge/BridgeWebView$1;
.super Lcom/mgtv/webview/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/webview/jsbridge/BridgeWebView;


# direct methods
.method public constructor <init>(Lcom/mgtv/webview/jsbridge/BridgeWebView;Lcom/mgtv/webview/jsbridge/BridgeWebView;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView$1;->a:Lcom/mgtv/webview/jsbridge/BridgeWebView;

    invoke-direct {p0, p2, p3}, Lcom/mgtv/webview/b;-><init>(Lcom/mgtv/webview/jsbridge/BridgeWebView;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView$1;->a:Lcom/mgtv/webview/jsbridge/BridgeWebView;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView$1;->a:Lcom/mgtv/webview/jsbridge/BridgeWebView;

    invoke-virtual {p0, p0, p1}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->c(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView$1;->a:Lcom/mgtv/webview/jsbridge/BridgeWebView;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView$1;->a:Lcom/mgtv/webview/jsbridge/BridgeWebView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    iget-object p0, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView$1;->a:Lcom/mgtv/webview/jsbridge/BridgeWebView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method
