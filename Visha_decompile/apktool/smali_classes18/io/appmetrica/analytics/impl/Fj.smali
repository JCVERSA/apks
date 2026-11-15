.class public final Lio/appmetrica/analytics/impl/Fj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ya;
.implements Lio/appmetrica/analytics/plugins/IPluginReporter;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public volatile b:Lio/appmetrica/analytics/impl/Yh;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fj;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/S;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/S;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/yj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/yj;-><init>(Lio/appmetrica/analytics/impl/S;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/Xa;)V
    .locals 1

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fj;->b:Lio/appmetrica/analytics/impl/Yh;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fj;->b:Lio/appmetrica/analytics/impl/Yh;

    invoke-interface {p1, v0}, Lio/appmetrica/analytics/impl/Xa;->a(Lio/appmetrica/analytics/impl/Ya;)V
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

.method public final a(Lio/appmetrica/analytics/impl/nn;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/nn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/pj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/pj;-><init>(Lio/appmetrica/analytics/impl/nn;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final clearAppEnvironment()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Aj;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Aj;-><init>()V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final getPluginExtension()Lio/appmetrica/analytics/plugins/IPluginReporter;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public final pauseSession()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/jj;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/jj;-><init>()V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lio/appmetrica/analytics/impl/zj;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/zj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/AdRevenue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/qj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/qj;-><init>(Lio/appmetrica/analytics/AdRevenue;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;Z)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/AdRevenue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/wj;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/wj;-><init>(Lio/appmetrica/analytics/AdRevenue;Z)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportAnr(Ljava/util/Map;)V
    .locals 1
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

    new-instance v0, Lio/appmetrica/analytics/impl/xj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/xj;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportECommerce(Lio/appmetrica/analytics/ecommerce/ECommerceEvent;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/ecommerce/ECommerceEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lio/appmetrica/analytics/impl/nj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/nj;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceEvent;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportError(Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/plugins/PluginErrorDetails;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/sj;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/sj;-><init>(Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/gj;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/appmetrica/analytics/impl/gj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 1
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

    .line 5
    new-instance v0, Lio/appmetrica/analytics/impl/tj;

    invoke-direct {v0, p1, p2, p3}, Lio/appmetrica/analytics/impl/tj;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/gj;

    invoke-direct {v0, p1, p2, p3}, Lio/appmetrica/analytics/impl/gj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/fj;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/fj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/ModuleEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/uj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/uj;-><init>(Lio/appmetrica/analytics/ModuleEvent;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Cj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Cj;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/Dj;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/Dj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/Ej;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/Ej;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportRevenue(Lio/appmetrica/analytics/Revenue;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/Revenue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lio/appmetrica/analytics/impl/mj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/mj;-><init>(Lio/appmetrica/analytics/Revenue;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportUnhandledException(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/plugins/PluginErrorDetails;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/rj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/rj;-><init>(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportUnhandledException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/hj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/hj;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final reportUserProfile(Lio/appmetrica/analytics/profile/UserProfile;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/profile/UserProfile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lio/appmetrica/analytics/impl/lj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/lj;-><init>(Lio/appmetrica/analytics/profile/UserProfile;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final resumeSession()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/ij;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ij;-><init>()V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final sendEventsBuffer()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Bj;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Bj;-><init>()V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final setDataSendingEnabled(Z)V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/oj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/oj;-><init>(Z)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final setSessionExtra(Ljava/lang/String;[B)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lio/appmetrica/analytics/impl/vj;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/vj;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method

.method public final setUserProfileID(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lio/appmetrica/analytics/impl/kj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/kj;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    return-void
.end method
