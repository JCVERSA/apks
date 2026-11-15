.class public Lcom/mgadplus/brower/jsbridge/BridgeWebView$a;
.super Ln5d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mgadplus/brower/jsbridge/BridgeWebView;


# direct methods
.method public constructor <init>(Lcom/mgadplus/brower/jsbridge/BridgeWebView;Lcom/mgadplus/brower/jsbridge/BridgeWebView;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$a;->c:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    invoke-direct {p0, p2, p3}, Ln5d;-><init>(Lcom/mgadplus/brower/jsbridge/BridgeWebView;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$a;->c:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    invoke-virtual {p0, p1, p2}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->h(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$a;->c:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    invoke-virtual {p0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a()Z

    move-result p0

    return p0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$a;->c:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    invoke-virtual {p0, p0, p1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->l(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public d(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$a;->c:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    invoke-virtual {p0, p1, p2}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->d(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$a;->c:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->b(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    iget-object p0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$a;->c:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->c(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$a;->c:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    invoke-virtual {p0, p1, p2}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->g(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p0

    return p0
.end method
