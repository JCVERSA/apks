.class public final Lio/appmetrica/analytics/impl/Zb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;
.implements Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;


# static fields
.field public static final b:Lio/appmetrica/analytics/impl/Yb;

.field public static final c:Ljava/util/List;


# instance fields
.field public volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/Yb;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Yb;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/Zb;->b:Lio/appmetrica/analytics/impl/Yb;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/impl/Zb;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final forbidUsePermission(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/Zb;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/Zb;->a:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final startLocationTracking()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Zb;->a:Z

    return-void
.end method

.method public final stopLocationTracking()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Zb;->a:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationFlagStrategy(enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/Zb;->a:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", locationPermissions="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lio/appmetrica/analytics/impl/Zb;->c:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
