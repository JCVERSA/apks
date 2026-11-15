.class public final Lbxh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/a$a;
.implements Lcom/google/android/gms/common/internal/a$b;


# instance fields
.field public final b:Ltxh;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/concurrent/LinkedBlockingQueue;

.field public final f:Landroid/os/HandlerThread;

.field public final g:Lrwh;

.field public final h:J

.field public final i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrwh;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lbxh;->c:Ljava/lang/String;

    iput p3, p0, Lbxh;->i:I

    iput-object p5, p0, Lbxh;->d:Ljava/lang/String;

    iput-object p7, p0, Lbxh;->g:Lrwh;

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassDGClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lbxh;->f:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lbxh;->h:J

    new-instance p3, Ltxh;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x12b6488

    move-object v0, p3

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Ltxh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a$a;Lcom/google/android/gms/common/internal/a$b;I)V

    iput-object p3, p0, Lbxh;->b:Ltxh;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lbxh;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/a;->checkAvailabilityAndConnect()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/zzfoi;
    .locals 4

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lbxh;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0xc350

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfoi;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x7d9

    iget-wide v2, p0, Lbxh;->h:J

    invoke-virtual {p0, v1, v2, v3, v0}, Lbxh;->d(IJLjava/lang/Exception;)V

    move-object v0, p1

    :goto_0
    const/16 v1, 0xbbc

    iget-wide v2, p0, Lbxh;->h:J

    invoke-virtual {p0, v1, v2, v3, p1}, Lbxh;->d(IJLjava/lang/Exception;)V

    if-eqz v0, :cond_1

    iget p0, v0, Lcom/google/android/gms/internal/ads/zzfoi;->zzc:I

    const/4 v1, 0x7

    if-ne p0, v1, :cond_0

    const/4 p0, 0x3

    invoke-static {p0}, Lrwh;->g(I)V

    goto :goto_1

    :cond_0
    const/4 p0, 0x2

    invoke-static {p0}, Lrwh;->g(I)V

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    new-instance p0, Lcom/google/android/gms/internal/ads/zzfoi;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfoi;-><init>([BI)V

    return-object p0

    :cond_2
    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lbxh;->b:Ltxh;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->disconnect()V

    :cond_1
    return-void
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzfob;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lbxh;->b:Ltxh;

    invoke-virtual {p0}, Ltxh;->I()Lcom/google/android/gms/internal/ads/zzfob;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(IJLjava/lang/Exception;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    iget-object p0, p0, Lbxh;->g:Lrwh;

    invoke-virtual {p0, p1, v0, v1, p4}, Lrwh;->c(IJLjava/lang/Exception;)Lxda;

    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Lbxh;->c()Lcom/google/android/gms/internal/ads/zzfob;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfog;

    iget v1, p0, Lbxh;->i:I

    iget-object v2, p0, Lbxh;->c:Ljava/lang/String;

    iget-object v3, p0, Lbxh;->d:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfog;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfob;->zzf(Lcom/google/android/gms/internal/ads/zzfog;)Lcom/google/android/gms/internal/ads/zzfoi;

    move-result-object p1

    iget-wide v0, p0, Lbxh;->h:J

    const/16 v2, 0x1393

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lbxh;->d(IJLjava/lang/Exception;)V

    iget-object v0, p0, Lbxh;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lbxh;->b()V

    iget-object p0, p0, Lbxh;->f:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iget-wide v1, p0, Lbxh;->h:J

    const/16 p1, 0x7da

    invoke-virtual {p0, p1, v1, v2, v0}, Lbxh;->d(IJLjava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lbxh;->b()V

    iget-object p0, p0, Lbxh;->f:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    throw p1

    :cond_0
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    :try_start_0
    iget-wide v0, p0, Lbxh;->h:J

    const/16 p1, 0xfac

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lbxh;->d(IJLjava/lang/Exception;)V

    iget-object p0, p0, Lbxh;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfoi;

    const/4 v0, 0x1

    invoke-direct {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfoi;-><init>([BI)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 3

    :try_start_0
    iget-wide v0, p0, Lbxh;->h:J

    const/16 p1, 0xfab

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lbxh;->d(IJLjava/lang/Exception;)V

    iget-object p0, p0, Lbxh;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfoi;

    const/4 v0, 0x1

    invoke-direct {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfoi;-><init>([BI)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
