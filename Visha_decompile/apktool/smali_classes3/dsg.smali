.class public final Ldsg;
.super Lasg;
.source "SourceFile"


# instance fields
.field public h:Ljava/lang/String;

.field public i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lasg;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ldsg;->i:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzu()Lcom/google/android/gms/ads/internal/util/zzbt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbt;->zzb()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lgbf;

    invoke-direct {v1, p1, v0, p0, p0}, Lgbf;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a$a;Lcom/google/android/gms/common/internal/a$b;)V

    iput-object v1, p0, Lasg;->g:Lgbf;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/zzbuy;)Lim5;
    .locals 4

    iget-object v0, p0, Lasg;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ldsg;->i:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzdxq;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzdxq;-><init>(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lasg;->d:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lasg;->b:Leff;

    monitor-exit v0

    return-object p0

    :cond_1
    iput v3, p0, Ldsg;->i:I

    iput-boolean v2, p0, Lasg;->d:Z

    iput-object p1, p0, Lasg;->f:Lcom/google/android/gms/internal/ads/zzbuy;

    iget-object p1, p0, Lasg;->g:Lgbf;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->checkAvailabilityAndConnect()V

    iget-object p1, p0, Lasg;->b:Leff;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdxf;-><init>(Ldsg;)V

    sget-object p0, Lzef;->g:Lg8i;

    invoke-virtual {p1, v1, p0}, Leff;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d(Ljava/lang/String;)Lim5;
    .locals 4

    iget-object v0, p0, Lasg;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ldsg;->i:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzdxq;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdxq;-><init>(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lasg;->d:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lasg;->b:Leff;

    monitor-exit v0

    return-object p0

    :cond_1
    iput v2, p0, Ldsg;->i:I

    iput-boolean v3, p0, Lasg;->d:Z

    iput-object p1, p0, Ldsg;->h:Ljava/lang/String;

    iget-object p1, p0, Lasg;->g:Lgbf;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->checkAvailabilityAndConnect()V

    iget-object p1, p0, Lasg;->b:Leff;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdxg;-><init>(Ldsg;)V

    sget-object p0, Lzef;->g:Lg8i;

    invoke-virtual {p1, v1, p0}, Leff;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 6

    iget-object p1, p0, Lasg;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lasg;->e:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lasg;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v1, p0, Ldsg;->i:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lasg;->g:Lgbf;

    invoke-virtual {v1}, Lgbf;->I()Lcom/google/android/gms/internal/ads/zzbum;

    move-result-object v1

    iget-object v2, p0, Lasg;->f:Lcom/google/android/gms/internal/ads/zzbuy;

    sget-object v3, Lcye;->Xc:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdxa;

    iget-object v4, p0, Lasg;->b:Leff;

    iget-object v5, p0, Lasg;->f:Lcom/google/android/gms/internal/ads/zzbuy;

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdxa;-><init>(Leff;Lcom/google/android/gms/internal/ads/zzbuy;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdwz;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdwz;-><init>(Lasg;)V

    :goto_0
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbum;->zze(Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzbuq;)V

    goto :goto_3

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lasg;->g:Lgbf;

    invoke-virtual {v1}, Lgbf;->I()Lcom/google/android/gms/internal/ads/zzbum;

    move-result-object v1

    iget-object v2, p0, Ldsg;->h:Ljava/lang/String;

    sget-object v3, Lcye;->Xc:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdxa;

    iget-object v4, p0, Lasg;->b:Leff;

    iget-object v5, p0, Lasg;->f:Lcom/google/android/gms/internal/ads/zzbuy;

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdxa;-><init>(Leff;Lcom/google/android/gms/internal/ads/zzbuy;)V

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdwz;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdwz;-><init>(Lasg;)V

    :goto_1
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbum;->zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbuq;)V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lasg;->b:Leff;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdxq;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdxq;-><init>(I)V

    invoke-virtual {v1, v2}, Leff;->d(Ljava/lang/Throwable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v2

    const-string v3, "RemoteUrlAndCacheKeyClientTask.onConnected"

    invoke-virtual {v2, v1, v3}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p0, p0, Lasg;->b:Leff;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdxq;-><init>(I)V

    invoke-virtual {p0, v1}, Leff;->d(Ljava/lang/Throwable;)Z

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_0
    iget-object p0, p0, Lasg;->b:Leff;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdxq;-><init>(I)V

    invoke-virtual {p0, v1}, Leff;->d(Ljava/lang/Throwable;)Z

    :cond_4
    :goto_3
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdxq;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdxq;-><init>(I)V

    iget-object p0, p0, Lasg;->b:Leff;

    invoke-virtual {p0, p1}, Leff;->d(Ljava/lang/Throwable;)Z

    return-void
.end method
