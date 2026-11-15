.class public final Lwzf;
.super La6g;
.source "SourceFile"

# interfaces
.implements Lozf;


# instance fields
.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public d:Ljava/util/concurrent/ScheduledFuture;

.field public e:Z


# direct methods
.method public constructor <init>(Lvzf;Ljava/util/Set;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0, p2}, La6g;-><init>(Ljava/util/Set;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lwzf;->e:Z

    iput-object p4, p0, Lwzf;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-super {p0, p1, p3}, La6g;->C(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic F(Lwzf;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Timeout waiting for show call succeed to be called."

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfl;

    const-string v1, "Timeout for show call succeed."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdfl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lwzf;->y(Lcom/google/android/gms/internal/ads/zzdfl;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwzf;->e:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 1

    new-instance v0, Lpzf;

    invoke-direct {v0, p1}, Lpzf;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-virtual {p0, v0}, La6g;->E(Lz5g;)V

    return-void
.end method

.method public final y(Lcom/google/android/gms/internal/ads/zzdfl;)V
    .locals 2

    iget-boolean v0, p0, Lwzf;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lwzf;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    new-instance v0, Lrzf;

    invoke-direct {v0, p1}, Lrzf;-><init>(Lcom/google/android/gms/internal/ads/zzdfl;)V

    invoke-virtual {p0, v0}, La6g;->E(Lz5g;)V

    return-void
.end method

.method public final zzb()V
    .locals 1

    new-instance v0, Lqzf;

    invoke-direct {v0}, Lqzf;-><init>()V

    invoke-virtual {p0, v0}, La6g;->E(Lz5g;)V

    return-void
.end method

.method public final declared-synchronized zze()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lwzf;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzf()V
    .locals 5

    sget-object v0, Lcye;->Oa:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcvj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcvj;-><init>(Lwzf;)V

    int-to-long v2, v0

    iget-object v0, p0, Lwzf;->c:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lwzf;->d:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
