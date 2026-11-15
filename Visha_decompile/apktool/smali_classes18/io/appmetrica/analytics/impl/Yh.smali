.class public final Lio/appmetrica/analytics/impl/Yh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ya;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/q0;

.field public final b:Lio/appmetrica/analytics/impl/sh;

.field public final c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

.field public final d:Landroid/content/Context;

.field public final e:Lio/appmetrica/analytics/ReporterConfig;

.field public final f:Lio/appmetrica/analytics/impl/hi;

.field public final g:Lio/appmetrica/analytics/impl/De;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/sh;Lio/appmetrica/analytics/impl/q0;Lio/appmetrica/analytics/impl/hi;Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 7

    .line 6
    new-instance v6, Lio/appmetrica/analytics/impl/De;

    new-instance v0, Lio/appmetrica/analytics/impl/Ih;

    invoke-direct {v0, p3, p1, p5}, Lio/appmetrica/analytics/impl/Ih;-><init>(Lio/appmetrica/analytics/impl/q0;Landroid/content/Context;Lio/appmetrica/analytics/ReporterConfig;)V

    invoke-direct {v6, v0}, Lio/appmetrica/analytics/impl/De;-><init>(Lio/appmetrica/analytics/coreapi/internal/backport/Provider;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/Yh;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/sh;Lio/appmetrica/analytics/impl/q0;Lio/appmetrica/analytics/impl/hi;Lio/appmetrica/analytics/ReporterConfig;Lio/appmetrica/analytics/impl/De;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/sh;Lio/appmetrica/analytics/impl/q0;Lio/appmetrica/analytics/impl/hi;Lio/appmetrica/analytics/ReporterConfig;Lio/appmetrica/analytics/impl/De;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->e()Lio/appmetrica/analytics/impl/j4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 9
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Yh;->d:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    .line 11
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Yh;->a:Lio/appmetrica/analytics/impl/q0;

    .line 12
    iput-object p4, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    .line 13
    iput-object p5, p0, Lio/appmetrica/analytics/impl/Yh;->e:Lio/appmetrica/analytics/ReporterConfig;

    .line 14
    iput-object p6, p0, Lio/appmetrica/analytics/impl/Yh;->g:Lio/appmetrica/analytics/impl/De;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/q0;)V
    .locals 6

    .line 3
    new-instance v2, Lio/appmetrica/analytics/impl/sh;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/sh;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/impl/hi;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/hi;-><init>()V

    .line 4
    invoke-static {p2}, Lio/appmetrica/analytics/ReporterConfig;->newConfigBuilder(Ljava/lang/String;)Lio/appmetrica/analytics/ReporterConfig$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lio/appmetrica/analytics/ReporterConfig$Builder;->build()Lio/appmetrica/analytics/ReporterConfig;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    .line 5
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/Yh;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/sh;Lio/appmetrica/analytics/impl/q0;Lio/appmetrica/analytics/impl/hi;Lio/appmetrica/analytics/ReporterConfig;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lio/appmetrica/analytics/impl/q0;

    invoke-direct {p2}, Lio/appmetrica/analytics/impl/q0;-><init>()V

    .line 2
    invoke-direct {p0, p1, p3, p2}, Lio/appmetrica/analytics/impl/Yh;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/q0;)V

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/q0;Landroid/content/Context;Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/Ya;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Lio/appmetrica/analytics/impl/p0;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/p0;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object p0

    .line 4
    invoke-interface {p0, p2}, Lio/appmetrica/analytics/impl/Ja;->c(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/Ya;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/ReporterConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 13
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Mh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Mh;-><init>(Lio/appmetrica/analytics/impl/Yh;Lio/appmetrica/analytics/ReporterConfig;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/S;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/S;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Sh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Sh;-><init>(Lio/appmetrica/analytics/impl/Yh;Lio/appmetrica/analytics/impl/S;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/nn;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/nn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    .line 6
    iget-object v0, v0, Lio/appmetrica/analytics/impl/sh;->d:Lio/appmetrica/analytics/impl/bn;

    .line 7
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Qh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Qh;-><init>(Lio/appmetrica/analytics/impl/Yh;Lio/appmetrica/analytics/impl/nn;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lio/appmetrica/analytics/ReporterConfig;->newConfigBuilder(Ljava/lang/String;)Lio/appmetrica/analytics/ReporterConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/ReporterConfig$Builder;->build()Lio/appmetrica/analytics/ReporterConfig;

    move-result-object p1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Lh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Lh;-><init>(Lio/appmetrica/analytics/impl/Yh;Lio/appmetrica/analytics/ReporterConfig;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final clearAppEnvironment()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Vh;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/Vh;-><init>(Lio/appmetrica/analytics/impl/Yh;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getPluginExtension()Lio/appmetrica/analytics/plugins/IPluginReporter;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Yh;->g:Lio/appmetrica/analytics/impl/De;

    return-object p0
.end method

.method public final pauseSession()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Dh;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/Dh;-><init>(Lio/appmetrica/analytics/impl/Yh;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Uh;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/Uh;-><init>(Lio/appmetrica/analytics/impl/Yh;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/AdRevenue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/sh;->h:Lio/appmetrica/analytics/impl/bn;

    .line 3
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Hh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Hh;-><init>(Lio/appmetrica/analytics/impl/Yh;Lio/appmetrica/analytics/AdRevenue;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;Z)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/AdRevenue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    .line 7
    iget-object v0, v0, Lio/appmetrica/analytics/impl/sh;->h:Lio/appmetrica/analytics/impl/bn;

    .line 8
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Ph;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/Ph;-><init>(Lio/appmetrica/analytics/impl/Yh;Lio/appmetrica/analytics/AdRevenue;Z)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportAnr(Ljava/util/Map;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/sh;->j:Lio/appmetrica/analytics/impl/bn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getListFromMap(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Rh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Rh;-><init>(Lio/appmetrica/analytics/impl/Yh;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportECommerce(Lio/appmetrica/analytics/ecommerce/ECommerceEvent;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/ecommerce/ECommerceEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/sh;->i:Lio/appmetrica/analytics/impl/bn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Jh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Jh;-><init>(Lio/appmetrica/analytics/impl/Yh;Lio/appmetrica/analytics/ecommerce/ECommerceEvent;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lio/appmetrica/analytics/impl/Yh;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    .line 10
    iget-object v0, v0, Lio/appmetrica/analytics/impl/sh;->c:Lio/appmetrica/analytics/impl/bn;

    .line 11
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    .line 12
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Ah;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Ah;-><init>(Lio/appmetrica/analytics/impl/Yh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/sh;->b:Lio/appmetrica/analytics/impl/bn;

    .line 3
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lio/appmetrica/analytics/impl/R1;

    invoke-direct {p2}, Lio/appmetrica/analytics/impl/R1;-><init>()V

    .line 6
    invoke-virtual {p2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 7
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/zh;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/zh;-><init>(Lio/appmetrica/analytics/impl/Yh;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/ModuleEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Nh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Nh;-><init>(Lio/appmetrica/analytics/impl/Yh;Lio/appmetrica/analytics/ModuleEvent;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/sh;->a:Lio/appmetrica/analytics/impl/bn;

    .line 3
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Wh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Wh;-><init>(Lio/appmetrica/analytics/impl/Yh;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    .line 7
    iget-object v0, v0, Lio/appmetrica/analytics/impl/sh;->a:Lio/appmetrica/analytics/impl/bn;

    .line 8
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Xh;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/Xh;-><init>(Lio/appmetrica/analytics/impl/Yh;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    .line 12
    iget-object v0, v0, Lio/appmetrica/analytics/impl/sh;->a:Lio/appmetrica/analytics/impl/bn;

    .line 13
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    .line 14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {p2}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getListFromMap(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    .line 16
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/yh;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/yh;-><init>(Lio/appmetrica/analytics/impl/Yh;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportRevenue(Lio/appmetrica/analytics/Revenue;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/Revenue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/sh;->g:Lio/appmetrica/analytics/impl/bn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Gh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Gh;-><init>(Lio/appmetrica/analytics/impl/Yh;Lio/appmetrica/analytics/Revenue;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportUnhandledException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/sh;->e:Lio/appmetrica/analytics/impl/bn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Bh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Bh;-><init>(Lio/appmetrica/analytics/impl/Yh;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportUserProfile(Lio/appmetrica/analytics/profile/UserProfile;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/profile/UserProfile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/sh;->f:Lio/appmetrica/analytics/impl/bn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Fh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Fh;-><init>(Lio/appmetrica/analytics/impl/Yh;Lio/appmetrica/analytics/profile/UserProfile;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final resumeSession()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Ch;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/Ch;-><init>(Lio/appmetrica/analytics/impl/Yh;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final sendEventsBuffer()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Th;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/Th;-><init>(Lio/appmetrica/analytics/impl/Yh;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setDataSendingEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Kh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Kh;-><init>(Lio/appmetrica/analytics/impl/Yh;Z)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setSessionExtra(Ljava/lang/String;[B)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Oh;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/Oh;-><init>(Lio/appmetrica/analytics/impl/Yh;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setUserProfileID(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->b:Lio/appmetrica/analytics/impl/sh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->f:Lio/appmetrica/analytics/impl/hi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Eh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Eh;-><init>(Lio/appmetrica/analytics/impl/Yh;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
