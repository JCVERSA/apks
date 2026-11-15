.class Lio/appmetrica/analytics/gpllibrary/internal/GplLocationCallback;
.super Lio5;
.source "SourceFile"


# instance fields
.field private final a:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Landroid/location/LocationListener;)V
    .locals 0

    invoke-direct {p0}, Lio5;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/gpllibrary/internal/GplLocationCallback;->a:Landroid/location/LocationListener;

    return-void
.end method


# virtual methods
.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/gpllibrary/internal/GplLocationCallback;->a:Landroid/location/LocationListener;

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method
