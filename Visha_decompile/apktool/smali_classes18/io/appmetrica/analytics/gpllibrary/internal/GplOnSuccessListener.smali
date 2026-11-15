.class Lio/appmetrica/analytics/gpllibrary/internal/GplOnSuccessListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llf7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llf7;"
    }
.end annotation


# instance fields
.field private final a:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Landroid/location/LocationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/gpllibrary/internal/GplOnSuccessListener;->a:Landroid/location/LocationListener;

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/location/Location;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/gpllibrary/internal/GplOnSuccessListener;->a:Landroid/location/LocationListener;

    invoke-interface {p0, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/gpllibrary/internal/GplOnSuccessListener;->onSuccess(Landroid/location/Location;)V

    return-void
.end method
