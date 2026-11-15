.class public Lcom/cloud/hisavana/sdk/common/activity/b;
.super Landroid/app/Activity;
.source "source.java"


# instance fields
.field protected a:Landroid/widget/ProgressBar;

.field protected b:Landroid/widget/LinearLayout;

.field protected c:Landroid/widget/FrameLayout;

.field protected d:Landroid/widget/FrameLayout;

.field protected e:Landroid/widget/ImageView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/webkit/WebView;

.field protected h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field protected i:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

.field protected j:Landroid/os/Bundle;

.field protected k:Z

.field protected l:J

.field protected m:Z

.field private n:Z

.field protected o:Z

.field private p:Z

.field private q:Z

.field protected r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

.field protected s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/util/ArrayList;

.field private w:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->k:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->m:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->n:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->o:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->p:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->q:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->s:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->t:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->u:Z

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->v:Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->w:Ljava/util/ArrayList;

    .line 37
    .line 38
    return-void
.end method

.method public static a(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;
    .locals 4

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    if-eqz p1, :cond_5

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    if-eqz p0, :cond_4

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getDspType()Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x2

    .line 32
    if-eq v2, v3, :cond_4

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x4

    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-static {p0, p1, v3, v2}, Lcom/cloud/hisavana/sdk/Y0;->d(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLjava/lang/Boolean;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->setOriginalUrl(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->setSplicedURL(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_2
    const-string v1, "?"

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/Y0;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->setOriginalUrl(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    sget-object p1, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    .line 93
    .line 94
    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/common/util/r;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->setSplicedURL(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->setOriginalUrl(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->setSplicedURL(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    return-object v0

    .line 109
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->setOriginalUrl(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->setSplicedURL(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-object v0

    .line 124
    :cond_5
    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    const-string p1, "TBaseLandingActivity"

    .line 129
    .line 130
    const-string v2, "processServerClickUrl --> null == url || null == pointBean"

    .line 131
    .line 132
    invoke-virtual {p0, p1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->setOriginalUrl(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->setSplicedURL(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-object v0
.end method

.method private b()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/b$c;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/b$c;-><init>(Lcom/cloud/hisavana/sdk/common/activity/b;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v2, 0x3e8

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private c(I)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setRedirectType(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWebId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getTargetUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getLoadTime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v6

    .line 36
    const/4 v4, 0x0

    .line 37
    move v5, p1

    .line 38
    invoke-static/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/cloud/hisavana/sdk/common/activity/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->q:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/cloud/hisavana/sdk/common/activity/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->n:Z

    .line 2
    .line 3
    return p1
.end method

.method public static i(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    if-eqz p0, :cond_4

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getDspType()Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x2

    .line 27
    if-eq v1, v2, :cond_4

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x4

    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-static {p0, p1, v2, v1}, Lcom/cloud/hisavana/sdk/Y0;->d(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLjava/lang/Boolean;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_2
    const-string v0, "?"

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/Y0;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :cond_3
    return-object p0

    .line 79
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :cond_5
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string p1, "TBaseLandingActivity"

    .line 89
    .line 90
    const-string v1, "processServerClickUrl --> null == url || null == pointBean"

    .line 91
    .line 92
    invoke-virtual {p0, p1, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object v0
.end method

.method static synthetic k(Lcom/cloud/hisavana/sdk/common/activity/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->n:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Lcom/cloud/hisavana/sdk/common/activity/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->p:Z

    .line 2
    .line 3
    return p1
.end method

.method private o(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const-string v0, "browser_fallback_url"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/b;->v(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/J0;->I(Landroid/content/Context;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/b;->u()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    const-string v0, "https://"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    const-string v0, "http://"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->q(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    :catch_0
    :cond_2
    return-void
.end method

.method static synthetic p(Lcom/cloud/hisavana/sdk/common/activity/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method private r()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "TBaseLandingActivity"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x1f46

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/b;->j(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v3, "initWebView intent is null"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v3, "tag_ad_bean"

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    instance-of v3, v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_0
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v3, "pointBean"

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->i:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v3, "ab_Test_Data"

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/os/Bundle;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->j:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    :catch_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 77
    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    const/16 v0, 0x1f41

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/b;->j(I)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const-string v3, "initWebView,adsDto is null"

    .line 90
    .line 91
    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 95
    .line 96
    .line 97
    return v1

    .line 98
    :cond_2
    const/4 v0, 0x1

    .line 99
    return v0
.end method

.method private t(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "TBaseLandingActivity"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 4
    .line 5
    const-string v2, "android.intent.action.VIEW"

    .line 6
    .line 7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "com.android.vending"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const/high16 v2, 0x10000000

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v3, "open gp link "

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v1, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v3, "startGp "

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v1, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void
.end method


# virtual methods
.method protected f(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "TBaseLandingActivity"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    const-string v1, "http://"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    const-string v1, "https://"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const-string p1, "android.intent.action.VIEW"

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const/high16 p1, 0x10000000

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v1, "open deeplink"

    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    return p1

    .line 64
    :catch_0
    move-exception p1

    .line 65
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v4, "checkDeepLink finish,"

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v1, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_0
    return v2
.end method

.method protected g(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->t:Z

    .line 2
    .line 3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "webview get redirect url is:"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "TBaseLandingActivity"

    .line 25
    .line 26
    invoke-virtual {p2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    const/4 v0, 0x0

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    return v0

    .line 37
    :cond_0
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->o:Z

    .line 38
    .line 39
    if-nez p2, :cond_1

    .line 40
    .line 41
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setTargetUrl(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    invoke-virtual {p2, v1, v2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setLoadStartTime(J)V

    .line 55
    .line 56
    .line 57
    :cond_1
    sget-object p2, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p0, p2}, Lcom/cloud/hisavana/sdk/common/activity/b;->v(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string p2, "intent://"

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    const/4 v1, 0x2

    .line 73
    const/4 v2, 0x1

    .line 74
    if-eqz p2, :cond_4

    .line 75
    .line 76
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/b;->c(I)V

    .line 77
    .line 78
    .line 79
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/J0;->S(Landroid/content/Context;Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_2

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/b;->u()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_3

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_3

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->o(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_3
    :goto_0
    return v2

    .line 108
    :cond_4
    const-string p2, "play.google.com"

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-nez p2, :cond_5

    .line 115
    .line 116
    const-string p2, "market://"

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_7

    .line 123
    .line 124
    :cond_5
    const-string p2, "com.android.vending"

    .line 125
    .line 126
    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/J0;->J(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_7

    .line 131
    .line 132
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 133
    .line 134
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->q0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->q(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/b;->u()V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, v2}, Lcom/cloud/hisavana/sdk/common/activity/b;->c(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_6

    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_6

    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 159
    .line 160
    .line 161
    :cond_6
    return v2

    .line 162
    :cond_7
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/J0;->I(Landroid/content/Context;Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    if-eqz p2, :cond_8

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/b;->u()V

    .line 169
    .line 170
    .line 171
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/b;->c(I)V

    .line 172
    .line 173
    .line 174
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/b;->b()V

    .line 175
    .line 176
    .line 177
    return v2

    .line 178
    :cond_8
    const-string p2, "https://"

    .line 179
    .line 180
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    if-nez p2, :cond_a

    .line 185
    .line 186
    const-string p2, "http://"

    .line 187
    .line 188
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    if-eqz p2, :cond_9

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_9
    return v2

    .line 196
    :cond_a
    :goto_1
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 197
    .line 198
    invoke-virtual {p2, v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setRedirectType(I)V

    .line 199
    .line 200
    .line 201
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 202
    .line 203
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->q0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->q(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    return v0
.end method

.method protected h()Landroid/webkit/WebViewClient;
    .locals 1

    .line 1
    new-instance v0, Lg7/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lg7/j;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected j(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    :try_start_0
    iget-boolean v2, v0, Lcom/cloud/hisavana/sdk/common/activity/b;->s:Z

    .line 6
    .line 7
    const/16 v3, 0x1f45

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/common/activity/b;->w()V

    .line 14
    .line 15
    .line 16
    if-ne v1, v3, :cond_0

    .line 17
    .line 18
    iget-wide v2, v0, Lcom/cloud/hisavana/sdk/common/activity/b;->l:J

    .line 19
    .line 20
    cmp-long v2, v2, v4

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    iget-wide v4, v0, Lcom/cloud/hisavana/sdk/common/activity/b;->l:J

    .line 29
    .line 30
    sub-long v4, v2, v4

    .line 31
    .line 32
    :cond_0
    sget-object v6, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 33
    .line 34
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    iget-object v8, v0, Lcom/cloud/hisavana/sdk/common/activity/b;->v:Ljava/util/ArrayList;

    .line 39
    .line 40
    iget-object v9, v0, Lcom/cloud/hisavana/sdk/common/activity/b;->w:Ljava/util/ArrayList;

    .line 41
    .line 42
    iget-object v10, v0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 43
    .line 44
    iget-object v11, v0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 45
    .line 46
    iget-boolean v12, v0, Lcom/cloud/hisavana/sdk/common/activity/b;->u:Z

    .line 47
    .line 48
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v14

    .line 52
    iget-boolean v1, v0, Lcom/cloud/hisavana/sdk/common/activity/b;->n:Z

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v15

    .line 58
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/b;->j:Landroid/os/Bundle;

    .line 59
    .line 60
    const/4 v13, 0x0

    .line 61
    move-object/from16 v16, v1

    .line 62
    .line 63
    invoke-virtual/range {v6 .. v16}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->W(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;ZZLjava/lang/Long;Ljava/lang/Boolean;Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    if-ne v1, v3, :cond_3

    .line 68
    .line 69
    iget-wide v2, v0, Lcom/cloud/hisavana/sdk/common/activity/b;->l:J

    .line 70
    .line 71
    cmp-long v2, v2, v4

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    iget-wide v4, v0, Lcom/cloud/hisavana/sdk/common/activity/b;->l:J

    .line 80
    .line 81
    sub-long v4, v2, v4

    .line 82
    .line 83
    :cond_2
    sget-object v6, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 84
    .line 85
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    iget-object v8, v0, Lcom/cloud/hisavana/sdk/common/activity/b;->v:Ljava/util/ArrayList;

    .line 90
    .line 91
    iget-object v9, v0, Lcom/cloud/hisavana/sdk/common/activity/b;->w:Ljava/util/ArrayList;

    .line 92
    .line 93
    iget-object v10, v0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 94
    .line 95
    iget-object v11, v0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 96
    .line 97
    iget-boolean v12, v0, Lcom/cloud/hisavana/sdk/common/activity/b;->u:Z

    .line 98
    .line 99
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v14

    .line 103
    iget-boolean v1, v0, Lcom/cloud/hisavana/sdk/common/activity/b;->n:Z

    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 106
    .line 107
    .line 108
    move-result-object v15

    .line 109
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/b;->j:Landroid/os/Bundle;

    .line 110
    .line 111
    const/4 v13, 0x1

    .line 112
    move-object/from16 v16, v1

    .line 113
    .line 114
    invoke-virtual/range {v6 .. v16}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->W(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;ZZLjava/lang/Long;Ljava/lang/Boolean;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method

.method protected m(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "play.google.com/store/apps/"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const-string v3, "market://"

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const-string v0, "https://play.google.com/store/apps/"

    .line 17
    .line 18
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "http://play.google.com/store/apps/"

    .line 23
    .line 24
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->t(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->t(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    :cond_2
    return v0
.end method

.method public n()Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public onBackPressed()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->n:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->q:Z

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setJumpTime(J)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWebId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getTargetUrl()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWaitTime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v8

    .line 63
    const-string v6, "jump"

    .line 64
    .line 65
    const/16 v7, 0x2328

    .line 66
    .line 67
    const/4 v4, -0x1

    .line 68
    const-string v5, "fail"

    .line 69
    .line 70
    invoke-static/range {v1 .. v9}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->n0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    .line 71
    .line 72
    .line 73
    :cond_1
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    :catch_0
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-static {}, Lc7/b;->j()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lc7/b;->j()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->l:J

    .line 30
    .line 31
    sget p1, Lcom/cloud/hisavana/sdk/R$layout;->tad_exposure_activity:I

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 34
    .line 35
    .line 36
    const p1, 0x1020002

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/view/ViewGroup;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 52
    .line 53
    .line 54
    :cond_2
    new-instance p1, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 55
    .line 56
    invoke-direct {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 60
    .line 61
    sget p1, Lcom/cloud/hisavana/sdk/R$id;->pb_progress:I

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/widget/ProgressBar;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->a:Landroid/widget/ProgressBar;

    .line 70
    .line 71
    sget p1, Lcom/cloud/hisavana/sdk/R$id;->main_content:I

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/widget/LinearLayout;

    .line 78
    .line 79
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->b:Landroid/widget/LinearLayout;

    .line 80
    .line 81
    sget p1, Lcom/cloud/hisavana/sdk/R$id;->layout_title:I

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Landroid/widget/FrameLayout;

    .line 88
    .line 89
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->c:Landroid/widget/FrameLayout;

    .line 90
    .line 91
    sget p1, Lcom/cloud/hisavana/sdk/R$id;->layout_content:I

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/widget/FrameLayout;

    .line 98
    .line 99
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->d:Landroid/widget/FrameLayout;

    .line 100
    .line 101
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->c:Landroid/widget/FrameLayout;

    .line 102
    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->im_back:I

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Landroid/widget/ImageView;

    .line 112
    .line 113
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->e:Landroid/widget/ImageView;

    .line 114
    .line 115
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->c:Landroid/widget/FrameLayout;

    .line 116
    .line 117
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->tv_title:I

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Landroid/widget/TextView;

    .line 124
    .line 125
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->f:Landroid/widget/TextView;

    .line 126
    .line 127
    :cond_3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/b;->r()Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/b;->s()V

    .line 134
    .line 135
    .line 136
    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 57
    .line 58
    .line 59
    :cond_1
    const/16 v0, 0x1f45

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/b;->j(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v2, "TBaseLandingActivity"

    .line 74
    .line 75
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method protected q(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->c:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const-string v0, "isNativeHeader=false"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->c:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->c:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    const-string v0, "isBackPage=false"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->k:Z

    .line 45
    .line 46
    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->a:Landroid/widget/ProgressBar;

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    const-string v0, "isNativeLoading=false"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->a:Landroid/widget/ProgressBar;

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->a:Landroid/widget/ProgressBar;

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->e:Landroid/widget/ImageView;

    .line 70
    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/b$b;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/activity/b$b;-><init>(Lcom/cloud/hisavana/sdk/common/activity/b;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    :cond_6
    :goto_2
    return-void
.end method

.method protected s()V
    .locals 8

    .line 1
    :try_start_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 7
    .line 8
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->fl_webview:I

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/FrameLayout;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const/4 v2, -0x1

    .line 85
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 98
    .line 99
    new-instance v2, Lcom/cloud/hisavana/sdk/common/activity/b$a;

    .line 100
    .line 101
    invoke-direct {v2, p0}, Lcom/cloud/hisavana/sdk/common/activity/b$a;-><init>(Lcom/cloud/hisavana/sdk/common/activity/b;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/b;->h()Landroid/webkit/WebViewClient;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 114
    .line 115
    .line 116
    :cond_0
    invoke-static {}, Lc7/b;->l()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_1

    .line 121
    .line 122
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 123
    .line 124
    .line 125
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 126
    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->l:J

    .line 130
    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setPageClickTime(J)V

    .line 132
    .line 133
    .line 134
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 135
    .line 136
    if-eqz v0, :cond_3

    .line 137
    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 139
    .line 140
    .line 141
    move-result-wide v1

    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setInitEndTime(J)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWebId()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getTargetUrl()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getInitTime()J

    .line 166
    .line 167
    .line 168
    move-result-wide v6

    .line 169
    const/4 v4, -0x1

    .line 170
    const/4 v5, -0x1

    .line 171
    invoke-static/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 172
    .line 173
    .line 174
    :cond_3
    return-void

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v3, "create webview error: "

    .line 186
    .line 187
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    const-string v2, "TBaseLandingActivity"

    .line 202
    .line 203
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    const/16 v0, 0x1f47

    .line 207
    .line 208
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/b;->j(I)V

    .line 209
    .line 210
    .line 211
    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 213
    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method protected u()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->u:Z

    .line 3
    .line 4
    return-void
.end method

.method protected v(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->t:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->w:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->v:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method protected w()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->s:Z

    .line 3
    .line 4
    return-void
.end method
