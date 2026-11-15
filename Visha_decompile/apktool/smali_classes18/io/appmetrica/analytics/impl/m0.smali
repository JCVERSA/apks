.class public final Lio/appmetrica/analytics/impl/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ia;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

.field public final c:Lio/appmetrica/analytics/impl/v4;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->e()Lio/appmetrica/analytics/impl/j4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/m0;->b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    invoke-interface {v0}, Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/m0;->a:Landroid/os/Handler;

    new-instance v0, Lio/appmetrica/analytics/impl/v4;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/v4;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/m0;->c:Lio/appmetrica/analytics/impl/v4;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/v4;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/m0;->c:Lio/appmetrica/analytics/impl/v4;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/ab;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/AppMetricaConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/ab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public final b()Landroid/os/Handler;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m0;->a:Landroid/os/Handler;

    return-object p0
.end method

.method public final c()Lio/appmetrica/analytics/impl/W1;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lio/appmetrica/analytics/impl/W1;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/W1;-><init>()V

    return-object p0
.end method

.method public final d()Lio/appmetrica/analytics/impl/qb;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lio/appmetrica/analytics/impl/qb;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/qb;-><init>()V

    return-object p0
.end method

.method public final getDefaultExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m0;->b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    return-object p0
.end method
