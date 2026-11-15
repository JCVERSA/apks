.class public final Lk8h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final c:Lfy0;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Leeh;

.field public final f:J

.field public final g:Lsmg;


# direct methods
.method public constructor <init>(Leeh;JLfy0;Ljava/util/concurrent/Executor;Lsmg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lk8h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lk8h;->c:Lfy0;

    iput-object p1, p0, Lk8h;->e:Leeh;

    iput-wide p2, p0, Lk8h;->f:J

    iput-object p5, p0, Lk8h;->d:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lk8h;->g:Lsmg;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lk8h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static synthetic a(Lk8h;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzenl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzenl;-><init>(Lk8h;)V

    iget-object p0, p0, Lk8h;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lk8h;)V
    .locals 5

    iget-object v0, p0, Lk8h;->e:Leeh;

    new-instance v1, Lj8h;

    invoke-interface {v0}, Leeh;->zzb()Lim5;

    move-result-object v0

    iget-wide v2, p0, Lk8h;->f:J

    iget-object v4, p0, Lk8h;->c:Lfy0;

    invoke-direct {v1, v0, v2, v3, v4}, Lj8h;-><init>(Lim5;JLfy0;)V

    iget-object p0, p0, Lk8h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget-object p0, p0, Lk8h;->e:Leeh;

    invoke-interface {p0}, Leeh;->zza()I

    move-result p0

    return p0
.end method

.method public final zzb()Lim5;
    .locals 8

    sget-object v0, Lcye;->Sb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lk8h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj8h;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lj8h;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_0
    iget-object v1, p0, Lk8h;->e:Leeh;

    iget-wide v2, p0, Lk8h;->f:J

    iget-object p0, p0, Lk8h;->c:Lfy0;

    new-instance v4, Lj8h;

    invoke-interface {v1}, Leeh;->zzb()Lim5;

    move-result-object v1

    invoke-direct {v4, v1, v2, v3, p0}, Lj8h;-><init>(Lim5;JLfy0;)V

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v1, v4

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcye;->Rb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lk8h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v1, Lzef;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzenk;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzenk;-><init>(Lk8h;)V

    iget-wide v5, p0, Lk8h;->f:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v3, v5

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lk8h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj8h;

    if-nez v1, :cond_3

    new-instance v1, Lj8h;

    iget-object v2, p0, Lk8h;->e:Leeh;

    invoke-interface {v2}, Leeh;->zzb()Lim5;

    move-result-object v2

    iget-wide v3, p0, Lk8h;->f:J

    iget-object v5, p0, Lk8h;->c:Lfy0;

    invoke-direct {v1, v2, v3, v4, v5}, Lj8h;-><init>(Lim5;JLfy0;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, v1, Lj8h;->a:Lim5;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lk8h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1}, Lj8h;->a()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, v1, Lj8h;->a:Lim5;

    iget-object v1, p0, Lk8h;->e:Leeh;

    iget-wide v2, p0, Lk8h;->f:J

    iget-object v4, p0, Lk8h;->c:Lfy0;

    new-instance v5, Lj8h;

    invoke-interface {v1}, Leeh;->zzb()Lim5;

    move-result-object v6

    invoke-direct {v5, v6, v2, v3, v4}, Lj8h;-><init>(Lim5;JLfy0;)V

    iget-object v2, p0, Lk8h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v2, Lcye;->Tb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcye;->Ub:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p0, p0, Lk8h;->g:Lsmg;

    invoke-virtual {p0}, Lsmg;->a()Lrmg;

    move-result-object p0

    const-string v2, "action"

    const-string v3, "scs"

    invoke-virtual {p0, v2, v3}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-interface {v1}, Leeh;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sid"

    invoke-virtual {p0, v2, v1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-virtual {p0}, Lrmg;->j()V

    :cond_5
    return-object v0

    :cond_6
    move-object v1, v5

    :cond_7
    :goto_0
    iget-object p0, v1, Lj8h;->a:Lim5;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
