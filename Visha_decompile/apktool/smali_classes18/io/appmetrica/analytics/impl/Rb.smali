.class public final Lio/appmetrica/analytics/impl/Rb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Pb;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ke;

.field public final b:Lio/appmetrica/analytics/impl/zb;

.field public final c:Lio/appmetrica/analytics/impl/bc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/ke;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ke;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rb;->a:Lio/appmetrica/analytics/impl/ke;

    new-instance v0, Lio/appmetrica/analytics/impl/zb;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/zb;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rb;->b:Lio/appmetrica/analytics/impl/zb;

    new-instance v0, Lio/appmetrica/analytics/impl/bc;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/bc;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rb;->c:Lio/appmetrica/analytics/impl/bc;

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 3
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final getLastKnownExtractorProviderFactory()Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rb;->b:Lio/appmetrica/analytics/impl/zb;

    return-object p0
.end method

.method public final getLocationReceiverProviderFactory()Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProviderFactory;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rb;->c:Lio/appmetrica/analytics/impl/bc;

    return-object p0
.end method

.method public final getPermissionExtractor()Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rb;->a:Lio/appmetrica/analytics/impl/ke;

    return-object p0
.end method

.method public final getSystemLocation()Landroid/location/Location;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUserLocation()Landroid/location/Location;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final init()V
    .locals 0

    return-void
.end method

.method public final registerControllerObserver(Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;)V
    .locals 0

    return-void
.end method

.method public final registerSource(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final registerSource(Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final unregisterSource(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final unregisterSource(Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final updateLocationFilter(Lio/appmetrica/analytics/locationapi/internal/LocationFilter;)V
    .locals 0

    return-void
.end method
