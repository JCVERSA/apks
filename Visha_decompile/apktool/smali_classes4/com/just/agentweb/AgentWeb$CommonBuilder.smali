.class public Lcom/just/agentweb/AgentWeb$CommonBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/AgentWeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonBuilder"
.end annotation


# instance fields
.field private mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/AgentWeb$AgentBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/String;Ljava/lang/Object;)Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1, p2}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->i0(Lcom/just/agentweb/AgentWeb$AgentBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public additionalHttpHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1, p2, p3}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->g0(Lcom/just/agentweb/AgentWeb$AgentBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public additionalHttpHeader(Ljava/lang/String;Ljava/util/Map;)Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/just/agentweb/AgentWeb$CommonBuilder;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1, p2}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->h0(Lcom/just/agentweb/AgentWeb$AgentBuilder;Ljava/lang/String;Ljava/util/Map;)V

    return-object p0
.end method

.method public closeWebViewClientHelper()Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 2

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->c0(Lcom/just/agentweb/AgentWeb$AgentBuilder;Z)V

    return-object p0
.end method

.method public createAgentWeb()Lcom/just/agentweb/AgentWeb$PreAgentWeb;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {p0}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->j0(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    move-result-object p0

    return-object p0
.end method

.method public interceptUnkownUrl()Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 2

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->T(Lcom/just/agentweb/AgentWeb$AgentBuilder;Z)V

    return-object p0
.end method

.method public isInterceptUnkownUrl(Z)Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->T(Lcom/just/agentweb/AgentWeb$AgentBuilder;Z)V

    return-object p0
.end method

.method public setAgentWebUIController(Lcom/just/agentweb/AgentWebUIControllerImplBase;)Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 1
    .param p1    # Lcom/just/agentweb/AgentWebUIControllerImplBase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->J(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/AbsAgentWebUIController;)V

    return-object p0
.end method

.method public setAgentWebWebSettings(Lcom/just/agentweb/IAgentWebSettings;)Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 1
    .param p1    # Lcom/just/agentweb/IAgentWebSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->I(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/IAgentWebSettings;)V

    return-object p0
.end method

.method public setEventHanadler(Lcom/just/agentweb/IEventHandler;)Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 1
    .param p1    # Lcom/just/agentweb/IEventHandler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->R(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/IEventHandler;)V

    return-object p0
.end method

.method public setMainFrameErrorView(II)Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->O(Lcom/just/agentweb/AgentWeb$AgentBuilder;I)V

    .line 3
    iget-object p1, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {p1, p2}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->Z(Lcom/just/agentweb/AgentWeb$AgentBuilder;I)V

    return-object p0
.end method

.method public setMainFrameErrorView(Landroid/view/View;)Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->P(Lcom/just/agentweb/AgentWeb$AgentBuilder;Landroid/view/View;)V

    return-object p0
.end method

.method public setOpenOtherPageWays(Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;)Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 1
    .param p1    # Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->X(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;)V

    return-object p0
.end method

.method public setPermissionInterceptor(Lcom/just/agentweb/PermissionInterceptor;)Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 1
    .param p1    # Lcom/just/agentweb/PermissionInterceptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->Y(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/PermissionInterceptor;)V

    return-object p0
.end method

.method public setSecurityType(Lcom/just/agentweb/AgentWeb$SecurityType;)Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 1
    .param p1    # Lcom/just/agentweb/AgentWeb$SecurityType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->a0(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/AgentWeb$SecurityType;)V

    return-object p0
.end method

.method public setWebChromeClient(Lcom/just/agentweb/WebChromeClient;)Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 1
    .param p1    # Lcom/just/agentweb/WebChromeClient;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->b0(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/WebChromeClient;)V

    return-object p0
.end method

.method public setWebLayout(Lcom/just/agentweb/IWebLayout;)Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 1
    .param p1    # Lcom/just/agentweb/IWebLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->d0(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/IWebLayout;)V

    return-object p0
.end method

.method public setWebView(Landroid/webkit/WebView;)Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->e0(Lcom/just/agentweb/AgentWeb$AgentBuilder;Landroid/webkit/WebView;)V

    return-object p0
.end method

.method public setWebViewClient(Lcom/just/agentweb/WebViewClient;)Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 1
    .param p1    # Lcom/just/agentweb/WebViewClient;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->f0(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/WebViewClient;)V

    return-object p0
.end method

.method public useMiddlewareWebChrome(Lcom/just/agentweb/MiddlewareWebChromeBase;)Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 1
    .param p1    # Lcom/just/agentweb/MiddlewareWebChromeBase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->f(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/MiddlewareWebChromeBase;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->M(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/MiddlewareWebChromeBase;)V

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->L(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/MiddlewareWebChromeBase;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->g(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/MiddlewareWebChromeBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/just/agentweb/MiddlewareWebChromeBase;->enq(Lcom/just/agentweb/MiddlewareWebChromeBase;)Lcom/just/agentweb/MiddlewareWebChromeBase;

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->M(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/MiddlewareWebChromeBase;)V

    :goto_0
    return-object p0
.end method

.method public useMiddlewareWebClient(Lcom/just/agentweb/MiddlewareWebClientBase;)Lcom/just/agentweb/AgentWeb$CommonBuilder;
    .locals 1
    .param p1    # Lcom/just/agentweb/MiddlewareWebClientBase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->t(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/MiddlewareWebClientBase;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->W(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/MiddlewareWebClientBase;)V

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->V(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/MiddlewareWebClientBase;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->u(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/MiddlewareWebClientBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/just/agentweb/MiddlewareWebClientBase;->enq(Lcom/just/agentweb/MiddlewareWebClientBase;)Lcom/just/agentweb/MiddlewareWebClientBase;

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$CommonBuilder;->mAgentBuilder:Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->W(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/MiddlewareWebClientBase;)V

    :goto_0
    return-object p0
.end method
