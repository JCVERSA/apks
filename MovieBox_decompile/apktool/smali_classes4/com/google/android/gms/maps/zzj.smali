.class final Lcom/google/android/gms/maps/zzj;
.super Lcom/google/android/gms/maps/internal/zzba;
.source "source.java"


# instance fields
.field private final synthetic zzr:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzj;->zzr:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzba;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMyLocationClick(Landroid/location/Location;)V
    .locals 1
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzj;->zzr:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;->onMyLocationClick(Landroid/location/Location;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
