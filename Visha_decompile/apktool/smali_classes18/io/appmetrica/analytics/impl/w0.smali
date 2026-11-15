.class public final Lio/appmetrica/analytics/impl/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/q0;

.field public final b:Lio/appmetrica/analytics/impl/Gb;

.field public final c:Lio/appmetrica/analytics/impl/Hb;

.field public final d:Lio/appmetrica/analytics/impl/Jb;

.field public final e:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->c()Lio/appmetrica/analytics/impl/q0;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/w0;->a:Lio/appmetrica/analytics/impl/q0;

    new-instance v1, Lio/appmetrica/analytics/impl/Gb;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/Gb;-><init>(Lio/appmetrica/analytics/impl/q0;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/w0;->b:Lio/appmetrica/analytics/impl/Gb;

    new-instance v1, Lio/appmetrica/analytics/impl/Hb;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/Hb;-><init>(Lio/appmetrica/analytics/impl/q0;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/w0;->c:Lio/appmetrica/analytics/impl/Hb;

    new-instance v0, Lio/appmetrica/analytics/impl/Jb;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Jb;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/w0;->d:Lio/appmetrica/analytics/impl/Jb;

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->e()Lio/appmetrica/analytics/impl/j4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/w0;->e:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/w0;Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V
    .locals 0

    .line 26
    iget-object p0, p0, Lio/appmetrica/analytics/impl/w0;->a:Lio/appmetrica/analytics/impl/q0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {p1}, Lio/appmetrica/analytics/impl/p0;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/p0;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object p1

    .line 29
    invoke-interface {p1, p2}, Lio/appmetrica/analytics/impl/Ja;->a(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V

    .line 30
    iget-object p0, p0, Lio/appmetrica/analytics/impl/p0;->a:Landroid/content/Context;

    .line 31
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object p1

    .line 32
    iget-object p1, p1, Lio/appmetrica/analytics/impl/t4;->c:Lio/appmetrica/analytics/impl/j4;

    .line 33
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    new-instance p2, Lio/appmetrica/analytics/impl/p1;

    invoke-direct {p2, p0}, Lio/appmetrica/analytics/impl/p1;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, p2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/w0;->b:Lio/appmetrica/analytics/impl/Gb;

    .line 2
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Gb;->a:Lio/appmetrica/analytics/impl/Td;

    .line 3
    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/Td;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    move-result-object v1

    .line 4
    iget-boolean v1, v1, Lio/appmetrica/analytics/impl/Nn;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Gb;->b:Lio/appmetrica/analytics/impl/Td;

    invoke-virtual {v0, p2}, Lio/appmetrica/analytics/impl/Td;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    move-result-object v0

    .line 6
    iget-boolean v0, v0, Lio/appmetrica/analytics/impl/Nn;->a:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/w0;->c:Lio/appmetrica/analytics/impl/Hb;

    .line 9
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Hb;->b:Lio/appmetrica/analytics/impl/P5;

    .line 10
    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/P5;->a(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getMainPublicOrAnonymousLogger()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v1

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Session autotracking enabled"

    invoke-virtual {v1, v3, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v1

    .line 14
    iget-object v1, v1, Lio/appmetrica/analytics/impl/t4;->f:Lio/appmetrica/analytics/impl/Ak;

    .line 15
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ak;->a()Lio/appmetrica/analytics/impl/o;

    .line 16
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hb;->a:Lio/appmetrica/analytics/impl/q0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {p1}, Lio/appmetrica/analytics/impl/p0;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/p0;

    move-result-object v0

    .line 18
    iget-object v1, v0, Lio/appmetrica/analytics/impl/p0;->d:Lio/appmetrica/analytics/impl/Ia;

    const/4 v2, 0x0

    .line 19
    invoke-interface {v1, v2, v0}, Lio/appmetrica/analytics/impl/Ia;->a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/ab;)V

    .line 20
    iget-object v0, p0, Lio/appmetrica/analytics/impl/w0;->e:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lnwd;

    invoke-direct {v1, p0, p1, p2}, Lnwd;-><init>(Lio/appmetrica/analytics/impl/w0;Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 21
    iget-object p0, p0, Lio/appmetrica/analytics/impl/w0;->a:Lio/appmetrica/analytics/impl/q0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    const-class p0, Lio/appmetrica/analytics/impl/p0;

    monitor-enter p0

    const/4 p1, 0x1

    .line 23
    :try_start_0
    sput-boolean p1, Lio/appmetrica/analytics/impl/p0;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p0

    throw p1

    .line 25
    :cond_0
    sget-object p0, Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "[AppMetricaLibraryAdapterProxy]"

    const-string v0, "Activation failed due to context is null"

    invoke-virtual {p0, p2, v0, p1}, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
