.class public Lcom/mgtv/webview/jsbridge/c;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private a:Lcom/mgtv/webview/jsbridge/BridgeWebView;


# direct methods
.method public constructor <init>(Lcom/mgtv/webview/jsbridge/BridgeWebView;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/mgtv/webview/jsbridge/c;->a:Lcom/mgtv/webview/jsbridge/BridgeWebView;

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string v0, "SspWebViewJavascriptBridge.js"

    invoke-static {p1, v0}, Lcom/mgtv/webview/jsbridge/b;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/webview/jsbridge/c;->a:Lcom/mgtv/webview/jsbridge/BridgeWebView;

    invoke-virtual {v0}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/webview/jsbridge/c;->a:Lcom/mgtv/webview/jsbridge/BridgeWebView;

    invoke-virtual {v0}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/webview/jsbridge/f;

    iget-object v2, p0, Lcom/mgtv/webview/jsbridge/c;->a:Lcom/mgtv/webview/jsbridge/BridgeWebView;

    invoke-virtual {v2, v1}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Lcom/mgtv/webview/jsbridge/f;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mgtv/webview/jsbridge/c;->a:Lcom/mgtv/webview/jsbridge/BridgeWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/webview/jsbridge/c;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/webview/jsbridge/c;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 10
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    const-string v1, "yy://return/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "UTF-8"

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 12
    :try_start_0
    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/mgtv/webview/jsbridge/c;->a:Lcom/mgtv/webview/jsbridge/BridgeWebView;

    invoke-virtual {p0, v0}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->e(Ljava/lang/String;)V

    return v3

    .line 15
    :cond_0
    const-string v1, "yy://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    :try_start_1
    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :goto_1
    iget-object p0, p0, Lcom/mgtv/webview/jsbridge/c;->a:Lcom/mgtv/webview/jsbridge/BridgeWebView;

    invoke-virtual {p0}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->d()V

    return v3

    .line 19
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mgtv/webview/jsbridge/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v3

    :goto_2
    return v3
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "yy://return/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "UTF-8"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p2, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/mgtv/webview/jsbridge/c;->a:Lcom/mgtv/webview/jsbridge/BridgeWebView;

    invoke-virtual {p0, p2}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->e(Ljava/lang/String;)V

    return v2

    .line 5
    :cond_0
    const-string v0, "yy://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p0, p0, Lcom/mgtv/webview/jsbridge/c;->a:Lcom/mgtv/webview/jsbridge/BridgeWebView;

    invoke-virtual {p0}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->d()V

    .line 7
    :try_start_1
    invoke-static {p2, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return v2

    .line 9
    :cond_1
    invoke-virtual {p0, p2}, Lcom/mgtv/webview/jsbridge/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    :goto_2
    return v2
.end method
