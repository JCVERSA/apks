.class public final Lcom/google/android/gms/internal/ads/zzfqu;
.super Lcom/google/android/gms/internal/ads/zzaxx;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfqw;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.play.core.lmd.protocol.ILmdOverlayService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaxx;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zze(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfqy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaxx;->zza()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Laue;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Laue;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaxx;->zzdb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzf(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfqy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaxx;->zza()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p2}, Laue;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Laue;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaxx;->zzdb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzg(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfqy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaxx;->zza()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Laue;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Laue;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaxx;->zzdb(ILandroid/os/Parcel;)V

    return-void
.end method
