.class public final Lcom/vungle/ads/internal/VungleInternal;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/i;Lkotlin/Lazy;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/vungle/ads/internal/VungleInternal;->getAvailableBidTokensAsync$lambda-6(Lcom/vungle/ads/i;Lkotlin/Lazy;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lkotlin/Lazy;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/vungle/ads/internal/VungleInternal;->getAvailableBidTokens$lambda-3(Lkotlin/Lazy;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final getAvailableBidTokens$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/util/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/util/c;",
            ">;)",
            "Lcom/vungle/ads/internal/util/c;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/util/c;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final getAvailableBidTokens$lambda-1(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/executor/d;",
            ">;)",
            "Lcom/vungle/ads/internal/executor/d;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/executor/d;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final getAvailableBidTokens$lambda-2(Lkotlin/Lazy;)Lcom/vungle/ads/internal/bidding/BidTokenEncoder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/bidding/BidTokenEncoder;",
            ">;)",
            "Lcom/vungle/ads/internal/bidding/BidTokenEncoder;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final getAvailableBidTokens$lambda-3(Lkotlin/Lazy;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "$bidTokenEncoder$delegate"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/vungle/ads/internal/VungleInternal;->getAvailableBidTokens$lambda-2(Lkotlin/Lazy;)Lcom/vungle/ads/internal/bidding/BidTokenEncoder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->encode()Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;->getBidToken()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private static final getAvailableBidTokensAsync$lambda-4(Lkotlin/Lazy;)Lcom/vungle/ads/internal/bidding/BidTokenEncoder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/bidding/BidTokenEncoder;",
            ">;)",
            "Lcom/vungle/ads/internal/bidding/BidTokenEncoder;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final getAvailableBidTokensAsync$lambda-5(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/executor/d;",
            ">;)",
            "Lcom/vungle/ads/internal/executor/d;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/executor/d;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final getAvailableBidTokensAsync$lambda-6(Lcom/vungle/ads/i;Lkotlin/Lazy;)V
    .locals 7

    .line 1
    const-string v0, "$callback"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$bidTokenEncoder$delegate"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/vungle/ads/x;

    .line 12
    .line 13
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->BID_TOKEN_REQUEST_TO_RESPONSE_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/vungle/ads/x;->markStart()V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/vungle/ads/internal/VungleInternal;->getAvailableBidTokensAsync$lambda-4(Lkotlin/Lazy;)Lcom/vungle/ads/internal/bidding/BidTokenEncoder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->encode()Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v2}, Lcom/vungle/ads/x;->markEnd()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;->getBidToken()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-lez v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;->getBidToken()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p0, p1}, Lcom/vungle/ads/i;->b(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->BID_TOKEN_REQUEST_TO_FAIL_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Lcom/vungle/ads/p;->setMetricType(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;->getErrorMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v2, v0}, Lcom/vungle/ads/p;->setMeta(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$b;->getErrorMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p0, p1}, Lcom/vungle/ads/i;->a(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 70
    .line 71
    const/4 v5, 0x6

    .line 72
    const/4 v6, 0x0

    .line 73
    const/4 v3, 0x0

    .line 74
    const/4 v4, 0x0

    .line 75
    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final getAvailableBidTokens(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/vungle/ads/internal/util/v;->INSTANCE:Lcom/vungle/ads/internal/util/v;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/v;->isOSVersionInvalid()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance p1, Lcom/vungle/ads/SdkVersionTooLow;

    .line 15
    .line 16
    const-string v0, "Deprecated RTB: SDK is supported only for API versions 25 and above."

    .line 17
    .line 18
    invoke-direct {p1, v0}, Lcom/vungle/ads/SdkVersionTooLow;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return-object p1

    .line 26
    :cond_0
    new-instance v1, Lcom/vungle/ads/x;

    .line 27
    .line 28
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->BID_TOKEN_REQUEST_TO_RESPONSE_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/vungle/ads/x;->markStart()V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/vungle/ads/z$a;->isInitialized()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "context.applicationContext"

    .line 51
    .line 52
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->init(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 59
    .line 60
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 61
    .line 62
    new-instance v2, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokens$$inlined$inject$1;

    .line 63
    .line 64
    invoke-direct {v2, p1}, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokens$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    new-instance v3, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokens$$inlined$inject$2;

    .line 72
    .line 73
    invoke-direct {v3, p1}, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokens$$inlined$inject$2;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    new-instance v4, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokens$$inlined$inject$3;

    .line 81
    .line 82
    invoke-direct {v4, p1}, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokens$$inlined$inject$3;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance v0, Lcom/vungle/ads/internal/executor/b;

    .line 90
    .line 91
    invoke-static {v3}, Lcom/vungle/ads/internal/VungleInternal;->getAvailableBidTokens$lambda-1(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/d;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3}, Lcom/vungle/ads/internal/executor/d;->getApiExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    new-instance v4, Lcom/vungle/ads/internal/j;

    .line 100
    .line 101
    invoke-direct {v4, p1}, Lcom/vungle/ads/internal/j;-><init>(Lkotlin/Lazy;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v4}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {v0, p1}, Lcom/vungle/ads/internal/executor/b;-><init>(Ljava/util/concurrent/Future;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v2}, Lcom/vungle/ads/internal/VungleInternal;->getAvailableBidTokens$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/util/c;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/vungle/ads/internal/util/c;->getTimeout()J

    .line 116
    .line 117
    .line 118
    move-result-wide v2

    .line 119
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 120
    .line 121
    invoke-virtual {v0, v2, v3, p1}, Lcom/vungle/ads/internal/executor/b;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Ljava/lang/String;

    .line 126
    .line 127
    if-eqz p1, :cond_2

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_3

    .line 134
    .line 135
    :cond_2
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->BID_TOKEN_REQUEST_TO_FAIL_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 136
    .line 137
    invoke-virtual {v1, v0}, Lcom/vungle/ads/p;->setMetricType(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 138
    .line 139
    .line 140
    const-string v0, "Bid token is null or empty"

    .line 141
    .line 142
    invoke-virtual {v1, v0}, Lcom/vungle/ads/p;->setMeta(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_3
    invoke-virtual {v1}, Lcom/vungle/ads/x;->markEnd()V

    .line 146
    .line 147
    .line 148
    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 149
    .line 150
    const/4 v4, 0x6

    .line 151
    const/4 v5, 0x0

    .line 152
    const/4 v2, 0x0

    .line 153
    const/4 v3, 0x0

    .line 154
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    return-object p1
.end method

.method public final getAvailableBidTokensAsync(Landroid/content/Context;Lcom/vungle/ads/i;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/vungle/ads/internal/util/v;->INSTANCE:Lcom/vungle/ads/internal/util/v;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/v;->isOSVersionInvalid()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance p1, Lcom/vungle/ads/SdkVersionTooLow;

    .line 20
    .line 21
    const-string v0, "RTB: SDK is supported only for API versions 25 and above."

    .line 22
    .line 23
    invoke-direct {p1, v0}, Lcom/vungle/ads/SdkVersionTooLow;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p2, v0}, Lcom/vungle/ads/i;->a(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/vungle/ads/z$a;->isInitialized()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "context.applicationContext"

    .line 48
    .line 49
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->init(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 56
    .line 57
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 58
    .line 59
    new-instance v1, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokensAsync$$inlined$inject$1;

    .line 60
    .line 61
    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokensAsync$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    new-instance v2, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokensAsync$$inlined$inject$2;

    .line 69
    .line 70
    invoke-direct {v2, p1}, Lcom/vungle/ads/internal/VungleInternal$getAvailableBidTokensAsync$$inlined$inject$2;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Lcom/vungle/ads/internal/VungleInternal;->getAvailableBidTokensAsync$lambda-5(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/d;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/vungle/ads/internal/executor/d;->getApiExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance v0, Lcom/vungle/ads/internal/k;

    .line 86
    .line 87
    invoke-direct {v0, p2, v1}, Lcom/vungle/ads/internal/k;-><init>(Lcom/vungle/ads/i;Lkotlin/Lazy;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "7.5.0"

    .line 2
    .line 3
    return-object v0
.end method
