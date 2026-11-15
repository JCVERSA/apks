.class final Lcom/google/android/gms/maps/zzc;
.super Lcom/google/android/gms/maps/internal/zzau;
.source "source.java"


# instance fields
.field private final synthetic zzk:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzc;->zzk:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzau;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/maps/zzt;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzc;->zzk:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/maps/zzt;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzc;->zzk:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/maps/zzt;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzc;->zzk:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;->onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
