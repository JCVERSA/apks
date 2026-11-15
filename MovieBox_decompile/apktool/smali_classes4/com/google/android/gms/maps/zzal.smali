.class final Lcom/google/android/gms/maps/zzal;
.super Lcom/google/android/gms/maps/internal/zzbq;
.source "source.java"


# instance fields
.field private final synthetic zzbv:Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzal;->zzbv:Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzbq;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzal;->zzbv:Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/maps/StreetViewPanorama;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/StreetViewPanorama;-><init>(Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;->onStreetViewPanoramaReady(Lcom/google/android/gms/maps/StreetViewPanorama;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
