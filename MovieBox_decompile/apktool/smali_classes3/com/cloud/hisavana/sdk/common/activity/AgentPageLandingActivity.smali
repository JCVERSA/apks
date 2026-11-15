.class public Lcom/cloud/hisavana/sdk/common/activity/AgentPageLandingActivity;
.super Lcom/cloud/hisavana/sdk/common/activity/b;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private x(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "ssplocalhost=true"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "AgentPageLandingActivity"

    .line 14
    .line 15
    const-string v1, "loadAgentPageWeb, url is not legal"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setUrl(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWebId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getTargetUrl()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "open"

    .line 50
    .line 51
    invoke-static {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->p0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "AgentPageLandingActivity"

    .line 10
    .line 11
    const-string v2, "loadAgentPageWeb,adsDto is null"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;

    .line 26
    .line 27
    const-string v2, ""

    .line 28
    .line 29
    invoke-direct {v1, v2, v2, v2}, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->setCurrentAdInfo(Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->setWebview(Landroid/webkit/WebView;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 41
    .line 42
    const-string v2, "AgentPageJsBridge"

    .line 43
    .line 44
    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/b;->q(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/AgentPageLandingActivity;->x(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method protected h()Landroid/webkit/WebViewClient;
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageWebViewClient;

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/AgentPageLandingActivity$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/AgentPageLandingActivity$a;-><init>(Lcom/cloud/hisavana/sdk/common/activity/AgentPageLandingActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageWebViewClient;-><init>(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageWebViewClient$OverrideListener;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setUrl(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/AgentPageLandingActivity;->y()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
