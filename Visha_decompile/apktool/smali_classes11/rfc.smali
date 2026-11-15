.class public Lrfc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/String;


# instance fields
.field public a:Landroid/os/Bundle;

.field public b:Lcom/just/agentweb/AgentWeb;

.field public c:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

.field public d:Landroid/app/Activity;

.field public e:Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;

.field public f:Landroid/webkit/WebView;

.field public g:Lcom/just/agentweb/jsbridge/BridgeWebViewClient;

.field public h:Lcom/just/agentweb/WebViewClient;

.field public i:Lcom/just/agentweb/WebChromeClient;

.field public j:Lcom/just/agentweb/PermissionInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lrfc;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrfc;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lrfc$a;

    invoke-direct {v0, p0}, Lrfc$a;-><init>(Lrfc;)V

    iput-object v0, p0, Lrfc;->h:Lcom/just/agentweb/WebViewClient;

    new-instance v0, Lrfc$c;

    invoke-direct {v0, p0}, Lrfc$c;-><init>(Lrfc;)V

    iput-object v0, p0, Lrfc;->i:Lcom/just/agentweb/WebChromeClient;

    new-instance v0, Lrfc$d;

    invoke-direct {v0, p0}, Lrfc$d;-><init>(Lrfc;)V

    iput-object v0, p0, Lrfc;->j:Lcom/just/agentweb/PermissionInterceptor;

    return-void
.end method

.method public static e(Ljava/lang/String;)Lrfc;
    .locals 3

    new-instance v0, Lrfc;

    invoke-direct {v0}, Lrfc;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lrfc;->a:Landroid/os/Bundle;

    const-string v2, "url_key"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/webkit/WebView;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lrfc;->d:Landroid/app/Activity;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Lrfc;->b:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->getWebCreator()Lcom/just/agentweb/WebCreator;

    move-result-object p0

    invoke-interface {p0}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p0

    return p0
.end method

.method public c(Landroid/app/Activity;Landroid/view/ViewGroup;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    iput-object p1, p0, Lrfc;->d:Landroid/app/Activity;

    invoke-static {}, Lge;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/just/agentweb/AgentWebConfig;->debug()V

    :cond_0
    new-instance p1, Lcom/just/agentweb/jsbridge/BridgeWebView;

    iget-object v0, p0, Lrfc;->d:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/just/agentweb/jsbridge/BridgeWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lrfc;->f:Landroid/webkit/WebView;

    iget-object v0, p0, Lrfc;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$color;->transparent:I

    iget-object v2, p0, Lrfc;->d:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-static {}, Loa1;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lrfc;->f:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lrfc;->a(Landroid/webkit/WebView;)V

    :cond_1
    new-instance p1, Lcom/just/agentweb/jsbridge/BridgeWebViewClient;

    iget-object v0, p0, Lrfc;->f:Landroid/webkit/WebView;

    check-cast v0, Lcom/just/agentweb/jsbridge/BridgeWebViewClient$OnLoadJSListener;

    invoke-direct {p1, v0}, Lcom/just/agentweb/jsbridge/BridgeWebViewClient;-><init>(Lcom/just/agentweb/jsbridge/BridgeWebViewClient$OnLoadJSListener;)V

    iput-object p1, p0, Lrfc;->g:Lcom/just/agentweb/jsbridge/BridgeWebViewClient;

    iget-object p1, p0, Lrfc;->d:Landroid/app/Activity;

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb;->with(Landroid/app/Activity;)Lcom/just/agentweb/AgentWeb$AgentBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->setAgentWebParent(Landroid/view/ViewGroup;ILandroid/view/ViewGroup$LayoutParams;)Lcom/just/agentweb/AgentWeb$IndicatorBuilder;

    move-result-object p1

    iget-object p2, p0, Lrfc;->d:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/playercommon/R$color;->sniffer_web_progress_color:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iget-object p3, p0, Lrfc;->d:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/transsion/playercommon/R$color;->sniffer_web_progress_bg_color:I

    invoke-virtual {p3, v0, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    const/4 v0, 0x2

    invoke-virtual {p1, p2, p3, v0}, Lcom/just/agentweb/AgentWeb$IndicatorBuilder;->useDefaultIndicator(III)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setWebLayout(Lcom/just/agentweb/IWebLayout;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    iget-object p2, p0, Lrfc;->f:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setWebView(Landroid/webkit/WebView;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lrfc;->h()Lcom/just/agentweb/IAgentWebSettings;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setAgentWebWebSettings(Lcom/just/agentweb/IAgentWebSettings;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    iget-object p2, p0, Lrfc;->h:Lcom/just/agentweb/WebViewClient;

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setWebViewClient(Lcom/just/agentweb/WebViewClient;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    iget-object p2, p0, Lrfc;->i:Lcom/just/agentweb/WebChromeClient;

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setWebChromeClient(Lcom/just/agentweb/WebChromeClient;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    new-instance p2, Leec;

    invoke-virtual {p0}, Lrfc;->f()Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;

    move-result-object p3

    invoke-direct {p2, p3}, Leec;-><init>(Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;)V

    const-string p3, "WebViewJavascriptBridge"

    invoke-virtual {p1, p3, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->addJavascriptInterface(Ljava/lang/String;Ljava/lang/Object;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    iget-object p2, p0, Lrfc;->j:Lcom/just/agentweb/PermissionInterceptor;

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setPermissionInterceptor(Lcom/just/agentweb/PermissionInterceptor;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    sget-object p2, Lcom/just/agentweb/AgentWeb$SecurityType;->STRICT_CHECK:Lcom/just/agentweb/AgentWeb$SecurityType;

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setSecurityType(Lcom/just/agentweb/AgentWeb$SecurityType;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    new-instance p2, Ljeb;

    iget-object p3, p0, Lrfc;->d:Landroid/app/Activity;

    invoke-direct {p2, p3}, Ljeb;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setAgentWebUIController(Lcom/just/agentweb/AgentWebUIControllerImplBase;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    sget-object p2, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->DERECT:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setOpenOtherPageWays(Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->createAgentWeb()Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->ready()Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    move-result-object p1

    invoke-virtual {p0}, Lrfc;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->go(Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;

    move-result-object p1

    iput-object p1, p0, Lrfc;->b:Lcom/just/agentweb/AgentWeb;

    return-void
.end method

.method public final d(Landroid/webkit/WebView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lrfc;->k:Ljava/lang/String;

    const-string v0, "destroy WebView failed"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public f()Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;
    .locals 0

    iget-object p0, p0, Lrfc;->e:Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string p0, "UTF-8"

    invoke-static {p1, p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "vishaappinner"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "&vishaappinner"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    if-eqz p1, :cond_1

    :try_start_1
    const-string p1, "(&vishaappinner=[^&]*)"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p1, "(vishaappinner=[^&]*)"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    sget-object p1, Lrfc;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get out url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    return-object p0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public h()Lcom/just/agentweb/IAgentWebSettings;
    .locals 1

    new-instance v0, Lrfc$b;

    invoke-direct {v0, p0}, Lrfc$b;-><init>(Lrfc;)V

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lrfc;->a:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v0, "url_key"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "https://www.google.com"

    :cond_1
    return-object p0
.end method

.method public j()Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lrfc;->b:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->getWebCreator()Lcom/just/agentweb/WebCreator;

    move-result-object p0

    invoke-interface {p0}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    return-object p0
.end method

.method public k()V
    .locals 0

    iget-object p0, p0, Lrfc;->b:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->getWebCreator()Lcom/just/agentweb/WebCreator;

    move-result-object p0

    invoke-interface {p0}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public l()V
    .locals 5

    iget-object v0, p0, Lrfc;->f:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lrfc;->o(Landroid/webkit/WebView;)V

    iget-object v1, p0, Lrfc;->b:Lcom/just/agentweb/AgentWeb;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/just/agentweb/AgentWeb;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lrfc;->k:Ljava/lang/String;

    const-string v4, "AgentWeb destroy failed"

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lrfc;->d(Landroid/webkit/WebView;)V

    :goto_0
    iput-object v2, p0, Lrfc;->b:Lcom/just/agentweb/AgentWeb;

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lrfc;->d(Landroid/webkit/WebView;)V

    :goto_1
    iput-object v2, p0, Lrfc;->f:Landroid/webkit/WebView;

    iput-object v2, p0, Lrfc;->d:Landroid/app/Activity;

    iput-object v2, p0, Lrfc;->c:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    return-void
.end method

.method public m()V
    .locals 0

    iget-object p0, p0, Lrfc;->b:Lcom/just/agentweb/AgentWeb;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->onPause()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 0

    iget-object p0, p0, Lrfc;->b:Lcom/just/agentweb/AgentWeb;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->onResume()V

    :cond_0
    return-void
.end method

.method public final o(Landroid/webkit/WebView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    const-string p0, "about:blank"

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object p1, Lrfc;->k:Ljava/lang/String;

    const-string v0, "prepare WebView destroy failed"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public p(Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;)V
    .locals 0

    iput-object p1, p0, Lrfc;->e:Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;

    return-void
.end method

.method public q(Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;)V
    .locals 0

    iput-object p1, p0, Lrfc;->c:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    return-void
.end method
