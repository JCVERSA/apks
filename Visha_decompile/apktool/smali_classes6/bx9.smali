.class public final Lbx9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbx9$a;,
        Lbx9$b;
    }
.end annotation


# static fields
.field public static final a:Lbx9;

.field public static volatile b:Z

.field public static volatile c:Z

.field public static volatile d:Z

.field public static volatile e:Z

.field public static volatile f:Z

.field public static volatile g:Z

.field public static final h:Ljava/lang/Object;

.field public static final i:Ljava/util/List;

.field public static final j:Ljava/util/List;

.field public static volatile k:Lc74;

.field public static volatile l:Le74;

.field public static volatile m:Lbx9$b;

.field public static final n:Lyi5;

.field public static volatile o:Lbx9$b;

.field public static final p:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbx9;

    invoke-direct {v0}, Lbx9;-><init>()V

    sput-object v0, Lbx9;->a:Lbx9;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbx9;->h:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lbx9;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lbx9;->j:Ljava/util/List;

    new-instance v0, Lsw9;

    invoke-direct {v0}, Lsw9;-><init>()V

    sput-object v0, Lbx9;->k:Lc74;

    new-instance v0, Ltw9;

    invoke-direct {v0}, Ltw9;-><init>()V

    sput-object v0, Lbx9;->l:Le74;

    new-instance v0, Luw9;

    invoke-direct {v0}, Luw9;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lbx9;->n:Lyi5;

    new-instance v0, Lvw9;

    invoke-direct {v0}, Lvw9;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lbx9;->p:Lyi5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final C(Lkotlin/jvm/internal/Ref$ObjectRef;)Lzfb;
    .locals 3

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc74;

    :try_start_0
    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lbx9;->a:Lbx9;

    const-string v2, "deferred preload item failed"

    invoke-virtual {v1, v2, v0}, Lbx9;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lbx9;->a:Lbx9;

    invoke-virtual {p0}, Lbx9;->J()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final E()Lzfb;
    .locals 1

    sget-object v0, Lbx9;->a:Lbx9;

    invoke-virtual {v0}, Lbx9;->B()V

    sget-object v0, Lzfb;->a:Lzfb;

    return-object v0
.end method

.method public static final F()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Lbx9;->H(JILjava/lang/Object;)V

    return-void
.end method

.method public static final G(J)V
    .locals 3

    sget-object v0, Lbx9;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lbx9;->e:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lbx9;->d:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lbx9;->b:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lbx9;->e:Z

    sget-object v1, Lbx9;->a:Lbx9;

    invoke-virtual {v1}, Lbx9;->s()Lbx9$b;

    move-result-object v1

    new-instance v2, Lrw9;

    invoke-direct {v2}, Lrw9;-><init>()V

    invoke-interface {v1, p0, p1, v2}, Lbx9$b;->a(JLc74;)V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static synthetic H(JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-wide/16 p0, 0x4e20

    :cond_0
    invoke-static {p0, p1}, Lbx9;->G(J)V

    return-void
.end method

.method public static final I()Lzfb;
    .locals 1

    sget-object v0, Lbx9;->a:Lbx9;

    invoke-virtual {v0}, Lbx9;->y()V

    sget-object v0, Lzfb;->a:Lzfb;

    return-object v0
.end method

.method public static synthetic a(Lc74;)V
    .locals 0

    invoke-static {p0}, Lbx9;->n(Lc74;)V

    return-void
.end method

.method public static synthetic b()Z
    .locals 1

    invoke-static {}, Lbx9;->w()Z

    move-result v0

    return v0
.end method

.method public static synthetic c()Lzfb;
    .locals 1

    invoke-static {}, Lbx9;->E()Lzfb;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lc74;)Lzfb;
    .locals 0

    invoke-static {p0}, Lbx9;->l(Lc74;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e()Lbx9$a;
    .locals 1

    invoke-static {}, Lbx9;->k()Lbx9$a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f()Lbx9$a;
    .locals 1

    invoke-static {}, Lbx9;->j()Lbx9$a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g()Lzfb;
    .locals 1

    invoke-static {}, Lbx9;->I()Lzfb;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Lkotlin/jvm/internal/Ref$ObjectRef;)Lzfb;
    .locals 0

    invoke-static {p0}, Lbx9;->C(Lkotlin/jvm/internal/Ref$ObjectRef;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lc74;)V
    .locals 0

    invoke-static {p0}, Lbx9;->m(Lc74;)V

    return-void
.end method

.method public static final j()Lbx9$a;
    .locals 1

    new-instance v0, Lbx9$a;

    invoke-direct {v0}, Lbx9$a;-><init>()V

    return-object v0
.end method

.method public static final k()Lbx9$a;
    .locals 1

    new-instance v0, Lbx9$a;

    invoke-direct {v0}, Lbx9$a;-><init>()V

    return-object v0
.end method

.method public static final l(Lc74;)Lzfb;
    .locals 3

    const-string v0, "action"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lxw9;

    invoke-direct {v1, p0}, Lxw9;-><init>(Lc74;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lbx9;->a:Lbx9;

    const-string v2, "cached pool unavailable, using dedicated thread"

    invoke-virtual {v1, v2, v0}, Lbx9;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lyw9;

    invoke-direct {v1, p0}, Lyw9;-><init>(Lc74;)V

    const-string p0, "startup-meta-preload"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final m(Lc74;)V
    .locals 2

    :try_start_0
    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lbx9;->a:Lbx9;

    const-string v1, "deferred preload failed"

    invoke-virtual {v0, v1, p0}, Lbx9;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final n(Lc74;)V
    .locals 2

    :try_start_0
    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lbx9;->a:Lbx9;

    const-string v1, "deferred preload failed"

    invoke-virtual {v0, v1, p0}, Lbx9;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final t()Z
    .locals 2

    sget-object v0, Lbx9;->k:Lc74;

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lbx9;->b:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lbx9;->c:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static final w()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final x()V
    .locals 5

    sget-object v0, Lbx9;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbx9;->a:Lbx9;

    invoke-virtual {v1}, Lbx9;->s()Lbx9$b;

    move-result-object v2

    invoke-interface {v2}, Lbx9$b;->cancel()V

    const/4 v2, 0x1

    sput-boolean v2, Lbx9;->b:Z

    sget-boolean v2, Lbx9;->b:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "markUiReady "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbx9;->v(Ljava/lang/String;)V

    invoke-virtual {v1}, Lbx9;->z()V

    sget-object v1, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final A(Lc74;)V
    .locals 2

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lbx9;->h:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lbx9;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lbx9;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    move-object p1, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    sget-boolean v0, Lbx9;->g:Z

    if-nez v0, :cond_1

    sget-object v0, Lbx9;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lbx9;->a:Lbx9;

    invoke-virtual {p1}, Lbx9;->D()V

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz p1, :cond_2

    sget-object p0, Lbx9;->l:Le74;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final B()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Lbx9;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lbx9;->j:Ljava/util/List;

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v2, 0x1

    sput-boolean v2, Lbx9;->g:Z

    sget-object v2, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbx9;->J()V

    return-void

    :cond_0
    sget-object p0, Lbx9;->l:Le74;

    new-instance v1, Lzw9;

    invoke-direct {v1, v0}, Lzw9;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-interface {p0, v1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final D()V
    .locals 3

    sget-boolean v0, Lbx9;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lbx9;->f:Z

    invoke-virtual {p0}, Lbx9;->r()Lbx9$b;

    move-result-object p0

    new-instance v0, Lww9;

    invoke-direct {v0}, Lww9;-><init>()V

    const-wide/16 v1, 0xbb8

    invoke-interface {p0, v1, v2, v0}, Lbx9$b;->a(JLc74;)V

    return-void
.end method

.method public final J()V
    .locals 2

    :try_start_0
    invoke-static {}, Lbya;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "schedule warmup failed"

    invoke-virtual {p0, v1, v0}, Lbx9;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final o()Lbx9$a;
    .locals 0

    sget-object p0, Lbx9;->p:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbx9$a;

    return-object p0
.end method

.method public final p()Lbx9$a;
    .locals 0

    sget-object p0, Lbx9;->n:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbx9$a;

    return-object p0
.end method

.method public final q()Le74;
    .locals 0

    sget-object p0, Lbx9;->l:Le74;

    return-object p0
.end method

.method public final r()Lbx9$b;
    .locals 1

    sget-object v0, Lbx9;->o:Lbx9$b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbx9;->o()Lbx9$a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final s()Lbx9$b;
    .locals 1

    sget-object v0, Lbx9;->m:Lbx9$b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbx9;->p()Lbx9$a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final u(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    :try_start_0
    const-string p0, "StartupMediaMetaPolicy"

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    const-string p0, "StartupMediaMetaPolicy"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final y()V
    .locals 4

    sget-object p0, Lbx9;->h:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lbx9;->b:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lbx9;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lbx9;->c:Z

    sget-object v0, Lbx9;->a:Lbx9;

    sget-boolean v1, Lbx9;->c:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbx9;->v(Ljava/lang/String;)V

    invoke-virtual {v0}, Lbx9;->z()V

    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final z()V
    .locals 3

    sget-boolean v0, Lbx9;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lbx9;->d:Z

    sget-object v0, Lbx9;->j:Ljava/util/List;

    sget-object v1, Lbx9;->i:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    invoke-virtual {p0}, Lbx9;->D()V

    return-void
.end method
