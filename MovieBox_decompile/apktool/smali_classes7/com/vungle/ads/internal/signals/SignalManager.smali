.class public final Lcom/vungle/ads/internal/signals/SignalManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/signals/SignalManager$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/signals/SignalManager$a;

.field public static final SESSION_COUNT_KEY:Ljava/lang/String; = "vungle_signal_session_count"

.field private static final SESSION_COUNT_NOT_SET:I = -0x1

.field public static final SESSION_TIME_KEY:Ljava/lang/String; = "vungle_signal_session_creation_time"

.field public static final SIGNAL_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SignalManager"

.field public static final TWENTY_FOUR_HOURS_MILLIS:J = 0x5265c00L


# instance fields
.field private final context:Landroid/content/Context;

.field private currentSession:Lcom/vungle/ads/internal/signals/a;

.field private enterBackgroundTime:J

.field private enterForegroundTime:J

.field private final filePreferences$delegate:Lkotlin/Lazy;

.field private final json:Lkotlinx/serialization/json/a;

.field private mapOfLastLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private sessionCount:I

.field private sessionDuration:J

.field private sessionSeriesCreatedTime:J

.field private unclosedAdDetector:Lcom/vungle/ads/internal/session/UnclosedAdDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/signals/SignalManager$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/signals/SignalManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/signals/SignalManager;->Companion:Lcom/vungle/ads/internal/signals/SignalManager$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

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
    iput-object p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->context:Landroid/content/Context;

    .line 10
    .line 11
    sget-object v0, Lcom/vungle/ads/internal/signals/SignalManager$json$1;->INSTANCE:Lcom/vungle/ads/internal/signals/SignalManager$json$1;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v2, v0, v1, v2}, Lkotlinx/serialization/json/n;->b(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->json:Lkotlinx/serialization/json/a;

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->enterForegroundTime:J

    .line 26
    .line 27
    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->mapOfLastLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 38
    .line 39
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 40
    .line 41
    new-instance v1, Lcom/vungle/ads/internal/signals/SignalManager$special$$inlined$inject$1;

    .line 42
    .line 43
    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/signals/SignalManager$special$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->filePreferences$delegate:Lkotlin/Lazy;

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/vungle/ads/internal/signals/SignalManager;->registerNotifications()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/vungle/ads/internal/signals/SignalManager;->getFilePreferences()Lcom/vungle/ads/internal/persistence/b;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v2, "vungle_signal_session_creation_time"

    .line 60
    .line 61
    const-wide/16 v3, -0x1

    .line 62
    .line 63
    invoke-virtual {v1, v2, v3, v4}, Lcom/vungle/ads/internal/persistence/b;->getLong(Ljava/lang/String;J)J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    iput-wide v1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionSeriesCreatedTime:J

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/vungle/ads/internal/signals/SignalManager;->updateSessionCount()V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lcom/vungle/ads/internal/signals/a;

    .line 73
    .line 74
    iget v2, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    .line 75
    .line 76
    invoke-direct {v1, v2}, Lcom/vungle/ads/internal/signals/a;-><init>(I)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    .line 80
    .line 81
    new-instance v1, Lcom/vungle/ads/internal/signals/SignalManager$special$$inlined$inject$2;

    .line 82
    .line 83
    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/signals/SignalManager$special$$inlined$inject$2;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v2, Lcom/vungle/ads/internal/signals/SignalManager$special$$inlined$inject$3;

    .line 91
    .line 92
    invoke-direct {v2, p1}, Lcom/vungle/ads/internal/signals/SignalManager$special$$inlined$inject$3;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v2, Lcom/vungle/ads/internal/session/UnclosedAdDetector;

    .line 100
    .line 101
    iget-object v3, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    .line 102
    .line 103
    invoke-virtual {v3}, Lcom/vungle/ads/internal/signals/a;->getSessionId()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-static {v1}, Lcom/vungle/ads/internal/signals/SignalManager;->_init_$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v0}, Lcom/vungle/ads/internal/signals/SignalManager;->_init_$lambda-1(Lkotlin/Lazy;)Lcom/vungle/ads/internal/util/p;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-direct {v2, p1, v3, v1, v0}, Lcom/vungle/ads/internal/session/UnclosedAdDetector;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/internal/executor/a;Lcom/vungle/ads/internal/util/p;)V

    .line 116
    .line 117
    .line 118
    iput-object v2, p0, Lcom/vungle/ads/internal/signals/SignalManager;->unclosedAdDetector:Lcom/vungle/ads/internal/session/UnclosedAdDetector;

    .line 119
    .line 120
    iget-object p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/vungle/ads/internal/session/UnclosedAdDetector;->retrieveUnclosedAd()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/signals/a;->setUnclosedAd(Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method private static final _init_$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;
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

.method private static final _init_$lambda-1(Lkotlin/Lazy;)Lcom/vungle/ads/internal/util/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/util/p;",
            ">;)",
            "Lcom/vungle/ads/internal/util/p;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/util/p;

    .line 6
    .line 7
    return-object p0
.end method

.method public static synthetic getCurrentSession$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final registerNotifications()V
    .locals 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/a;->Companion:Lcom/vungle/ads/internal/util/a$a;

    .line 2
    .line 3
    new-instance v1, Lcom/vungle/ads/internal/signals/SignalManager$b;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/signals/SignalManager$b;-><init>(Lcom/vungle/ads/internal/signals/SignalManager;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/a$a;->addLifecycleListener(Lcom/vungle/ads/internal/util/a$b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final updateSessionCount()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "vungle_signal_session_count"

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/vungle/ads/internal/signals/SignalManager;->getFilePreferences()Lcom/vungle/ads/internal/persistence/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/vungle/ads/internal/persistence/b;->getInt(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    .line 18
    .line 19
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-wide v3, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionSeriesCreatedTime:J

    .line 24
    .line 25
    sub-long v5, v0, v3

    .line 26
    .line 27
    const-wide/16 v7, 0x0

    .line 28
    .line 29
    cmp-long v3, v3, v7

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    if-ltz v3, :cond_2

    .line 33
    .line 34
    const-wide/32 v7, 0x5265c00

    .line 35
    .line 36
    .line 37
    cmp-long v3, v5, v7

    .line 38
    .line 39
    if-ltz v3, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    .line 43
    .line 44
    add-int/2addr v0, v4

    .line 45
    iput v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    iput v4, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/vungle/ads/internal/signals/SignalManager;->getFilePreferences()Lcom/vungle/ads/internal/persistence/b;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-string v4, "vungle_signal_session_creation_time"

    .line 55
    .line 56
    invoke-virtual {v3, v4, v0, v1}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;J)Lcom/vungle/ads/internal/persistence/b;

    .line 57
    .line 58
    .line 59
    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionSeriesCreatedTime:J

    .line 60
    .line 61
    :goto_1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/signals/SignalManager;->getFilePreferences()Lcom/vungle/ads/internal/persistence/b;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget v1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;I)Lcom/vungle/ads/internal/persistence/b;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/vungle/ads/internal/signals/SignalManager;->getFilePreferences()Lcom/vungle/ads/internal/persistence/b;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/vungle/ads/internal/persistence/b;->apply()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private final updateSessionDuration()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionDuration:J

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    add-long/2addr v1, v3

    .line 10
    iget-wide v3, p0, Lcom/vungle/ads/internal/signals/SignalManager;->enterForegroundTime:J

    .line 11
    .line 12
    sub-long/2addr v1, v3

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/signals/a;->setSessionDuration(J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final createNewSessionData()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/signals/SignalManager;->updateSessionCount()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/vungle/ads/internal/signals/a;

    .line 5
    .line 6
    iget v1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/signals/a;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    .line 12
    .line 13
    return-void
.end method

.method public final generateSignals()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/signals/SignalManager;->updateSessionDuration()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "1:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/vungle/ads/internal/signals/SignalManager;->json:Lkotlinx/serialization/json/a;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    .line 18
    .line 19
    invoke-interface {v2}, Lkotlinx/serialization/e;->a()Lty/c;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-class v5, Lcom/vungle/ads/internal/signals/a;

    .line 24
    .line 25
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->m(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {v4, v5}, Lkotlinx/serialization/h;->b(Lty/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/b;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v5, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 34
    .line 35
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v2, v4, v3}, Lkotlinx/serialization/j;->c(Lkotlinx/serialization/g;Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :catch_0
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentSession$vungle_ads_release()Lcom/vungle/ads/internal/signals/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEnterBackgroundTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->enterBackgroundTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getEnterForegroundTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->enterForegroundTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getFilePreferences()Lcom/vungle/ads/internal/persistence/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->filePreferences$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/vungle/ads/internal/persistence/b;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getMapOfLastLoadTimes()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->mapOfLastLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSessionCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSessionDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSessionSeriesCreatedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionSeriesCreatedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final declared-synchronized getSignaledAd(Ljava/lang/String;)Lcom/vungle/ads/internal/signals/b;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "placementId"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-object v2, p0, Lcom/vungle/ads/internal/signals/SignalManager;->mapOfLastLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/vungle/ads/internal/signals/SignalManager;->mapOfLastLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/Long;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v2, 0x0

    .line 31
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v4, p0, Lcom/vungle/ads/internal/signals/SignalManager;->mapOfLastLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    new-instance p1, Lcom/vungle/ads/internal/signals/b;

    .line 41
    .line 42
    invoke-direct {p1, v2, v0, v1}, Lcom/vungle/ads/internal/signals/b;-><init>(Ljava/lang/Long;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-object p1

    .line 47
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p1
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/signals/a;->getSessionId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final declared-synchronized increaseSessionDepthCounter()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/vungle/ads/internal/signals/a;->getSessionDepthCounter()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/signals/a;->setSessionDepthCounter(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw v0
.end method

.method public final recordUnclosedAd(Lcom/vungle/ads/internal/model/j;)V
    .locals 1

    .line 1
    const-string v0, "unclosedAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ConfigManager;->signalsDisabled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->unclosedAdDetector:Lcom/vungle/ads/internal/session/UnclosedAdDetector;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/session/UnclosedAdDetector;->addUnclosedAd(Lcom/vungle/ads/internal/model/j;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final registerSignaledAd(Landroid/content/Context;Lcom/vungle/ads/internal/signals/b;)V
    .locals 1

    .line 1
    const-string v0, "signaledAd"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/vungle/ads/internal/signals/a;->getSignaledAd()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/vungle/ads/internal/signals/a;->getSignaledAd()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/vungle/ads/internal/signals/a;->getSignaledAd()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lcom/vungle/ads/internal/signals/b;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/signals/SignalManager;->screenOrientation(Landroid/content/Context;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {p2, p1}, Lcom/vungle/ads/internal/signals/b;->setScreenOrientation(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final removeUnclosedAd(Lcom/vungle/ads/internal/model/j;)V
    .locals 1

    .line 1
    const-string v0, "unclosedAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ConfigManager;->signalsDisabled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->unclosedAdDetector:Lcom/vungle/ads/internal/session/UnclosedAdDetector;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/session/UnclosedAdDetector;->removeUnclosedAd(Lcom/vungle/ads/internal/model/j;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final screenOrientation(Landroid/content/Context;)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->context:Landroid/content/Context;

    .line 4
    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    :goto_0
    if-nez p1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x2

    .line 33
    if-ne v0, v1, :cond_3

    .line 34
    .line 35
    goto :goto_4

    .line 36
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v1, 0x1

    .line 44
    if-ne v0, v1, :cond_5

    .line 45
    .line 46
    goto :goto_4

    .line 47
    :cond_5
    :goto_2
    if-nez p1, :cond_6

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_7

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    goto :goto_4

    .line 58
    :cond_7
    :goto_3
    const/4 v1, -0x1

    .line 59
    :goto_4
    return v1
.end method

.method public final setCurrentSession$vungle_ads_release(Lcom/vungle/ads/internal/signals/a;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    .line 7
    .line 8
    return-void
.end method

.method public final setEnterBackgroundTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->enterBackgroundTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setEnterForegroundTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->enterForegroundTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setMapOfLastLoadTimes(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->mapOfLastLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public final setSessionCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSessionDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionDuration:J

    .line 2
    .line 3
    return-void
.end method

.method public final setSessionSeriesCreatedTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionSeriesCreatedTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final updateTemplateSignals(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/vungle/ads/internal/signals/a;->getSignaledAd()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/Collection;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/vungle/ads/internal/signals/a;->getSignaledAd()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/vungle/ads/internal/signals/b;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/signals/b;->setTemplateSignals(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method
