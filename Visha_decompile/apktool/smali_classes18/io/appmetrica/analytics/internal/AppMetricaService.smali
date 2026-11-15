.class public Lio/appmetrica/analytics/internal/AppMetricaService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static c:Lio/appmetrica/analytics/impl/F1;


# instance fields
.field private final a:Lio/appmetrica/analytics/impl/r1;

.field private final b:Lio/appmetrica/analytics/internal/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/r1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/r1;-><init>(Lio/appmetrica/analytics/internal/AppMetricaService;)V

    iput-object v0, p0, Lio/appmetrica/analytics/internal/AppMetricaService;->a:Lio/appmetrica/analytics/impl/r1;

    new-instance v0, Lio/appmetrica/analytics/internal/a;

    invoke-direct {v0}, Lio/appmetrica/analytics/internal/a;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/internal/AppMetricaService;->b:Lio/appmetrica/analytics/internal/a;

    return-void
.end method

.method public static synthetic a()Lio/appmetrica/analytics/impl/u1;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/internal/AppMetricaService;->c:Lio/appmetrica/analytics/impl/F1;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "io.appmetrica.analytics.ACTION_SERVICE_WAKELOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lio/appmetrica/analytics/impl/s1;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/s1;-><init>()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/internal/AppMetricaService;->b:Lio/appmetrica/analytics/internal/a;

    :goto_0
    sget-object v0, Lio/appmetrica/analytics/internal/AppMetricaService;->c:Lio/appmetrica/analytics/impl/F1;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/F1;->a:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    new-instance v2, Lio/appmetrica/analytics/impl/z1;

    invoke-direct {v2, v0, p1}, Lio/appmetrica/analytics/impl/z1;-><init>(Lio/appmetrica/analytics/impl/F1;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object p0, Lio/appmetrica/analytics/internal/AppMetricaService;->c:Lio/appmetrica/analytics/impl/F1;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/F1;->a:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/v1;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/v1;-><init>(Lio/appmetrica/analytics/impl/F1;Landroid/content/res/Configuration;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/impl/ua;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->init(Landroid/content/Context;)V

    sget-object v0, Lio/appmetrica/analytics/internal/AppMetricaService;->c:Lio/appmetrica/analytics/impl/F1;

    if-nez v0, :cond_1

    new-instance v0, Lio/appmetrica/analytics/impl/I1;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lio/appmetrica/analytics/internal/AppMetricaService;->a:Lio/appmetrica/analytics/impl/r1;

    new-instance v2, Lio/appmetrica/analytics/impl/s5;

    invoke-direct {v2, v1}, Lio/appmetrica/analytics/impl/s5;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, p0, v2}, Lio/appmetrica/analytics/impl/I1;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/t1;Lio/appmetrica/analytics/impl/s5;)V

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->v:Lio/appmetrica/analytics/impl/Pj;

    new-instance v1, Lio/appmetrica/analytics/impl/L1;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/L1;-><init>(Lio/appmetrica/analytics/impl/l0;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Pj;->a:Ljava/util/LinkedHashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lio/appmetrica/analytics/impl/F1;

    sget-object v1, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/ua;->d:Lio/appmetrica/analytics/impl/Uj;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Uj;->b()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lio/appmetrica/analytics/impl/F1;-><init>(Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Lio/appmetrica/analytics/impl/u1;)V

    sput-object p0, Lio/appmetrica/analytics/internal/AppMetricaService;->c:Lio/appmetrica/analytics/impl/F1;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/appmetrica/analytics/internal/AppMetricaService;->a:Lio/appmetrica/analytics/impl/r1;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/F1;->b:Lio/appmetrica/analytics/impl/u1;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/u1;->a(Lio/appmetrica/analytics/impl/t1;)V

    :goto_0
    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    new-instance v0, Lio/appmetrica/analytics/impl/dj;

    sget-object v1, Lio/appmetrica/analytics/internal/AppMetricaService;->c:Lio/appmetrica/analytics/impl/F1;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/dj;-><init>(Lio/appmetrica/analytics/impl/u1;)V

    monitor-enter p0

    :try_start_0
    new-instance v1, Lio/appmetrica/analytics/impl/cj;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lio/appmetrica/analytics/impl/cj;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/dj;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/ua;->f:Lio/appmetrica/analytics/impl/cj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    sget-object p0, Lio/appmetrica/analytics/internal/AppMetricaService;->c:Lio/appmetrica/analytics/impl/F1;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/F1;->onCreate()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/internal/AppMetricaService;->c:Lio/appmetrica/analytics/impl/F1;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/F1;->onDestroy()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    sget-object p0, Lio/appmetrica/analytics/internal/AppMetricaService;->c:Lio/appmetrica/analytics/impl/F1;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/F1;->a:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/A1;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/A1;-><init>(Lio/appmetrica/analytics/impl/F1;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    sget-object p0, Lio/appmetrica/analytics/internal/AppMetricaService;->c:Lio/appmetrica/analytics/impl/F1;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/F1;->a:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/x1;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/x1;-><init>(Lio/appmetrica/analytics/impl/F1;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    sget-object p0, Lio/appmetrica/analytics/internal/AppMetricaService;->c:Lio/appmetrica/analytics/impl/F1;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/F1;->a:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/y1;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/y1;-><init>(Lio/appmetrica/analytics/impl/F1;Landroid/content/Intent;II)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x2

    return p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    sget-object p0, Lio/appmetrica/analytics/internal/AppMetricaService;->c:Lio/appmetrica/analytics/impl/F1;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/F1;->a:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/B1;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/B1;-><init>(Lio/appmetrica/analytics/impl/F1;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "io.appmetrica.analytics.ACTION_SERVICE_WAKELOCK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
