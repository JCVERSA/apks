.class public final Lio/appmetrica/analytics/impl/De;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/plugins/IPluginReporter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ge;

.field public final b:Lio/appmetrica/analytics/impl/He;

.field public final c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

.field public final d:Lio/appmetrica/analytics/coreapi/internal/backport/Provider;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/backport/Provider;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/coreapi/internal/backport/Provider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/coreapi/internal/backport/Provider<",
            "Lio/appmetrica/analytics/impl/Ya;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Ge;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ge;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/De;->a:Lio/appmetrica/analytics/impl/Ge;

    new-instance v0, Lio/appmetrica/analytics/impl/He;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/He;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/De;->b:Lio/appmetrica/analytics/impl/He;

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->e()Lio/appmetrica/analytics/impl/j4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/De;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/De;->d:Lio/appmetrica/analytics/coreapi/internal/backport/Provider;

    return-void
.end method


# virtual methods
.method public final reportError(Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/plugins/PluginErrorDetails;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/De;->a:Lio/appmetrica/analytics/impl/Ge;

    .line 2
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Ge;->a:Lio/appmetrica/analytics/impl/bn;

    .line 3
    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    .line 4
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ge;->c:Lio/appmetrica/analytics/impl/Qd;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/appmetrica/analytics/plugins/PluginErrorDetails;->getStacktrace()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Qd;->a(Ljava/util/Collection;)Lio/appmetrica/analytics/impl/Nn;

    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lio/appmetrica/analytics/impl/Nn;->a:Z

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/De;->b:Lio/appmetrica/analytics/impl/He;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object v0, p0, Lio/appmetrica/analytics/impl/De;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Be;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/Be;-><init>(Lio/appmetrica/analytics/impl/De;Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/plugins/PluginErrorDetails;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/De;->a:Lio/appmetrica/analytics/impl/Ge;

    .line 9
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ge;->b:Lio/appmetrica/analytics/impl/bn;

    .line 10
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/De;->b:Lio/appmetrica/analytics/impl/He;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v0, p0, Lio/appmetrica/analytics/impl/De;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Ce;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Ce;-><init>(Lio/appmetrica/analytics/impl/De;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportUnhandledException(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/plugins/PluginErrorDetails;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/De;->a:Lio/appmetrica/analytics/impl/Ge;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ge;->a:Lio/appmetrica/analytics/impl/bn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/De;->b:Lio/appmetrica/analytics/impl/He;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/De;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Ae;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Ae;-><init>(Lio/appmetrica/analytics/impl/De;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
