.class public final Lxqg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ltbg;

.field public final b:Lolg;

.field public final c:Lyog;

.field public final d:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final e:Ljava/util/ArrayDeque;

.field public final f:Ljava/util/ArrayDeque;

.field public final g:Ljava/lang/Object;

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ltbg;Lyog;)V
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lxqg;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ltbg;Lyog;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ltbg;Lyog;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lxqg;->a:Ltbg;

    iput-object p1, p0, Lxqg;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p4, p0, Lxqg;->c:Lyog;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxqg;->g:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lxqg;->e:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lxqg;->f:Ljava/util/ArrayDeque;

    .line 4
    new-instance p1, Lqmg;

    invoke-direct {p1, p0}, Lqmg;-><init>(Lxqg;)V

    invoke-interface {p3, p2, p1}, Ltbg;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lolg;

    move-result-object p1

    iput-object p1, p0, Lxqg;->b:Lolg;

    iput-boolean p5, p0, Lxqg;->i:Z

    return-void
.end method

.method public static synthetic g(Lxqg;Landroid/os/Message;)Z
    .locals 3

    iget-object p1, p0, Lxqg;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lypg;

    iget-object v2, p0, Lxqg;->c:Lyog;

    invoke-virtual {v0, v2}, Lypg;->b(Lyog;)V

    iget-object v0, p0, Lxqg;->b:Lolg;

    invoke-interface {v0, v1}, Lolg;->zzh(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return v1
.end method


# virtual methods
.method public final a(Landroid/os/Looper;Lyog;)Lxqg;
    .locals 7

    new-instance v6, Lxqg;

    iget-boolean v5, p0, Lxqg;->i:Z

    iget-object v1, p0, Lxqg;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v3, p0, Lxqg;->a:Ltbg;

    move-object v0, v6

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lxqg;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ltbg;Lyog;Z)V

    return-object v6
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lxqg;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lxqg;->h:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lxqg;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Lypg;

    invoke-direct {v1, p1}, Lypg;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c()V
    .locals 4

    invoke-virtual {p0}, Lxqg;->h()V

    iget-object v0, p0, Lxqg;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lxqg;->b:Lolg;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lolg;->zzh(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v2}, Lolg;->zzb(I)Lnkg;

    move-result-object v2

    invoke-interface {v1, v2}, Lolg;->c(Lnkg;)Z

    :cond_1
    iget-object p0, p0, Lxqg;->e:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final d(ILiog;)V
    .locals 2

    invoke-virtual {p0}, Lxqg;->h()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lxqg;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzds;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzds;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILiog;)V

    iget-object p0, p0, Lxqg;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()V
    .locals 4

    invoke-virtual {p0}, Lxqg;->h()V

    iget-object v0, p0, Lxqg;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lxqg;->h:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lxqg;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lypg;

    iget-object v3, p0, Lxqg;->c:Lyog;

    invoke-virtual {v2, v3}, Lypg;->c(Lyog;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Lxqg;->h()V

    iget-object v0, p0, Lxqg;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lypg;

    iget-object v3, v2, Lypg;->a:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lxqg;->c:Lyog;

    invoke-virtual {v2, v3}, Lypg;->c(Lyog;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 1

    iget-boolean v0, p0, Lxqg;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lxqg;->b:Lolg;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-interface {p0}, Lolg;->zza()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-ne v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ln7g;->f(Z)V

    return-void
.end method
