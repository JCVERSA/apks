.class public Lcom/cloud/hisavana/sdk/common/activity/AgentPageLandingActivity;
.super Lcom/cloud/hisavana/sdk/common/activity/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/b;-><init>()V

    return-void
.end method


# virtual methods
.method public h()Landroid/webkit/WebViewClient;
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageWebViewClient;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/AgentPageLandingActivity$a;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/AgentPageLandingActivity$a;-><init>(Lcom/cloud/hisavana/sdk/common/activity/AgentPageLandingActivity;)V

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageWebViewClient;-><init>(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageWebViewClient$OverrideListener;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->s:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setUrl(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/AgentPageLandingActivity;->y()V

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "ssplocalhost=true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string v0, "AgentPageLandingActivity"

    const-string v1, "loadAgentPageWeb, url is not legal"

    invoke-virtual {p1, v0, v1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->s:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->s:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWebId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->s:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->s:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "open"

    invoke-static {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final y()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->i:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "AgentPageLandingActivity"

    const-string v2, "loadAgentPageWeb,adsDto is null"

    invoke-virtual {v0, v1, v2}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;-><init>()V

    new-instance v1, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;

    const-string v2, ""

    invoke-direct {v1, v2, v2, v2}, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->setCurrentAdInfo(Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->setWebview(Landroid/webkit/WebView;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Landroid/webkit/WebView;

    const-string v2, "AgentPageJsBridge"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->i:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/b;->q(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/AgentPageLandingActivity;->x(Ljava/lang/String;)V

    return-void
.end method
