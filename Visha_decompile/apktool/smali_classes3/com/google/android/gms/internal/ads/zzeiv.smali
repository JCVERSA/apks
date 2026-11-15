.class public final Lcom/google/android/gms/internal/ads/zzeiv;
.super Lcom/google/android/gms/ads/internal/client/zzbp;
.source "SourceFile"


# instance fields
.field private final zza:Lx4h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llkf;Lcnh;Lsdg;Lcom/google/android/gms/ads/internal/client/zzbk;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzbp;-><init>()V

    new-instance v0, Lz4h;

    invoke-virtual {p2}, Llkf;->n()Lsmg;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lz4h;-><init>(Lsdg;Lsmg;)V

    invoke-virtual {v0, p5}, Lz4h;->e(Lcom/google/android/gms/ads/internal/client/zzbk;)V

    new-instance p4, Lf5h;

    invoke-direct {p4, p2, p1, v0, p3}, Lf5h;-><init>(Llkf;Landroid/content/Context;Lz4h;Lcnh;)V

    new-instance p1, Lx4h;

    invoke-virtual {p3}, Lcnh;->l()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Lx4h;-><init>(Lc5h;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeiv;->zza:Lx4h;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zze()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiv;->zza:Lx4h;

    invoke-virtual {v0}, Lx4h;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzf()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiv;->zza:Lx4h;

    invoke-virtual {v0}, Lx4h;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzg(Lcom/google/android/gms/ads/internal/client/zzm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeiv;->zza:Lx4h;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lx4h;->d(Lcom/google/android/gms/ads/internal/client/zzm;I)V

    return-void
.end method

.method public final declared-synchronized zzh(Lcom/google/android/gms/ads/internal/client/zzm;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiv;->zza:Lx4h;

    invoke-virtual {v0, p1, p2}, Lx4h;->d(Lcom/google/android/gms/ads/internal/client/zzm;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzi()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiv;->zza:Lx4h;

    invoke-virtual {v0}, Lx4h;->e()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
