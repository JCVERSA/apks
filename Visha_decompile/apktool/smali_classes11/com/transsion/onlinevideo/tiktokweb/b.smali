.class public Lcom/transsion/onlinevideo/tiktokweb/b;
.super Lcom/transsion/onlinevideo/tiktokweb/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/tiktokweb/b$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/transsion/onlinevideo/tiktokweb/b$a;


# instance fields
.field public h:Laka;

.field public i:Landroid/view/ViewGroup;

.field public j:Ljava/lang/String;

.field public k:Landroid/webkit/WebView;

.field public l:Z

.field public m:Lcom/just/agentweb/WebChromeClient;

.field public final n:Lcom/just/agentweb/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/onlinevideo/tiktokweb/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/onlinevideo/tiktokweb/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/onlinevideo/tiktokweb/b;->o:Lcom/transsion/onlinevideo/tiktokweb/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktokweb/a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->j:Ljava/lang/String;

    new-instance v0, Lcom/transsion/onlinevideo/tiktokweb/b$b;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/tiktokweb/b$b;-><init>(Lcom/transsion/onlinevideo/tiktokweb/b;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->m:Lcom/just/agentweb/WebChromeClient;

    new-instance v0, Lcom/transsion/onlinevideo/tiktokweb/b$c;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/tiktokweb/b$c;-><init>(Lcom/transsion/onlinevideo/tiktokweb/b;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->n:Lcom/just/agentweb/WebViewClient;

    return-void
.end method

.method public static final B(Lcom/transsion/onlinevideo/tiktokweb/b;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/a;->e()Landroid/webkit/WebView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static synthetic l(Lcom/transsion/onlinevideo/tiktokweb/b;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktokweb/b;->B(Lcom/transsion/onlinevideo/tiktokweb/b;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Lcom/transsion/onlinevideo/tiktokweb/b;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktokweb/b;->w(Lcom/transsion/onlinevideo/tiktokweb/b;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic n(Lcom/transsion/onlinevideo/tiktokweb/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->l:Z

    return p0
.end method

.method public static final synthetic o(Lcom/transsion/onlinevideo/tiktokweb/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/onlinevideo/tiktokweb/b;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->i:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/onlinevideo/tiktokweb/b;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktokweb/b;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic r(Lcom/transsion/onlinevideo/tiktokweb/b;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->l:Z

    return-void
.end method

.method public static final synthetic s(Lcom/transsion/onlinevideo/tiktokweb/b;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->k:Landroid/webkit/WebView;

    return-void
.end method

.method public static final synthetic t(Lcom/transsion/onlinevideo/tiktokweb/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->j:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic u(Lcom/transsion/onlinevideo/tiktokweb/b;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktokweb/b;->z(Z)V

    return-void
.end method

.method public static final w(Lcom/transsion/onlinevideo/tiktokweb/b;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/a;->e()Landroid/webkit/WebView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 4

    const-string v0, "TiktokWebviewContainer"

    if-eqz p1, :cond_0

    const-string p1, "visible"

    goto :goto_0

    :cond_0
    const-string p1, "hidden"

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->h:Laka;

    if-nez v1, :cond_1

    const-string v1, "mTiktokJsInterface"

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v1, p1}, Laka;->c(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:window.visibilityStateChange(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/a;->e()Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Lina;

    invoke-direct {v3, p0, v1}, Lina;-><init>(Lcom/transsion/onlinevideo/tiktokweb/b;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doJs visibilityStateChange: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewDoJs: error "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public a()Z
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/transsion/onlinevideo/tiktokweb/a;->a()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->h:Laka;

    if-nez v0, :cond_1

    const-string v0, "mTiktokJsInterface"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Laka;->b()Z

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/b;->x()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method public f()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->h:Laka;

    const-string v1, "mTiktokJsInterface"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Laka;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->h:Laka;

    if-nez v3, :cond_1

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v3}, Laka;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/b;->x()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "goBack: mTiKtokBack "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mCallbackFunctionName:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isNewWebViewGoback():"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TiktokWebviewContainer"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/b;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->i:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    const-string v0, "mParentContainer"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->k:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->k:Landroid/webkit/WebView;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->h:Laka;

    if-nez v0, :cond_4

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0}, Laka;->b()Z

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->h:Laka;

    if-nez v0, :cond_5

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Laka;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:window."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "()"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/a;->e()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljna;

    invoke-direct {v2, p0, v0}, Ljna;-><init>(Lcom/transsion/onlinevideo/tiktokweb/b;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goBack: error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/transsion/onlinevideo/tiktokweb/a;->f()V

    sget-object p0, Lzfb;->a:Lzfb;

    goto :goto_1

    :cond_6
    invoke-super {p0}, Lcom/transsion/onlinevideo/tiktokweb/a;->f()V

    :goto_1
    return-void
.end method

.method public h()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/onlinevideo/tiktokweb/a;->h()V

    return-void
.end method

.method public v(Landroid/app/Activity;Landroid/view/ViewGroup;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->c:Landroid/app/Activity;

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->i:Landroid/view/ViewGroup;

    invoke-static {}, Lge;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/just/agentweb/AgentWebConfig;->debug()V

    :cond_0
    new-instance p1, Lcom/just/agentweb/jsbridge/BridgeWebView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->c:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/just/agentweb/jsbridge/BridgeWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->d:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$color;->transparent:I

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    new-instance p1, Laka;

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->c:Landroid/app/Activity;

    const-string v1, "mActivity"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Laka;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->h:Laka;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/a;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->j:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->c:Landroid/app/Activity;

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb;->with(Landroid/app/Activity;)Lcom/just/agentweb/AgentWeb$AgentBuilder;

    move-result-object p1

    invoke-static {p4}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p3, p4}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->setAgentWebParent(Landroid/view/ViewGroup;ILandroid/view/ViewGroup$LayoutParams;)Lcom/just/agentweb/AgentWeb$IndicatorBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->c:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/onlinevideo/R$color;->sniffer_web_progress_color:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iget-object p3, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->c:Landroid/app/Activity;

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

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->d:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setWebView(Landroid/webkit/WebView;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/a;->c()Lcom/just/agentweb/IAgentWebSettings;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setAgentWebWebSettings(Lcom/just/agentweb/IAgentWebSettings;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->n:Lcom/just/agentweb/WebViewClient;

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setWebViewClient(Lcom/just/agentweb/WebViewClient;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->m:Lcom/just/agentweb/WebChromeClient;

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setWebChromeClient(Lcom/just/agentweb/WebChromeClient;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->h:Laka;

    if-nez p2, :cond_1

    const-string p2, "mTiktokJsInterface"

    invoke-static {p2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p4, p2

    :goto_0
    const-string p2, "feedcoop"

    invoke-virtual {p1, p2, p4}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->addJavascriptInterface(Ljava/lang/String;Ljava/lang/Object;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->e:Lcom/just/agentweb/PermissionInterceptor;

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setPermissionInterceptor(Lcom/just/agentweb/PermissionInterceptor;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    sget-object p2, Lcom/just/agentweb/AgentWeb$SecurityType;->STRICT_CHECK:Lcom/just/agentweb/AgentWeb$SecurityType;

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setSecurityType(Lcom/just/agentweb/AgentWeb$SecurityType;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    new-instance p2, Ljeb;

    iget-object p3, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->c:Landroid/app/Activity;

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

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/a;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->go(Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->d:Landroid/webkit/WebView;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_2
    return-void
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->i:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string v0, "mParentContainer"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/b;->k:Landroid/webkit/WebView;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 p0, 0x0

    if-eqz p1, :cond_6

    invoke-static {p1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_6

    invoke-static {p2}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "onelink.me"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lj1a;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "pid=tiktokweb"

    invoke-static {p1, p2, v0}, Lj1a;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    :cond_2
    const/4 p2, 0x2

    const/4 v1, 0x0

    const-string v2, "?"

    invoke-static {p1, v2, p0, p2, v1}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "?"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lj1a;->m0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "substring(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    const-string p2, "https://www.tiktok.com/foryou"

    invoke-static {p1, p2, v0}, Lg1a;->A(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goToNext url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " contentEquals "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TiktokWebviewContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "https://www.tiktok.com/"

    invoke-static {p1, v1, v0}, Lg1a;->A(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p1, p2, v0}, Lg1a;->A(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "https://www.tiktok.com/discover"

    invoke-static {p1, p2, v0}, Lg1a;->A(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return p0

    :cond_5
    :goto_0
    return v0

    :cond_6
    :goto_1
    return p0
.end method

.method public final z(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->d:Landroid/webkit/WebView;

    const-string v1, "TiktokWebviewContainer"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportMultipleWindows()Z

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSettingSupportMultipleWindows isMultipleCreate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->d:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "updateSettingSupportMultipleWindows mWebView or settings is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
