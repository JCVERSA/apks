.class public final Lio/appmetrica/analytics/location/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/location/impl/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getExtractor(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Landroid/location/LocationListener;)Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractor;
    .locals 2

    new-instance p0, Lio/appmetrica/analytics/location/impl/b;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/permission/SinglePermissionStrategy;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {v0, p2, v1}, Lio/appmetrica/analytics/coreutils/internal/permission/SinglePermissionStrategy;-><init>(Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p4, p3}, Lio/appmetrica/analytics/location/impl/b;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/permission/PermissionResolutionStrategy;Landroid/location/LocationListener;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;)V

    return-object p0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/location/impl/c;->a:Ljava/lang/String;

    return-object p0
.end method
