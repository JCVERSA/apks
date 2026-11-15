.class final Lcom/google/android/gms/measurement/internal/zzjk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzq;

.field final synthetic zzd:Lcom/google/android/gms/internal/measurement/zzcf;

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/j;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/j;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq;Lcom/google/android/gms/internal/measurement/zzcf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zze:Lcom/google/android/gms/measurement/internal/j;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zzc:Lcom/google/android/gms/measurement/internal/zzq;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zzd:Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zze:Lcom/google/android/gms/measurement/internal/j;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/j;->G(Lcom/google/android/gms/measurement/internal/j;)Lcom/google/android/gms/measurement/internal/zzee;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object v1

    const-string v2, "Failed to get conditional properties; not connected to service"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lu6h;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zze:Lcom/google/android/gms/measurement/internal/j;

    iget-object v1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zzd:Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-virtual {v1, p0, v0}, Lc9j;->C(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/util/ArrayList;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zzc:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-static {v1}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zzc:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzee;->zzf(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lc9j;->u(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zze:Lcom/google/android/gms/measurement/internal/j;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/j;->M(Lcom/google/android/gms/measurement/internal/j;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zze:Lcom/google/android/gms/measurement/internal/j;

    iget-object v1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zze:Lcom/google/android/gms/measurement/internal/j;

    iget-object v2, v2, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object v2

    const-string v3, "Failed to get conditional properties; remote exception"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v1}, Lu6h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zze:Lcom/google/android/gms/measurement/internal/j;

    iget-object v1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zze:Lcom/google/android/gms/measurement/internal/j;

    iget-object v2, v2, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjk;->zzd:Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-virtual {v2, p0, v0}, Lc9j;->C(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/util/ArrayList;)V

    throw v1
.end method
