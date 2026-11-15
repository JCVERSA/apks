.class final Lcom/google/android/gms/maps/model/zzs;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/maps/model/TileProvider;


# instance fields
.field private final zzel:Lcom/google/android/gms/internal/maps/zzaf;

.field private final synthetic zzem:Lcom/google/android/gms/maps/model/TileOverlayOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/maps/model/zzs;->zzem:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zza(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/internal/maps/zzaf;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/maps/model/zzs;->zzel:Lcom/google/android/gms/internal/maps/zzaf;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getTile(III)Lcom/google/android/gms/maps/model/Tile;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/zzs;->zzel:Lcom/google/android/gms/internal/maps/zzaf;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/maps/zzaf;->getTile(III)Lcom/google/android/gms/maps/model/Tile;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p1

    .line 8
    :catch_0
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method
