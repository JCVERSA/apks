.class public abstract Lq7d;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public a:Lcom/mgadplus/brower/jsbridge/BridgeWebView;


# direct methods
.method public constructor <init>(Lcom/mgadplus/brower/jsbridge/BridgeWebView;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lq7d;->a:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract b()Z
.end method

.method public abstract c(Ljava/lang/String;)Z
.end method

.method public abstract d(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string v0, "MgmiWebViewJavascriptBridge.js"

    invoke-static {p1, v0}, Lu5d;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lq7d;->a:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    invoke-virtual {v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->getStartupMessage()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lq7d;->a:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    invoke-virtual {v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->getStartupMessage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lued;

    iget-object v2, p0, Lq7d;->a:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    invoke-virtual {v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->f(Lued;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq7d;->a:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->setStartupMessage(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lq7d;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1, p2}, Lq7d;->d(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    .line 9
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lq7d;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    :cond_0
    :goto_0
    const-string v1, "yy://return/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 14
    iget-object p0, p0, Lq7d;->a:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    invoke-virtual {p0, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->m(Ljava/lang/String;)V

    return v2

    .line 15
    :cond_1
    const-string v1, "yy://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    iget-object p0, p0, Lq7d;->a:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    invoke-virtual {p0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->n()V

    return v2

    .line 17
    :cond_2
    invoke-virtual {p0, v0}, Lq7d;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v2

    :goto_1
    return v2
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lq7d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    const-string v0, "yy://return/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lq7d;->a:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    invoke-virtual {p0, p2}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->m(Ljava/lang/String;)V

    return v1

    .line 6
    :cond_1
    const-string v0, "yy://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object p0, p0, Lq7d;->a:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    invoke-virtual {p0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->n()V

    return v1

    .line 8
    :cond_2
    invoke-virtual {p0, p2}, Lq7d;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    :goto_1
    return v1
.end method
