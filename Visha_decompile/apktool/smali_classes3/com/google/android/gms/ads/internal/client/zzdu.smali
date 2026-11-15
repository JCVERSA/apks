.class public final Lcom/google/android/gms/ads/internal/client/zzdu;
.super Lcom/google/android/gms/internal/ads/zzaxx;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IOutOfContextTesterCreator"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaxx;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzboy;I)Lcom/google/android/gms/ads/internal/client/zzdt;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaxx;->zza()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p3, p1}, Laue;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p3, p2}, Laue;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const p1, 0xefc3650

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzaxx;->zzcZ(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.client.IOutOfContextTester"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p3, p2, Lcom/google/android/gms/ads/internal/client/zzdt;

    if-eqz p3, :cond_1

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzdt;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/google/android/gms/ads/internal/client/zzdr;

    invoke-direct {p2, p1}, Lcom/google/android/gms/ads/internal/client/zzdr;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method
