.class public final Lw41;
.super Lrfc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw41$a;
    }
.end annotation


# static fields
.field public static final l:Lw41$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw41$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw41$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lw41;->l:Lw41$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lrfc;-><init>()V

    return-void
.end method

.method public static final synthetic r(Lw41;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lrfc;->a:Landroid/os/Bundle;

    return-object p0
.end method

.method public static final synthetic s(Lw41;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lrfc;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
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

    sget v1, Lcom/transsion/netdisk/R$color;->transparent:I

    iget-object v2, p0, Lrfc;->d:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    new-instance p1, Lcom/just/agentweb/jsbridge/BridgeWebViewClient;

    iget-object v0, p0, Lrfc;->f:Landroid/webkit/WebView;

    const-string v1, "null cannot be cast to non-null type com.just.agentweb.jsbridge.BridgeWebViewClient.OnLoadJSListener"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/just/agentweb/jsbridge/BridgeWebViewClient$OnLoadJSListener;

    invoke-direct {p1, v0}, Lcom/just/agentweb/jsbridge/BridgeWebViewClient;-><init>(Lcom/just/agentweb/jsbridge/BridgeWebViewClient$OnLoadJSListener;)V

    iput-object p1, p0, Lrfc;->g:Lcom/just/agentweb/jsbridge/BridgeWebViewClient;

    iget-object p1, p0, Lrfc;->d:Landroid/app/Activity;

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb;->with(Landroid/app/Activity;)Lcom/just/agentweb/AgentWeb$AgentBuilder;

    move-result-object p1

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {p4}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p3, p4}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->setAgentWebParent(Landroid/view/ViewGroup;ILandroid/view/ViewGroup$LayoutParams;)Lcom/just/agentweb/AgentWeb$IndicatorBuilder;

    move-result-object p1

    iget-object p2, p0, Lrfc;->d:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/netdisk/R$color;->sniffer_web_progress_color:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iget-object p3, p0, Lrfc;->d:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/transsion/netdisk/R$color;->sniffer_web_progress_bg_color:I

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

    new-instance p2, Lv31;

    iget-object p3, p0, Lrfc;->d:Landroid/app/Activity;

    const-string p4, "mActivity"

    invoke-static {p3, p4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p0, Lrfc;->f:Landroid/webkit/WebView;

    const-string v0, "mWebView"

    invoke-static {p4, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p3, p4}, Lv31;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    const-string p3, "Android"

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
