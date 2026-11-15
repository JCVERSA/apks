.class public final La0h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Leuf;

.field public final d:Lq0h;

.field public final e:Lsth;

.field public final f:Lcom/google/android/gms/internal/ads/n8;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public h:Lb0h;

.field public i:Lvmh;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Leuf;Lq0h;Lsth;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/n8;->h()Lcom/google/android/gms/internal/ads/n8;

    move-result-object v0

    iput-object v0, p0, La0h;->f:Lcom/google/android/gms/internal/ads/n8;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, La0h;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, La0h;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, La0h;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, La0h;->c:Leuf;

    iput-object p4, p0, La0h;->d:Lq0h;

    iput-object p5, p0, La0h;->e:Lsth;

    return-void
.end method

.method public static bridge synthetic a(La0h;)Lb0h;
    .locals 0

    iget-object p0, p0, La0h;->h:Lb0h;

    return-object p0
.end method

.method public static bridge synthetic c(La0h;Lhmh;)V
    .locals 0

    invoke-virtual {p0, p1}, La0h;->e(Lhmh;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized b(Lvmh;)Lim5;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La0h;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lvmh;->b:Lumh;

    iget-object v0, v0, Lumh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, La0h;->f:Lcom/google/android/gms/internal/ads/n8;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzefy;

    invoke-static {p1}, Lz0h;->b(Lvmh;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/n8;->zzd(Ljava/lang/Throwable;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iput-object p1, p0, La0h;->i:Lvmh;

    iget-object v1, p0, La0h;->d:Lq0h;

    iget-object v2, p0, La0h;->f:Lcom/google/android/gms/internal/ads/n8;

    new-instance v3, Lb0h;

    invoke-direct {v3, p1, v1, v2}, Lb0h;-><init>(Lvmh;Lq0h;Lcom/google/android/gms/internal/ads/n8;)V

    iput-object v3, p0, La0h;->h:Lb0h;

    invoke-virtual {v1, v0}, Lq0h;->k(Ljava/util/List;)V

    iget-object p1, p0, La0h;->h:Lb0h;

    invoke-virtual {p1}, Lb0h;->a()Lhmh;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, La0h;->e(Lhmh;)V

    iget-object p1, p0, La0h;->h:Lb0h;

    invoke-virtual {p1}, Lb0h;->a()Lhmh;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, La0h;->f:Lcom/google/android/gms/internal/ads/n8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d(Lhmh;)Lim5;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lhmh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, La0h;->c:Leuf;

    iget v3, p1, Lhmh;->b:I

    invoke-interface {v2, v3, v1}, Leuf;->a(ILjava/lang/String;)Lkxg;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, La0h;->i:Lvmh;

    invoke-interface {v1, v2, p1}, Lkxg;->b(Lvmh;Lhmh;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, La0h;->i:Lvmh;

    invoke-interface {v1, v0, p1}, Lkxg;->a(Lvmh;Lhmh;)Lim5;

    move-result-object v0

    iget p1, p1, Lhmh;->R:I

    iget-object v1, p0, La0h;->b:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, p1, v1}, Lcom/google/android/gms/internal/ads/j8;->o(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdvg;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdvg;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final e(Lhmh;)V
    .locals 4

    invoke-virtual {p0, p1}, La0h;->d(Lhmh;)Lim5;

    move-result-object v0

    iget-object v1, p0, La0h;->e:Lsth;

    iget-object v2, p0, La0h;->d:Lq0h;

    iget-object v3, p0, La0h;->i:Lvmh;

    invoke-virtual {v2, v3, p1, v0, v1}, Lq0h;->f(Lvmh;Lhmh;Lim5;Lsth;)Lim5;

    new-instance v1, Lzzg;

    invoke-direct {v1, p0, p1}, Lzzg;-><init>(La0h;Lhmh;)V

    iget-object p0, p0, La0h;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void
.end method
