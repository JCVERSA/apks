.class final Lcom/google/android/gms/internal/ads/zzdst;
.super Lcom/google/android/gms/internal/ads/zzbwj;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/s4;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/s4;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdst;->zza:Lcom/google/android/gms/internal/ads/s4;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbwj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdst;->zza:Lcom/google/android/gms/internal/ads/s4;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/s4;->c(Lcom/google/android/gms/internal/ads/s4;)Lyng;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/s4;->b(Lcom/google/android/gms/internal/ads/s4;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lyng;->m(JI)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdst;->zza:Lcom/google/android/gms/internal/ads/s4;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/s4;->c(Lcom/google/android/gms/internal/ads/s4;)Lyng;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/s4;->b(Lcom/google/android/gms/internal/ads/s4;)J

    move-result-wide v1

    iget p0, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    invoke-virtual {v0, v1, v2, p0}, Lyng;->m(JI)V

    return-void
.end method

.method public final zzg()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdst;->zza:Lcom/google/android/gms/internal/ads/s4;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/s4;->c(Lcom/google/android/gms/internal/ads/s4;)Lyng;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/s4;->b(Lcom/google/android/gms/internal/ads/s4;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lyng;->p(J)V

    return-void
.end method
