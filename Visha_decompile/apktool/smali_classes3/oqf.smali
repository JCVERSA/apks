.class public final Loqf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liue;
.implements Le0g;
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;
.implements Ld0g;


# instance fields
.field public final b:Lkqf;

.field public final c:Llqf;

.field public final d:Ljava/util/Set;

.field public final e:Lv7f;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Lfy0;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Lnqf;

.field public j:Z

.field public k:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ls7f;Llqf;Ljava/util/concurrent/Executor;Lkqf;Lfy0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Loqf;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Loqf;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lnqf;

    invoke-direct {v0}, Lnqf;-><init>()V

    iput-object v0, p0, Loqf;->i:Lnqf;

    iput-boolean v1, p0, Loqf;->j:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Loqf;->k:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Loqf;->b:Lkqf;

    const-string p4, "google.afma.activeView.handleUpdate"

    sget-object v0, La7f;->b:Lx6f;

    invoke-virtual {p1, p4, v0, v0}, Ls7f;->a(Ljava/lang/String;Lw6f;Lv6f;)Lv7f;

    move-result-object p1

    iput-object p1, p0, Loqf;->e:Lv7f;

    iput-object p2, p0, Loqf;->c:Llqf;

    iput-object p3, p0, Loqf;->f:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Loqf;->g:Lfy0;

    return-void
.end method

.method private final f()V
    .locals 3

    iget-object v0, p0, Loqf;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lejf;

    iget-object v2, p0, Loqf;->b:Lkqf;

    invoke-virtual {v2, v1}, Lkqf;->f(Lejf;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Loqf;->b:Lkqf;

    invoke-virtual {p0}, Lkqf;->e()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loqf;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Loqf;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Loqf;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Loqf;->i:Lnqf;

    iget-object v1, p0, Loqf;->g:Lfy0;

    invoke-interface {v1}, Lfy0;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lnqf;->d:J

    iget-object v1, p0, Loqf;->c:Llqf;

    invoke-virtual {v1, v0}, Llqf;->a(Lnqf;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Loqf;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lejf;

    iget-object v3, p0, Loqf;->f:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcms;

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/ads/zzcms;-><init>(Lorg/json/JSONObject;Lejf;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Loqf;->e:Lv7f;

    invoke-virtual {v1, v0}, Lv7f;->b(Ljava/lang/Object;)Lim5;

    move-result-object v0

    const-string v1, "ActiveViewListener.callActiveViewJs"

    invoke-static {v0, v1}, Lcff;->b(Lim5;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    const-string v1, "Failed to call ActiveViewJS"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Loqf;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Loqf;->i:Lnqf;

    const-string v0, "u"

    iput-object v0, p1, Lnqf;->e:Ljava/lang/String;

    invoke-virtual {p0}, Loqf;->a()V

    invoke-direct {p0}, Loqf;->f()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Loqf;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c(Lejf;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loqf;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Loqf;->b:Lkqf;

    invoke-virtual {v0, p1}, Lkqf;->d(Lejf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Loqf;->k:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Loqf;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Loqf;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized k(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Loqf;->i:Lnqf;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lnqf;->b:Z

    invoke-virtual {p0}, Loqf;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized n(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Loqf;->i:Lnqf;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lnqf;->b:Z

    invoke-virtual {p0}, Loqf;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzdE()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loqf;->i:Lnqf;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnqf;->b:Z

    invoke-virtual {p0}, Loqf;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzdi()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loqf;->i:Lnqf;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnqf;->b:Z

    invoke-virtual {p0}, Loqf;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzdn(Lhue;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loqf;->i:Lnqf;

    iget-boolean v1, p1, Lhue;->j:Z

    iput-boolean v1, v0, Lnqf;->a:Z

    iput-object p1, v0, Lnqf;->f:Lhue;

    invoke-virtual {p0}, Loqf;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzdo()V
    .locals 0

    return-void
.end method

.method public final zzdp()V
    .locals 0

    return-void
.end method

.method public final zzdr()V
    .locals 0

    return-void
.end method

.method public final zzds(I)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzs()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loqf;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Loqf;->b:Lkqf;

    invoke-virtual {v0, p0}, Lkqf;->c(Loqf;)V

    invoke-virtual {p0}, Loqf;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
