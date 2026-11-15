.class public final Lk4h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/admanager/AppEventListener;
.implements Lp2g;
.implements Lb1g;
.implements Lnzf;
.implements Ld0g;
.implements Lcom/google/android/gms/ads/internal/client/zza;
.implements Lkzf;
.implements Lc2g;
.implements Lzzf;
.implements Lt8g;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Lsmg;

.field public final k:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public constructor <init>(Lsmg;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lk4h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lk4h;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lk4h;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lk4h;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lk4h;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lk4h;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lk4h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lk4h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v1, Lcye;->W8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lk4h;->k:Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lk4h;->j:Lsmg;

    return-void
.end method

.method private final zzo()V
    .locals 5

    iget-object v0, p0, Lk4h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lk4h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lk4h;->k:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, p0, Lk4h;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Lv3h;

    invoke-direct {v4, v2}, Lv3h;-><init>(Landroid/util/Pair;)V

    invoke-static {v3, v4}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object p0, p0, Lk4h;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 2

    new-instance v0, Lw3h;

    invoke-direct {v0, p1}, Lw3h;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget-object v1, p0, Lk4h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    new-instance v0, Lx3h;

    invoke-direct {v0, p1}, Lx3h;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-static {v1, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    new-instance v0, Ly3h;

    invoke-direct {v0, p1}, Ly3h;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget-object p1, p0, Lk4h;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    iget-object p1, p0, Lk4h;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lk4h;->k:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzbvk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/ads/internal/client/zzt;)V
    .locals 1

    new-instance v0, Lj4h;

    invoke-direct {v0, p1}, Lj4h;-><init>(Lcom/google/android/gms/ads/internal/client/zzt;)V

    iget-object p0, p0, Lk4h;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 0

    return-void
.end method

.method public final h(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 1

    new-instance v0, Lb4h;

    invoke-direct {v0, p1}, Lb4h;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget-object p0, p0, Lk4h;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    return-void
.end method

.method public final declared-synchronized k()Lcom/google/android/gms/ads/internal/client/zzbk;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lk4h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzbk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized n()Lcom/google/android/gms/ads/internal/client/zzcl;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lk4h;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzcl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final o(Lcom/google/android/gms/ads/internal/client/zzbk;)V
    .locals 0

    iget-object p0, p0, Lk4h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final onAdClicked()V
    .locals 2

    sget-object v0, Lcye;->Ra:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lk4h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Li4h;

    invoke-direct {v0}, Li4h;-><init>()V

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lk4h;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk4h;->k:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "The queue for app events is full, dropping the new event."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    iget-object v0, p0, Lk4h;->j:Lsmg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsmg;->a()Lrmg;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "dae_action"

    invoke-virtual {v0, v1, v2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string v1, "dae_name"

    invoke-virtual {v0, v1, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p1, "dae_data"

    invoke-virtual {v0, p1, p2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-virtual {v0}, Lrmg;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lk4h;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lc4h;

    invoke-direct {v1, p1, p2}, Lc4h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final p(Lcom/google/android/gms/ads/internal/client/zzbn;)V
    .locals 0

    iget-object p0, p0, Lk4h;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final q(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    .locals 0

    iget-object p0, p0, Lk4h;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final s(Lcom/google/android/gms/ads/internal/client/zzcl;)V
    .locals 1

    iget-object v0, p0, Lk4h;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lk4h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lk4h;->zzo()V

    return-void
.end method

.method public final t(Lcom/google/android/gms/ads/internal/client/zzcs;)V
    .locals 0

    iget-object p0, p0, Lk4h;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final w(Lvmh;)V
    .locals 1

    iget-object p1, p0, Lk4h;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lk4h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final zza()V
    .locals 2

    new-instance v0, Lo3h;

    invoke-direct {v0}, Lo3h;-><init>()V

    iget-object v1, p0, Lk4h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    new-instance v0, Lt3h;

    invoke-direct {v0}, Lt3h;-><init>()V

    iget-object p0, p0, Lk4h;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    return-void
.end method

.method public final zzb()V
    .locals 1

    new-instance v0, Ld4h;

    invoke-direct {v0}, Ld4h;-><init>()V

    iget-object p0, p0, Lk4h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    return-void
.end method

.method public final zzc()V
    .locals 2

    new-instance v0, Lf4h;

    invoke-direct {v0}, Lf4h;-><init>()V

    iget-object v1, p0, Lk4h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    new-instance v0, Lg4h;

    invoke-direct {v0}, Lg4h;-><init>()V

    iget-object p0, p0, Lk4h;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    new-instance v0, Lh4h;

    invoke-direct {v0}, Lh4h;-><init>()V

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    return-void
.end method

.method public final zzdd()V
    .locals 2

    sget-object v0, Lcye;->Ra:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk4h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Li4h;

    invoke-direct {v1}, Li4h;-><init>()V

    invoke-static {v0, v1}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    :cond_0
    iget-object p0, p0, Lk4h;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lu3h;

    invoke-direct {v0}, Lu3h;-><init>()V

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

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

.method public final zzs()V
    .locals 1

    new-instance v0, Ln3h;

    invoke-direct {v0}, Ln3h;-><init>()V

    iget-object p0, p0, Lk4h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    return-void
.end method

.method public final declared-synchronized zzt()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lz3h;

    invoke-direct {v0}, Lz3h;-><init>()V

    iget-object v1, p0, Lk4h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    new-instance v0, La4h;

    invoke-direct {v0}, La4h;-><init>()V

    iget-object v1, p0, Lk4h;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    iget-object v0, p0, Lk4h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lk4h;->zzo()V
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

.method public final zzu()V
    .locals 1

    new-instance v0, Le4h;

    invoke-direct {v0}, Le4h;-><init>()V

    iget-object p0, p0, Lk4h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    return-void
.end method
