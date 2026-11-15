.class public Lcom/hisavana/mintegral/executer/MintegralSplash;
.super Lcom/hisavana/common/base/BaseSplash;
.source "source.java"


# instance fields
.field private d:Lcom/mbridge/msdk/out/MBSplashHandler;

.field private e:Lcom/mbridge/msdk/out/MBSplashLoadListener;

.field private f:Lcom/mbridge/msdk/out/MBSplashShowListener;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseSplash;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/hisavana/mintegral/executer/MintegralSplash$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/hisavana/mintegral/executer/MintegralSplash$1;-><init>(Lcom/hisavana/mintegral/executer/MintegralSplash;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->e:Lcom/mbridge/msdk/out/MBSplashLoadListener;

    .line 10
    .line 11
    new-instance p1, Lcom/hisavana/mintegral/executer/MintegralSplash$2;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/hisavana/mintegral/executer/MintegralSplash$2;-><init>(Lcom/hisavana/mintegral/executer/MintegralSplash;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->f:Lcom/mbridge/msdk/out/MBSplashShowListener;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic a(Lcom/hisavana/mintegral/executer/MintegralSplash;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onSkipClick()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/hisavana/mintegral/executer/MintegralSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/hisavana/mintegral/executer/MintegralSplash;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onTimeReach()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/hisavana/mintegral/executer/MintegralSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcom/hisavana/mintegral/executer/MintegralSplash;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public addLogoLayout(Landroid/view/View;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->f()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Lcom/hisavana/common/base/BaseSplash;->mLogoLayoutHeightRatio:Ljava/lang/Float;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->getLogoHeightDefaultRatio()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "mediation sdk mintegral addLogoLayout heightRatio = "

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, "mintegral_log"

    .line 49
    .line 50
    invoke-virtual {v2, v4, v3}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    int-to-float v0, v0

    .line 54
    mul-float/2addr v0, v1

    .line 55
    float-to-int v0, v0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v0, 0x0

    .line 58
    :goto_1
    if-nez v0, :cond_3

    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    iget-object v1, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 62
    .line 63
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->g()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {v1, p1, v2, v0}, Lcom/mbridge/msdk/out/MBSplashHandler;->setLogoView(Landroid/view/View;II)V

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_2
    return-void
.end method

.method public destroyAd()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseSplash;->destroyAd()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/MBSplashHandler;->onDestroy()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "destroy"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "mintegral_log"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method protected getSplash()Landroid/view/View;
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "mintegral_log"

    .line 6
    .line 7
    const-string v2, "onSplashLoad"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroid/view/View;

    .line 19
    .line 20
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    return-object v0
.end method

.method public onSplashShow()V
    .locals 0

    .line 1
    return-void
.end method

.method protected onSplashStartLoad()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->e:Lcom/mbridge/msdk/out/MBSplashLoadListener;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->f:Lcom/mbridge/msdk/out/MBSplashShowListener;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Lcom/hisavana/common/interfacz/IBidWithNotify;->getPayload()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance v0, Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, ""

    .line 59
    .line 60
    invoke-direct {v0, v2, v1}, Lcom/mbridge/msdk/out/MBSplashHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->e:Lcom/mbridge/msdk/out/MBSplashLoadListener;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/out/MBSplashHandler;->setSplashLoadListener(Lcom/mbridge/msdk/out/MBSplashLoadListener;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->f:Lcom/mbridge/msdk/out/MBSplashShowListener;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/out/MBSplashHandler;->setSplashShowListener(Lcom/mbridge/msdk/out/MBSplashShowListener;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->getOrientation()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/out/MBSplashHandler;->setOrientation(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v1}, Lcom/hisavana/common/interfacz/IBidWithNotify;->getPayload()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/out/MBSplashHandler;->preLoadByToken(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {v0}, Lcom/hisavana/common/interfacz/IBidWithNotify;->getPayload()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->g:Ljava/lang/String;

    .line 112
    .line 113
    return-void

    .line 114
    :cond_2
    :goto_1
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 115
    .line 116
    const/16 v1, 0x7533

    .line 117
    .line 118
    const-string v2, "Mintegral Ads failed to load ad error with param empty"

    .line 119
    .line 120
    invoke-direct {v0, v1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public pauseAd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/MBSplashHandler;->onPause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public resumeAd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/MBSplashHandler;->onResume()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public show(Lcom/hisavana/common/base/WrapTadView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 5
    .line 6
    const-string p3, "mintegral_log"

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->g:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    iget-object p2, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->g:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Lcom/mbridge/msdk/out/MBSplashHandler;->isReady(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->getLogoLayout()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p0, p2}, Lcom/hisavana/mintegral/executer/MintegralSplash;->addLogoLayout(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->g:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/out/MBSplashHandler;->show(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string p2, "show"

    .line 49
    .line 50
    invoke-virtual {p1, p3, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 55
    .line 56
    const p2, 0xc351

    .line 57
    .line 58
    .line 59
    const-string v0, "Mintegral Ads failed to load ad with error message: mbSplashHandler is null"

    .line 60
    .line 61
    invoke-direct {p1, p2, v0}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string p2, "onAdShowError"

    .line 72
    .line 73
    invoke-virtual {p1, p3, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method
