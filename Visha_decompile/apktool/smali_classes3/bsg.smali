.class public final Lbsg;
.super Lasg;
.source "SourceFile"


# instance fields
.field public final h:Landroid/content/Context;

.field public final i:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Lasg;-><init>()V

    iput-object p1, p0, Lbsg;->h:Landroid/content/Context;

    iput-object p2, p0, Lbsg;->i:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzu()Lcom/google/android/gms/ads/internal/util/zzbt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/util/zzbt;->zzb()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lgbf;

    invoke-direct {v0, p1, p2, p0, p0}, Lgbf;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a$a;Lcom/google/android/gms/common/internal/a$b;)V

    iput-object v0, p0, Lasg;->g:Lgbf;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/zzbuy;)Lim5;
    .locals 3

    iget-object v0, p0, Lasg;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lasg;->d:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lasg;->b:Leff;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lasg;->d:Z

    iput-object p1, p0, Lasg;->f:Lcom/google/android/gms/internal/ads/zzbuy;

    iget-object p1, p0, Lasg;->g:Lgbf;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->checkAvailabilityAndConnect()V

    iget-object p1, p0, Lasg;->b:Leff;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdxc;-><init>(Lbsg;)V

    sget-object v2, Lzef;->g:Lg8i;

    invoke-virtual {p1, v1, v2}, Leff;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lbsg;->h:Landroid/content/Context;

    iget-object p0, p0, Lbsg;->i:Ljava/util/concurrent/Executor;

    invoke-static {v1, p1, p0}, Lasg;->b(Landroid/content/Context;Lim5;Ljava/util/concurrent/Executor;)V

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

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lasg;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
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

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdwz;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdwz;-><init>(Lasg;)V

    :goto_0
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbum;->zzf(Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzbuq;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v2

    const-string v3, "RemoteSignalsClientTask.onConnected"

    invoke-virtual {v2, v1, v3}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p0, p0, Lasg;->b:Leff;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdxq;-><init>(I)V

    invoke-virtual {p0, v1}, Leff;->d(Ljava/lang/Throwable;)Z

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_0
    iget-object p0, p0, Lasg;->b:Leff;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdxq;-><init>(I)V

    invoke-virtual {p0, v1}, Leff;->d(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_2
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
