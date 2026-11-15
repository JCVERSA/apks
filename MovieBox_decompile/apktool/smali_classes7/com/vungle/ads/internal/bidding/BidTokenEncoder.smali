.class public final Lcom/vungle/ads/internal/bidding/BidTokenEncoder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/bidding/BidTokenEncoder$c;,
        Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/bidding/BidTokenEncoder$c;

.field private static final TAG:Ljava/lang/String; = "BidTokenEncoder"

.field public static final TOKEN_VERSION:I = 0x6


# instance fields
.field private bidTokenRequestedMetric:Lcom/vungle/ads/w;

.field private final context:Landroid/content/Context;

.field private enterBackgroundTime:J

.field private final json:Lkotlinx/serialization/json/a;

.field private ordinalView:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->Companion:Lcom/vungle/ads/internal/bidding/BidTokenEncoder$c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->context:Landroid/content/Context;

    .line 10
    .line 11
    new-instance p1, Lcom/vungle/ads/w;

    .line 12
    .line 13
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->BID_TOKEN_REQUESTED:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 14
    .line 15
    invoke-direct {p1, v0}, Lcom/vungle/ads/w;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->bidTokenRequestedMetric:Lcom/vungle/ads/w;

    .line 19
    .line 20
    sget-object p1, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$json$1;->INSTANCE:Lcom/vungle/ads/internal/bidding/BidTokenEncoder$json$1;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v1, p1, v0, v1}, Lkotlinx/serialization/json/n;->b(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/a;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->json:Lkotlinx/serialization/json/a;

    .line 29
    .line 30
    sget-object p1, Lcom/vungle/ads/internal/util/a;->Companion:Lcom/vungle/ads/internal/util/a$a;

    .line 31
    .line 32
    new-instance v0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$a;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$a;-><init>(Lcom/vungle/ads/internal/bidding/BidTokenEncoder;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/util/a$a;->addLifecycleListener(Lcom/vungle/ads/internal/util/a$b;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private static final constructV6Token$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/VungleApiClient;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/network/VungleApiClient;",
            ">;)",
            "Lcom/vungle/ads/internal/network/VungleApiClient;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 6
    .line 7
    return-object p0
.end method

.method private final generateBidToken()Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->bidTokenRequestedMetric:Lcom/vungle/ads/w;

    .line 6
    .line 7
    const/4 v5, 0x6

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/w;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->constructV6Token$vungle_ads_release()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    sget-object v2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v4, "BidToken: "

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "BidTokenEncoder"

    .line 38
    .line 39
    invoke-virtual {v2, v4, v3}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :try_start_1
    sget-object v3, Lcom/vungle/ads/internal/util/l;->INSTANCE:Lcom/vungle/ads/internal/util/l;

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Lcom/vungle/ads/internal/util/l;->convertForSending(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v5, "6:"

    .line 54
    .line 55
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v5, "After conversion: "

    .line 71
    .line 72
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v2, v4, v3}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    new-instance v2, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;

    .line 86
    .line 87
    invoke-direct {v2, v1, v0}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    .line 90
    return-object v2

    .line 91
    :catchall_0
    move-exception v1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v3, "Fail to gzip token data. "

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    new-instance v2, Lcom/vungle/ads/GzipEncodeError;

    .line 114
    .line 115
    invoke-direct {v2, v1}, Lcom/vungle/ads/GzipEncodeError;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 119
    .line 120
    .line 121
    new-instance v2, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;

    .line 122
    .line 123
    invoke-direct {v2, v0, v1}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-object v2

    .line 127
    :catchall_1
    move-exception v1

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v3, "Failed to encode TokenParameters. "

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    new-instance v2, Lcom/vungle/ads/JsonEncodeError;

    .line 150
    .line 151
    invoke-direct {v2, v1}, Lcom/vungle/ads/JsonEncodeError;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 155
    .line 156
    .line 157
    new-instance v2, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;

    .line 158
    .line 159
    invoke-direct {v2, v0, v1}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-object v2
.end method

.method public static synthetic getEnterBackgroundTime$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getJson$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getOrdinalView$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final constructV6Token$vungle_ads_release()Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->context:Landroid/content/Context;

    .line 4
    .line 5
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 6
    .line 7
    new-instance v2, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$constructV6Token$$inlined$inject$1;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$constructV6Token$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->constructV6Token$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/vungle/ads/internal/ConfigManager;->signalsDisabled()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    xor-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/vungle/ads/internal/ConfigManager;->fpdEnabled()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/vungle/ads/internal/network/VungleApiClient;->requestBody(ZZ)Lcom/vungle/ads/internal/model/c;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v7, Lcom/vungle/ads/internal/model/i;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/c;->getDevice()Lcom/vungle/ads/internal/model/d;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/c;->getUser()Lcom/vungle/ads/internal/model/c$j;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/c;->getExt()Lcom/vungle/ads/internal/model/c$h;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    new-instance v5, Lcom/vungle/ads/internal/model/h;

    .line 51
    .line 52
    sget-object v0, Lcom/vungle/ads/internal/network/k;->INSTANCE:Lcom/vungle/ads/internal/network/k;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/k;->getHeaderUa()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {v5, v0}, Lcom/vungle/ads/internal/model/h;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget v6, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->ordinalView:I

    .line 62
    .line 63
    move-object v1, v7

    .line 64
    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/internal/model/i;-><init>(Lcom/vungle/ads/internal/model/d;Lcom/vungle/ads/internal/model/c$j;Lcom/vungle/ads/internal/model/c$h;Lcom/vungle/ads/internal/model/h;I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->json:Lkotlinx/serialization/json/a;

    .line 68
    .line 69
    invoke-interface {v0}, Lkotlinx/serialization/e;->a()Lty/c;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-class v2, Lcom/vungle/ads/internal/model/i;

    .line 74
    .line 75
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->m(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v1, v2}, Lkotlinx/serialization/h;->b(Lty/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/b;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 84
    .line 85
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, v1, v7}, Lkotlinx/serialization/j;->c(Lkotlinx/serialization/g;Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method

.method public final encode()Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->ordinalView:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->ordinalView:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->generateBidToken()Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final getEnterBackgroundTime$vungle_ads_release()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->enterBackgroundTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getOrdinalView$vungle_ads_release()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->ordinalView:I

    .line 2
    .line 3
    return v0
.end method

.method public final onPause$vungle_ads_release()V
    .locals 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 2
    .line 3
    const-string v1, "BidTokenEncoder"

    .line 4
    .line 5
    const-string v2, "BidTokenEncoder#onBackground()"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->enterBackgroundTime:J

    .line 15
    .line 16
    return-void
.end method

.method public final onResume$vungle_ads_release()V
    .locals 6

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 2
    .line 3
    const-string v1, "BidTokenEncoder"

    .line 4
    .line 5
    const-string v2, "BidTokenEncoder#onForeground()"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sget-object v2, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/vungle/ads/internal/ConfigManager;->getSessionTimeout()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    iget-wide v4, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->enterBackgroundTime:J

    .line 21
    .line 22
    add-long/2addr v4, v2

    .line 23
    cmp-long v0, v0, v4

    .line 24
    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->ordinalView:I

    .line 29
    .line 30
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    iput-wide v0, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->enterBackgroundTime:J

    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final setEnterBackgroundTime$vungle_ads_release(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->enterBackgroundTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setOrdinalView$vungle_ads_release(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->ordinalView:I

    .line 2
    .line 3
    return-void
.end method
