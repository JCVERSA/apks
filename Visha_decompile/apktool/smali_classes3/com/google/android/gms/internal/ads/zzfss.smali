.class public final synthetic Lcom/google/android/gms/internal/ads/zzfss;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lu1i;

.field public final synthetic zzb:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lu1i;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfss;->zza:Lu1i;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfss;->zzb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfss;->zzb:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfqv;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzfqw;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfss;->zza:Lu1i;

    iget-object v1, p0, Lu1i;->b:Lw1i;

    invoke-static {v1, v0}, Lw1i;->k(Lw1i;Landroid/os/IInterface;)V

    invoke-static {v1}, Lw1i;->d(Lw1i;)Lx1i;

    move-result-object v0

    const-string v2, "linkToDeath"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lx1i;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_0
    invoke-static {v1}, Lw1i;->b(Lw1i;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v1}, Lw1i;->a(Lw1i;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lu1i;->b:Lw1i;

    invoke-static {v1}, Lw1i;->d(Lw1i;)Lx1i;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "linkToDeath failed"

    invoke-virtual {v1, v0, v4, v2}, Lx1i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    iget-object p0, p0, Lu1i;->b:Lw1i;

    invoke-static {p0, v3}, Lw1i;->j(Lw1i;Z)V

    invoke-static {p0}, Lw1i;->e(Lw1i;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    invoke-static {p0}, Lw1i;->e(Lw1i;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-static {p0}, Lw1i;->e(Lw1i;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
