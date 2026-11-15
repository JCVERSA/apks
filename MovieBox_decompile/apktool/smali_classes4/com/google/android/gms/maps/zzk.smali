.class final Lcom/google/android/gms/maps/zzk;
.super Lcom/google/android/gms/maps/internal/zzam;
.source "source.java"


# instance fields
.field private final synthetic zzs:Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzk;->zzs:Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzam;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMapLoaded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzk;->zzs:Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;->onMapLoaded()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
