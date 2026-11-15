.class public final Lywh;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lywh;->c:Ljava/lang/String;

    iput-object p3, p0, Lywh;->d:Ljava/lang/String;

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lywh;->f:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance p3, Ltxh;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x8c6180

    move-object v0, p3

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Ltxh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a$a;Lcom/google/android/gms/common/internal/a$b;I)V

    iput-object p3, p0, Lywh;->b:Ltxh;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lywh;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/a;->checkAvailabilityAndConnect()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/t;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/t;->B0()Looe;

    move-result-object v0

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Looe;->w(J)Looe;

    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/t;

    return-object v0
.end method


# virtual methods
.method public final b(I)Lcom/google/android/gms/internal/ads/t;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lywh;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/t;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    invoke-static {}, Lywh;->a()Lcom/google/android/gms/internal/ads/t;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lywh;->b:Ltxh;

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

.method public final d()Lcom/google/android/gms/internal/ads/zzfob;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lywh;->b:Ltxh;

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

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lywh;->d()Lcom/google/android/gms/internal/ads/zzfob;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnx;

    iget-object v1, p0, Lywh;->c:Ljava/lang/String;

    iget-object v2, p0, Lywh;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfnx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfob;->zze(Lcom/google/android/gms/internal/ads/zzfnx;)Lcom/google/android/gms/internal/ads/zzfnz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfnz;->zza()Lcom/google/android/gms/internal/ads/t;

    move-result-object p1

    iget-object v0, p0, Lywh;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    invoke-virtual {p0}, Lywh;->c()V

    iget-object p0, p0, Lywh;->f:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_0
    :try_start_1
    iget-object p1, p0, Lywh;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lywh;->a()Lcom/google/android/gms/internal/ads/t;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lywh;->c()V

    iget-object p0, p0, Lywh;->f:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    throw p1

    :cond_0
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lywh;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lywh;->a()Lcom/google/android/gms/internal/ads/t;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lywh;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lywh;->a()Lcom/google/android/gms/internal/ads/t;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
