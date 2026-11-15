.class public Lcom/hisavana/mintegral/executer/MintegralInterstitial;
.super Lcom/hisavana/common/base/BaseInterstitial;
.source "source.java"


# instance fields
.field private d:Z

.field private e:Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;

.field private f:Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseInterstitial;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial;->d:Z

    .line 6
    .line 7
    return-void
.end method

.method static synthetic a(Lcom/hisavana/mintegral/executer/MintegralInterstitial;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/hisavana/mintegral/executer/MintegralInterstitial;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/hisavana/mintegral/executer/MintegralInterstitial;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public destroyAd()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseInterstitial;->destroyAd()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial;->e:Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial;->f:Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialListener;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial;->d:Z

    .line 11
    .line 12
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "destroy"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "mintegral_log"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method protected initInterstitial()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/mintegral/executer/MintegralInterstitial$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/hisavana/mintegral/executer/MintegralInterstitial$1;-><init>(Lcom/hisavana/mintegral/executer/MintegralInterstitial;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial;->f:Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialListener;

    .line 7
    .line 8
    return-void
.end method

.method public isLoaded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method protected onInterstitialShow(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial;->e:Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;->isBidReady()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial;->e:Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;->showFromBid()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "mintegral_log"

    .line 27
    .line 28
    const-string v1, "Mintegral Ads failed to show"

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method protected onInterstitialStartLoad()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    if-eqz v0, :cond_3

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
    if-nez v0, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial;->f:Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialListener;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Lcom/hisavana/common/interfacz/IBidWithNotify;->getPayload()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    new-instance v0, Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;

    .line 47
    .line 48
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, ""

    .line 59
    .line 60
    invoke-direct {v0, v1, v3, v2}, Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial;->e:Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial;->f:Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialListener;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;->setInterstitialVideoListener(Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialListener;)V

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial;->d:Z

    .line 72
    .line 73
    iget-object v1, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial;->e:Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v2}, Lcom/hisavana/common/interfacz/IBidWithNotify;->getPayload()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;->loadFromBid(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial;->e:Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;

    .line 89
    .line 90
    sget-boolean v2, Lcom/hisavana/common/bean/AdMuteStatus;->MUTE_ALL:Z

    .line 91
    .line 92
    if-eqz v2, :cond_2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    const/4 v0, 0x2

    .line 96
    :goto_1
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/newinterstitial/out/MBBidNewInterstitialHandler;->playVideoMute(I)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_3
    :goto_2
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 101
    .line 102
    const/16 v1, 0x7533

    .line 103
    .line 104
    const-string v2, "Mintegral Ads failed to load ad error with param empty "

    .line 105
    .line 106
    invoke-direct {v0, v1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
