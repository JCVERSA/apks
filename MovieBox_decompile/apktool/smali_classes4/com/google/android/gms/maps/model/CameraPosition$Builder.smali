.class public final Lcom/google/android/gms/maps/model/CameraPosition$Builder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/CameraPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bearing:F

.field private target:Lcom/google/android/gms/maps/model/LatLng;

.field private tilt:F

.field private zoom:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 4
    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom:F

    .line 5
    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->tilt:F

    .line 6
    iget p1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing:F

    return-void
.end method


# virtual methods
.method public final bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing:F

    .line 2
    .line 3
    return-object p0
.end method

.method public final build()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom:F

    .line 6
    .line 7
    iget v3, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->tilt:F

    .line 8
    .line 9
    iget v4, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing:F

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 2
    .line 3
    return-object p0
.end method

.method public final tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->tilt:F

    .line 2
    .line 3
    return-object p0
.end method

.method public final zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom:F

    .line 2
    .line 3
    return-object p0
.end method
