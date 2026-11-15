.class public final Lio/appmetrica/analytics/impl/nc;
.super Lio/appmetrica/analytics/impl/T2;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Pa;


# static fields
.field public static final r:Ljava/lang/Long;


# instance fields
.field public final o:Lio/appmetrica/analytics/impl/bn;

.field public final p:Lio/appmetrica/analytics/impl/yc;

.field public final q:Lio/appmetrica/analytics/impl/oc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/impl/nc;->r:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/yc;)V
    .locals 11

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/yc;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/yc;->i()Lio/appmetrica/analytics/impl/ni;

    move-result-object v2

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/yc;->h()Lio/appmetrica/analytics/impl/xh;

    move-result-object v3

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/yc;->d()Lio/appmetrica/analytics/impl/T9;

    move-result-object v4

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/yc;->f()Lio/appmetrica/analytics/impl/lc;

    move-result-object v5

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/yc;->j()Lio/appmetrica/analytics/impl/on;

    move-result-object v6

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/yc;->g()Lio/appmetrica/analytics/impl/tg;

    move-result-object v7

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/yc;->c()Lio/appmetrica/analytics/impl/C6;

    move-result-object v8

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/yc;->a()Lio/appmetrica/analytics/impl/X;

    move-result-object v9

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/yc;->e()Lio/appmetrica/analytics/impl/ye;

    move-result-object v10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lio/appmetrica/analytics/impl/T2;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/xh;Lio/appmetrica/analytics/impl/T9;Lio/appmetrica/analytics/impl/lc;Lio/appmetrica/analytics/impl/on;Lio/appmetrica/analytics/impl/tg;Lio/appmetrica/analytics/impl/C6;Lio/appmetrica/analytics/impl/X;Lio/appmetrica/analytics/impl/ye;)V

    new-instance v0, Lio/appmetrica/analytics/impl/bn;

    new-instance v1, Lio/appmetrica/analytics/impl/Rd;

    const-string v2, "Referral url"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Rd;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/nc;->o:Lio/appmetrica/analytics/impl/bn;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/nc;->p:Lio/appmetrica/analytics/impl/yc;

    new-instance p1, Lio/appmetrica/analytics/impl/oc;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/oc;-><init>(Lio/appmetrica/analytics/impl/a0;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/nc;->q:Lio/appmetrica/analytics/impl/oc;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/nc;->l()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    iget-object v0, p0, Lio/appmetrica/analytics/impl/nc;->p:Lio/appmetrica/analytics/impl/yc;

    .line 18
    iget-object v0, v0, Lio/appmetrica/analytics/impl/yc;->h:Lio/appmetrica/analytics/impl/r;

    .line 19
    sget-object v1, Lio/appmetrica/analytics/impl/q;->a:Lio/appmetrica/analytics/impl/q;

    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/r;->a(Landroid/app/Activity;Lio/appmetrica/analytics/impl/q;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Resume session"

    invoke-virtual {v0, v3, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/T2;->d(Ljava/lang/String;)V

    .line 23
    iget-object p0, p0, Lio/appmetrica/analytics/impl/nc;->p:Lio/appmetrica/analytics/impl/yc;

    .line 24
    iget-object p0, p0, Lio/appmetrica/analytics/impl/yc;->f:Lio/appmetrica/analytics/impl/i2;

    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/i2;->a:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/h2;

    .line 27
    iget-boolean v2, v0, Lio/appmetrica/analytics/impl/h2;->d:Z

    if-eqz v2, :cond_1

    .line 28
    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/h2;->d:Z

    .line 29
    iget-object v2, v0, Lio/appmetrica/analytics/impl/h2;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/h2;->e:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->remove(Ljava/lang/Runnable;)V

    .line 30
    iget-object v0, v0, Lio/appmetrica/analytics/impl/h2;->a:Lio/appmetrica/analytics/impl/mc;

    .line 31
    iget-object v0, v0, Lio/appmetrica/analytics/impl/mc;->a:Lio/appmetrica/analytics/impl/nc;

    .line 32
    iget-object v2, v0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 33
    iget-object v0, v0, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    .line 34
    iget-object v2, v2, Lio/appmetrica/analytics/impl/ni;->c:Lio/appmetrica/analytics/impl/oi;

    .line 35
    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/impl/oi;->b(Lio/appmetrica/analytics/impl/pf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 36
    :cond_2
    monitor-exit p0

    goto :goto_3

    .line 37
    :goto_2
    monitor-exit p0

    throw p1

    :cond_3
    :goto_3
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 1
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 77
    iget-object v0, v0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 78
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setManualLocation(Landroid/location/Location;)V

    .line 79
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Set location: %s"

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/AnrListener;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/AnrListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    iget-object p0, p0, Lio/appmetrica/analytics/impl/nc;->q:Lio/appmetrica/analytics/impl/oc;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/oc;->a(Lio/appmetrica/analytics/AnrListener;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/AppMetricaConfig;Z)V
    .locals 9

    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/T2;->clearAppEnvironment()V

    .line 39
    :cond_0
    iget-object p2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->appEnvironment:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/T2;->a(Ljava/util/Map;)V

    .line 40
    iget-object p2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->errorEnvironment:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/T2;->b(Ljava/util/Map;)V

    .line 41
    iget-object p2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    .line 42
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 43
    invoke-static {p2, v0}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 44
    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, "native crash reporting enabled: %b"

    invoke-virtual {v1, v2, p2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    .line 45
    iget-object p2, p0, Lio/appmetrica/analytics/impl/nc;->p:Lio/appmetrica/analytics/impl/yc;

    .line 46
    iget-object p2, p2, Lio/appmetrica/analytics/impl/yc;->c:Lio/appmetrica/analytics/impl/Ad;

    .line 47
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->a:Landroid/content/Context;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 48
    iget-object v1, v1, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 49
    invoke-virtual {v1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 50
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/xh;->d()Ljava/lang/String;

    move-result-object v8

    .line 51
    new-instance v1, Lio/appmetrica/analytics/impl/z0;

    .line 52
    iget-object v2, p2, Lio/appmetrica/analytics/impl/Ad;->a:Lio/appmetrica/analytics/impl/pf;

    .line 53
    iget-object v2, v2, Lio/appmetrica/analytics/impl/pf;->a:Landroid/content/ContentValues;

    .line 54
    const-string v4, "PROCESS_CFG_PACKAGE_NAME"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    sget-object v5, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->MAIN:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    .line 56
    iget-object v2, p2, Lio/appmetrica/analytics/impl/Ad;->a:Lio/appmetrica/analytics/impl/pf;

    .line 57
    iget-object v2, v2, Lio/appmetrica/analytics/impl/pf;->a:Landroid/content/ContentValues;

    .line 58
    const-string v6, "PROCESS_CFG_PROCESS_ID"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 60
    iget-object v2, p2, Lio/appmetrica/analytics/impl/Ad;->a:Lio/appmetrica/analytics/impl/pf;

    .line 61
    iget-object v2, v2, Lio/appmetrica/analytics/impl/pf;->a:Landroid/content/ContentValues;

    .line 62
    const-string v7, "PROCESS_CFG_PROCESS_SESSION_ID"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    .line 63
    invoke-direct/range {v2 .. v8}, Lio/appmetrica/analytics/impl/z0;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p2, Lio/appmetrica/analytics/impl/Ad;->d:Lio/appmetrica/analytics/impl/z0;

    .line 64
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getNativeCrashDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    goto :goto_2

    .line 65
    :cond_2
    iget-object v3, p2, Lio/appmetrica/analytics/impl/Ad;->b:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientModule;

    .line 66
    new-instance v4, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientConfig;

    .line 67
    iget-object v5, p2, Lio/appmetrica/analytics/impl/Ad;->c:Lio/appmetrica/analytics/impl/A0;

    iget-object p2, p2, Lio/appmetrica/analytics/impl/Ad;->d:Lio/appmetrica/analytics/impl/z0;

    if-nez p2, :cond_3

    const-string p2, "nativeCrashMetadata"

    invoke-static {p2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, p2

    :goto_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lio/appmetrica/analytics/impl/A0;->a(Lio/appmetrica/analytics/impl/z0;)Ljava/lang/String;

    move-result-object p2

    .line 68
    invoke-direct {v4, v1, p2}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3, v0, v4}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientModule;->initHandling(Landroid/content/Context;Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientConfig;)V

    .line 70
    :cond_4
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/nc;->q:Lio/appmetrica/analytics/impl/oc;

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object p2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->anrMonitoringTimeout:Ljava/lang/Integer;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_5
    const/4 p2, 0x5

    :goto_3
    iput p2, p0, Lio/appmetrica/analytics/impl/oc;->a:I

    .line 72
    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->anrMonitoring:Ljava/lang/Boolean;

    if-nez p1, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 73
    iget-object p1, p0, Lio/appmetrica/analytics/impl/oc;->b:Lio/appmetrica/analytics/impl/e;

    iget p2, p0, Lio/appmetrica/analytics/impl/oc;->a:I

    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/impl/e;->a(I)V

    goto :goto_4

    .line 74
    :cond_7
    iget-object p1, p0, Lio/appmetrica/analytics/impl/oc;->b:Lio/appmetrica/analytics/impl/e;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/e;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    monitor-exit p0

    return-void

    .line 75
    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/ExternalAttribution;)V
    .locals 5
    .param p1    # Lio/appmetrica/analytics/ExternalAttribution;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "External attribution received: %s"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    .line 94
    invoke-interface {p1}, Lio/appmetrica/analytics/ExternalAttribution;->toBytes()[B

    move-result-object p1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    sget-object v2, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    .line 95
    new-instance v2, Lio/appmetrica/analytics/impl/e4;

    sget-object v3, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const/16 v3, 0x2a

    .line 96
    const-string v4, ""

    invoke-direct {v2, p1, v4, v3, v1}, Lio/appmetrica/analytics/impl/e4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 97
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    invoke-static {v2, p0}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 100
    invoke-virtual {v0, p1, p0, v2, v1}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/do;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 84
    monitor-enter p1

    .line 85
    :try_start_0
    iput-object p0, p1, Lio/appmetrica/analytics/impl/do;->b:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 86
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v0, p1, Lio/appmetrica/analytics/impl/do;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;

    .line 88
    invoke-interface {v1, p0}, Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;->consume(Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p0, p1, Lio/appmetrica/analytics/impl/do;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_0
    move-exception p0

    .line 90
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/o;)V
    .locals 3
    .param p1    # Lio/appmetrica/analytics/impl/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    sget-object v0, Lio/appmetrica/analytics/impl/o;->b:Lio/appmetrica/analytics/impl/o;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 15
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Enable activity auto tracking"

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not enable activity auto tracking. "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lio/appmetrica/analytics/impl/o;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 101
    invoke-super {p0, p1, p2}, Lio/appmetrica/analytics/impl/T2;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lio/appmetrica/analytics/impl/nc;->p:Lio/appmetrica/analytics/impl/yc;

    .line 103
    iget-object p1, p1, Lio/appmetrica/analytics/impl/yc;->c:Lio/appmetrica/analytics/impl/Ad;

    .line 104
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 105
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/xh;->d()Ljava/lang/String;

    move-result-object v6

    .line 106
    iget-object p0, p1, Lio/appmetrica/analytics/impl/Ad;->d:Lio/appmetrica/analytics/impl/z0;

    if-eqz p0, :cond_0

    .line 107
    iget-object v1, p0, Lio/appmetrica/analytics/impl/z0;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/z0;->b:Ljava/lang/String;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/z0;->c:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    iget v4, p0, Lio/appmetrica/analytics/impl/z0;->d:I

    iget-object v5, p0, Lio/appmetrica/analytics/impl/z0;->e:Ljava/lang/String;

    .line 108
    new-instance p0, Lio/appmetrica/analytics/impl/z0;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/z0;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-object p0, p1, Lio/appmetrica/analytics/impl/Ad;->d:Lio/appmetrica/analytics/impl/z0;

    .line 110
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Ad;->b:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientModule;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ad;->c:Lio/appmetrica/analytics/impl/A0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/A0;->a(Lio/appmetrica/analytics/impl/z0;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientModule;->updateAppMetricaMetadata(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "App opened via deeplink: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 3
    sget-object v1, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    const-string v2, "type"

    const-string v3, "open"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string v2, "link"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "auto"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p1, Lio/appmetrica/analytics/impl/e4;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/mb;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    sget-object p2, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const/16 v4, 0x2010

    const/4 v5, 0x0

    .line 9
    const-string v3, ""

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/e4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 10
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {p1, p0}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, p1, p0, v1, p2}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 80
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 81
    iget-object p0, p0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 82
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setLocationTracking(Z)V

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/nc;->p:Lio/appmetrica/analytics/impl/yc;

    .line 15
    iget-object v0, v0, Lio/appmetrica/analytics/impl/yc;->h:Lio/appmetrica/analytics/impl/r;

    .line 16
    sget-object v1, Lio/appmetrica/analytics/impl/q;->b:Lio/appmetrica/analytics/impl/q;

    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/r;->a(Landroid/app/Activity;Lio/appmetrica/analytics/impl/q;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Pause session"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/T2;->c(Ljava/lang/String;)V

    .line 20
    iget-object p0, p0, Lio/appmetrica/analytics/impl/nc;->p:Lio/appmetrica/analytics/impl/yc;

    .line 21
    iget-object p0, p0, Lio/appmetrica/analytics/impl/yc;->f:Lio/appmetrica/analytics/impl/i2;

    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/i2;->a:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/h2;

    .line 24
    iget-boolean v1, v0, Lio/appmetrica/analytics/impl/h2;->d:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 25
    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/h2;->d:Z

    .line 26
    iget-object v1, v0, Lio/appmetrica/analytics/impl/h2;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/h2;->e:Ljava/lang/Runnable;

    iget-wide v3, v0, Lio/appmetrica/analytics/impl/h2;->c:J

    invoke-interface {v1, v2, v3, v4}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 27
    :cond_2
    monitor-exit p0

    goto :goto_3

    .line 28
    :goto_2
    monitor-exit p0

    throw p1

    :cond_3
    :goto_3
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/nc;->o:Lio/appmetrica/analytics/impl/bn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 3
    sget-object v1, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    const-string v2, "type"

    const-string v3, "referral"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string v2, "link"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "auto"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v7, Lio/appmetrica/analytics/impl/e4;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/mb;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const/16 v4, 0x2010

    const/4 v5, 0x0

    .line 9
    const-string v3, ""

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/e4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 10
    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {v7, v1}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 12
    invoke-virtual {v0, v2, v1, v4, v3}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xh;ILjava/util/Map;)V

    .line 13
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Referral URL received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Z)V
    .locals 3

    .line 29
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Set advIdentifiersTracking to %s"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    .line 31
    iget-object p0, p0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 32
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setAdvIdentifiersTracking(Z)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/nc;->q:Lio/appmetrica/analytics/impl/oc;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oc;->b:Lio/appmetrica/analytics/impl/e;

    iget v1, p0, Lio/appmetrica/analytics/impl/oc;->a:I

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/e;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/pf;->b()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    const-string p0, "[MainReporter]"

    return-object p0
.end method

.method public final k()V
    .locals 0

    invoke-super {p0}, Lio/appmetrica/analytics/impl/T2;->k()V

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/t4;->k()Lio/appmetrica/analytics/impl/q4;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/q4;->b()V

    return-void
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/ni;->c:Lio/appmetrica/analytics/impl/oi;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/oi;->a(Lio/appmetrica/analytics/impl/pf;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nc;->p:Lio/appmetrica/analytics/impl/yc;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/yc;->f:Lio/appmetrica/analytics/impl/i2;

    new-instance v1, Lio/appmetrica/analytics/impl/mc;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/mc;-><init>(Lio/appmetrica/analytics/impl/nc;)V

    sget-object p0, Lio/appmetrica/analytics/impl/nc;->r:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/i2;->a(Lio/appmetrica/analytics/impl/mc;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
