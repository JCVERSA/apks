.class public abstract Lz9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String;


# instance fields
.field public b:Landroid/os/Bundle;

.field public c:Lcom/just/agentweb/AgentWeb;

.field public d:Landroid/widget/FrameLayout;

.field public e:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

.field public f:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

.field public g:Ljava/lang/ref/WeakReference;

.field public h:[I

.field public i:[I

.field public j:Ljava/lang/ref/WeakReference;

.field public k:Ljava/lang/ref/WeakReference;

.field public l:Lfr9;

.field public m:Lcom/just/agentweb/WebChromeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lz9;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz9;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;-><init>()V

    iput-object v0, p0, Lz9;->e:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    new-instance v0, Lz9$a;

    invoke-direct {v0, p0}, Lz9$a;-><init>(Lz9;)V

    iput-object v0, p0, Lz9;->l:Lfr9;

    new-instance v0, Lz9$b;

    invoke-direct {v0, p0}, Lz9$b;-><init>(Lz9;)V

    iput-object v0, p0, Lz9;->m:Lcom/just/agentweb/WebChromeClient;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lz9;->j:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic a(Lz9;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lz9;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lpi5;->a:Lpi5$a;

    invoke-virtual {v0}, Lpi5$a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(lang=)[^&]*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v1, Lz9;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to process language parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method


# virtual methods
.method public A(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public B(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public C(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    sget-object p0, Lz9;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "webViewShouldOverrideUrlLoading"

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public b()Z
    .locals 0

    invoke-virtual {p0}, Lz9;->h()Landroid/webkit/WebView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lz9;->n:Ljava/lang/String;

    const-string p1, "invalid url"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object p0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lz93;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "https://www.google.com/search?q=%s"

    invoke-static {p1, p0}, Lr0a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-static {p1}, Lz9;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lz9;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start_load_url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public d(Landroid/app/Activity;Landroid/view/ViewGroup;I)V
    .locals 4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lz9;->g:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lge;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lge;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/just/agentweb/AgentWebConfig;->debug()V

    :cond_1
    new-instance v0, Lcom/just/agentweb/NestedScrollAgentWebView;

    invoke-direct {v0, p1}, Lcom/just/agentweb/NestedScrollAgentWebView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lz9;->l:Lfr9;

    invoke-virtual {v2, p1}, Lfr9;->d(Landroid/app/Activity;)V

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb;->with(Landroid/app/Activity;)Lcom/just/agentweb/AgentWeb$AgentBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->setAgentWebParent(Landroid/view/ViewGroup;ILandroid/view/ViewGroup$LayoutParams;)Lcom/just/agentweb/AgentWeb$IndicatorBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/transsion/sniffer_load/R$color;->sniffer_web_progress_color:I

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/sniffer_load/R$color;->sniffer_web_progress_bg_color:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {p2, p3, v1, v3}, Lcom/just/agentweb/AgentWeb$IndicatorBuilder;->useDefaultIndicator(III)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setWebLayout(Lcom/just/agentweb/IWebLayout;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setWebView(Landroid/webkit/WebView;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lz9;->i()Lcom/just/agentweb/IAgentWebSettings;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setAgentWebWebSettings(Lcom/just/agentweb/IAgentWebSettings;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p2

    new-instance p3, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;

    iget-object v1, p0, Lz9;->e:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    invoke-direct {p3, v1}, Lcom/transsion/sniffer_load/sniffservice/VSSniffJavaScriptInterface;-><init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)V

    const-string v1, "SniffWebViewJs"

    invoke-virtual {p2, v1, p3}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->addJavascriptInterface(Ljava/lang/String;Ljava/lang/Object;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p2

    iget-object p3, p0, Lz9;->l:Lfr9;

    invoke-virtual {p2, p3}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setWebViewClient(Lcom/just/agentweb/WebViewClient;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p2

    iget-object p3, p0, Lz9;->m:Lcom/just/agentweb/WebChromeClient;

    invoke-virtual {p2, p3}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setWebChromeClient(Lcom/just/agentweb/WebChromeClient;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p2

    sget-object p3, Lcom/just/agentweb/AgentWeb$SecurityType;->STRICT_CHECK:Lcom/just/agentweb/AgentWeb$SecurityType;

    invoke-virtual {p2, p3}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setSecurityType(Lcom/just/agentweb/AgentWeb$SecurityType;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p2

    new-instance p3, Ljeb;

    invoke-direct {p3, p1}, Ljeb;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, p3}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setAgentWebUIController(Lcom/just/agentweb/AgentWebUIControllerImplBase;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p2

    sget-object p3, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->SPECIAL:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    invoke-virtual {p2, p3}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setOpenOtherPageWays(Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->isInterceptUnkownUrl(Z)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->createAgentWeb()Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->ready()Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    move-result-object p2

    invoke-virtual {p0}, Lz9;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->go(Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;

    move-result-object p2

    iput-object p2, p0, Lz9;->c:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lfr9;->d:Ljava/lang/String;

    iget-object p2, p0, Lz9;->c:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {p2}, Lcom/just/agentweb/AgentWeb;->getWebCreator()Lcom/just/agentweb/WebCreator;

    move-result-object p2

    invoke-interface {p2}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lz9;->k:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public e(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz9;->d:Landroid/widget/FrameLayout;

    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    invoke-direct {v1}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    iget-object v1, p0, Lz9;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lz9;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lz9;->d:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lz9;->d(Landroid/app/Activity;Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lz9;->h()Landroid/webkit/WebView;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public g()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lz9;->d:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final h()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lz9;->c:Lcom/just/agentweb/AgentWeb;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->getWebCreator()Lcom/just/agentweb/WebCreator;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lz9;->c:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->getWebCreator()Lcom/just/agentweb/WebCreator;

    move-result-object p0

    invoke-interface {p0}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract i()Lcom/just/agentweb/IAgentWebSettings;
.end method

.method public j()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lz9;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "url_key"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "https://www.google.com"

    :cond_1
    invoke-virtual {p0, v0}, Lz9;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k()Landroid/webkit/WebView;
    .locals 0

    invoke-virtual {p0}, Lz9;->h()Landroid/webkit/WebView;

    move-result-object p0

    return-object p0
.end method

.method public l()V
    .locals 0

    invoke-virtual {p0}, Lz9;->h()Landroid/webkit/WebView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 0

    invoke-virtual {p0}, Lz9;->h()Landroid/webkit/WebView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->goForward()V

    :cond_0
    return-void
.end method

.method public final synthetic n(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lz9;->j:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lz9;->h()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lz9;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ly9;

    invoke-direct {v0, p0, p1}, Ly9;-><init>(Lz9;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lz9;->u(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public q()V
    .locals 0

    iget-object p0, p0, Lz9;->c:Lcom/just/agentweb/AgentWeb;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->onPause()V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 0

    iget-object p0, p0, Lz9;->c:Lcom/just/agentweb/AgentWeb;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->onResume()V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 0

    invoke-virtual {p0}, Lz9;->h()Landroid/webkit/WebView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

    :cond_0
    return-void
.end method

.method public u(Ljava/lang/Runnable;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lz9;->g:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public v([I)V
    .locals 0

    iput-object p1, p0, Lz9;->h:[I

    return-void
.end method

.method public w([I)V
    .locals 0

    iput-object p1, p0, Lz9;->i:[I

    return-void
.end method

.method public x(Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;)V
    .locals 0

    iput-object p1, p0, Lz9;->f:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    return-void
.end method

.method public y()V
    .locals 4

    invoke-virtual {p0}, Lz9;->h()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz9;->z(Landroid/webkit/WebView;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    const-string v2, "about:blank"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v2, Lz9;->n:Ljava/lang/String;

    const-string v3, "stopWebView destroy failed"

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lz9;->d:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    iput-object v1, p0, Lz9;->c:Lcom/just/agentweb/AgentWeb;

    iput-object v1, p0, Lz9;->f:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    iget-object v0, p0, Lz9;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_3
    iget-object p0, p0, Lz9;->g:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    :cond_4
    return-void
.end method

.method public final z(Landroid/webkit/WebView;)V
    .locals 2

    iget-object v0, p0, Lz9;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lz9;->k:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    :cond_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterForContextMenu(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Lz9;->n:Ljava/lang/String;

    const-string v1, "unregisterForContextMenu failed"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    iget-object p0, p0, Lz9;->k:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    :cond_3
    return-void
.end method
