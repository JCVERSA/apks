.class final Lcom/google/android/gms/maps/zzac;
.super Lcom/google/android/gms/maps/internal/zzaq;
.source "source.java"


# instance fields
.field private final synthetic zzbc:Lcom/google/android/gms/maps/OnMapReadyCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/MapView$zza;Lcom/google/android/gms/maps/OnMapReadyCallback;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzac;->zzbc:Lcom/google/android/gms/maps/OnMapReadyCallback;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzaq;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzac;->zzbc:Lcom/google/android/gms/maps/OnMapReadyCallback;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/maps/GoogleMap;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/GoogleMap;-><init>(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/OnMapReadyCallback;->onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
