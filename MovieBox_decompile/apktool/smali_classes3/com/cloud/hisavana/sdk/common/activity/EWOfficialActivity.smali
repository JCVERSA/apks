.class public Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;
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

.method private x()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceClickUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceClickUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setUrl(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWebId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getTargetUrl()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v3, "open"

    .line 52
    .line 53
    invoke-static {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->p0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceClickUrl()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/b;->q(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceClickUrl()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v1, "EWOfficialActivity"

    .line 82
    .line 83
    const-string v2, "loadAdChoiceUrl ad or adChoiceUrl is null"

    .line 84
    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 89
    .line 90
    .line 91
    return-void
.end method


# virtual methods
.method protected h()Landroid/webkit/WebViewClient;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;-><init>(Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;->x()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
