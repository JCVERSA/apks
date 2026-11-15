.class public final Lio/appmetrica/analytics/impl/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/ab;


# static fields
.field public static volatile e:Lio/appmetrica/analytics/impl/p0; = null

.field public static volatile f:Z = false

.field public static volatile g:Z


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/k0;

.field public final c:Ljava/util/concurrent/FutureTask;

.field public final d:Lio/appmetrica/analytics/impl/Ia;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/p0;->a:Landroid/content/Context;

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->b()Lio/appmetrica/analytics/impl/k0;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/p0;->b:Lio/appmetrica/analytics/impl/k0;

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/t4;->e()Lio/appmetrica/analytics/impl/j4;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/k0;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/j4;)Lio/appmetrica/analytics/impl/Ia;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/p0;->d:Lio/appmetrica/analytics/impl/Ia;

    new-instance p1, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lppd;

    invoke-direct {v0, p0}, Lppd;-><init>(Lio/appmetrica/analytics/impl/p0;)V

    invoke-direct {p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/p0;->c:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/p0;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/p0;->e:Lio/appmetrica/analytics/impl/p0;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lio/appmetrica/analytics/impl/p0;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lio/appmetrica/analytics/impl/p0;->e:Lio/appmetrica/analytics/impl/p0;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/p0;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/p0;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p0;->j()V

    .line 6
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object p0

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/t4;->c:Lio/appmetrica/analytics/impl/j4;

    .line 8
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p0

    new-instance v2, Lio/appmetrica/analytics/impl/o0;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/o0;-><init>(Lio/appmetrica/analytics/impl/p0;)V

    invoke-interface {p0, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    sput-object v0, Lio/appmetrica/analytics/impl/p0;->e:Lio/appmetrica/analytics/impl/p0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static a(Landroid/location/Location;)V
    .locals 1
    .param p0    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 11
    invoke-static {}, Lio/appmetrica/analytics/impl/p0;->c()Lio/appmetrica/analytics/impl/Nc;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Nc;->a(Landroid/location/Location;)V

    return-void
.end method

.method public static declared-synchronized a(Lio/appmetrica/analytics/impl/p0;)V
    .locals 1
    .param p0    # Lio/appmetrica/analytics/impl/p0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    const-class v0, Lio/appmetrica/analytics/impl/p0;

    monitor-enter v0

    .line 18
    :try_start_0
    sput-object p0, Lio/appmetrica/analytics/impl/p0;->e:Lio/appmetrica/analytics/impl/p0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 13
    invoke-static {}, Lio/appmetrica/analytics/impl/p0;->c()Lio/appmetrica/analytics/impl/Nc;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/appmetrica/analytics/impl/Nc;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 12
    invoke-static {}, Lio/appmetrica/analytics/impl/p0;->c()Lio/appmetrica/analytics/impl/Nc;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Nc;->a(Z)V

    return-void
.end method

.method public static b(Z)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/impl/p0;->c()Lio/appmetrica/analytics/impl/Nc;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Nc;->b(Z)V

    return-void
.end method

.method public static c()Lio/appmetrica/analytics/impl/Nc;
    .locals 1

    .line 3
    invoke-static {}, Lio/appmetrica/analytics/impl/p0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lio/appmetrica/analytics/impl/p0;->e:Lio/appmetrica/analytics/impl/p0;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lio/appmetrica/analytics/impl/t4;->b:Lio/appmetrica/analytics/impl/L7;

    :goto_0
    return-object v0
.end method

.method public static clearAppEnvironment()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lio/appmetrica/analytics/impl/p0;->c()Lio/appmetrica/analytics/impl/Nc;

    move-result-object v0

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Nc;->clearAppEnvironment()V

    return-void
.end method

.method public static declared-synchronized k()Z
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    const-class v0, Lio/appmetrica/analytics/impl/p0;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lio/appmetrica/analytics/impl/p0;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static l()Z
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    sget-boolean v0, Lio/appmetrica/analytics/impl/p0;->g:Z

    return v0
.end method

.method public static declared-synchronized m()Z
    .locals 3
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    const-class v0, Lio/appmetrica/analytics/impl/p0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/impl/p0;->e:Lio/appmetrica/analytics/impl/p0;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lio/appmetrica/analytics/impl/p0;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object v1

    invoke-interface {v1}, Lio/appmetrica/analytics/impl/Ja;->i()Lio/appmetrica/analytics/impl/pc;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized n()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    const-class v0, Lio/appmetrica/analytics/impl/p0;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lio/appmetrica/analytics/impl/p0;->e:Lio/appmetrica/analytics/impl/p0;

    const/4 v1, 0x0

    sput-boolean v1, Lio/appmetrica/analytics/impl/p0;->f:Z

    sput-boolean v1, Lio/appmetrica/analytics/impl/p0;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lio/appmetrica/analytics/impl/p0;->c()Lio/appmetrica/analytics/impl/Nc;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/appmetrica/analytics/impl/Nc;->putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized q()V
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    const-class v0, Lio/appmetrica/analytics/impl/p0;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lio/appmetrica/analytics/impl/p0;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static r()V
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lio/appmetrica/analytics/impl/p0;->g:Z

    return-void
.end method

.method public static s()Lio/appmetrica/analytics/impl/p0;
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lio/appmetrica/analytics/impl/p0;->e:Lio/appmetrica/analytics/impl/p0;

    return-object v0
.end method

.method public static setDataSendingEnabled(Z)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lio/appmetrica/analytics/impl/p0;->c()Lio/appmetrica/analytics/impl/Nc;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Nc;->setDataSendingEnabled(Z)V

    return-void
.end method

.method public static setUserProfileID(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lio/appmetrica/analytics/impl/p0;->c()Lio/appmetrica/analytics/impl/Nc;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Nc;->setUserProfileID(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Za;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 19
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Ja;->a()Lio/appmetrica/analytics/impl/Za;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/DeferredDeeplinkListener;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 15
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Ja;->a(Lio/appmetrica/analytics/DeferredDeeplinkListener;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 14
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Ja;->a(Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/ReporterConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 16
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Ja;->a(Lio/appmetrica/analytics/ReporterConfig;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/StartupParamsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    .line 17
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Ja;->a(Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V

    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/v4;
    .locals 0
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/p0;->d:Lio/appmetrica/analytics/impl/Ia;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Ia;->a()Lio/appmetrica/analytics/impl/v4;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Ja;->a(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/p0;->a:Landroid/content/Context;

    .line 4
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lio/appmetrica/analytics/impl/t4;->c:Lio/appmetrica/analytics/impl/j4;

    .line 6
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    new-instance v0, Lio/appmetrica/analytics/impl/p1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/p1;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/Ya;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/ReporterConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Ja;->c(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/Ya;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/AppMetricaConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/p0;->d:Lio/appmetrica/analytics/impl/Ia;

    invoke-interface {v0, p1, p0}, Lio/appmetrica/analytics/impl/Ia;->a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/ab;)V

    return-void
.end method

.method public final d()Lio/appmetrica/analytics/impl/ea;
    .locals 0
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 6
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Ja;->d()Lio/appmetrica/analytics/impl/ea;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/AppMetricaConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Ja;->a(Lio/appmetrica/analytics/AppMetricaConfig;)V

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/p0;->a:Landroid/content/Context;

    .line 3
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lio/appmetrica/analytics/impl/t4;->c:Lio/appmetrica/analytics/impl/j4;

    .line 5
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    new-instance v0, Lio/appmetrica/analytics/impl/p1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/p1;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Ja;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f()Lio/appmetrica/analytics/impl/Ja;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/p0;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Ja;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final g()Ljava/util/Map;
    .locals 0
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
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

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Ja;->g()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final h()Lio/appmetrica/analytics/AdvIdentifiersResult;
    .locals 0
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Ja;->h()Lio/appmetrica/analytics/AdvIdentifiersResult;

    move-result-object p0

    return-object p0
.end method

.method public final i()Lio/appmetrica/analytics/impl/pc;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Ja;->i()Lio/appmetrica/analytics/impl/pc;

    move-result-object p0

    return-object p0
.end method

.method public final j()V
    .locals 3

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/t4;->c:Lio/appmetrica/analytics/impl/j4;

    new-instance v1, Lopd;

    invoke-direct {v1, p0}, Lopd;-><init>(Lio/appmetrica/analytics/impl/p0;)V

    iget-object p0, v0, Lio/appmetrica/analytics/impl/j4;->a:Lio/appmetrica/analytics/impl/i4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lio/appmetrica/analytics/impl/yd;

    new-instance p0, Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAA-INIT_CORE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/appmetrica/analytics/impl/yd;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final o()V
    .locals 2

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/t4;->q:Lio/appmetrica/analytics/impl/ja;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/p0;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/ja;->a(Landroid/content/Context;)V

    new-instance v0, Lio/appmetrica/analytics/impl/n4;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/p0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/n4;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/p0;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Pc;->a(Landroid/content/Context;)V

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/p0;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/t4;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/ud;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ud;->a()Lio/appmetrica/analytics/internal/IdentifiersResult;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/p0;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->run()V

    return-void
.end method

.method public final p()Lio/appmetrica/analytics/impl/Ja;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/p0;->b:Lio/appmetrica/analytics/impl/k0;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/p0;->a:Landroid/content/Context;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/p0;->d:Lio/appmetrica/analytics/impl/Ia;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lio/appmetrica/analytics/impl/k0;->d:Lio/appmetrica/analytics/impl/Ja;

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/k0;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, Lio/appmetrica/analytics/impl/v0;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/v0;-><init>()V

    iput-object p0, v0, Lio/appmetrica/analytics/impl/k0;->d:Lio/appmetrica/analytics/impl/Ja;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v2, Lio/appmetrica/analytics/impl/t0;

    invoke-direct {v2, v1, p0}, Lio/appmetrica/analytics/impl/t0;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ia;)V

    iput-object v2, v0, Lio/appmetrica/analytics/impl/k0;->d:Lio/appmetrica/analytics/impl/Ja;

    :cond_1
    :goto_0
    iget-object p0, v0, Lio/appmetrica/analytics/impl/k0;->d:Lio/appmetrica/analytics/impl/Ja;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method
