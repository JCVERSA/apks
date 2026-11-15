.class public Lcom/hisavana/mintegral/executer/MintegralNative;
.super Lcom/hisavana/common/base/BaseNative;
.source "source.java"


# instance fields
.field private d:Lcom/mbridge/msdk/out/MBBidNativeHandler;

.field private e:Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;

.field private f:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

.field private g:Lcom/hisavana/common/bean/AdNativeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/common/base/BaseNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/hisavana/mintegral/executer/MintegralNative$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/hisavana/mintegral/executer/MintegralNative$1;-><init>(Lcom/hisavana/mintegral/executer/MintegralNative;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->e:Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;

    .line 10
    .line 11
    new-instance p1, Lcom/hisavana/mintegral/executer/MintegralNative$2;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/hisavana/mintegral/executer/MintegralNative$2;-><init>(Lcom/hisavana/mintegral/executer/MintegralNative;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->f:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic a(Lcom/hisavana/mintegral/executer/MintegralNative;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/common/base/BaseNative;->mAdt:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/hisavana/mintegral/executer/MintegralNative;Lcom/hisavana/common/bean/TAdNativeInfo;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->filter(Lcom/hisavana/common/bean/TAdNativeInfo;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic c(Lcom/hisavana/mintegral/executer/MintegralNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/hisavana/mintegral/executer/MintegralNative;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/hisavana/mintegral/executer/MintegralNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Lcom/hisavana/mintegral/executer/MintegralNative;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/hisavana/mintegral/executer/MintegralNative;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/hisavana/mintegral/executer/MintegralNative;)Lcom/hisavana/common/bean/AdNativeInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->g:Lcom/hisavana/common/bean/AdNativeInfo;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public destroyAd()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseNative;->destroyAd()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->d:Lcom/mbridge/msdk/out/MBBidNativeHandler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/MBBidNativeHandler;->bidRelease()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->d:Lcom/mbridge/msdk/out/MBBidNativeHandler;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->e:Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->f:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->g:Lcom/hisavana/common/bean/AdNativeInfo;

    .line 19
    .line 20
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "destroy"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "mintegral_log"

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public getOnMBMediaViewListenerPlus()Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->f:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    .line 2
    .line 3
    return-object v0
.end method

.method protected initNative()V
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
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->e:Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;

    .line 16
    .line 17
    if-eqz v0, :cond_2

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
    goto :goto_1

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, ""

    .line 53
    .line 54
    invoke-static {v1, v0}, Lcom/mbridge/msdk/out/MBBidNativeHandler;->getNativeProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v2, "ad_num"

    .line 65
    .line 66
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 70
    .line 71
    const-string v2, "videoSupport"

    .line 72
    .line 73
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    new-instance v1, Lcom/mbridge/msdk/out/MBBidNativeHandler;

    .line 77
    .line 78
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-direct {v1, v0, v2}, Lcom/mbridge/msdk/out/MBBidNativeHandler;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    iput-object v1, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->d:Lcom/mbridge/msdk/out/MBBidNativeHandler;

    .line 86
    .line 87
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->e:Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/out/MBBidNativeHandler;->setAdListener(Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->d:Lcom/mbridge/msdk/out/MBBidNativeHandler;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-interface {v1}, Lcom/hisavana/common/interfacz/IBidWithNotify;->getPayload()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/out/MBBidNativeHandler;->bidLoad(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_2
    :goto_1
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 109
    .line 110
    const/16 v1, 0x7533

    .line 111
    .line 112
    const-string v2, "Mintegral Ads failed to load ad error with param empty"

    .line 113
    .line 114
    invoke-direct {v0, v1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method protected onNativeAdStartLoad()V
    .locals 0

    .line 1
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/hisavana/common/bean/AdNativeInfo;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->g:Lcom/hisavana/common/bean/AdNativeInfo;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->d:Lcom/mbridge/msdk/out/MBBidNativeHandler;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    invoke-virtual {p3}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p3}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p3}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    instance-of v0, v0, Lcom/mbridge/msdk/out/Campaign;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->d:Lcom/mbridge/msdk/out/MBBidNativeHandler;

    .line 41
    .line 42
    invoke-virtual {p3}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/mbridge/msdk/out/Campaign;

    .line 51
    .line 52
    invoke-virtual {v0, p1, p2, v1}, Lcom/mbridge/msdk/out/MBBidNativeHandler;->registerView(Landroid/view/View;Ljava/util/List;Lcom/mbridge/msdk/out/Campaign;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, p3}, Lcom/hisavana/common/base/BaseNative;->setNativeCloseListener(Landroid/view/ViewGroup;Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 60
    .line 61
    invoke-virtual {p0, p3, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string p2, "mintegral_log"

    .line 69
    .line 70
    const-string p3, "registerViewForInteraction error"

    .line 71
    .line 72
    invoke-virtual {p1, p2, p3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method

.method public unregisterView(Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 0
    .param p1    # Lcom/hisavana/common/bean/AdNativeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method
