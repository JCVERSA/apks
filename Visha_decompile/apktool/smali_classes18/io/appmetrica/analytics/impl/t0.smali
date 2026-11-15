.class public final Lio/appmetrica/analytics/impl/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ja;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/Ia;

.field public final c:Lio/appmetrica/analytics/impl/Ke;

.field public final d:Lio/appmetrica/analytics/impl/ql;

.field public final e:Lio/appmetrica/analytics/impl/Yf;

.field public final f:Lio/appmetrica/analytics/impl/pf;

.field public final g:Lio/appmetrica/analytics/impl/bi;

.field public final h:Lio/appmetrica/analytics/impl/ni;

.field public final i:Lio/appmetrica/analytics/impl/L7;

.field public final j:Lio/appmetrica/analytics/impl/Ak;

.field public volatile k:Lio/appmetrica/analytics/impl/pc;

.field public final l:Lio/appmetrica/analytics/impl/f0;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ia;)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/t0;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/t0;->b:Lio/appmetrica/analytics/impl/Ia;

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/t4;->b(Landroid/content/Context;)Lio/appmetrica/analytics/impl/Ke;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/t0;->c:Lio/appmetrica/analytics/impl/Ke;

    invoke-static {}, Lio/appmetrica/analytics/impl/sd;->a()V

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/t4;->k()Lio/appmetrica/analytics/impl/q4;

    move-result-object v2

    new-instance v3, Lio/appmetrica/analytics/impl/c4;

    invoke-direct {v3, p1}, Lio/appmetrica/analytics/impl/c4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/q4;->a(Lio/appmetrica/analytics/impl/S5;)V

    invoke-interface {p2}, Lio/appmetrica/analytics/impl/Ia;->b()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, p0}, Lio/appmetrica/analytics/impl/u0;->a(Landroid/os/Handler;Lio/appmetrica/analytics/impl/t0;)Lio/appmetrica/analytics/impl/I6;

    move-result-object v2

    invoke-static {p1, v2}, Lio/appmetrica/analytics/impl/u0;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/I6;)Lio/appmetrica/analytics/impl/pf;

    move-result-object v2

    iput-object v2, p0, Lio/appmetrica/analytics/impl/t0;->f:Lio/appmetrica/analytics/impl/pf;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/t4;->g()Lio/appmetrica/analytics/impl/L7;

    move-result-object v3

    iput-object v3, p0, Lio/appmetrica/analytics/impl/t0;->i:Lio/appmetrica/analytics/impl/L7;

    invoke-interface {p2}, Lio/appmetrica/analytics/impl/Ia;->getDefaultExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    move-result-object v4

    invoke-static {v2, p1, v4}, Lio/appmetrica/analytics/impl/u0;->a(Lio/appmetrica/analytics/impl/pf;Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)Lio/appmetrica/analytics/impl/ni;

    move-result-object v4

    iput-object v4, p0, Lio/appmetrica/analytics/impl/t0;->h:Lio/appmetrica/analytics/impl/ni;

    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/impl/L7;->a(Lio/appmetrica/analytics/impl/ni;)V

    invoke-interface {p2}, Lio/appmetrica/analytics/impl/Ia;->b()Landroid/os/Handler;

    move-result-object v3

    invoke-static {p1, v4, v0, v3}, Lio/appmetrica/analytics/impl/u0;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/Ke;Landroid/os/Handler;)Lio/appmetrica/analytics/impl/ql;

    move-result-object v3

    iput-object v3, p0, Lio/appmetrica/analytics/impl/t0;->d:Lio/appmetrica/analytics/impl/ql;

    invoke-virtual {v4, v3}, Lio/appmetrica/analytics/impl/ni;->a(Lio/appmetrica/analytics/impl/ql;)V

    invoke-interface {p2}, Lio/appmetrica/analytics/impl/Ia;->b()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lio/appmetrica/analytics/impl/u0;->a(Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/Ke;Landroid/os/Handler;)Lio/appmetrica/analytics/impl/Yf;

    move-result-object v5

    iput-object v5, p0, Lio/appmetrica/analytics/impl/t0;->e:Lio/appmetrica/analytics/impl/Yf;

    invoke-interface {p2}, Lio/appmetrica/analytics/impl/Ia;->b()Landroid/os/Handler;

    move-result-object p2

    invoke-static {p1, v2, v4, p2, v3}, Lio/appmetrica/analytics/impl/u0;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/impl/ni;Landroid/os/Handler;Lio/appmetrica/analytics/impl/ql;)Lio/appmetrica/analytics/impl/bi;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/t0;->g:Lio/appmetrica/analytics/impl/bi;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/t4;->m()Lio/appmetrica/analytics/impl/Ak;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/t0;->j:Lio/appmetrica/analytics/impl/Ak;

    new-instance p1, Lio/appmetrica/analytics/impl/f0;

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/f0;-><init>(Lio/appmetrica/analytics/impl/Ke;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/t0;->l:Lio/appmetrica/analytics/impl/f0;

    return-void
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/impl/t0;)Lio/appmetrica/analytics/impl/L7;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/t0;->i:Lio/appmetrica/analytics/impl/L7;

    return-object p0
.end method

.method public static final synthetic b(Lio/appmetrica/analytics/impl/t0;)Lio/appmetrica/analytics/impl/bi;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/t0;->g:Lio/appmetrica/analytics/impl/bi;

    return-object p0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Za;
    .locals 0

    .line 105
    iget-object p0, p0, Lio/appmetrica/analytics/impl/t0;->g:Lio/appmetrica/analytics/impl/bi;

    return-object p0
.end method

.method public final a(ILandroid/os/Bundle;)V
    .locals 0
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 35
    iget-object p0, p0, Lio/appmetrica/analytics/impl/t0;->d:Lio/appmetrica/analytics/impl/ql;

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/impl/ql;->b(Landroid/os/Bundle;Lio/appmetrica/analytics/StartupParamsCallback;)V

    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 102
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/t0;->j()Lio/appmetrica/analytics/impl/Pa;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Pa;->a(Landroid/location/Location;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreateMainPublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v0

    .line 3
    new-instance v1, Lio/appmetrica/analytics/impl/r0;

    invoke-direct {v1, p0, p1, v0}, Lio/appmetrica/analytics/impl/r0;-><init>(Lio/appmetrica/analytics/impl/t0;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Lio/appmetrica/analytics/impl/t0;->a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/Cc;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 5
    iget-boolean v4, p0, Lio/appmetrica/analytics/impl/t0;->m:Z

    if-nez v4, :cond_0

    .line 6
    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/t0;->a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-nez v1, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "AppMetrica SDK already has been activated"

    invoke-virtual {v0, v6, v5}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t0;->c:Lio/appmetrica/analytics/impl/Ke;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Ke;->a(Lio/appmetrica/analytics/AppMetricaConfig;)V

    :goto_2
    const-string v0, "AppMetrica"

    if-eqz v1, :cond_3

    .line 9
    sget-object v1, Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Activate AppMetrica with APIKey "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-static {v6}, Lio/appmetrica/analytics/coreutils/internal/ApiKeyUtils;->createPartialApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v1, v0, v5, v6}, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-eqz v4, :cond_4

    .line 12
    sget-object v1, Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Upgrade AppMetrica anonymous mode to normal with APIKey "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/ApiKeyUtils;->createPartialApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v1, v0, p1, v3}, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_4
    iput-boolean v2, p0, Lio/appmetrica/analytics/impl/t0;->m:Z

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 5

    .line 62
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->logs:Ljava/lang/Boolean;

    .line 63
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p2, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->setEnabled(Z)V

    .line 65
    sget-object v3, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->Companion:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;

    invoke-virtual {v3}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->setEnabled(Z)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p2, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->setEnabled(Z)V

    .line 67
    sget-object v0, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->Companion:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;

    invoke-virtual {v0}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->setEnabled(Z)V

    .line 68
    :goto_0
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    .line 69
    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t0;->b:Lio/appmetrica/analytics/impl/Ia;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Ia;->d()Lio/appmetrica/analytics/impl/qb;

    move-result-object v0

    .line 71
    iget-object v3, p0, Lio/appmetrica/analytics/impl/t0;->a:Landroid/content/Context;

    .line 72
    invoke-virtual {v0, v3, p1, p0}, Lio/appmetrica/analytics/impl/qb;->a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/ab;)V

    .line 73
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t0;->b:Lio/appmetrica/analytics/impl/Ia;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Ia;->d()Lio/appmetrica/analytics/impl/qb;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/qb;->b()V

    .line 74
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Register application crash handler"

    invoke-virtual {p2, v3, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 75
    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t0;->b:Lio/appmetrica/analytics/impl/Ia;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Ia;->d()Lio/appmetrica/analytics/impl/qb;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/qb;->a()V

    .line 76
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Disable all crash handlers"

    invoke-virtual {p2, v3, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :goto_1
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t0;->j:Lio/appmetrica/analytics/impl/Ak;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ak;->a()Lio/appmetrica/analytics/impl/o;

    goto :goto_3

    .line 79
    :cond_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t0;->j:Lio/appmetrica/analytics/impl/Ak;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-boolean v1, v0, Lio/appmetrica/analytics/impl/Ak;->g:Z

    if-eqz v1, :cond_3

    .line 81
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Ak;->a:Lio/appmetrica/analytics/impl/p;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/Ak;->c:Lio/appmetrica/analytics/impl/n;

    sget-object v4, Lio/appmetrica/analytics/impl/m;->b:Lio/appmetrica/analytics/impl/m;

    filled-new-array {v4}, [Lio/appmetrica/analytics/impl/m;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lio/appmetrica/analytics/impl/p;->b(Lio/appmetrica/analytics/impl/n;[Lio/appmetrica/analytics/impl/m;)V

    .line 82
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Ak;->a:Lio/appmetrica/analytics/impl/p;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/Ak;->d:Lio/appmetrica/analytics/impl/n;

    sget-object v4, Lio/appmetrica/analytics/impl/m;->c:Lio/appmetrica/analytics/impl/m;

    filled-new-array {v4}, [Lio/appmetrica/analytics/impl/m;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lio/appmetrica/analytics/impl/p;->b(Lio/appmetrica/analytics/impl/n;[Lio/appmetrica/analytics/impl/m;)V

    .line 83
    iput-boolean v2, v0, Lio/appmetrica/analytics/impl/Ak;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    .line 84
    :cond_3
    :goto_2
    monitor-exit v0

    .line 85
    :goto_3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t0;->f:Lio/appmetrica/analytics/impl/pf;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/pf;->d(Lio/appmetrica/analytics/AppMetricaConfig;)V

    .line 86
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t0;->d:Lio/appmetrica/analytics/impl/ql;

    .line 87
    iput-object p2, v0, Lio/appmetrica/analytics/impl/ql;->e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 88
    iget-object p2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->customHosts:Ljava/util/List;

    invoke-virtual {v0, p2}, Lio/appmetrica/analytics/impl/ql;->b(Ljava/util/List;)V

    .line 89
    iget-object p2, p0, Lio/appmetrica/analytics/impl/t0;->d:Lio/appmetrica/analytics/impl/ql;

    .line 90
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->additionalConfig:Ljava/util/Map;

    const-string v1, "YMM_clids"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/Map;

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    .line 91
    :goto_4
    invoke-virtual {p2, v0}, Lio/appmetrica/analytics/impl/ql;->a(Ljava/util/Map;)V

    .line 92
    iget-object p2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->additionalConfig:Ljava/util/Map;

    const-string v0, "YMM_distributionReferrer"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t0;->d:Lio/appmetrica/analytics/impl/ql;

    invoke-virtual {v0, p2}, Lio/appmetrica/analytics/impl/ql;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 94
    iget-object p2, p0, Lio/appmetrica/analytics/impl/t0;->d:Lio/appmetrica/analytics/impl/ql;

    const-string v0, "api"

    invoke-virtual {p2, v0}, Lio/appmetrica/analytics/impl/ql;->b(Ljava/lang/String;)V

    .line 95
    :cond_5
    iget-object p2, p0, Lio/appmetrica/analytics/impl/t0;->h:Lio/appmetrica/analytics/impl/ni;

    .line 96
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    .line 97
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->dataSendingEnabled:Ljava/lang/Boolean;

    .line 98
    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->advIdentifiersTracking:Ljava/lang/Boolean;

    .line 99
    invoke-virtual {p2, v0, v1, p1}, Lio/appmetrica/analytics/impl/ni;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 100
    iget-object p0, p0, Lio/appmetrica/analytics/impl/t0;->d:Lio/appmetrica/analytics/impl/ql;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ql;->i()V

    return-void

    .line 101
    :goto_5
    monitor-exit v0

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 16
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t0;->l:Lio/appmetrica/analytics/impl/f0;

    .line 17
    iget-object v1, v0, Lio/appmetrica/analytics/impl/f0;->a:Lio/appmetrica/analytics/impl/Ke;

    .line 18
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ke;->f()Lio/appmetrica/analytics/AppMetricaConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, v0, Lio/appmetrica/analytics/impl/f0;->b:Lio/appmetrica/analytics/impl/n0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const-string v1, "629a824d-c717-4ba5-bc0f-3f3968554d01"

    invoke-static {v1}, Lio/appmetrica/analytics/AppMetricaConfig;->newConfigBuilder(Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    move-result-object v1

    .line 21
    iget-object v2, v0, Lio/appmetrica/analytics/impl/n0;->a:Lio/appmetrica/analytics/impl/lc;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/lc;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lio/appmetrica/analytics/impl/n0;->b:Lio/appmetrica/analytics/impl/ja;

    .line 22
    iget-object v0, v0, Lio/appmetrica/analytics/impl/ja;->a:Ljava/lang/Boolean;

    .line 23
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 24
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->handleFirstActivationAsUpdate(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 25
    :cond_1
    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;->advIdentifiersTracking:Ljava/lang/Boolean;

    if-nez p1, :cond_2

    .line 26
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 27
    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAdvIdentifiersTracking(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 28
    invoke-virtual {v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->build()Lio/appmetrica/analytics/AppMetricaConfig;

    move-result-object v1

    .line 29
    :goto_0
    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getMainPublicOrAnonymousLogger()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object p1

    .line 30
    new-instance v0, Lio/appmetrica/analytics/impl/s0;

    invoke-direct {v0, p0, v1, p1}, Lio/appmetrica/analytics/impl/s0;-><init>(Lio/appmetrica/analytics/impl/t0;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 31
    invoke-virtual {p0, p1, v1, v0}, Lio/appmetrica/analytics/impl/t0;->a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/Cc;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 32
    sget-object p0, Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;

    const/4 p1, 0x0

    .line 33
    new-array p1, p1, [Ljava/lang/Object;

    .line 34
    const-string v0, "AppMetrica"

    const-string v1, "Activate AppMetrica in anonymous mode"

    invoke-virtual {p0, v0, v1, p1}, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/DeferredDeeplinkListener;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 38
    iget-object p0, p0, Lio/appmetrica/analytics/impl/t0;->e:Lio/appmetrica/analytics/impl/Yf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Yf;->a(Lio/appmetrica/analytics/DeferredDeeplinkListener;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 37
    iget-object p0, p0, Lio/appmetrica/analytics/impl/t0;->e:Lio/appmetrica/analytics/impl/Yf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Yf;->a(Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 39
    iget-object p0, p0, Lio/appmetrica/analytics/impl/t0;->g:Lio/appmetrica/analytics/impl/bi;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/bi;->a(Lio/appmetrica/analytics/ReporterConfig;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/StartupParamsCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t0;->d:Lio/appmetrica/analytics/impl/ql;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/t0;->f:Lio/appmetrica/analytics/impl/pf;

    .line 41
    iget-object p0, p0, Lio/appmetrica/analytics/impl/pf;->a:Landroid/content/ContentValues;

    .line 42
    const-string v1, "PROCESS_CFG_CLIDS"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-static {p0}, Lio/appmetrica/analytics/impl/mb;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 44
    invoke-virtual {v0, p1, p2, p0}, Lio/appmetrica/analytics/impl/ql;->a(Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 104
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/t0;->j()Lio/appmetrica/analytics/impl/Pa;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Pa;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 103
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/t0;->j()Lio/appmetrica/analytics/impl/Pa;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Pa;->a(Z)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/Cc;)Z
    .locals 1

    .line 45
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t0;->k:Lio/appmetrica/analytics/impl/pc;

    if-nez v0, :cond_1

    .line 46
    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/impl/t0;->a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 47
    iget-object p1, p0, Lio/appmetrica/analytics/impl/t0;->e:Lio/appmetrica/analytics/impl/Yf;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Yf;->a()V

    .line 48
    invoke-interface {p3}, Lio/appmetrica/analytics/impl/Cc;->a()Lio/appmetrica/analytics/impl/nc;

    move-result-object p1

    .line 49
    new-instance p2, Lio/appmetrica/analytics/impl/pc;

    .line 50
    new-instance p3, Lio/appmetrica/analytics/impl/G7;

    invoke-direct {p3, p1}, Lio/appmetrica/analytics/impl/G7;-><init>(Lio/appmetrica/analytics/impl/Pa;)V

    invoke-direct {p2, p1, p3}, Lio/appmetrica/analytics/impl/pc;-><init>(Lio/appmetrica/analytics/impl/Pa;Lio/appmetrica/analytics/impl/G7;)V

    .line 51
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t0;->b:Lio/appmetrica/analytics/impl/Ia;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Ia;->c()Lio/appmetrica/analytics/impl/W1;

    move-result-object v0

    invoke-virtual {v0, p3}, Lio/appmetrica/analytics/impl/W1;->a(Lio/appmetrica/analytics/impl/G7;)V

    .line 52
    iput-object p2, p0, Lio/appmetrica/analytics/impl/t0;->k:Lio/appmetrica/analytics/impl/pc;

    .line 53
    iget-object p0, p0, Lio/appmetrica/analytics/impl/t0;->j:Lio/appmetrica/analytics/impl/Ak;

    .line 54
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ak;->b:Lio/appmetrica/analytics/impl/z5;

    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iput-object p1, p0, Lio/appmetrica/analytics/impl/z5;->a:Ljava/lang/Object;

    .line 57
    iget-object p2, p0, Lio/appmetrica/analytics/impl/z5;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/appmetrica/analytics/impl/Sd;

    .line 58
    invoke-interface {p3, p1}, Lio/appmetrica/analytics/impl/Sd;->consume(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 59
    :cond_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/z5;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    goto :goto_2

    .line 60
    :goto_1
    monitor-exit p0

    throw p1

    .line 61
    :cond_1
    invoke-interface {p3}, Lio/appmetrica/analytics/impl/Cc;->a()Lio/appmetrica/analytics/impl/nc;

    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public final b(Z)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/t0;->j()Lio/appmetrica/analytics/impl/Pa;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Pa;->b(Z)V

    return-void
.end method

.method public final c(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/Ya;
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/t0;->g:Lio/appmetrica/analytics/impl/bi;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/bi;->b(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/Ya;

    move-result-object p0

    return-object p0
.end method

.method public final clearAppEnvironment()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/t0;->j()Lio/appmetrica/analytics/impl/Pa;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/IReporter;->clearAppEnvironment()V

    return-void
.end method

.method public final d()Lio/appmetrica/analytics/impl/ea;
    .locals 0
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/t0;->d:Lio/appmetrica/analytics/impl/ql;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ql;->e()Lio/appmetrica/analytics/impl/ea;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/t0;->d:Lio/appmetrica/analytics/impl/ql;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ql;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/util/Map;
    .locals 0
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/t0;->d:Lio/appmetrica/analytics/impl/ql;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ql;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final h()Lio/appmetrica/analytics/AdvIdentifiersResult;
    .locals 0
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/t0;->d:Lio/appmetrica/analytics/impl/ql;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ql;->a()Lio/appmetrica/analytics/AdvIdentifiersResult;

    move-result-object p0

    return-object p0
.end method

.method public final i()Lio/appmetrica/analytics/impl/pc;
    .locals 0
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/t0;->k:Lio/appmetrica/analytics/impl/pc;

    return-object p0
.end method

.method public final j()Lio/appmetrica/analytics/impl/Pa;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/t0;->k:Lio/appmetrica/analytics/impl/pc;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/pc;->a:Lio/appmetrica/analytics/impl/Pa;

    return-object p0
.end method

.method public final k()Lio/appmetrica/analytics/impl/bi;
    .locals 0
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/t0;->g:Lio/appmetrica/analytics/impl/bi;

    return-object p0
.end method

.method public final putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/t0;->j()Lio/appmetrica/analytics/impl/Pa;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/IReporter;->putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setDataSendingEnabled(Z)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/t0;->j()Lio/appmetrica/analytics/impl/Pa;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/IReporter;->setDataSendingEnabled(Z)V

    return-void
.end method

.method public final setUserProfileID(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/t0;->j()Lio/appmetrica/analytics/impl/Pa;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/IReporter;->setUserProfileID(Ljava/lang/String;)V

    return-void
.end method
