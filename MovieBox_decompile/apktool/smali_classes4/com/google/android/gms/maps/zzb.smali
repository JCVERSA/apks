.class final Lcom/google/android/gms/maps/zzb;
.super Lcom/google/android/gms/maps/internal/zzas;
.source "source.java"


# instance fields
.field private final synthetic zzj:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzb;->zzj:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzas;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/maps/zzt;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzb;->zzj:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method
