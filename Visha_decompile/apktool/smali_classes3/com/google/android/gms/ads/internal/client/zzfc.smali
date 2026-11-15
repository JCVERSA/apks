.class final Lcom/google/android/gms/ads/internal/client/zzfc;
.super Lcom/google/android/gms/ads/internal/client/zzbp;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzfe;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/client/zzfe;Lcom/google/android/gms/ads/internal/client/zzfd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzfc;->zza:Lcom/google/android/gms/ads/internal/client/zzfe;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzbp;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/ads/internal/client/zzm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzfc;->zzh(Lcom/google/android/gms/ads/internal/client/zzm;I)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/ads/internal/client/zzm;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/ads/internal/util/client/zzf;->zza:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/ads/internal/client/zzfb;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/client/zzfb;-><init>(Lcom/google/android/gms/ads/internal/client/zzfc;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzi()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method
