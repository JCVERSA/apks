.class public final Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView$b;
.super Ljm4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;->setup(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lujd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    invoke-direct {p0}, Ljm4;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 p2, 0x64

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;->access$setLoadFinish$p(Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;Z)V

    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;->access$isLoadFinish$p(Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_TEMPLATE_WEBVIEW_LOAD_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const-string p2, "ERROR_SHOW_TEMPLATE_WEBVIEW_LOAD_ERROR"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;->access$dispatchLoadError(Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;->access$getTag$p(Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onRenderProcessGone"

    invoke-virtual {p1, p2, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_TEMPLATE_WEBVIEW_RENDER_GONE:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const-string p2, "ERROR_SHOW_TEMPLATE_WEBVIEW_RENDER_GONE"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;->access$dispatchLoadError(Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    const/4 p0, 0x1

    return p0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView$b;->a:Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;->access$getJsBridge$p(Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;)Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;->shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :cond_1
    return-object v0
.end method
