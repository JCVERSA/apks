.class public abstract Lcom/google/android/gms/maps/internal/zzas;
.super Lcom/google/android/gms/internal/maps/zzb;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/maps/internal/zzar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.maps.internal.IOnMarkerClickListener"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/maps/zzb;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 p4, 0x1

    .line 2
    if-ne p1, p4, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/maps/zzu;->zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/maps/zzt;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p0, p1}, Lcom/google/android/gms/maps/internal/zzar;->zza(Lcom/google/android/gms/internal/maps/zzt;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    .line 18
    .line 19
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/maps/zzc;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 20
    .line 21
    .line 22
    return p4

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method
