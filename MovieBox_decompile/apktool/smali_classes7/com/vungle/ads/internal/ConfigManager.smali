.class public final Lcom/vungle/ads/internal/ConfigManager;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final CONFIG_ALL_DATA:I = 0x2

.field private static final CONFIG_LAST_VALIDATED_TIMESTAMP_ONLY:I = 0x1

.field public static final CONFIG_LAST_VALIDATE_TS_DEFAULT:J = -0x1L

.field private static final CONFIG_NOT_AVAILABLE:I = 0x0

.field private static final DEFAULT_SESSION_TIMEOUT_SECONDS:I = 0x384

.field private static final DEFAULT_SIGNALS_SESSION_TIMEOUT_SECONDS:I = 0x708

.field public static final INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

.field public static final TAG:Ljava/lang/String; = "ConfigManager"

.field private static applicationId:Ljava/lang/String;

.field private static config:Lcom/vungle/ads/internal/model/ConfigPayload;

.field private static configExt:Ljava/lang/String;

.field private static endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$f;

.field private static final json:Lkotlinx/serialization/json/a;

.field private static placements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/model/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/ConfigManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/vungle/ads/internal/ConfigManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 7
    .line 8
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager$json$1;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager$json$1;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v2, v0, v1, v2}, Lkotlinx/serialization/json/n;->b(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->json:Lkotlinx/serialization/json/a;

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final fetchConfigAsync$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/VungleApiClient;
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

.method private static final initWithConfig$lambda-2(Lkotlin/Lazy;)Lcom/vungle/ads/internal/persistence/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/persistence/b;",
            ">;)",
            "Lcom/vungle/ads/internal/persistence/b;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/persistence/b;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final initWithConfig$lambda-4(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/VungleApiClient;
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

.method private static final initWithConfig$lambda-5(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/vungle/ads/internal/executor/a;",
            ">;)",
            "Lcom/vungle/ads/internal/executor/a;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/executor/a;

    .line 6
    .line 7
    return-object p0
.end method

.method public static synthetic initWithConfig$vungle_ads_release$default(Lcom/vungle/ads/internal/ConfigManager;Landroid/content/Context;Lcom/vungle/ads/internal/model/ConfigPayload;ZLcom/vungle/ads/w;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vungle/ads/internal/ConfigManager;->initWithConfig$vungle_ads_release(Landroid/content/Context;Lcom/vungle/ads/internal/model/ConfigPayload;ZLcom/vungle/ads/w;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final updateConfigExtension$lambda-1(Lkotlin/Lazy;)Lcom/vungle/ads/internal/persistence/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/persistence/b;",
            ">;)",
            "Lcom/vungle/ads/internal/persistence/b;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/persistence/b;

    .line 6
    .line 7
    return-object p0
.end method

.method public static synthetic validateEndpoints$vungle_ads_release$default(Lcom/vungle/ads/internal/ConfigManager;Lcom/vungle/ads/internal/model/ConfigPayload$f;ILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/vungle/ads/internal/ConfigManager;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$f;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/ConfigManager;->validateEndpoints$vungle_ads_release(Lcom/vungle/ads/internal/model/ConfigPayload$f;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public final afterClickDuration()J
    .locals 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getAutoRedirect()Lcom/vungle/ads/internal/model/ConfigPayload$b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$b;->getAfterClickDuration()Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    :goto_0
    return-wide v0
.end method

.method public final allowAutoRedirects()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getAutoRedirect()Lcom/vungle/ads/internal/model/ConfigPayload$b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$b;->getAllowAutoRedirect()Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public final checkConfigPayload$vungle_ads_release(Lcom/vungle/ads/internal/model/ConfigPayload;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload;->getConfigLastValidatedTimestamp()Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload;->getConfigLastValidatedTimestamp()Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    const-wide/16 v3, -0x1

    .line 23
    .line 24
    cmp-long v1, v1, v3

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload;->getEndpoints()Lcom/vungle/ads/internal/model/ConfigPayload$f;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_3
    const/4 v0, 0x2

    .line 38
    :cond_4
    :goto_1
    return v0
.end method

.method public final clearConfig$vungle_ads_release()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$f;

    .line 3
    .line 4
    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->placements:Ljava/util/List;

    .line 5
    .line 6
    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 7
    .line 8
    return-void
.end method

.method public final configLastValidatedTimestamp()J
    .locals 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getConfigLastValidatedTimestamp()Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-wide/16 v0, -0x1

    .line 17
    .line 18
    :goto_0
    return-wide v0
.end method

.method public final fetchConfigAsync$vungle_ads_release(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onComplete"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 12
    .line 13
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 14
    .line 15
    new-instance v1, Lcom/vungle/ads/internal/ConfigManager$fetchConfigAsync$$inlined$inject$1;

    .line 16
    .line 17
    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/ConfigManager$fetchConfigAsync$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :try_start_0
    invoke-static {v0}, Lcom/vungle/ads/internal/ConfigManager;->fetchConfigAsync$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/VungleApiClient;->config()Lcom/vungle/ads/internal/network/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    new-instance v1, Lcom/vungle/ads/internal/ConfigManager$a;

    .line 35
    .line 36
    invoke-direct {v1, p2, p1}, Lcom/vungle/ads/internal/ConfigManager$a;-><init>(Lkotlin/jvm/functions/Function1;Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/vungle/ads/internal/network/a;->enqueue(Lcom/vungle/ads/internal/network/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    instance-of v0, p1, Ljava/net/UnknownHostException;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    instance-of v0, p1, Ljava/lang/SecurityException;

    .line 51
    .line 52
    :goto_0
    if-eqz v0, :cond_1

    .line 53
    .line 54
    new-instance v0, Lcom/vungle/ads/NetworkUnreachable;

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "Config unknown: "

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {v0, p1}, Lcom/vungle/ads/NetworkUnreachable;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    new-instance v0, Lcom/vungle/ads/NetworkUnreachable;

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v2, "Config: "

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {v0, p1}, Lcom/vungle/ads/NetworkUnreachable;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 111
    .line 112
    .line 113
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 114
    .line 115
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_2
    :goto_2
    return-void
.end method

.method public final fpdEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getFpdEnabled()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    :goto_0
    return v0
.end method

.method public final getAdsEndpoint()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getAdsEndpoint()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object v1, v0

    .line 22
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 23
    .line 24
    sget-object v1, Lcom/vungle/ads/internal/b;->DEFAULT_ADS_ENDPOINT:Ljava/lang/String;

    .line 25
    .line 26
    :cond_3
    return-object v1
.end method

.method public final getCachedConfig(Lcom/vungle/ads/internal/persistence/b;Ljava/lang/String;)Lcom/vungle/ads/internal/model/ConfigPayload;
    .locals 6

    .line 1
    const-string v0, "ConfigManager"

    .line 2
    .line 3
    const-string v1, "filePreferences"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "appId"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :try_start_0
    const-string v2, "config_app_id"

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Lcom/vungle/ads/internal/persistence/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_5

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 v3, 0x1

    .line 30
    invoke-static {v2, p2, v3}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const-string p2, "config_response"

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/persistence/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-eqz p2, :cond_4

    .line 44
    .line 45
    const-string v2, "config_update_time"

    .line 46
    .line 47
    const-wide/16 v3, 0x0

    .line 48
    .line 49
    invoke-virtual {p1, v2, v3, v4}, Lcom/vungle/ads/internal/persistence/b;->getLong(Ljava/lang/String;J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    sget-object p1, Lcom/vungle/ads/internal/ConfigManager;->json:Lkotlinx/serialization/json/a;

    .line 54
    .line 55
    invoke-interface {p1}, Lkotlinx/serialization/e;->a()Lty/c;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-class v5, Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 60
    .line 61
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->m(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-static {v4, v5}, Lkotlinx/serialization/h;->b(Lty/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/b;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const-string v5, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 70
    .line 71
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p1, v4, p2}, Lkotlinx/serialization/j;->b(Lkotlinx/serialization/a;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload;->getConfigSettings()Lcom/vungle/ads/internal/model/ConfigPayload$e;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-eqz p2, :cond_2

    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/ConfigPayload$e;->getRefreshTime()Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    if-eqz p2, :cond_2

    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 93
    .line 94
    .line 95
    move-result-wide v4

    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception p1

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    const-wide/16 v4, -0x1

    .line 100
    .line 101
    :goto_0
    add-long/2addr v4, v2

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v2

    .line 106
    cmp-long p2, v4, v2

    .line 107
    .line 108
    if-gez p2, :cond_3

    .line 109
    .line 110
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 111
    .line 112
    const-string p2, "cache config expired. re-config"

    .line 113
    .line 114
    invoke-virtual {p1, v0, p2}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    return-object v1

    .line 118
    :cond_3
    sget-object p2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 119
    .line 120
    const-string v2, "use cache config."

    .line 121
    .line 122
    invoke-virtual {p2, v0, v2}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    return-object p1

    .line 126
    :cond_4
    return-object v1

    .line 127
    :cond_5
    :goto_1
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 128
    .line 129
    const-string p2, "app id mismatch, re-config"

    .line 130
    .line 131
    invoke-virtual {p1, v0, p2}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    return-object v1

    .line 135
    :goto_2
    sget-object p2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 136
    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v3, "Error while parsing cached config: "

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p2, v0, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    return-object v1
.end method

.method public final getCleverCacheDiskPercentage()I
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getCleverCache()Lcom/vungle/ads/internal/model/ConfigPayload$c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$c;->getDiskPercentage()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x3

    .line 23
    :goto_0
    return v0
.end method

.method public final getCleverCacheDiskSize()J
    .locals 4

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getCleverCache()Lcom/vungle/ads/internal/model/ConfigPayload$c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$c;->getDiskSize()Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const/16 v2, 0x400

    .line 22
    .line 23
    int-to-long v2, v2

    .line 24
    mul-long/2addr v0, v2

    .line 25
    mul-long/2addr v0, v2

    .line 26
    return-wide v0

    .line 27
    :cond_0
    const-wide/32 v0, 0x3e800000

    .line 28
    .line 29
    .line 30
    return-wide v0
.end method

.method public final getConfigExtension()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->configExt:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public final getErrorLoggingEndpoint()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getErrorLogsEndpoint()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object v1, v0

    .line 22
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 23
    .line 24
    sget-object v1, Lcom/vungle/ads/internal/b;->DEFAULT_ERROR_LOGS_ENDPOINT:Ljava/lang/String;

    .line 25
    .line 26
    :cond_3
    return-object v1
.end method

.method public final getGDPRButtonAccept()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getUserPrivacy()Lcom/vungle/ads/internal/model/ConfigPayload$i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$i;->getGdpr()Lcom/vungle/ads/internal/model/ConfigPayload$g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$g;->getButtonAccept()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0
.end method

.method public final getGDPRButtonDeny()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getUserPrivacy()Lcom/vungle/ads/internal/model/ConfigPayload$i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$i;->getGdpr()Lcom/vungle/ads/internal/model/ConfigPayload$g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$g;->getButtonDeny()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0
.end method

.method public final getGDPRConsentMessage()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getUserPrivacy()Lcom/vungle/ads/internal/model/ConfigPayload$i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$i;->getGdpr()Lcom/vungle/ads/internal/model/ConfigPayload$g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$g;->getConsentMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0
.end method

.method public final getGDPRConsentMessageVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getUserPrivacy()Lcom/vungle/ads/internal/model/ConfigPayload$i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$i;->getGdpr()Lcom/vungle/ads/internal/model/ConfigPayload$g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$g;->getConsentMessageVersion()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    :cond_0
    const-string v0, ""

    .line 24
    .line 25
    :cond_1
    return-object v0
.end method

.method public final getGDPRConsentTitle()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getUserPrivacy()Lcom/vungle/ads/internal/model/ConfigPayload$i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$i;->getGdpr()Lcom/vungle/ads/internal/model/ConfigPayload$g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$g;->getConsentTitle()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0
.end method

.method public final getGDPRIsCountryDataProtected()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getUserPrivacy()Lcom/vungle/ads/internal/model/ConfigPayload$i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$i;->getGdpr()Lcom/vungle/ads/internal/model/ConfigPayload$g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$g;->isCountryDataProtected()Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0
.end method

.method public final getLogLevel()I
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getLogMetricsSettings()Lcom/vungle/ads/internal/model/ConfigPayload$h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$h;->getErrorLogLevel()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lcom/vungle/ads/AnalyticsClient$LogLevel;->ERROR_LOG_LEVEL_ERROR:Lcom/vungle/ads/AnalyticsClient$LogLevel;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/vungle/ads/AnalyticsClient$LogLevel;->getLevel()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    return v0
.end method

.method public final getMetricsEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getLogMetricsSettings()Lcom/vungle/ads/internal/model/ConfigPayload$h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$h;->getMetricsEnabled()Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public final getMetricsEndpoint()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getMetricsEndpoint()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object v1, v0

    .line 22
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 23
    .line 24
    sget-object v1, Lcom/vungle/ads/internal/b;->DEFAULT_METRICS_ENDPOINT:Ljava/lang/String;

    .line 25
    .line 26
    :cond_3
    return-object v1
.end method

.method public final getMraidEndpoint()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getMraidEndpoint()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final getMraidJsVersion()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ConfigManager;->getMraidEndpoint()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "mraid_"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    :cond_0
    const-string v0, "mraid_1"

    .line 35
    .line 36
    :cond_1
    return-object v0
.end method

.method public final getPlacement(Ljava/lang/String;)Lcom/vungle/ads/internal/model/g;
    .locals 4

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->placements:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v3, v2

    .line 23
    check-cast v3, Lcom/vungle/ads/internal/model/g;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/g;->getReferenceId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    move-object v1, v2

    .line 36
    :cond_1
    check-cast v1, Lcom/vungle/ads/internal/model/g;

    .line 37
    .line 38
    :cond_2
    return-object v1
.end method

.method public final getRiEndpoint()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getRiEndpoint()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final getSessionTimeout()J
    .locals 4

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getSessionTimeout()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v0, 0x384

    .line 17
    .line 18
    :goto_0
    int-to-long v0, v0

    .line 19
    const-wide/16 v2, 0x3e8

    .line 20
    .line 21
    mul-long/2addr v0, v2

    .line 22
    return-wide v0
.end method

.method public final getSignalsSessionTimeout()J
    .locals 4

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getSignalSessionTimeout()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v0, 0x708

    .line 17
    .line 18
    :goto_0
    int-to-long v0, v0

    .line 19
    const-wide/16 v2, 0x3e8

    .line 20
    .line 21
    mul-long/2addr v0, v2

    .line 22
    return-wide v0
.end method

.method public final getTcfStatus()Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus;
    .locals 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus;->Companion:Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus$a;

    .line 2
    .line 3
    sget-object v1, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/ConfigPayload;->getUserPrivacy()Lcom/vungle/ads/internal/model/ConfigPayload$i;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/ConfigPayload$i;->getIab()Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;->getTcfStatus()Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus$a;->fromRawValue(Ljava/lang/Integer;)Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final declared-synchronized initWithConfig$vungle_ads_release(Landroid/content/Context;Lcom/vungle/ads/internal/model/ConfigPayload;ZLcom/vungle/ads/w;)V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "context"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    :try_start_1
    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v1, Lcom/vungle/ads/internal/ConfigManager$initWithConfig$$inlined$inject$1;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/ConfigManager$initWithConfig$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0, p2}, Lcom/vungle/ads/internal/ConfigManager;->checkConfigPayload$vungle_ads_release(Lcom/vungle/ads/internal/model/ConfigPayload;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_8

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    if-eq v2, v3, :cond_4

    .line 28
    .line 29
    sput-object p2, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/ConfigPayload;->getEndpoints()Lcom/vungle/ads/internal/model/ConfigPayload$f;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :catch_0
    move-exception p1

    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_0
    move-object v3, v2

    .line 46
    :goto_0
    sput-object v3, Lcom/vungle/ads/internal/ConfigManager;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$f;

    .line 47
    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/ConfigPayload;->getPlacements()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :cond_1
    sput-object v2, Lcom/vungle/ads/internal/ConfigManager;->placements:Ljava/util/List;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ConfigManager;->getLogLevel()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ConfigManager;->getMetricsEnabled()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    new-instance v4, Lcom/vungle/ads/internal/ConfigManager$initWithConfig$$inlined$inject$2;

    .line 65
    .line 66
    invoke-direct {v4, p1}, Lcom/vungle/ads/internal/ConfigManager$initWithConfig$$inlined$inject$2;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    new-instance v5, Lcom/vungle/ads/internal/ConfigManager$initWithConfig$$inlined$inject$3;

    .line 74
    .line 75
    invoke-direct {v5, p1}, Lcom/vungle/ads/internal/ConfigManager$initWithConfig$$inlined$inject$3;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v5}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget-object v5, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 83
    .line 84
    invoke-static {v4}, Lcom/vungle/ads/internal/ConfigManager;->initWithConfig$lambda-4(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v0}, Lcom/vungle/ads/internal/ConfigManager;->initWithConfig$lambda-5(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v0}, Lcom/vungle/ads/internal/executor/a;->getLoggerExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v5, v4, v0, v2, v3}, Lcom/vungle/ads/AnalyticsClient;->initOrUpdate$vungle_ads_release(Lcom/vungle/ads/internal/network/VungleApiClient;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;IZ)V

    .line 97
    .line 98
    .line 99
    if-nez p3, :cond_2

    .line 100
    .line 101
    if-eqz p2, :cond_2

    .line 102
    .line 103
    invoke-static {v1}, Lcom/vungle/ads/internal/ConfigManager;->initWithConfig$lambda-2(Lkotlin/Lazy;)Lcom/vungle/ads/internal/persistence/b;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-virtual {p0, p2, p3}, Lcom/vungle/ads/internal/ConfigManager;->updateCachedConfig(Lcom/vungle/ads/internal/model/ConfigPayload;Lcom/vungle/ads/internal/persistence/b;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/ConfigPayload;->getConfigExtension()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    if-eqz p2, :cond_2

    .line 115
    .line 116
    sget-object p3, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 117
    .line 118
    invoke-virtual {p3, p1, p2}, Lcom/vungle/ads/internal/ConfigManager;->updateConfigExtension$vungle_ads_release(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_2
    if-eqz p4, :cond_3

    .line 122
    .line 123
    const/4 v9, 0x6

    .line 124
    const/4 v10, 0x0

    .line 125
    const/4 v7, 0x0

    .line 126
    const/4 v8, 0x0

    .line 127
    move-object v6, p4

    .line 128
    invoke-static/range {v5 .. v10}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/w;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    sget-object p1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ConfigManager;->shouldDisableAdId()Z

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->updateDisableAdId(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .line 139
    .line 140
    monitor-exit p0

    .line 141
    return-void

    .line 142
    :cond_4
    if-nez p3, :cond_7

    .line 143
    .line 144
    if-eqz p2, :cond_7

    .line 145
    .line 146
    :try_start_2
    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/ConfigPayload;->getConfigLastValidatedTimestamp()Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-eqz p1, :cond_5

    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 153
    .line 154
    .line 155
    move-result-wide p1

    .line 156
    goto :goto_1

    .line 157
    :cond_5
    const-wide/16 p1, -0x1

    .line 158
    .line 159
    :goto_1
    sget-object p3, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 160
    .line 161
    if-nez p3, :cond_6

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p3, p1}, Lcom/vungle/ads/internal/model/ConfigPayload;->setConfigLastValidatedTimestamp(Ljava/lang/Long;)V

    .line 169
    .line 170
    .line 171
    :goto_2
    sget-object p1, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 172
    .line 173
    if-eqz p1, :cond_7

    .line 174
    .line 175
    sget-object p2, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 176
    .line 177
    invoke-static {v1}, Lcom/vungle/ads/internal/ConfigManager;->initWithConfig$lambda-2(Lkotlin/Lazy;)Lcom/vungle/ads/internal/persistence/b;

    .line 178
    .line 179
    .line 180
    move-result-object p3

    .line 181
    invoke-virtual {p2, p1, p3}, Lcom/vungle/ads/internal/ConfigManager;->updateCachedConfig(Lcom/vungle/ads/internal/model/ConfigPayload;Lcom/vungle/ads/internal/persistence/b;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    .line 183
    .line 184
    :cond_7
    monitor-exit p0

    .line 185
    return-void

    .line 186
    :cond_8
    :try_start_3
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 187
    .line 188
    const-string p2, "ConfigManager"

    .line 189
    .line 190
    const-string p3, "Config is not available."

    .line 191
    .line 192
    invoke-virtual {p1, p2, p3}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    .line 194
    .line 195
    monitor-exit p0

    .line 196
    return-void

    .line 197
    :goto_3
    :try_start_4
    sget-object p2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 198
    .line 199
    const-string p3, "ConfigManager"

    .line 200
    .line 201
    new-instance p4, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v0, "Error while validating config: "

    .line 207
    .line 208
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p2, p3, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 223
    .line 224
    .line 225
    monitor-exit p0

    .line 226
    return-void

    .line 227
    :goto_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 228
    throw p1
.end method

.method public final isCleverCacheEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getCleverCache()Lcom/vungle/ads/internal/model/ConfigPayload$c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$c;->getEnabled()Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public final isReportIncentivizedEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->isReportIncentivizedEnabled()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public final otEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getEnableOT()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    :goto_0
    return v0
.end method

.method public final placements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/model/g;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->placements:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final retryPriorityTPATs()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getRetryPriorityTPATs()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public final rtaDebuggingEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getRtaDebugging()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public final setAppId$vungle_ads_release(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "applicationId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/vungle/ads/internal/ConfigManager;->applicationId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final shouldDisableAdId()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getDisableAdId()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    :goto_0
    return v0
.end method

.method public final signalsDisabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getSignalsDisabled()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public final updateCachedConfig(Lcom/vungle/ads/internal/model/ConfigPayload;Lcom/vungle/ads/internal/persistence/b;)V
    .locals 4

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "filePreferences"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    const-string v0, "config_app_id"

    .line 12
    .line 13
    sget-object v1, Lcom/vungle/ads/internal/ConfigManager;->applicationId:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, "applicationId"

    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/b;

    .line 27
    .line 28
    .line 29
    const-string v0, "config_update_time"

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-virtual {p2, v0, v1, v2}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;J)Lcom/vungle/ads/internal/persistence/b;

    .line 36
    .line 37
    .line 38
    const-string v0, "config_response"

    .line 39
    .line 40
    sget-object v1, Lcom/vungle/ads/internal/ConfigManager;->json:Lkotlinx/serialization/json/a;

    .line 41
    .line 42
    invoke-interface {v1}, Lkotlinx/serialization/e;->a()Lty/c;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-class v3, Lcom/vungle/ads/internal/model/ConfigPayload;

    .line 47
    .line 48
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->m(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v2, v3}, Lkotlinx/serialization/h;->b(Lty/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/b;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 57
    .line 58
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, v2, p1}, Lkotlinx/serialization/j;->c(Lkotlinx/serialization/g;Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p2, v0, p1}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/b;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/vungle/ads/internal/persistence/b;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :goto_1
    sget-object p2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v1, "Exception: "

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p1, " for updating cached config"

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-string v0, "ConfigManager"

    .line 101
    .line 102
    invoke-virtual {p2, v0, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    :goto_2
    return-void
.end method

.method public final updateConfigExtension$vungle_ads_release(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ext"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object p2, Lcom/vungle/ads/internal/ConfigManager;->configExt:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 14
    .line 15
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 16
    .line 17
    new-instance v1, Lcom/vungle/ads/internal/ConfigManager$updateConfigExtension$$inlined$inject$1;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/ConfigManager$updateConfigExtension$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/vungle/ads/internal/ConfigManager;->updateConfigExtension$lambda-1(Lkotlin/Lazy;)Lcom/vungle/ads/internal/persistence/b;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "config_extension"

    .line 31
    .line 32
    invoke-virtual {p1, v0, p2}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/b;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/vungle/ads/internal/persistence/b;->apply()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final validateConfig$vungle_ads_release(Lcom/vungle/ads/internal/model/ConfigPayload;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload;->getEndpoints()Lcom/vungle/ads/internal/model/ConfigPayload$f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload;->getEndpoints()Lcom/vungle/ads/internal/model/ConfigPayload$f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/ConfigManager;->validateEndpoints$vungle_ads_release(Lcom/vungle/ads/internal/model/ConfigPayload$f;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload;->getPlacements()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_1
    return p1
.end method

.method public final validateEndpoints$vungle_ads_release(Lcom/vungle/ads/internal/model/ConfigPayload$f;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getAdsEndpoint()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v1, 0x1

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    :goto_1
    new-instance v1, Lcom/vungle/ads/InvalidEndpointError;

    .line 23
    .line 24
    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->INVALID_ADS_ENDPOINT:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 25
    .line 26
    const-string v4, "The ads endpoint was not provided in the config."

    .line 27
    .line 28
    invoke-direct {v1, v3, v4}, Lcom/vungle/ads/InvalidEndpointError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 32
    .line 33
    .line 34
    move v1, v2

    .line 35
    :goto_2
    if-eqz p1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getRiEndpoint()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    goto :goto_3

    .line 42
    :cond_3
    move-object v3, v0

    .line 43
    :goto_3
    if-eqz v3, :cond_4

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_5

    .line 50
    .line 51
    :cond_4
    new-instance v3, Lcom/vungle/ads/InvalidEndpointError;

    .line 52
    .line 53
    sget-object v4, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->INVALID_RI_ENDPOINT:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 54
    .line 55
    const-string v5, "The ri endpoint was not provided in the config."

    .line 56
    .line 57
    invoke-direct {v3, v4, v5}, Lcom/vungle/ads/InvalidEndpointError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 61
    .line 62
    .line 63
    :cond_5
    if-eqz p1, :cond_6

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getMraidEndpoint()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    goto :goto_4

    .line 70
    :cond_6
    move-object v3, v0

    .line 71
    :goto_4
    if-eqz v3, :cond_8

    .line 72
    .line 73
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_7

    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_7
    move v2, v1

    .line 81
    goto :goto_6

    .line 82
    :cond_8
    :goto_5
    new-instance v1, Lcom/vungle/ads/InvalidEndpointError;

    .line 83
    .line 84
    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->MRAID_DOWNLOAD_JS_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 85
    .line 86
    const-string v4, "The mraid endpoint was not provided in the config."

    .line 87
    .line 88
    invoke-direct {v1, v3, v4}, Lcom/vungle/ads/InvalidEndpointError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 92
    .line 93
    .line 94
    :goto_6
    if-eqz p1, :cond_9

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getMetricsEndpoint()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    goto :goto_7

    .line 101
    :cond_9
    move-object v1, v0

    .line 102
    :goto_7
    if-eqz v1, :cond_a

    .line 103
    .line 104
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_b

    .line 109
    .line 110
    :cond_a
    new-instance v1, Lcom/vungle/ads/InvalidEndpointError;

    .line 111
    .line 112
    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->INVALID_METRICS_ENDPOINT:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 113
    .line 114
    const-string v4, "The metrics endpoint was not provided in the config."

    .line 115
    .line 116
    invoke-direct {v1, v3, v4}, Lcom/vungle/ads/InvalidEndpointError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 120
    .line 121
    .line 122
    :cond_b
    if-eqz p1, :cond_c

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getErrorLogsEndpoint()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :cond_c
    if-eqz v0, :cond_d

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-nez p1, :cond_e

    .line 135
    .line 136
    :cond_d
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 137
    .line 138
    const-string v0, "ConfigManager"

    .line 139
    .line 140
    const-string v1, "The error logging endpoint was not provided in the config."

    .line 141
    .line 142
    invoke-virtual {p1, v0, v1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    :cond_e
    return v2
.end method
