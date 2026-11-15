.class public final Lio/appmetrica/analytics/impl/Qb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Pb;
.implements Lio/appmetrica/analytics/impl/Ml;
.implements Lio/appmetrica/analytics/locationapi/internal/LocationProvider;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/Ub;

.field public final c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

.field public final d:Lio/appmetrica/analytics/impl/Vk;

.field public final e:Lio/appmetrica/analytics/impl/bk;

.field public final f:Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;

.field public final g:Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProviderFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ub;Lio/appmetrica/analytics/locationapi/internal/LocationClient;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Qb;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Qb;->b:Lio/appmetrica/analytics/impl/Ub;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Qb;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    new-instance p1, Lio/appmetrica/analytics/impl/Zb;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Zb;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Vk;

    new-instance v1, Lio/appmetrica/analytics/impl/w5;

    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/ua;->o()Lio/appmetrica/analytics/impl/bk;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/bk;->getAskForPermissionStrategy()Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-direct {v1, v3}, Lio/appmetrica/analytics/impl/w5;-><init>([Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Vk;-><init>(Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Qb;->d:Lio/appmetrica/analytics/impl/Vk;

    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->o()Lio/appmetrica/analytics/impl/bk;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Qb;->e:Lio/appmetrica/analytics/impl/bk;

    invoke-static {p2, p1}, Lio/appmetrica/analytics/impl/Tb;->a(Lio/appmetrica/analytics/impl/Ub;Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;)V

    invoke-static {p2, p3}, Lio/appmetrica/analytics/impl/Tb;->a(Lio/appmetrica/analytics/impl/Ub;Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;)V

    invoke-interface {p3}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->getLastKnownExtractorProviderFactory()Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Qb;->f:Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;

    invoke-interface {p3}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->getLocationReceiverProviderFactory()Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProviderFactory;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Qb;->g:Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProviderFactory;

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qb;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->updateUserLocation(Landroid/location/Location;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/Hl;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Hl;->y:Lio/appmetrica/analytics/impl/x3;

    if-eqz p1, :cond_0

    .line 2
    iget-wide v0, p1, Lio/appmetrica/analytics/impl/x3;->a:J

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qb;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    new-instance p1, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;

    const/4 v2, 0x2

    int-to-long v2, v2

    mul-long/2addr v2, v0

    invoke-direct {p1, v0, v1, v2, v3}, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;-><init>(JJ)V

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->updateCacheArguments(Lio/appmetrica/analytics/locationapi/internal/CacheArguments;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 4
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qb;->b:Lio/appmetrica/analytics/impl/Ub;

    check-cast p0, Lio/appmetrica/analytics/impl/Xb;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Xb;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 5
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qb;->b:Lio/appmetrica/analytics/impl/Ub;

    check-cast p0, Lio/appmetrica/analytics/impl/Xb;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Xb;->a(Z)V

    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/Vk;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qb;->d:Lio/appmetrica/analytics/impl/Vk;

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qb;->b:Lio/appmetrica/analytics/impl/Ub;

    check-cast p0, Lio/appmetrica/analytics/impl/Xb;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Xb;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final getLastKnownExtractorProviderFactory()Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qb;->f:Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;

    return-object p0
.end method

.method public final getLocationReceiverProviderFactory()Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProviderFactory;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qb;->g:Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProviderFactory;

    return-object p0
.end method

.method public final getPermissionExtractor()Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qb;->d:Lio/appmetrica/analytics/impl/Vk;

    return-object p0
.end method

.method public final getSystemLocation()Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qb;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {p0}, Lio/appmetrica/analytics/locationapi/internal/LocationProvider;->getSystemLocation()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public final getUserLocation()Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qb;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {p0}, Lio/appmetrica/analytics/locationapi/internal/LocationProvider;->getUserLocation()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public final init()V
    .locals 5

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Qb;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Qb;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Qb;->d:Lio/appmetrica/analytics/impl/Vk;

    sget-object v3, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/ua;->d:Lio/appmetrica/analytics/impl/Uj;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/Uj;->c()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v3

    iget-object v4, p0, Lio/appmetrica/analytics/impl/Qb;->e:Lio/appmetrica/analytics/impl/bk;

    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/bk;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->init(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Ljava/util/List;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Qb;->e:Lio/appmetrica/analytics/impl/bk;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/bk;->f()Lio/appmetrica/analytics/modulesapi/internal/service/ModuleLocationSourcesServiceController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleLocationSourcesServiceController;->init()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Qb;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {v0}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->getLastKnownExtractorProviderFactory()Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;

    move-result-object v1

    invoke-interface {v1}, Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;->getGplLastKnownLocationExtractorProvider()Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->registerSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Qb;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {v0}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->getLastKnownExtractorProviderFactory()Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;

    move-result-object v1

    invoke-interface {v1}, Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;->getNetworkLastKnownLocationExtractorProvider()Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->registerSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V

    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Qb;->b:Lio/appmetrica/analytics/impl/Ub;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Qb;->e:Lio/appmetrica/analytics/impl/bk;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/bk;->g()Lio/appmetrica/analytics/coreapi/internal/control/Toggle;

    move-result-object v1

    check-cast v0, Lio/appmetrica/analytics/impl/Xb;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Xb;->a(Lio/appmetrica/analytics/coreapi/internal/control/Toggle;)V

    sget-object v0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/ua;->u:Lio/appmetrica/analytics/impl/Jl;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/Jl;->a(Lio/appmetrica/analytics/impl/Ml;)V

    return-void
.end method

.method public final registerControllerObserver(Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;)V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qb;->b:Lio/appmetrica/analytics/impl/Ub;

    check-cast p0, Lio/appmetrica/analytics/impl/Xb;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/Xb;->a(Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;Z)V

    return-void
.end method

.method public final registerSource(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qb;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->registerSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V

    return-void
.end method

.method public final registerSource(Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qb;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->registerSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;)V

    return-void
.end method

.method public final unregisterSource(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qb;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->unregisterSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V

    return-void
.end method

.method public final unregisterSource(Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qb;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->unregisterSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;)V

    return-void
.end method

.method public final updateLocationFilter(Lio/appmetrica/analytics/locationapi/internal/LocationFilter;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qb;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->updateLocationFilter(Lio/appmetrica/analytics/locationapi/internal/LocationFilter;)V

    return-void
.end method
