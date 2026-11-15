.class public final Lcom/transsion/lib_web/BaseLibWebFragment$f;
.super Landroid/webkit/WebViewClient;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/lib_web/BaseLibWebFragment;->u0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/lib_web/BaseLibWebFragment;

.field final synthetic b:Lcom/github/lzyzsd/jsbridge/BridgeWebView;


# direct methods
.method constructor <init>(Lcom/transsion/lib_web/BaseLibWebFragment;Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$f;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/lib_web/BaseLibWebFragment$f;->b:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/transsion/lib_web/download_render/utils/a;->a:Lcom/transsion/lib_web/download_render/utils/a;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$f;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/transsion/lib_web/BaseLibWebFragment;->g0()Lcom/transsion/lib_web/LoadUrlData;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    const-string v2, ""

    .line 33
    .line 34
    :cond_0
    iget-object v3, p0, Lcom/transsion/lib_web/BaseLibWebFragment$f;->b:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/webkit/WebView;->getProgress()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/lib_web/download_render/utils/a;->k(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$f;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    .line 44
    .line 45
    invoke-virtual {v0, p1, p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->E0(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$f;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/lib_web/BaseLibWebFragment;->F0(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$f;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/lib_web/BaseLibWebFragment;->G0(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 4
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$f;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/lib_web/BaseLibWebFragment;->H0(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "request"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "errorResponse"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$f;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/lib_web/BaseLibWebFragment;->I0(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "request"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$f;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->i0()Lcom/transsion/lib_web/zip/loader/d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Lcom/transsion/lib_web/zip/loader/d;->a(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    .line 6
    :cond_1
    const-string v1, "yy://__QUEUE_MESSAGE__"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$f;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v1}, Lcom/transsion/lib_web/BaseLibWebFragment;->g0()Lcom/transsion/lib_web/LoadUrlData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/lib_web/LoadUrlData;->setOriginUrl(Ljava/lang/String;)V

    .line 8
    :cond_2
    sget-object v1, Lpl/g;->a:Lpl/g;

    iget-object v2, p0, Lcom/transsion/lib_web/BaseLibWebFragment$f;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lpl/g;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "yy://__QUEUE_MESSAGE__"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$f;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->g0()Lcom/transsion/lib_web/LoadUrlData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/lib_web/LoadUrlData;->setOriginUrl(Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-object v0, Lpl/g;->a:Lpl/g;

    iget-object v1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$f;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lpl/g;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method
