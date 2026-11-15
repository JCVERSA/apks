.class public abstract Lcom/vungle/ads/BaseAd;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/vungle/ads/a;


# instance fields
.field private final adConfig:Lcom/vungle/ads/b;

.field private final adInternal$delegate:Lkotlin/Lazy;

.field private adListener:Lcom/vungle/ads/h;

.field private final context:Landroid/content/Context;

.field private creativeId:Ljava/lang/String;

.field private final displayToClickMetric:Lcom/vungle/ads/x;

.field private eventId:Ljava/lang/String;

.field private final leaveApplicationMetric:Lcom/vungle/ads/w;

.field private final logEntry:Lcom/vungle/ads/internal/util/n;

.field private final placementId:Ljava/lang/String;

.field private final presentToDisplayMetric:Lcom/vungle/ads/x;

.field private final requestToResponseMetric:Lcom/vungle/ads/x;

.field private final responseToShowMetric:Lcom/vungle/ads/x;

.field private final rewardedMetric:Lcom/vungle/ads/w;

.field private final showToCloseMetric:Lcom/vungle/ads/x;

.field private final showToFailMetric:Lcom/vungle/ads/x;

.field private final signalManager$delegate:Lkotlin/Lazy;

.field private signaledAd:Lcom/vungle/ads/internal/signals/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/b;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "placementId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adConfig"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->context:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/vungle/ads/BaseAd;->placementId:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/vungle/ads/BaseAd;->adConfig:Lcom/vungle/ads/b;

    .line 24
    .line 25
    new-instance p3, Lcom/vungle/ads/BaseAd$adInternal$2;

    .line 26
    .line 27
    invoke-direct {p3, p0}, Lcom/vungle/ads/BaseAd$adInternal$2;-><init>(Lcom/vungle/ads/BaseAd;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p3}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    iput-object p3, p0, Lcom/vungle/ads/BaseAd;->adInternal$delegate:Lkotlin/Lazy;

    .line 35
    .line 36
    sget-object p3, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 37
    .line 38
    sget-object p3, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 39
    .line 40
    new-instance v0, Lcom/vungle/ads/BaseAd$special$$inlined$inject$1;

    .line 41
    .line 42
    invoke-direct {v0, p1}, Lcom/vungle/ads/BaseAd$special$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p3, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->signalManager$delegate:Lkotlin/Lazy;

    .line 50
    .line 51
    new-instance p1, Lcom/vungle/ads/internal/util/n;

    .line 52
    .line 53
    invoke-direct {p1}, Lcom/vungle/ads/internal/util/n;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/util/n;->setPlacementRefId$vungle_ads_release(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->logEntry:Lcom/vungle/ads/internal/util/n;

    .line 60
    .line 61
    new-instance p1, Lcom/vungle/ads/x;

    .line 62
    .line 63
    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_REQUEST_TO_RESPONSE_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 64
    .line 65
    invoke-direct {p1, p2}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->requestToResponseMetric:Lcom/vungle/ads/x;

    .line 69
    .line 70
    new-instance p1, Lcom/vungle/ads/x;

    .line 71
    .line 72
    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_RESPONSE_TO_SHOW_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 73
    .line 74
    invoke-direct {p1, p2}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->responseToShowMetric:Lcom/vungle/ads/x;

    .line 78
    .line 79
    new-instance p1, Lcom/vungle/ads/x;

    .line 80
    .line 81
    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_PRESENT_TO_DISPLAY_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 82
    .line 83
    invoke-direct {p1, p2}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->presentToDisplayMetric:Lcom/vungle/ads/x;

    .line 87
    .line 88
    new-instance p1, Lcom/vungle/ads/x;

    .line 89
    .line 90
    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_SHOW_TO_FAIL_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 91
    .line 92
    invoke-direct {p1, p2}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->showToFailMetric:Lcom/vungle/ads/x;

    .line 96
    .line 97
    new-instance p1, Lcom/vungle/ads/x;

    .line 98
    .line 99
    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_DISPLAY_TO_CLICK_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 100
    .line 101
    invoke-direct {p1, p2}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->displayToClickMetric:Lcom/vungle/ads/x;

    .line 105
    .line 106
    new-instance p1, Lcom/vungle/ads/w;

    .line 107
    .line 108
    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_LEAVE_APPLICATION:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 109
    .line 110
    invoke-direct {p1, p2}, Lcom/vungle/ads/w;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->leaveApplicationMetric:Lcom/vungle/ads/w;

    .line 114
    .line 115
    new-instance p1, Lcom/vungle/ads/w;

    .line 116
    .line 117
    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_REWARD_USER:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 118
    .line 119
    invoke-direct {p1, p2}, Lcom/vungle/ads/w;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 120
    .line 121
    .line 122
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->rewardedMetric:Lcom/vungle/ads/w;

    .line 123
    .line 124
    new-instance p1, Lcom/vungle/ads/x;

    .line 125
    .line 126
    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_SHOW_TO_CLOSE_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 127
    .line 128
    invoke-direct {p1, p2}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 129
    .line 130
    .line 131
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->showToCloseMetric:Lcom/vungle/ads/x;

    .line 132
    .line 133
    return-void
.end method

.method public static synthetic getRequestToResponseMetric$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onLoadEnd()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->requestToResponseMetric:Lcom/vungle/ads/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/x;->markEnd()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/vungle/ads/BaseAd;->requestToResponseMetric:Lcom/vungle/ads/x;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/vungle/ads/BaseAd;->logEntry:Lcom/vungle/ads/internal/util/n;

    .line 11
    .line 12
    const/4 v5, 0x4

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->responseToShowMetric:Lcom/vungle/ads/x;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/vungle/ads/x;->markStart()V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public canPlayAd()Ljava/lang/Boolean;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v0, v2, v3, v1}, Lcom/vungle/ads/internal/AdInternal;->canPlayAd$default(Lcom/vungle/ads/internal/AdInternal;ZILjava/lang/Object;)Lcom/vungle/ads/VungleError;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move v2, v3

    .line 15
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public abstract constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/AdInternal;
.end method

.method public final getAdConfig()Lcom/vungle/ads/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->adConfig:Lcom/vungle/ads/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->adInternal$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/vungle/ads/internal/AdInternal;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getAdListener()Lcom/vungle/ads/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->adListener:Lcom/vungle/ads/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCreativeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->creativeId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDisplayToClickMetric$vungle_ads_release()Lcom/vungle/ads/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->displayToClickMetric:Lcom/vungle/ads/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEventId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->eventId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLeaveApplicationMetric$vungle_ads_release()Lcom/vungle/ads/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->leaveApplicationMetric:Lcom/vungle/ads/w;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->logEntry:Lcom/vungle/ads/internal/util/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->placementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPresentToDisplayMetric$vungle_ads_release()Lcom/vungle/ads/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->presentToDisplayMetric:Lcom/vungle/ads/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequestToResponseMetric$vungle_ads_release()Lcom/vungle/ads/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->requestToResponseMetric:Lcom/vungle/ads/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->responseToShowMetric:Lcom/vungle/ads/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRewardedMetric$vungle_ads_release()Lcom/vungle/ads/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->rewardedMetric:Lcom/vungle/ads/w;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowToCloseMetric$vungle_ads_release()Lcom/vungle/ads/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->showToCloseMetric:Lcom/vungle/ads/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowToFailMetric$vungle_ads_release()Lcom/vungle/ads/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->showToFailMetric:Lcom/vungle/ads/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSignalManager$vungle_ads_release()Lcom/vungle/ads/internal/signals/SignalManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->signalManager$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/vungle/ads/internal/signals/SignalManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getSignaledAd$vungle_ads_release()Lcom/vungle/ads/internal/signals/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->signaledAd:Lcom/vungle/ads/internal/signals/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->requestToResponseMetric:Lcom/vungle/ads/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/x;->markStart()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/vungle/ads/BaseAd;->placementId:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v2, Lcom/vungle/ads/BaseAd$a;

    .line 13
    .line 14
    invoke-direct {v2, p0, p1}, Lcom/vungle/ads/BaseAd$a;-><init>(Lcom/vungle/ads/BaseAd;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1, v2}, Lcom/vungle/ads/internal/AdInternal;->loadAd(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/load/a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onAdLoaded$vungle_ads_release(Lcom/vungle/ads/internal/model/AdPayload;)V
    .locals 1

    .line 1
    const-string v0, "advertisement"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->adConfig:Lcom/vungle/ads/b;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/model/AdPayload;->setAdConfig(Lcom/vungle/ads/b;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/AdPayload;->getCreativeId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/vungle/ads/BaseAd;->creativeId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/AdPayload;->eventId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->eventId:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->signaledAd:Lcom/vungle/ads/internal/signals/b;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/signals/b;->setEventId(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public onLoadFailure$vungle_ads_release(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
    .locals 1

    .line 1
    const-string v0, "baseAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "vungleError"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/vungle/ads/internal/util/u;->INSTANCE:Lcom/vungle/ads/internal/util/u;

    .line 12
    .line 13
    new-instance v0, Lcom/vungle/ads/BaseAd$onLoadFailure$1;

    .line 14
    .line 15
    invoke-direct {v0, p0, p2}, Lcom/vungle/ads/BaseAd$onLoadFailure$1;-><init>(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/util/u;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/vungle/ads/BaseAd;->onLoadEnd()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onLoadSuccess$vungle_ads_release(Lcom/vungle/ads/BaseAd;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "baseAd"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/vungle/ads/internal/util/u;->INSTANCE:Lcom/vungle/ads/internal/util/u;

    .line 7
    .line 8
    new-instance p2, Lcom/vungle/ads/BaseAd$onLoadSuccess$1;

    .line 9
    .line 10
    invoke-direct {p2, p0}, Lcom/vungle/ads/BaseAd$onLoadSuccess$1;-><init>(Lcom/vungle/ads/BaseAd;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/util/u;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/vungle/ads/BaseAd;->onLoadEnd()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final setAdListener(Lcom/vungle/ads/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->adListener:Lcom/vungle/ads/h;

    .line 2
    .line 3
    return-void
.end method

.method public final setSignaledAd$vungle_ads_release(Lcom/vungle/ads/internal/signals/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->signaledAd:Lcom/vungle/ads/internal/signals/b;

    .line 2
    .line 3
    return-void
.end method
