.class public final Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;-><init>(Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ILjava/lang/String;JLcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000]\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J-\u0010\t\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ-\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J-\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J5\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u001aJ-\u0010\u001d\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ#\u0010\"\u001a\u00020!2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016\u00a2\u0006\u0004\u0008\"\u0010#J#\u0010$\u001a\u00020!2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008$\u0010%J#\u0010$\u001a\u00020!2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008$\u0010&J#\u0010\'\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\'\u0010(\u00a8\u0006)"
    }
    d2 = {
        "com/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$1",
        "Landroid/webkit/WebViewClient;",
        "Landroid/webkit/WebView;",
        "view",
        "",
        "url",
        "Landroid/graphics/Bitmap;",
        "favicon",
        "Lzfb;",
        "onPageStarted",
        "(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V",
        "Landroid/webkit/SslErrorHandler;",
        "handler",
        "Landroid/net/http/SslError;",
        "error",
        "onReceivedSslError",
        "(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V",
        "Landroid/webkit/WebResourceRequest;",
        "request",
        "Landroid/webkit/WebResourceError;",
        "onReceivedError",
        "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V",
        "",
        "errorCode",
        "description",
        "failingUrl",
        "(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V",
        "Landroid/webkit/WebResourceResponse;",
        "errorResponse",
        "onReceivedHttpError",
        "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V",
        "Landroid/webkit/RenderProcessGoneDetail;",
        "detail",
        "",
        "onRenderProcessGone",
        "(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z",
        "shouldOverrideUrlLoading",
        "(Landroid/webkit/WebView;Ljava/lang/String;)Z",
        "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z",
        "onPageFinished",
        "(Landroid/webkit/WebView;Ljava/lang/String;)V",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$1;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

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

    if-lt p1, p2, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$1;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->access$getSslFailCount$p(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;)I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$1;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->getAdsDTO()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$1;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->access$getSslFailCount$p(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->j0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$1;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->access$isStartLoad$p(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$1;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->access$setStartLoad$p(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;Z)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$1;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->getCallback()Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;->onPageStart()V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 3
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$1;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->access$handlerLoadFailed(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;I)V

    :cond_1
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$1;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->access$handlerLoadFailed(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;I)V

    :cond_1
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$1;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->access$getSslFailCount$p(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->access$setSslFailCount$p(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;I)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    sget-object p1, Latd;->a:Latd;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$1;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->getAdsDTO()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Latd;->j(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toString(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$1;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->access$shouldOverrideUrlLoad(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 7
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p0

    return p0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$1;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    const/4 p1, 0x0

    .line 2
    invoke-static {p0, p2, p1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->access$shouldOverrideUrlLoad(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
