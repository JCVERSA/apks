.class final Lcom/google/android/gms/internal/measurement/zzdh;
.super Lcom/google/android/gms/internal/measurement/zzdt;
.source "SourceFile"


# instance fields
.field final synthetic zza:Landroid/os/Bundle;

.field final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzbz;

.field final synthetic zzc:Lcom/google/android/gms/internal/measurement/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/b;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzbz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzc:Lcom/google/android/gms/internal/measurement/b;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zza:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzb:Lcom/google/android/gms/internal/measurement/zzbz;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzdt;-><init>(Lcom/google/android/gms/internal/measurement/b;Z)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzc:Lcom/google/android/gms/internal/measurement/b;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b;->y(Lcom/google/android/gms/internal/measurement/b;)Lcom/google/android/gms/internal/measurement/zzcc;

    move-result-object v0

    invoke-static {v0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zza:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzb:Lcom/google/android/gms/internal/measurement/zzbz;

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzdt;->zzh:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzcf;J)V

    return-void
.end method

.method public final zzb()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzb:Lcom/google/android/gms/internal/measurement/zzbz;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzbz;->zzd(Landroid/os/Bundle;)V

    return-void
.end method
