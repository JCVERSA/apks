.class final Lcom/google/android/gms/internal/measurement/zzdb;
.super Lcom/google/android/gms/internal/measurement/zzdt;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzbz;

.field final synthetic zzb:Lcom/google/android/gms/internal/measurement/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/b;Lcom/google/android/gms/internal/measurement/zzbz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdb;->zzb:Lcom/google/android/gms/internal/measurement/b;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzdb;->zza:Lcom/google/android/gms/internal/measurement/zzbz;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzdt;-><init>(Lcom/google/android/gms/internal/measurement/b;Z)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdb;->zzb:Lcom/google/android/gms/internal/measurement/b;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b;->y(Lcom/google/android/gms/internal/measurement/b;)Lcom/google/android/gms/internal/measurement/zzcc;

    move-result-object v0

    invoke-static {v0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzdb;->zza:Lcom/google/android/gms/internal/measurement/zzbz;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/zzcc;->getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/zzcf;)V

    return-void
.end method

.method public final zzb()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzdb;->zza:Lcom/google/android/gms/internal/measurement/zzbz;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzbz;->zzd(Landroid/os/Bundle;)V

    return-void
.end method
