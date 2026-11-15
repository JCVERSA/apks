.class public final Lcom/transsion/onlinevideo/tiktokweb/b$b;
.super Lcom/just/agentweb/WebChromeClient;
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

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/b$b;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-direct {p0}, Lcom/just/agentweb/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    const/4 p0, 0x1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v0, "createBitmap(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 9

    new-instance p1, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$b;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    iget-object v0, v0, Lcom/transsion/onlinevideo/tiktokweb/a;->c:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v3, "utf-8"

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "getUserAgentString(...)"

    invoke-static {v3, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "wv"

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lg1a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$b;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktokweb/b;->p(Lcom/transsion/onlinevideo/tiktokweb/b;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v0, "mParentContainer"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/transsion/onlinevideo/tiktokweb/b$b$a;

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktokweb/b$b;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-direct {v0, v2}, Lcom/transsion/onlinevideo/tiktokweb/b$b$a;-><init>(Lcom/transsion/onlinevideo/tiktokweb/b;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/transsion/onlinevideo/tiktokweb/b$b$b;

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktokweb/b$b;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-direct {v0, p1, v2}, Lcom/transsion/onlinevideo/tiktokweb/b$b$b;-><init>(Landroid/webkit/WebView;Lcom/transsion/onlinevideo/tiktokweb/b;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$b;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktokweb/b;->s(Lcom/transsion/onlinevideo/tiktokweb/b;Landroid/webkit/WebView;)V

    if-eqz p4, :cond_2

    iget-object v3, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_2
    const-string p0, "null cannot be cast to non-null type android.webkit.WebView.WebViewTransport"

    invoke-static {v3, p0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/webkit/WebView$WebViewTransport;

    invoke-virtual {v3, p1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onCreateWindow: finish "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isDialog "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " resultMsg: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokWebviewContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/WebChromeClientDelegate;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$b;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->b:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->A(Landroid/webkit/WebView;I)V

    :cond_0
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/WebChromeClientDelegate;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$b;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->b:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->C(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/WebChromeClientDelegate;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$b;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->b:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->o(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/just/agentweb/WebChromeClientDelegate;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$b;->a:Lcom/transsion/onlinevideo/tiktokweb/b;

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->b:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->l(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
