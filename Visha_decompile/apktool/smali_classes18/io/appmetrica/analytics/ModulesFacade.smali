.class public final Lio/appmetrica/analytics/ModulesFacade;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTERNAL_ATTRIBUTION_ADJUST:I = 0x2

.field public static final EXTERNAL_ATTRIBUTION_AIRBRIDGE:I = 0x5

.field public static final EXTERNAL_ATTRIBUTION_APPSFLYER:I = 0x1

.field public static final EXTERNAL_ATTRIBUTION_KOCHAVA:I = 0x3

.field public static final EXTERNAL_ATTRIBUTION_SINGULAR:I = 0x6

.field public static final EXTERNAL_ATTRIBUTION_TENJIN:I = 0x4

.field private static a:Lio/appmetrica/analytics/impl/nd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/nd;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/nd;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/nd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModuleReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IModuleReporter;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/nd;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/nd;->b:Lio/appmetrica/analytics/impl/gd;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/gd;->b:Lio/appmetrica/analytics/impl/bn;

    invoke-virtual {v2, p0}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/gd;->d:Lio/appmetrica/analytics/impl/bn;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/nd;->c:Lio/appmetrica/analytics/impl/td;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lio/appmetrica/analytics/impl/td;->a:Lio/appmetrica/analytics/impl/P5;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/P5;->a(Landroid/content/Context;)V

    sget-object v0, Lio/appmetrica/analytics/impl/fi;->a:Lio/appmetrica/analytics/impl/gi;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lio/appmetrica/analytics/impl/gi;->a(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Yh;

    move-result-object p0

    return-object p0
.end method

.method public static isActivatedForApp()Z
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/nd;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/nd;->b:Lio/appmetrica/analytics/impl/gd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/nd;->c:Lio/appmetrica/analytics/impl/td;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/nd;->a:Lio/appmetrica/analytics/impl/q0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    monitor-exit v0

    throw v1
.end method

.method public static reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;)V
    .locals 1
    .param p0    # Lio/appmetrica/analytics/AdRevenue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lio/appmetrica/analytics/ModulesFacade;->reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;Ljava/lang/Boolean;)V
    .locals 3
    .param p0    # Lio/appmetrica/analytics/AdRevenue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/nd;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3
    iget-object v1, v0, Lio/appmetrica/analytics/impl/nd;->b:Lio/appmetrica/analytics/impl/gd;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v1, v0, Lio/appmetrica/analytics/impl/nd;->c:Lio/appmetrica/analytics/impl/td;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v1, v0, Lio/appmetrica/analytics/impl/nd;->d:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 7
    new-instance v2, Lio/appmetrica/analytics/impl/id;

    invoke-direct {v2, v0, p0, p1}, Lio/appmetrica/analytics/impl/id;-><init>(Lio/appmetrica/analytics/impl/nd;Lio/appmetrica/analytics/AdRevenue;Z)V

    .line 8
    invoke-interface {v1, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V
    .locals 3
    .param p0    # Lio/appmetrica/analytics/ModuleEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/nd;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/nd;->b:Lio/appmetrica/analytics/impl/gd;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/gd;->a:Lio/appmetrica/analytics/impl/i;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/nd;->c:Lio/appmetrica/analytics/impl/td;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/nd;->d:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v2, Lio/appmetrica/analytics/impl/jd;

    invoke-direct {v2, v0, p0}, Lio/appmetrica/analytics/impl/jd;-><init>(Lio/appmetrica/analytics/impl/nd;Lio/appmetrica/analytics/ModuleEvent;)V

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static reportExternalAttribution(ILjava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/nd;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/nd;->b:Lio/appmetrica/analytics/impl/gd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/nd;->c:Lio/appmetrica/analytics/impl/td;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/nd;->d:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v2, Lio/appmetrica/analytics/impl/kd;

    invoke-direct {v2, v0, p0, p1}, Lio/appmetrica/analytics/impl/kd;-><init>(Lio/appmetrica/analytics/impl/nd;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendEventsBuffer()V
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/nd;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/nd;->b:Lio/appmetrica/analytics/impl/gd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/nd;->c:Lio/appmetrica/analytics/impl/td;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->sendEventsBuffer()V

    return-void
.end method

.method public static setAdvIdentifiersTracking(Z)V
    .locals 3

    sget-object v0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/nd;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/nd;->b:Lio/appmetrica/analytics/impl/gd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/nd;->c:Lio/appmetrica/analytics/impl/td;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/nd;->d:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v2, Lio/appmetrica/analytics/impl/ld;

    invoke-direct {v2, v0, p0}, Lio/appmetrica/analytics/impl/ld;-><init>(Lio/appmetrica/analytics/impl/nd;Z)V

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setProxy(Lio/appmetrica/analytics/impl/nd;)V
    .locals 0
    .param p0    # Lio/appmetrica/analytics/impl/nd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/nd;

    return-void
.end method

.method public static setSessionExtra(Ljava/lang/String;[B)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/nd;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/nd;->b:Lio/appmetrica/analytics/impl/gd;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/gd;->c:Lio/appmetrica/analytics/impl/bn;

    invoke-virtual {v1, p0}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/nd;->c:Lio/appmetrica/analytics/impl/td;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/nd;->d:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v2, Lio/appmetrica/analytics/impl/md;

    invoke-direct {v2, v0, p0, p1}, Lio/appmetrica/analytics/impl/md;-><init>(Lio/appmetrica/analytics/impl/nd;Ljava/lang/String;[B)V

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
