.class public final Lcom/cloud/tmc/render/DefaultPageCallback;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/render/WebviewPageCallback;
.implements Lcom/cloud/tmc/render/IRegisterPageCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u001c\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001c\u0010\u000f\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J&\u0010\u0010\u001a\u00020\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J&\u0010\u0016\u001a\u00020\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J!\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016\u00a2\u0006\u0002\u0010\u001eJ\u0012\u0010\u001f\u001a\u00020\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J!\u0010 \u001a\u00020\u001b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0002\u0010!R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005\u00a8\u0006\""
    }
    d2 = {
        "Lcom/cloud/tmc/render/DefaultPageCallback;",
        "Lcom/cloud/tmc/kernel/render/WebviewPageCallback;",
        "Lcom/cloud/tmc/render/IRegisterPageCallback;",
        "pageCallback",
        "Lcom/cloud/tmc/kernel/render/IPageCallback;",
        "(Lcom/cloud/tmc/kernel/render/IPageCallback;)V",
        "getPageCallback",
        "()Lcom/cloud/tmc/kernel/render/IPageCallback;",
        "setPageCallback",
        "onPageFinished",
        "",
        "webView",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "onPageStarted",
        "onReceivedError",
        "view",
        "webResourceRequest",
        "Landroid/webkit/WebResourceRequest;",
        "webResourceError",
        "Landroid/webkit/WebResourceError;",
        "onReceivedHttpError",
        "request",
        "errorResponse",
        "Landroid/webkit/WebResourceResponse;",
        "onRenderProcessGone",
        "",
        "detail",
        "Landroid/webkit/RenderProcessGoneDetail;",
        "(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Ljava/lang/Boolean;",
        "registerPageCallback",
        "shouldOverrideUrlLoading",
        "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;",
        "com.cloud.tmc.render"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private pageCallback:Lcom/cloud/tmc/kernel/render/IPageCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/cloud/tmc/render/DefaultPageCallback;-><init>(Lcom/cloud/tmc/kernel/render/IPageCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/render/IPageCallback;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/render/DefaultPageCallback;->pageCallback:Lcom/cloud/tmc/kernel/render/IPageCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/tmc/kernel/render/IPageCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/render/DefaultPageCallback;-><init>(Lcom/cloud/tmc/kernel/render/IPageCallback;)V

    return-void
.end method


# virtual methods
.method public final getPageCallback()Lcom/cloud/tmc/kernel/render/IPageCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultPageCallback;->pageCallback:Lcom/cloud/tmc/kernel/render/IPageCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultPageCallback;->pageCallback:Lcom/cloud/tmc/kernel/render/IPageCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/render/IPageCallback;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultPageCallback;->pageCallback:Lcom/cloud/tmc/kernel/render/IPageCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/render/IPageCallback;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultPageCallback;->pageCallback:Lcom/cloud/tmc/kernel/render/IPageCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/kernel/render/IPageCallback;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultPageCallback;->pageCallback:Lcom/cloud/tmc/kernel/render/IPageCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/kernel/render/IPageCallback;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultPageCallback;->pageCallback:Lcom/cloud/tmc/kernel/render/IPageCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/render/IPageCallback;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public registerPageCallback(Lcom/cloud/tmc/kernel/render/IPageCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/DefaultPageCallback;->pageCallback:Lcom/cloud/tmc/kernel/render/IPageCallback;

    .line 2
    .line 3
    return-void
.end method

.method public final setPageCallback(Lcom/cloud/tmc/kernel/render/IPageCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/DefaultPageCallback;->pageCallback:Lcom/cloud/tmc/kernel/render/IPageCallback;

    .line 2
    .line 3
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultPageCallback;->pageCallback:Lcom/cloud/tmc/kernel/render/IPageCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/render/IPageCallback;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method
