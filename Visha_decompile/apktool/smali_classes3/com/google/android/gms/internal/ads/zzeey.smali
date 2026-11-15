.class final Lcom/google/android/gms/internal/ads/zzeey;
.super Lcom/google/android/gms/internal/ads/zzbqq;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/f5;

.field private final zzb:Lnxg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/f5;Lnxg;Luzg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeey;->zza:Lcom/google/android/gms/internal/ads/f5;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbqq;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeey;->zzb:Lnxg;

    return-void
.end method


# virtual methods
.method public final zze(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeey;->zzb:Lnxg;

    iget-object p0, p0, Lnxg;->c:Lx0g;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzedw;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzedw;->zzi(ILjava/lang/String;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeey;->zzb:Lnxg;

    iget-object p0, p0, Lnxg;->c:Lx0g;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzedw;->zzh(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbpn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeey;->zza:Lcom/google/android/gms/internal/ads/f5;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/f5;->c(Lcom/google/android/gms/internal/ads/f5;Lcom/google/android/gms/internal/ads/zzbpn;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeey;->zzb:Lnxg;

    iget-object p0, p0, Lnxg;->c:Lx0g;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzedw;->zzo()V

    return-void
.end method
