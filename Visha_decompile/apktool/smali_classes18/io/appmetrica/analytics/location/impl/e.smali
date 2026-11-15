.class public final Lio/appmetrica/analytics/location/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/location/impl/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;)Lio/appmetrica/analytics/coreapi/internal/permission/PermissionResolutionStrategy;
    .locals 1

    new-instance p0, Lio/appmetrica/analytics/coreutils/internal/permission/SinglePermissionStrategy;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/coreutils/internal/permission/SinglePermissionStrategy;-><init>(Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Ljava/lang/String;)V

    return-object p0
.end method
