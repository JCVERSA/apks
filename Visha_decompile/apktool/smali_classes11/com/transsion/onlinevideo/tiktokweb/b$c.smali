.class public final Lcom/transsion/onlinevideo/tiktokweb/b$c;
.super Lcom/just/agentweb/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/tiktokweb/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/tiktokweb/b;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/tiktokweb/b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/b$c;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-direct {p0}, Lcom/just/agentweb/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/WebViewClientDelegate;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$c;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->b:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->z(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished_url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiktokWebviewContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/WebViewClientDelegate;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$c;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->b:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageStarted_url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiktokWebviewContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/just/agentweb/WebViewClientDelegate;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$c;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    iget-object v0, v0, Lcom/transsion/onlinevideo/tiktokweb/a;->b:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->g(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    const/4 p3, 0x2

    const/4 v0, 0x0

    const-string v1, "https://www.tiktok.com/login"

    invoke-static {p2, v1, p1, p3, v0}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$c;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktokweb/b;->u(Lcom/transsion/onlinevideo/tiktokweb/b;Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$c;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktokweb/b;->u(Lcom/transsion/onlinevideo/tiktokweb/b;Z)V

    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/just/agentweb/WebViewClientDelegate;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$c;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->b:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->B(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading requestUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiktokWebviewContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "chat.whatsapp.com"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v1, v3, v4, v5}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    const-string v1, "play.google.com/apps/testing/com.transsion.magicshow"

    invoke-static {v0, v1, v3, v4, v5}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "visha-cdn.shalltry.com/apk/"

    invoke-static {v0, v1, v3, v4, v5}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 6
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 8
    invoke-static {p2, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return v2

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktokweb/b$c;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-static {v1}, Lcom/transsion/onlinevideo/tiktokweb/b;->o(Lcom/transsion/onlinevideo/tiktokweb/b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/transsion/onlinevideo/tiktokweb/b;->q(Lcom/transsion/onlinevideo/tiktokweb/b;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$c;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktokweb/b;->o(Lcom/transsion/onlinevideo/tiktokweb/b;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v2

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktokweb/b$c;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-virtual {v1, v0}, Lcom/transsion/onlinevideo/tiktokweb/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    invoke-super {p0, p1, v0}, Lcom/just/agentweb/WebViewClientDelegate;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 14
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/WebViewClientDelegate;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p0

    return p0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "url"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$c;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktokweb/b;->o(Lcom/transsion/onlinevideo/tiktokweb/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading url= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  originUrl= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiktokWebviewContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$c;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktokweb/b;->o(Lcom/transsion/onlinevideo/tiktokweb/b;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://www.tiktok.com/feedcoop/"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x1

    if-nez v0, :cond_1

    .line 17
    invoke-static {p2, v2, v3, v4, v5}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$c;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-static {p0, p2}, Lcom/transsion/onlinevideo/tiktokweb/b;->t(Lcom/transsion/onlinevideo/tiktokweb/b;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return v6

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$c;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktokweb/b;->o(Lcom/transsion/onlinevideo/tiktokweb/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$c;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktokweb/b;->o(Lcom/transsion/onlinevideo/tiktokweb/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/transsion/onlinevideo/tiktokweb/b;->q(Lcom/transsion/onlinevideo/tiktokweb/b;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 23
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$c;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktokweb/b;->o(Lcom/transsion/onlinevideo/tiktokweb/b;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    return v6

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$c;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-virtual {v0, p2}, Lcom/transsion/onlinevideo/tiktokweb/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading outUrl= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {p2}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 27
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/WebViewClientDelegate;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    return v3
.end method
