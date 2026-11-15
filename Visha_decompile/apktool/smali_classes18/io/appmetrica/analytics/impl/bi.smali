.class public final Lio/appmetrica/analytics/impl/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Za;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/pf;

.field public final c:Lio/appmetrica/analytics/impl/ni;

.field public final d:Landroid/os/Handler;

.field public final e:Lio/appmetrica/analytics/impl/ql;

.field public final f:Lio/appmetrica/analytics/impl/yc;

.field public final g:Ljava/util/LinkedHashMap;

.field public final h:Lio/appmetrica/analytics/impl/bn;

.field public final i:Ljava/util/List;

.field public j:Lio/appmetrica/analytics/impl/nc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/impl/ni;Landroid/os/Handler;Lio/appmetrica/analytics/impl/ql;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/bi;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/bi;->b:Lio/appmetrica/analytics/impl/pf;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/bi;->c:Lio/appmetrica/analytics/impl/ni;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/bi;->d:Landroid/os/Handler;

    iput-object p5, p0, Lio/appmetrica/analytics/impl/bi;->e:Lio/appmetrica/analytics/impl/ql;

    new-instance p4, Lio/appmetrica/analytics/impl/yc;

    invoke-direct {p4, p1, p2, p3, p5}, Lio/appmetrica/analytics/impl/yc;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/ql;)V

    iput-object p4, p0, Lio/appmetrica/analytics/impl/bi;->f:Lio/appmetrica/analytics/impl/yc;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/bi;->g:Ljava/util/LinkedHashMap;

    new-instance p2, Lio/appmetrica/analytics/impl/bn;

    new-instance p3, Lio/appmetrica/analytics/impl/di;

    invoke-direct {p3, p1}, Lio/appmetrica/analytics/impl/di;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p3}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/bi;->h:Lio/appmetrica/analytics/impl/bn;

    const-string p1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    const-string p2, "0e5e9c33-f8c3-4568-86c5-2e4f57523f72"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/bi;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)Lio/appmetrica/analytics/impl/Pa;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/bi;->c(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)Lio/appmetrica/analytics/impl/nc;

    move-result-object p0

    return-object p0
.end method

.method public final a()Lio/appmetrica/analytics/impl/Za;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 3

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/bi;->g:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v0

    .line 5
    iget-object p1, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/ApiKeyUtils;->createPartialApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Reporter with apiKey=%s already exists."

    invoke-virtual {v0, v1, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/bi;->b(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/Ya;

    .line 7
    sget-object v0, Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activate reporter with APIKey "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/ApiKeyUtils;->createPartialApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    const-string v2, "AppMetrica"

    invoke-virtual {v0, v2, p1, v1}, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final bridge synthetic b(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)Lio/appmetrica/analytics/impl/Pa;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/bi;->d(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)Lio/appmetrica/analytics/impl/nc;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized b(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/Ya;
    .locals 7

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/bi;->g:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/Ya;

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/bi;->i:Ljava/util/List;

    iget-object v1, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/bi;->e:Lio/appmetrica/analytics/impl/ql;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ql;->i()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 6
    :cond_0
    :goto_0
    new-instance v6, Lio/appmetrica/analytics/impl/Ec;

    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/impl/bi;->a:Landroid/content/Context;

    .line 8
    iget-object v2, p0, Lio/appmetrica/analytics/impl/bi;->b:Lio/appmetrica/analytics/impl/pf;

    .line 9
    iget-object v4, p0, Lio/appmetrica/analytics/impl/bi;->c:Lio/appmetrica/analytics/impl/ni;

    .line 10
    new-instance v5, Lio/appmetrica/analytics/impl/T9;

    invoke-direct {v5, v1}, Lio/appmetrica/analytics/impl/T9;-><init>(Landroid/content/Context;)V

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/Ec;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/ReporterConfig;Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/T9;)V

    .line 11
    new-instance v0, Lio/appmetrica/analytics/impl/tb;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/bi;->d:Landroid/os/Handler;

    invoke-direct {v0, v1, v6}, Lio/appmetrica/analytics/impl/tb;-><init>(Landroid/os/Handler;Lio/appmetrica/analytics/impl/T2;)V

    .line 12
    iput-object v0, v6, Lio/appmetrica/analytics/impl/T2;->i:Lio/appmetrica/analytics/impl/tb;

    .line 13
    iget-object v0, p0, Lio/appmetrica/analytics/impl/bi;->e:Lio/appmetrica/analytics/impl/ql;

    .line 14
    iget-object v1, v6, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    if-eqz v0, :cond_1

    .line 15
    iget-object v1, v1, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 16
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ql;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    :goto_1
    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/T2;->k()V

    .line 19
    iget-object v0, p0, Lio/appmetrica/analytics/impl/bi;->g:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-interface {v0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    :cond_2
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b(Lio/appmetrica/analytics/AppMetricaConfig;)Lio/appmetrica/analytics/impl/bb;
    .locals 7

    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/bi;->j:Lio/appmetrica/analytics/impl/nc;

    if-nez v0, :cond_1

    .line 21
    new-instance v0, Lio/appmetrica/analytics/impl/v6;

    .line 22
    iget-object v2, p0, Lio/appmetrica/analytics/impl/bi;->a:Landroid/content/Context;

    .line 23
    iget-object v3, p0, Lio/appmetrica/analytics/impl/bi;->b:Lio/appmetrica/analytics/impl/pf;

    .line 24
    iget-object v5, p0, Lio/appmetrica/analytics/impl/bi;->c:Lio/appmetrica/analytics/impl/ni;

    .line 25
    new-instance v6, Lio/appmetrica/analytics/impl/T9;

    invoke-direct {v6, v2}, Lio/appmetrica/analytics/impl/T9;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/v6;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/T9;)V

    .line 26
    new-instance v1, Lio/appmetrica/analytics/impl/tb;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/bi;->d:Landroid/os/Handler;

    invoke-direct {v1, v2, v0}, Lio/appmetrica/analytics/impl/tb;-><init>(Landroid/os/Handler;Lio/appmetrica/analytics/impl/T2;)V

    .line 27
    iput-object v1, v0, Lio/appmetrica/analytics/impl/T2;->i:Lio/appmetrica/analytics/impl/tb;

    .line 28
    iget-object v1, p0, Lio/appmetrica/analytics/impl/bi;->e:Lio/appmetrica/analytics/impl/ql;

    .line 29
    iget-object v2, v0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    if-eqz v1, :cond_0

    .line 30
    iget-object v2, v2, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 31
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/ql;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    :goto_0
    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->errorEnvironment:Ljava/util/Map;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/T2;->b(Ljava/util/Map;)V

    .line 34
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/T2;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()Lio/appmetrica/analytics/impl/bi;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final declared-synchronized c(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)Lio/appmetrica/analytics/impl/nc;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/bi;->j:Lio/appmetrica/analytics/impl/nc;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/bi;->h:Lio/appmetrica/analytics/impl/bn;

    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/bi;->f:Lio/appmetrica/analytics/impl/yc;

    invoke-virtual {v0, p1, p2}, Lio/appmetrica/analytics/impl/yc;->a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    new-instance v0, Lio/appmetrica/analytics/impl/nc;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/bi;->f:Lio/appmetrica/analytics/impl/yc;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/nc;-><init>(Lio/appmetrica/analytics/impl/yc;)V

    new-instance p2, Lio/appmetrica/analytics/impl/tb;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/bi;->d:Landroid/os/Handler;

    invoke-direct {p2, v1, v0}, Lio/appmetrica/analytics/impl/tb;-><init>(Landroid/os/Handler;Lio/appmetrica/analytics/impl/T2;)V

    iput-object p2, v0, Lio/appmetrica/analytics/impl/T2;->i:Lio/appmetrica/analytics/impl/tb;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/bi;->e:Lio/appmetrica/analytics/impl/ql;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    if-eqz p2, :cond_1

    iget-object v1, v1, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/ql;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0, p1, p3}, Lio/appmetrica/analytics/impl/nc;->a(Lio/appmetrica/analytics/AppMetricaConfig;Z)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/nc;->k()V

    iget-object p2, p0, Lio/appmetrica/analytics/impl/bi;->c:Lio/appmetrica/analytics/impl/ni;

    new-instance p3, Lio/appmetrica/analytics/impl/ai;

    invoke-direct {p3, v0}, Lio/appmetrica/analytics/impl/ai;-><init>(Lio/appmetrica/analytics/impl/nc;)V

    iget-object p2, p2, Lio/appmetrica/analytics/impl/ni;->f:Lio/appmetrica/analytics/impl/Lj;

    iput-object p3, p2, Lio/appmetrica/analytics/impl/Lj;->c:Lio/appmetrica/analytics/impl/Ck;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/bi;->g:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/bi;->j:Lio/appmetrica/analytics/impl/nc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)Lio/appmetrica/analytics/impl/nc;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/bi;->j:Lio/appmetrica/analytics/impl/nc;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/bi;->f:Lio/appmetrica/analytics/impl/yc;

    invoke-virtual {v1, p1, p2}, Lio/appmetrica/analytics/impl/yc;->a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    invoke-virtual {v0, p1, p3}, Lio/appmetrica/analytics/impl/nc;->a(Lio/appmetrica/analytics/AppMetricaConfig;Z)V

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/bi;->g:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/bi;->h:Lio/appmetrica/analytics/impl/bn;

    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/bi;->f:Lio/appmetrica/analytics/impl/yc;

    invoke-virtual {v0, p1, p2}, Lio/appmetrica/analytics/impl/yc;->a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    new-instance v0, Lio/appmetrica/analytics/impl/nc;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/bi;->f:Lio/appmetrica/analytics/impl/yc;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/nc;-><init>(Lio/appmetrica/analytics/impl/yc;)V

    new-instance p2, Lio/appmetrica/analytics/impl/tb;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/bi;->d:Landroid/os/Handler;

    invoke-direct {p2, v1, v0}, Lio/appmetrica/analytics/impl/tb;-><init>(Landroid/os/Handler;Lio/appmetrica/analytics/impl/T2;)V

    iput-object p2, v0, Lio/appmetrica/analytics/impl/T2;->i:Lio/appmetrica/analytics/impl/tb;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/bi;->e:Lio/appmetrica/analytics/impl/ql;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    if-eqz p2, :cond_1

    iget-object v1, v1, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/ql;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0, p1, p3}, Lio/appmetrica/analytics/impl/nc;->a(Lio/appmetrica/analytics/AppMetricaConfig;Z)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/nc;->k()V

    iget-object p2, p0, Lio/appmetrica/analytics/impl/bi;->c:Lio/appmetrica/analytics/impl/ni;

    new-instance p3, Lio/appmetrica/analytics/impl/ai;

    invoke-direct {p3, v0}, Lio/appmetrica/analytics/impl/ai;-><init>(Lio/appmetrica/analytics/impl/nc;)V

    iget-object p2, p2, Lio/appmetrica/analytics/impl/ni;->f:Lio/appmetrica/analytics/impl/Lj;

    iput-object p3, p2, Lio/appmetrica/analytics/impl/Lj;->c:Lio/appmetrica/analytics/impl/Ck;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/bi;->g:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/bi;->j:Lio/appmetrica/analytics/impl/nc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
