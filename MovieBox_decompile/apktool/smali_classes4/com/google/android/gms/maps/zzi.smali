.class final Lcom/google/android/gms/maps/zzi;
.super Lcom/google/android/gms/maps/internal/zzaw;
.source "source.java"


# instance fields
.field private final synthetic zzq:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzi;->zzq:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzaw;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMyLocationButtonClick()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzi;->zzq:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;->onMyLocationButtonClick()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
