.class final Lcom/google/android/gms/internal/ads/zzedo;
.super Lcom/google/android/gms/internal/ads/zzbqk;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/d5;

.field private final zzb:Lnxg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/d5;Lnxg;Lpyg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedo;->zza:Lcom/google/android/gms/internal/ads/d5;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbqk;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedo;->zzb:Lnxg;

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

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzedo;->zzb:Lnxg;

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

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzedo;->zzb:Lnxg;

    iget-object p0, p0, Lnxg;->c:Lx0g;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzedw;->zzh(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedo;->zza:Lcom/google/android/gms/internal/ads/d5;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/d5;->e(Lcom/google/android/gms/internal/ads/d5;Landroid/view/View;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzedo;->zzb:Lnxg;

    iget-object p0, p0, Lnxg;->c:Lx0g;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzedw;->zzo()V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzbph;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedo;->zza:Lcom/google/android/gms/internal/ads/d5;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/d5;->d(Lcom/google/android/gms/internal/ads/d5;Lcom/google/android/gms/internal/ads/zzbph;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzedo;->zzb:Lnxg;

    iget-object p0, p0, Lnxg;->c:Lx0g;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzedw;->zzo()V

    return-void
.end method
