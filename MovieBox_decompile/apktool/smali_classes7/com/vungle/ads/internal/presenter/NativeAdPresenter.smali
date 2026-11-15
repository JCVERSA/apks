.class public final Lcom/vungle/ads/internal/presenter/NativeAdPresenter;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/presenter/NativeAdPresenter$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/presenter/NativeAdPresenter$a;

.field public static final DOWNLOAD:Ljava/lang/String; = "download"

.field public static final OPEN_PRIVACY:Ljava/lang/String; = "openPrivacy"

.field private static final TAG:Ljava/lang/String; = "NativeAdPresenter"

.field public static final TPAT:Ljava/lang/String; = "tpat"

.field public static final VIDEO_VIEWED:Ljava/lang/String; = "videoViewed"

.field private static final eventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adStartTime:Ljava/lang/Long;

.field private adViewed:Z

.field private final advertisement:Lcom/vungle/ads/internal/model/AdPayload;

.field private bus:Lcom/vungle/ads/internal/presenter/a;

.field private final context:Landroid/content/Context;

.field private currentDialog:Landroid/app/Dialog;

.field private final delegate:Lcom/vungle/ads/internal/presenter/k;

.field private final logEntry$delegate:Lkotlin/Lazy;

.field private omTracker:Lcom/vungle/ads/internal/omsdk/NativeOMTracker;

.field private final platform:Lcom/vungle/ads/internal/platform/d;

.field private final tpatSender$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->Companion:Lcom/vungle/ads/internal/presenter/NativeAdPresenter$a;

    .line 8
    .line 9
    const-string v0, "checkpoint.0"

    .line 10
    .line 11
    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_START_EVENT:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "clickUrl"

    .line 18
    .line 19
    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_CLICK_EVENT:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x2

    .line 26
    new-array v2, v2, [Lkotlin/Pair;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    aput-object v0, v2, v3

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aput-object v1, v2, v0

    .line 33
    .line 34
    invoke-static {v2}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->eventMap:Ljava/util/Map;

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/presenter/k;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/platform/d;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "delegate"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "platform"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->context:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->delegate:Lcom/vungle/ads/internal/presenter/k;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 24
    .line 25
    iput-object p4, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->platform:Lcom/vungle/ads/internal/platform/d;

    .line 26
    .line 27
    sget-object p2, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 28
    .line 29
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 30
    .line 31
    new-instance p3, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$special$$inlined$inject$1;

    .line 32
    .line 33
    invoke-direct {p3, p1}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$special$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p2, p3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->tpatSender$delegate:Lkotlin/Lazy;

    .line 41
    .line 42
    new-instance p1, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$logEntry$2;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$logEntry$2;-><init>(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->logEntry$delegate:Lkotlin/Lazy;

    .line 52
    .line 53
    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->showGdpr$lambda-8(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getAdvertisement$p(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)Lcom/vungle/ads/internal/model/AdPayload;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getEventMap$cp()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->eventMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getLogEntry(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)Lcom/vungle/ads/internal/util/n;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getTpatSender(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)Lcom/vungle/ads/internal/network/h;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getTpatSender()Lcom/vungle/ads/internal/network/h;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->showGdpr$lambda-9(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getLogEntry()Lcom/vungle/ads/internal/util/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->logEntry$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/vungle/ads/internal/util/n;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getTpatSender()Lcom/vungle/ads/internal/network/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->tpatSender$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/vungle/ads/internal/network/h;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final initOMTracker$lambda-10(Lkotlin/Lazy;)Lcom/vungle/ads/internal/omsdk/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/omsdk/b;",
            ">;)",
            "Lcom/vungle/ads/internal/omsdk/b;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/omsdk/b;

    .line 6
    .line 7
    return-object p0
.end method

.method private final needShowGdpr()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ConfigManager;->getGDPRIsCountryDataProtected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->getConsentStatus()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "unknown"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method private final onDownload(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v4, 0x6

    .line 7
    const/4 v5, 0x0

    .line 8
    const-string v1, "clickUrl"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/model/AdPayload;->getTpatUrls$default(Lcom/vungle/ads/internal/model/AdPayload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v6

    .line 18
    :goto_0
    move-object v1, v0

    .line 19
    check-cast v1, Ljava/util/Collection;

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/String;

    .line 49
    .line 50
    new-instance v4, Lcom/vungle/ads/internal/network/f$a;

    .line 51
    .line 52
    invoke-direct {v4, v1}, Lcom/vungle/ads/internal/network/f$a;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v1, "clickUrl"

    .line 56
    .line 57
    invoke-virtual {v4, v1}, Lcom/vungle/ads/internal/network/f$a;->tpatKey(Ljava/lang/String;)Lcom/vungle/ads/internal/network/f$a;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/n;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v1, v4}, Lcom/vungle/ads/internal/network/f$a;->withLogEntry(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/internal/network/f$a;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/vungle/ads/internal/network/f$a;->build()Lcom/vungle/ads/internal/network/f;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getTpatSender()Lcom/vungle/ads/internal/network/h;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-static {v4, v1, v3, v2, v6}, Lcom/vungle/ads/internal/network/h;->sendTpat$default(Lcom/vungle/ads/internal/network/h;Lcom/vungle/ads/internal/network/f;ZILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    :goto_2
    new-instance v0, Lcom/vungle/ads/TpatError;

    .line 82
    .line 83
    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->EMPTY_TPAT_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 84
    .line 85
    const-string v4, "Empty tpat key: clickUrl"

    .line 86
    .line 87
    invoke-direct {v0, v1, v4}, Lcom/vungle/ads/TpatError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/n;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 99
    .line 100
    .line 101
    :cond_3
    if-eqz p1, :cond_4

    .line 102
    .line 103
    new-instance v0, Lcom/vungle/ads/internal/network/f$a;

    .line 104
    .line 105
    invoke-direct {v0, p1}, Lcom/vungle/ads/internal/network/f$a;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v1, "cta_url"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/network/f$a;->tpatKey(Ljava/lang/String;)Lcom/vungle/ads/internal/network/f$a;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/n;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/network/f$a;->withLogEntry(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/internal/network/f$a;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/f$a;->build()Lcom/vungle/ads/internal/network/f;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getTpatSender()Lcom/vungle/ads/internal/network/h;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v1, v0, v3, v2, v6}, Lcom/vungle/ads/internal/network/h;->sendTpat$default(Lcom/vungle/ads/internal/network/h;Lcom/vungle/ads/internal/network/f;ZILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 134
    .line 135
    if-eqz v0, :cond_5

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->adUnit()Lcom/vungle/ads/internal/model/AdPayload$c;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload$c;->getDeeplinkUrl()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->context:Landroid/content/Context;

    .line 148
    .line 149
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/n;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    new-instance v2, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;

    .line 154
    .line 155
    invoke-direct {v2, v6, p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;-><init>(Ljava/lang/String;Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v6, p1, v0, v1, v2}, Lcom/vungle/ads/internal/util/d;->launch(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/vungle/ads/internal/util/n;Lcom/vungle/ads/internal/ui/b;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->bus:Lcom/vungle/ads/internal/presenter/a;

    .line 163
    .line 164
    const-string v1, "open"

    .line 165
    .line 166
    if-eqz v0, :cond_6

    .line 167
    .line 168
    iget-object v2, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->delegate:Lcom/vungle/ads/internal/presenter/k;

    .line 169
    .line 170
    invoke-interface {v2}, Lcom/vungle/ads/internal/presenter/k;->getPlacementRefId()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    const-string v3, "adClick"

    .line 175
    .line 176
    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/ads/internal/presenter/a;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :cond_6
    if-eqz p1, :cond_7

    .line 180
    .line 181
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->bus:Lcom/vungle/ads/internal/presenter/a;

    .line 182
    .line 183
    if-eqz p1, :cond_7

    .line 184
    .line 185
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->delegate:Lcom/vungle/ads/internal/presenter/k;

    .line 186
    .line 187
    invoke-interface {v0}, Lcom/vungle/ads/internal/presenter/k;->getPlacementRefId()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const-string v2, "adLeftApplication"

    .line 192
    .line 193
    invoke-virtual {p1, v1, v2, v0}, Lcom/vungle/ads/internal/presenter/a;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :cond_7
    return-void
.end method

.method private final onPrivacy(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 2
    .line 3
    new-instance v1, Lcom/vungle/ads/w;

    .line 4
    .line 5
    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->PRIVACY_URL_OPENED:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/vungle/ads/w;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/n;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v4, 0x4

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/w;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    sget-object v0, Lcom/vungle/ads/internal/util/g;->INSTANCE:Lcom/vungle/ads/internal/util/g;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/util/g;->isValidUrl(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Lcom/vungle/ads/PrivacyUrlError;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Lcom/vungle/ads/PrivacyUrlError;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/n;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->context:Landroid/content/Context;

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/n;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/16 v5, 0x10

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v0, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    move-object v1, p1

    .line 59
    invoke-static/range {v0 .. v6}, Lcom/vungle/ads/internal/util/d;->launch$default(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/vungle/ads/internal/util/n;Lcom/vungle/ads/internal/ui/b;ILjava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->bus:Lcom/vungle/ads/internal/presenter/a;

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->delegate:Lcom/vungle/ads/internal/presenter/k;

    .line 70
    .line 71
    invoke-interface {v0}, Lcom/vungle/ads/internal/presenter/k;->getPlacementRefId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "open"

    .line 76
    .line 77
    const-string v2, "adLeftApplication"

    .line 78
    .line 79
    invoke-virtual {p1, v1, v2, v0}, Lcom/vungle/ads/internal/presenter/a;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Lcom/vungle/ads/PrivacyUrlError;

    .line 84
    .line 85
    invoke-direct {v0, p1}, Lcom/vungle/ads/PrivacyUrlError;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/n;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v0, p1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic processCommand$default(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->processCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final showGdpr()V
    .locals 9

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    .line 2
    .line 3
    const-string v1, "vungle_modal"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "opted_out_by_timeout"

    .line 7
    .line 8
    invoke-virtual {v0, v3, v1, v2}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->updateGdprConsent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->context:Landroid/content/Context;

    .line 12
    .line 13
    instance-of v0, v0, Landroid/app/Activity;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 18
    .line 19
    const-string v1, "NativeAdPresenter"

    .line 20
    .line 21
    const-string v2, "We can not show GDPR dialog with application context."

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v0, Lcom/vungle/ads/internal/presenter/i;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/vungle/ads/internal/presenter/i;-><init>(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/vungle/ads/internal/ConfigManager;->getGDPRConsentTitle()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1}, Lcom/vungle/ads/internal/ConfigManager;->getGDPRConsentMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1}, Lcom/vungle/ads/internal/ConfigManager;->getGDPRButtonAccept()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v1}, Lcom/vungle/ads/internal/ConfigManager;->getGDPRButtonDeny()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v5, Landroid/app/AlertDialog$Builder;

    .line 51
    .line 52
    new-instance v6, Landroid/view/ContextThemeWrapper;

    .line 53
    .line 54
    iget-object v7, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->context:Landroid/content/Context;

    .line 55
    .line 56
    move-object v8, v7

    .line 57
    check-cast v8, Landroid/app/Activity;

    .line 58
    .line 59
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 64
    .line 65
    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-nez v6, :cond_1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_0
    if-eqz v3, :cond_4

    .line 84
    .line 85
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_1
    invoke-virtual {v5, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    .line 100
    .line 101
    const/4 v0, 0x0

    .line 102
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-instance v1, Lcom/vungle/ads/internal/presenter/j;

    .line 110
    .line 111
    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/presenter/j;-><init>(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->currentDialog:Landroid/app/Dialog;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method private static final showGdpr$lambda-8(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x2

    .line 7
    if-eq p2, p1, :cond_1

    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    if-eq p2, p1, :cond_0

    .line 11
    .line 12
    const-string p1, "opted_out_by_timeout"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->OPT_IN:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object p1, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->OPT_OUT:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    sget-object p2, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    .line 29
    .line 30
    const-string v0, "vungle_modal"

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p2, p1, v0, v1}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->updateGdprConsent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->start()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private static final showGdpr$lambda-9(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->currentDialog:Landroid/app/Dialog;

    .line 8
    .line 9
    return-void
.end method

.method private final start()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->needShowGdpr()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->showGdpr()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final triggerEventMetricForTpat(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->eventMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 12
    .line 13
    new-instance v1, Lcom/vungle/ads/w;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lcom/vungle/ads/w;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/n;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v4, 0x4

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/w;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public final detach()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->omTracker:Lcom/vungle/ads/internal/omsdk/NativeOMTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/omsdk/NativeOMTracker;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->currentDialog:Landroid/app/Dialog;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->adStartTime:Ljava/lang/Long;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    sub-long/2addr v4, v2

    .line 35
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->platform:Lcom/vungle/ads/internal/platform/d;

    .line 44
    .line 45
    invoke-interface {v3}, Lcom/vungle/ads/internal/platform/d;->getVolumeLevel()F

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-string v4, "ad.close"

    .line 54
    .line 55
    invoke-virtual {v0, v4, v2, v3}, Lcom/vungle/ads/internal/model/AdPayload;->getTpatUrls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    check-cast v0, Ljava/lang/Iterable;

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Ljava/lang/String;

    .line 78
    .line 79
    new-instance v3, Lcom/vungle/ads/internal/network/f$a;

    .line 80
    .line 81
    invoke-direct {v3, v2}, Lcom/vungle/ads/internal/network/f$a;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v4}, Lcom/vungle/ads/internal/network/f$a;->tpatKey(Ljava/lang/String;)Lcom/vungle/ads/internal/network/f$a;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/n;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/network/f$a;->withLogEntry(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/internal/network/f$a;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lcom/vungle/ads/internal/network/f$a;->build()Lcom/vungle/ads/internal/network/f;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getTpatSender()Lcom/vungle/ads/internal/network/h;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    const/4 v5, 0x0

    .line 105
    const/4 v6, 0x2

    .line 106
    invoke-static {v3, v2, v5, v6, v1}, Lcom/vungle/ads/internal/network/h;->sendTpat$default(Lcom/vungle/ads/internal/network/h;Lcom/vungle/ads/internal/network/f;ZILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->bus:Lcom/vungle/ads/internal/presenter/a;

    .line 111
    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    iget-object v2, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->delegate:Lcom/vungle/ads/internal/presenter/k;

    .line 115
    .line 116
    invoke-interface {v2}, Lcom/vungle/ads/internal/presenter/k;->getPlacementRefId()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    const-string v3, "end"

    .line 121
    .line 122
    invoke-virtual {v0, v3, v1, v2}, Lcom/vungle/ads/internal/presenter/a;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    return-void
.end method

.method public final initOMTracker(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "omSdkData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->omEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-lez v1, :cond_1

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->context:Landroid/content/Context;

    .line 27
    .line 28
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 29
    .line 30
    new-instance v2, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$initOMTracker$$inlined$inject$1;

    .line 31
    .line 32
    invoke-direct {v2, v0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$initOMTracker$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->initOMTracker$lambda-10(Lkotlin/Lazy;)Lcom/vungle/ads/internal/omsdk/b;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/vungle/ads/internal/omsdk/b;->init()V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->initOMTracker$lambda-10(Lkotlin/Lazy;)Lcom/vungle/ads/internal/omsdk/b;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/vungle/ads/internal/omsdk/b;->getOMSDKJS$vungle_ads_release()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    new-instance v1, Lcom/vungle/ads/internal/omsdk/NativeOMTracker;

    .line 57
    .line 58
    invoke-direct {v1, p1, v0}, Lcom/vungle/ads/internal/omsdk/NativeOMTracker;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->omTracker:Lcom/vungle/ads/internal/omsdk/NativeOMTracker;

    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public final onImpression()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->omTracker:Lcom/vungle/ads/internal/omsdk/NativeOMTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/omsdk/NativeOMTracker;->impressionOccurred()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final prepare()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->start()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->bus:Lcom/vungle/ads/internal/presenter/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->delegate:Lcom/vungle/ads/internal/presenter/k;

    .line 9
    .line 10
    invoke-interface {v1}, Lcom/vungle/ads/internal/presenter/k;->getPlacementRefId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "start"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v2, v3, v1}, Lcom/vungle/ads/internal/presenter/a;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->adStartTime:Ljava/lang/Long;

    .line 29
    .line 30
    return-void
.end method

.method public final processCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    sparse-switch v0, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_6

    .line 17
    .line 18
    :sswitch_0
    const-string v0, "download"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_6

    .line 27
    .line 28
    :cond_0
    invoke-direct {p0, p2}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->onDownload(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :sswitch_1
    const-string p2, "videoViewed"

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->bus:Lcom/vungle/ads/internal/presenter/a;

    .line 43
    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    iget-boolean p2, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->adViewed:Z

    .line 47
    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 p2, 0x1

    .line 52
    iput-boolean p2, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->adViewed:Z

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    iget-object p2, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->delegate:Lcom/vungle/ads/internal/presenter/k;

    .line 57
    .line 58
    invoke-interface {p2}, Lcom/vungle/ads/internal/presenter/k;->getPlacementRefId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const-string v0, "adViewed"

    .line 63
    .line 64
    invoke-virtual {p1, v0, v3, p2}, Lcom/vungle/ads/internal/presenter/a;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->delegate:Lcom/vungle/ads/internal/presenter/k;

    .line 68
    .line 69
    invoke-interface {p1}, Lcom/vungle/ads/internal/presenter/k;->getImpressionUrls()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    check-cast p1, Ljava/lang/Iterable;

    .line 76
    .line 77
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-eqz p2, :cond_4

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Ljava/lang/String;

    .line 92
    .line 93
    new-instance v0, Lcom/vungle/ads/internal/network/f$a;

    .line 94
    .line 95
    invoke-direct {v0, p2}, Lcom/vungle/ads/internal/network/f$a;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string p2, "impression"

    .line 99
    .line 100
    invoke-virtual {v0, p2}, Lcom/vungle/ads/internal/network/f$a;->tpatKey(Ljava/lang/String;)Lcom/vungle/ads/internal/network/f$a;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/n;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p2, v0}, Lcom/vungle/ads/internal/network/f$a;->withLogEntry(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/internal/network/f$a;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p2}, Lcom/vungle/ads/internal/network/f$a;->build()Lcom/vungle/ads/internal/network/f;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getTpatSender()Lcom/vungle/ads/internal/network/h;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0, p2, v2, v1, v3}, Lcom/vungle/ads/internal/network/h;->sendTpat$default(Lcom/vungle/ads/internal/network/h;Lcom/vungle/ads/internal/network/f;ZILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    :goto_1
    return-void

    .line 125
    :sswitch_2
    const-string v0, "tpat"

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_5

    .line 132
    .line 133
    goto/16 :goto_6

    .line 134
    .line 135
    :cond_5
    if-eqz p2, :cond_c

    .line 136
    .line 137
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-nez p1, :cond_6

    .line 142
    .line 143
    goto/16 :goto_5

    .line 144
    .line 145
    :cond_6
    invoke-direct {p0, p2}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->triggerEventMetricForTpat(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string p1, "checkpoint.0"

    .line 149
    .line 150
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_8

    .line 155
    .line 156
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 157
    .line 158
    if-eqz p1, :cond_7

    .line 159
    .line 160
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->platform:Lcom/vungle/ads/internal/platform/d;

    .line 161
    .line 162
    invoke-interface {v0}, Lcom/vungle/ads/internal/platform/d;->getCarrierName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iget-object v4, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->platform:Lcom/vungle/ads/internal/platform/d;

    .line 167
    .line 168
    invoke-interface {v4}, Lcom/vungle/ads/internal/platform/d;->getVolumeLevel()F

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {p1, p2, v0, v4}, Lcom/vungle/ads/internal/model/AdPayload;->getTpatUrls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    goto :goto_2

    .line 181
    :cond_7
    move-object p1, v3

    .line 182
    goto :goto_2

    .line 183
    :cond_8
    iget-object v4, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 184
    .line 185
    if-eqz v4, :cond_7

    .line 186
    .line 187
    const/4 v8, 0x6

    .line 188
    const/4 v9, 0x0

    .line 189
    const/4 v6, 0x0

    .line 190
    const/4 v7, 0x0

    .line 191
    move-object v5, p2

    .line 192
    invoke-static/range {v4 .. v9}, Lcom/vungle/ads/internal/model/AdPayload;->getTpatUrls$default(Lcom/vungle/ads/internal/model/AdPayload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    :goto_2
    move-object v0, p1

    .line 197
    check-cast v0, Ljava/util/Collection;

    .line 198
    .line 199
    if-eqz v0, :cond_a

    .line 200
    .line 201
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_9

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_9
    check-cast p1, Ljava/lang/Iterable;

    .line 209
    .line 210
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_b

    .line 219
    .line 220
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Ljava/lang/String;

    .line 225
    .line 226
    new-instance v4, Lcom/vungle/ads/internal/network/f$a;

    .line 227
    .line 228
    invoke-direct {v4, v0}, Lcom/vungle/ads/internal/network/f$a;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4, p2}, Lcom/vungle/ads/internal/network/f$a;->tpatKey(Ljava/lang/String;)Lcom/vungle/ads/internal/network/f$a;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/n;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    invoke-virtual {v0, v4}, Lcom/vungle/ads/internal/network/f$a;->withLogEntry(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/internal/network/f$a;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/f$a;->build()Lcom/vungle/ads/internal/network/f;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getTpatSender()Lcom/vungle/ads/internal/network/h;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-static {v4, v0, v2, v1, v3}, Lcom/vungle/ads/internal/network/h;->sendTpat$default(Lcom/vungle/ads/internal/network/h;Lcom/vungle/ads/internal/network/f;ZILjava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_a
    :goto_4
    new-instance p1, Lcom/vungle/ads/TpatError;

    .line 256
    .line 257
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->INVALID_TPAT_KEY:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 258
    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v2, "Empty urls for tpat: "

    .line 265
    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p2

    .line 276
    invoke-direct {p1, v0, p2}, Lcom/vungle/ads/TpatError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/n;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    invoke-virtual {p1, p2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 288
    .line 289
    .line 290
    :cond_b
    return-void

    .line 291
    :cond_c
    :goto_5
    new-instance p1, Lcom/vungle/ads/TpatError;

    .line 292
    .line 293
    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->EMPTY_TPAT_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 294
    .line 295
    const-string v0, "Empty tpat key"

    .line 296
    .line 297
    invoke-direct {p1, p2, v0}, Lcom/vungle/ads/TpatError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-direct {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->getLogEntry()Lcom/vungle/ads/internal/util/n;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    invoke-virtual {p1, p2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 309
    .line 310
    .line 311
    return-void

    .line 312
    :sswitch_3
    const-string v0, "openPrivacy"

    .line 313
    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-nez v0, :cond_d

    .line 319
    .line 320
    :goto_6
    sget-object p2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 321
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    const-string v1, "Unknown native ad action: "

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    const-string v0, "NativeAdPresenter"

    .line 340
    .line 341
    invoke-virtual {p2, v0, p1}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    return-void

    .line 345
    :cond_d
    invoke-direct {p0, p2}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->onPrivacy(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    return-void

    .line 349
    :sswitch_data_0
    .sparse-switch
        -0x1e7a3222 -> :sswitch_3
        0x366baf -> :sswitch_2
        0x42a7aa5f -> :sswitch_1
        0x551ac888 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setEventListener(Lcom/vungle/ads/internal/presenter/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->bus:Lcom/vungle/ads/internal/presenter/a;

    .line 2
    .line 3
    return-void
.end method

.method public final startTracking(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "rootView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->omTracker:Lcom/vungle/ads/internal/omsdk/NativeOMTracker;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/omsdk/NativeOMTracker;->start(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
