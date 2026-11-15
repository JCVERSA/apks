.class final Lcom/google/android/gms/maps/zzad;
.super Lcom/google/android/gms/maps/internal/zzbk;
.source "source.java"


# instance fields
.field private final synthetic zzbp:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaChangeListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/StreetViewPanorama;Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaChangeListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzad;->zzbp:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaChangeListener;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzbk;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStreetViewPanoramaChange(Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzad;->zzbp:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaChangeListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaChangeListener;->onStreetViewPanoramaChange(Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
