.class public final Lcom/google/android/gms/internal/ads/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/concurrent/ScheduledFuture;

.field public final b:Ljava/lang/Runnable;

.field public final c:Ljava/lang/Object;

.field public d:Lpwe;

.field public e:Landroid/content/Context;

.field public f:Lcom/google/android/gms/internal/ads/zzbau;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/m0;->a:Ljava/util/concurrent/ScheduledFuture;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbak;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbak;-><init>(Lcom/google/android/gms/internal/ads/m0;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/m0;->b:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/m0;->c:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic c(Lcom/google/android/gms/internal/ads/m0;)Lpwe;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/m0;->d:Lpwe;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/google/android/gms/internal/ads/m0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/m0;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/google/android/gms/internal/ads/m0;Lpwe;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/m0;->d:Lpwe;

    return-void
.end method

.method public static bridge synthetic g(Lcom/google/android/gms/internal/ads/m0;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/m0;->l()V

    return-void
.end method

.method public static bridge synthetic h(Lcom/google/android/gms/internal/ads/m0;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m0;->d:Lpwe;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/a;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m0;->d:Lpwe;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/a;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m0;->d:Lpwe;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/a;->disconnect()V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/m0;->d:Lpwe;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/m0;->f:Lcom/google/android/gms/internal/ads/zzbau;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static bridge synthetic k(Lcom/google/android/gms/internal/ads/m0;Lcom/google/android/gms/internal/ads/zzbau;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/m0;->f:Lcom/google/android/gms/internal/ads/zzbau;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzbas;)J
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m0;->f:Lcom/google/android/gms/internal/ads/zzbau;

    const-wide/16 v2, -0x2

    if-nez v1, :cond_0

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m0;->d:Lpwe;

    invoke-virtual {v1}, Lpwe;->I()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/m0;->f:Lcom/google/android/gms/internal/ads/zzbau;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbau;->zze(Lcom/google/android/gms/internal/ads/zzbas;)J

    move-result-wide p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-wide p0

    :catch_0
    move-exception p0

    const-string p1, "Unable to call into cache service."

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    monitor-exit v0

    return-wide v2

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzbas;)Lcom/google/android/gms/internal/ads/zzbap;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m0;->f:Lcom/google/android/gms/internal/ads/zzbau;

    if-nez v1, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbap;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbap;-><init>()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m0;->d:Lpwe;

    invoke-virtual {v1}, Lpwe;->I()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/m0;->f:Lcom/google/android/gms/internal/ads/zzbau;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbau;->zzg(Lcom/google/android/gms/internal/ads/zzbas;)Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/m0;->f:Lcom/google/android/gms/internal/ads/zzbau;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbau;->zzf(Lcom/google/android/gms/internal/ads/zzbas;)Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object p0

    :goto_0
    const-string p1, "Unable to call into cache service."

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbap;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbap;-><init>()V

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final declared-synchronized d(Lcom/google/android/gms/common/internal/a$a;Lcom/google/android/gms/common/internal/a$b;)Lpwe;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lpwe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m0;->e:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzu()Lcom/google/android/gms/ads/internal/util/zzbt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zzbt;->zzb()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lpwe;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a$a;Lcom/google/android/gms/common/internal/a$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m0;->e:Landroid/content/Context;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/m0;->e:Landroid/content/Context;

    sget-object p1, Lcye;->t4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/m0;->l()V

    goto :goto_0

    :cond_2
    sget-object p1, Lcye;->s4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Llwe;

    invoke-direct {p1, p0}, Llwe;-><init>(Lcom/google/android/gms/internal/ads/m0;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzb()Lbve;

    move-result-object p0

    invoke-virtual {p0, p1}, Lbve;->c(Lave;)V

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final j()V
    .locals 6

    sget-object v0, Lcye;->u4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/m0;->l()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m0;->a:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lzef;->d:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/m0;->b:Ljava/lang/Runnable;

    sget-object v3, Lcye;->v4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/m0;->a:Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m0;->e:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m0;->d:Lpwe;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lmwe;

    invoke-direct {v1, p0}, Lmwe;-><init>(Lcom/google/android/gms/internal/ads/m0;)V

    new-instance v2, Lnwe;

    invoke-direct {v2, p0}, Lnwe;-><init>(Lcom/google/android/gms/internal/ads/m0;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/m0;->d(Lcom/google/android/gms/common/internal/a$a;Lcom/google/android/gms/common/internal/a$b;)Lpwe;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/m0;->d:Lpwe;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/a;->checkAvailabilityAndConnect()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
