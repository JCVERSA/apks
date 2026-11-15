.class final Lcom/google/android/gms/maps/zza;
.super Lcom/google/android/gms/maps/internal/zzaa;
.source "source.java"


# instance fields
.field private final synthetic zzi:Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zza;->zzi:Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzaa;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onIndoorBuildingFocused()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zza;->zzi:Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;->onIndoorBuildingFocused()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/maps/zzn;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zza;->zzi:Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/maps/model/IndoorBuilding;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/IndoorBuilding;-><init>(Lcom/google/android/gms/internal/maps/zzn;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;->onIndoorLevelActivated(Lcom/google/android/gms/maps/model/IndoorBuilding;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
