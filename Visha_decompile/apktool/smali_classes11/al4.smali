.class public Lal4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/String;


# instance fields
.field public a:Lcom/just/agentweb/AgentWeb;

.field public b:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

.field public c:Landroid/app/Activity;

.field public d:Landroid/webkit/WebView;

.field public e:Ljava/lang/String;

.field public f:Lcom/just/agentweb/WebViewClient;

.field public g:Lcom/just/agentweb/WebChromeClient;

.field public h:Lcom/just/agentweb/PermissionInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lal4;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lal4;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lal4$a;

    invoke-direct {v0, p0}, Lal4$a;-><init>(Lal4;)V

    iput-object v0, p0, Lal4;->f:Lcom/just/agentweb/WebViewClient;

    new-instance v0, Lal4$c;

    invoke-direct {v0, p0}, Lal4$c;-><init>(Lal4;)V

    iput-object v0, p0, Lal4;->g:Lcom/just/agentweb/WebChromeClient;

    new-instance v0, Lxk4;

    invoke-direct {v0}, Lxk4;-><init>()V

    iput-object v0, p0, Lal4;->h:Lcom/just/agentweb/PermissionInterceptor;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lal4;->m(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lal4;[ILandroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lal4;->n([ILandroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lal4;[F[F[Z[IILandroid/webkit/WebView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lal4;->o([F[F[Z[IILandroid/webkit/WebView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Lal4;)Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;
    .locals 0

    iget-object p0, p0, Lal4;->b:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Lal4;
    .locals 1

    new-instance v0, Lal4;

    invoke-direct {v0}, Lal4;-><init>()V

    iput-object p0, v0, Lal4;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic m(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lal4;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lal4;->d:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lal4;->a:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->getWebCreator()Lcom/just/agentweb/WebCreator;

    move-result-object p0

    invoke-interface {p0}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p0

    return p0
.end method

.method public f(Landroid/app/Activity;Landroid/view/ViewGroup;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    iput-object p1, p0, Lal4;->c:Landroid/app/Activity;

    invoke-static {}, Lge;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/just/agentweb/AgentWebConfig;->debug()V

    :cond_0
    new-instance p1, Lcom/just/agentweb/jsbridge/BridgeWebView;

    iget-object v0, p0, Lal4;->c:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/just/agentweb/jsbridge/BridgeWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lal4;->d:Landroid/webkit/WebView;

    iget-object v0, p0, Lal4;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$color;->transparent:I

    iget-object v2, p0, Lal4;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object p1, p0, Lal4;->d:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lal4;->u(Landroid/webkit/WebView;)V

    iget-object p1, p0, Lal4;->c:Landroid/app/Activity;

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb;->with(Landroid/app/Activity;)Lcom/just/agentweb/AgentWeb$AgentBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->setAgentWebParent(Landroid/view/ViewGroup;ILandroid/view/ViewGroup$LayoutParams;)Lcom/just/agentweb/AgentWeb$IndicatorBuilder;

    move-result-object p1

    iget-object p2, p0, Lal4;->c:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/onlinevideo/R$color;->sniffer_web_progress_color:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iget-object p3, p0, Lal4;->c:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/transsion/onlinevideo/R$color;->sniffer_web_progress_bg_color:I

    invoke-virtual {p3, v0, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    const/4 v0, 0x2

    invoke-virtual {p1, p2, p3, v0}, Lcom/just/agentweb/AgentWeb$IndicatorBuilder;->useDefaultIndicator(III)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setWebLayout(Lcom/just/agentweb/IWebLayout;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    iget-object p2, p0, Lal4;->d:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setWebView(Landroid/webkit/WebView;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lal4;->h()Lcom/just/agentweb/IAgentWebSettings;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setAgentWebWebSettings(Lcom/just/agentweb/IAgentWebSettings;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    iget-object p2, p0, Lal4;->f:Lcom/just/agentweb/WebViewClient;

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setWebViewClient(Lcom/just/agentweb/WebViewClient;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    iget-object p2, p0, Lal4;->g:Lcom/just/agentweb/WebChromeClient;

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setWebChromeClient(Lcom/just/agentweb/WebChromeClient;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    iget-object p2, p0, Lal4;->h:Lcom/just/agentweb/PermissionInterceptor;

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setPermissionInterceptor(Lcom/just/agentweb/PermissionInterceptor;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    sget-object p2, Lcom/just/agentweb/AgentWeb$SecurityType;->STRICT_CHECK:Lcom/just/agentweb/AgentWeb$SecurityType;

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setSecurityType(Lcom/just/agentweb/AgentWeb$SecurityType;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    new-instance p2, Ljeb;

    iget-object p3, p0, Lal4;->c:Landroid/app/Activity;

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

    invoke-virtual {p0}, Lal4;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->go(Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;

    move-result-object p1

    iput-object p1, p0, Lal4;->a:Lcom/just/agentweb/AgentWeb;

    return-void
.end method

.method public h()Lcom/just/agentweb/IAgentWebSettings;
    .locals 1

    new-instance v0, Lal4$b;

    invoke-direct {v0, p0}, Lal4$b;-><init>(Lal4;)V

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lal4;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "https://www.google.com"

    return-object p0

    :cond_0
    iget-object p0, p0, Lal4;->e:Ljava/lang/String;

    return-object p0
.end method

.method public j()Landroid/webkit/WebView;
    .locals 1

    invoke-virtual {p0}, Lal4;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lal4;->d:Landroid/webkit/WebView;

    return-object p0

    :cond_0
    iget-object p0, p0, Lal4;->a:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->getWebCreator()Lcom/just/agentweb/WebCreator;

    move-result-object p0

    invoke-interface {p0}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    return-object p0
.end method

.method public k()V
    .locals 1

    invoke-virtual {p0}, Lal4;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lal4;->d:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    return-void

    :cond_0
    iget-object p0, p0, Lal4;->a:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->getWebCreator()Lcom/just/agentweb/WebCreator;

    move-result-object p0

    invoke-interface {p0}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public final l()Z
    .locals 3

    iget-object v0, p0, Lal4;->a:Lcom/just/agentweb/AgentWeb;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->getWebCreator()Lcom/just/agentweb/WebCreator;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lal4;->d:Landroid/webkit/WebView;

    if-nez v1, :cond_3

    new-instance v1, Lcom/just/agentweb/jsbridge/BridgeWebView;

    iget-object v2, p0, Lal4;->c:Landroid/app/Activity;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v2

    :goto_2
    invoke-direct {v1, v2}, Lcom/just/agentweb/jsbridge/BridgeWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lal4;->d:Landroid/webkit/WebView;

    :cond_3
    return v0
.end method

.method public final synthetic n([ILandroid/view/View;Ljava/lang/String;)V
    .locals 2

    const-string v0, "1"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "true"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    aput p3, p1, v1

    invoke-virtual {p0, p2, p3}, Lal4;->s(Landroid/view/View;Z)V

    return-void
.end method

.method public final synthetic o([F[F[Z[IILandroid/webkit/WebView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p8}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p8}, Landroid/view/MotionEvent;->getX()F

    move-result p5

    aput p5, p1, v3

    invoke-virtual {p8}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, p2, v3

    aput-boolean v3, p3, v3

    aput v1, p4, v3

    invoke-virtual {p0, p7, v2}, Lal4;->s(Landroid/view/View;Z)V

    goto/16 :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    aget-boolean v0, p3, v3

    if-eqz v0, :cond_2

    aget p1, p4, v3

    if-ne p1, v2, :cond_1

    invoke-virtual {p0, p7, v2}, Lal4;->s(Landroid/view/View;Z)V

    goto/16 :goto_0

    :cond_1
    if-nez p1, :cond_6

    invoke-virtual {p0, p7, v3}, Lal4;->s(Landroid/view/View;Z)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p8}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    aget p1, p1, v3

    sub-float/2addr v0, p1

    invoke-virtual {p8}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aget p2, p2, v3

    sub-float/2addr p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    int-to-float p5, p5

    cmpl-float p2, p2, p5

    if-lez p2, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_6

    aput-boolean v2, p3, v3

    invoke-virtual {p0, p7, v2}, Lal4;->s(Landroid/view/View;Z)V

    invoke-virtual {p6}, Landroid/webkit/WebView;->getScale()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_3
    invoke-virtual {p8}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    div-float/2addr p2, p1

    invoke-virtual {p8}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    div-float/2addr p3, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "(window.__visha_canScrollXLast?window.__visha_canScrollXLast("

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p5, "):(window.__visha_canScrollX?window.__visha_canScrollX("

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "):1))"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lzk4;

    invoke-direct {p2, p0, p4, p7}, Lzk4;-><init>(Lal4;[ILandroid/view/View;)V

    invoke-virtual {p6, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_4
    if-eq v0, v2, :cond_5

    const/4 p1, 0x3

    if-ne v0, p1, :cond_6

    :cond_5
    invoke-virtual {p0, p7, v3}, Lal4;->s(Landroid/view/View;Z)V

    aput-boolean v3, p3, v3

    aput v1, p4, v3

    :cond_6
    :goto_0
    return v3
.end method

.method public p()V
    .locals 0

    iget-object p0, p0, Lal4;->a:Lcom/just/agentweb/AgentWeb;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->destroy()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 0

    iget-object p0, p0, Lal4;->a:Lcom/just/agentweb/AgentWeb;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->onPause()V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 0

    iget-object p0, p0, Lal4;->a:Lcom/just/agentweb/AgentWeb;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->onResume()V

    :cond_0
    return-void
.end method

.method public final s(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t(Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;)V
    .locals 0

    iput-object p1, p0, Lal4;->b:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    return-void
.end method

.method public final u(Landroid/webkit/WebView;)V
    .locals 9

    iget-object v0, p0, Lal4;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    const/4 v0, 0x1

    new-array v3, v0, [F

    new-array v4, v0, [F

    new-array v5, v0, [Z

    new-array v6, v0, [I

    new-instance v0, Lyk4;

    move-object v1, v0

    move-object v2, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lyk4;-><init>(Lal4;[F[F[Z[IILandroid/webkit/WebView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
