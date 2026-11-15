.class public final Lcom/google/android/gms/internal/ads/zzapd;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/concurrent/BlockingQueue;

.field private final zzb:Leme;

.field private final zzc:Lyle;

.field private volatile zzd:Z

.field private final zze:Lcom/google/android/gms/internal/ads/b;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Leme;Lyle;Lcom/google/android/gms/internal/ads/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapd;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapd;->zza:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapd;->zzb:Leme;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzapd;->zzc:Lyle;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzapd;->zze:Lcom/google/android/gms/internal/ads/b;

    return-void
.end method

.method private zzb()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapd;->zza:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/c;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/c;->h(I)V

    const/4 v1, 0x4

    :try_start_0
    const-string v2, "network-queue-take"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/c;->zzm(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c;->zzw()Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c;->zzc()I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapd;->zzb:Leme;

    invoke-interface {v2, v0}, Leme;->zza(Lcom/google/android/gms/internal/ads/c;)Lfme;

    move-result-object v2

    const-string v3, "network-http-complete"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/c;->zzm(Ljava/lang/String;)V

    iget-boolean v3, v2, Lfme;->e:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c;->zzv()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "not-modified"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/c;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c;->f()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/c;->a(Lfme;)Lkme;

    move-result-object v2

    const-string v3, "network-parse-complete"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/c;->zzm(Ljava/lang/String;)V

    iget-object v3, v2, Lkme;->b:Lxle;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzapd;->zzc:Lyle;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lyle;->b(Ljava/lang/String;Lxle;)V

    const-string v3, "network-cache-written"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/c;->zzm(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c;->zzq()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzapd;->zze:Lcom/google/android/gms/internal/ads/b;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v4}, Lcom/google/android/gms/internal/ads/b;->b(Lcom/google/android/gms/internal/ads/c;Lkme;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/c;->g(Lkme;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaps; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_0
    :try_start_1
    const-string v3, "Unhandled exception %s"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lnme;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaps;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzaps;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzapd;->zze:Lcom/google/android/gms/internal/ads/b;

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/ads/b;->a(Lcom/google/android/gms/internal/ads/c;Lcom/google/android/gms/internal/ads/zzaps;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c;->f()V

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzapd;->zze:Lcom/google/android/gms/internal/ads/b;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/ads/b;->a(Lcom/google/android/gms/internal/ads/c;Lcom/google/android/gms/internal/ads/zzaps;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/c;->h(I)V

    return-void

    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/c;->h(I)V

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzapd;->zzb()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapd;->zzd:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    invoke-static {v1, v0}, Lnme;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final zza()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapd;->zzd:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
