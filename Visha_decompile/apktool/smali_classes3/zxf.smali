.class public final Lzxf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkzf;
.implements Lv7g;
.implements Lp4g;
.implements Lzzf;
.implements Liue;


# instance fields
.field public final b:Lb0g;

.field public final c:Lhmh;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lcom/google/android/gms/internal/ads/n8;

.field public g:Ljava/util/concurrent/ScheduledFuture;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb0g;Lhmh;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/n8;->h()Lcom/google/android/gms/internal/ads/n8;

    move-result-object v0

    iput-object v0, p0, Lzxf;->f:Lcom/google/android/gms/internal/ads/n8;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lzxf;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lzxf;->b:Lb0g;

    iput-object p2, p0, Lzxf;->c:Lhmh;

    iput-object p3, p0, Lzxf;->d:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lzxf;->e:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lzxf;->i:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic b(Lzxf;)Lb0g;
    .locals 0

    iget-object p0, p0, Lzxf;->b:Lb0g;

    return-object p0
.end method

.method public static synthetic c(Lzxf;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzxf;->f:Lcom/google/android/gms/internal/ads/n8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/x7;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/n8;->zzc(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final d()Z
    .locals 1

    iget-object p0, p0, Lzxf;->i:Ljava/lang/String;

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzbvk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized h(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lzxf;->f:Lcom/google/android/gms/internal/ads/n8;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/x7;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lzxf;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/n8;->zzd(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zza()V
    .locals 0

    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzc()V
    .locals 3

    iget-object v0, p0, Lzxf;->c:Lhmh;

    iget v1, v0, Lhmh;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Lhmh;->Y:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcye;->Cb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lzxf;->d()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object p0, p0, Lzxf;->b:Lb0g;

    invoke-virtual {p0}, Lb0g;->zza()V

    return-void
.end method

.method public final zzdn(Lhue;)V
    .locals 2

    sget-object v0, Lcye;->Cb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lzxf;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lhue;->j:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lzxf;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lzxf;->c:Lhmh;

    iget p1, p1, Lhmh;->e:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "Full screen 1px impression occurred"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p0, p0, Lzxf;->b:Lb0g;

    invoke-virtual {p0}, Lb0g;->zza()V

    :cond_0
    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method

.method public final zzi()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzj()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzxf;->c:Lhmh;

    iget v0, v0, Lhmh;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lzxf;->b:Lb0g;

    invoke-virtual {v0}, Lb0g;->zza()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lzxf;->f:Lcom/google/android/gms/internal/ads/n8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/x7;->isDone()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lzxf;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/n8;->zzc(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final zzu()V
    .locals 5

    iget-object v0, p0, Lzxf;->c:Lhmh;

    iget v1, v0, Lhmh;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    sget-object v1, Lcye;->I1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lhmh;->Y:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v0, v0, Lhmh;->q:I

    if-nez v0, :cond_1

    iget-object p0, p0, Lzxf;->b:Lb0g;

    invoke-virtual {p0}, Lb0g;->zza()V

    return-void

    :cond_1
    iget-object v1, p0, Lzxf;->f:Lcom/google/android/gms/internal/ads/n8;

    new-instance v2, Lyxf;

    invoke-direct {v2, p0}, Lyxf;-><init>(Lzxf;)V

    iget-object v3, p0, Lzxf;->e:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lzxf;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzctv;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzctv;-><init>(Lzxf;)V

    int-to-long v3, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lzxf;->g:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    :goto_0
    return-void
.end method

.method public final zzv()V
    .locals 0

    return-void
.end method
