.class public final Lcom/transsion/dbdata/engine/DataEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpu4;


# static fields
.field public static final a:Lcom/transsion/dbdata/engine/DataEngine;

.field public static b:Ljava/util/List;

.field public static final c:Landroid/os/Handler;

.field public static final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final e:Ljs1;

.field public static final f:Landroid/os/HandlerThread;

.field public static g:Landroid/os/Handler;

.field public static final h:Lnk1;

.field public static final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/dbdata/engine/DataEngine;

    invoke-direct {v0}, Lcom/transsion/dbdata/engine/DataEngine;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/engine/DataEngine;->b:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transsion/dbdata/engine/DataEngine;->c:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/dbdata/engine/DataEngine;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljs1;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v1, v2, v3}, Ljs1;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/engine/DataEngine;->e:Ljs1;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DataEngine"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/dbdata/engine/DataEngine;->f:Landroid/os/HandlerThread;

    invoke-static {}, Lmc2;->a()Lkotlinx/coroutines/c;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/engine/DataEngine;->h:Lnk1;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/engine/DataEngine;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lkotlin/jvm/internal/Ref$ObjectRef;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/engine/DataEngine;->p(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lkotlin/jvm/internal/Ref$ObjectRef;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;I)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/dbdata/engine/DataEngine;->o(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;I)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lw74;Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;ILnu4;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/dbdata/engine/DataEngine;->s(Lw74;Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;ILnu4;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/engine/DataEngine;->n(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lkotlin/jvm/internal/Ref$ObjectRef;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/engine/DataEngine;->m(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lkotlin/jvm/internal/Ref$ObjectRef;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lnu4;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/engine/DataEngine;->r(Lnu4;)V

    return-void
.end method

.method public static final synthetic j(Lcom/transsion/dbdata/engine/DataEngine;Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;ILw74;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/dbdata/engine/DataEngine;->q(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;ILw74;)V

    return-void
.end method

.method public static final synthetic k()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/engine/DataEngine;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic l(Lcom/transsion/dbdata/engine/DataEngine;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/engine/DataEngine;->v(Landroid/content/Context;)V

    return-void
.end method

.method public static final m(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lkotlin/jvm/internal/Ref$ObjectRef;)Lzfb;
    .locals 2

    sget-object v0, Lcom/transsion/dbdata/engine/DataEngine;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpu4;

    invoke-interface {v1, p0, p1}, Lpu4;->a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final n(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;)Lzfb;
    .locals 6

    sget-object v0, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    new-instance v5, Lds1;

    invoke-direct {v5}, Lds1;-><init>()V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/dbdata/engine/DataEngine;->q(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;ILw74;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final o(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;I)Lzfb;
    .locals 1

    const-string v0, "currentScope"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentRequest"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentCallback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/engine/DataEngine;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpu4;

    invoke-interface {p3, p0, p1, p2}, Lpu4;->b(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final p(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lkotlin/jvm/internal/Ref$ObjectRef;)Lzfb;
    .locals 2

    sget-object v0, Lcom/transsion/dbdata/engine/DataEngine;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpu4;

    invoke-interface {v1, p0, p1}, Lpu4;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final r(Lnu4;)V
    .locals 3

    sget-object v0, Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;->FAILURE:Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

    const/4 v1, 0x0

    const-string v2, "No more layers available"

    invoke-interface {p0, v0, v1, v2}, Lnu4;->a(Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final s(Lw74;Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;ILnu4;)V
    .locals 7

    new-instance v6, Lcom/transsion/dbdata/engine/DataEngine$a;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/dbdata/engine/DataEngine$a;-><init>(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;ILw74;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p1, p2, v6, p3}, Lw74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;
    .locals 3

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p2}, Lns1;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lgs1;

    invoke-direct {v2, p1, p2, v0}, Lgs1;-><init>(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, v1, v2}, Lcom/transsion/dbdata/engine/DataEngine;->t(Landroid/content/Context;Lc74;)V

    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p0
.end method

.method public b(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;)V
    .locals 2

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lns1;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcs1;

    invoke-direct {v1, p1, p2, p3}, Lcs1;-><init>(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;)V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/engine/DataEngine;->t(Landroid/content/Context;Lc74;)V

    return-void
.end method

.method public c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;
    .locals 3

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p2}, Lns1;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lhs1;

    invoke-direct {v2, p1, p2, v0}, Lhs1;-><init>(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, v1, v2}, Lcom/transsion/dbdata/engine/DataEngine;->t(Landroid/content/Context;Lc74;)V

    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final q(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;ILw74;)V
    .locals 7

    sget-object p0, Lcom/transsion/dbdata/engine/DataEngine;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p4, p0, :cond_0

    sget-object p0, Lcom/transsion/dbdata/engine/DataEngine;->c:Landroid/os/Handler;

    new-instance p1, Les1;

    invoke-direct {p1, p3}, Les1;-><init>(Lnu4;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    sget-object p0, Lcom/transsion/dbdata/engine/DataEngine;->g:Landroid/os/Handler;

    if-eqz p0, :cond_1

    new-instance v6, Lfs1;

    move-object v0, v6

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lfs1;-><init>(Lw74;Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;ILnu4;)V

    invoke-virtual {p0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final t(Landroid/content/Context;Lc74;)V
    .locals 0

    new-instance p0, Lcom/transsion/dbdata/engine/DataEngine$checkInit$task$1;

    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/engine/DataEngine$checkInit$task$1;-><init>(Landroid/content/Context;Lc74;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/engine/DataEngine$checkInit$task$1;->onBackground()Ljava/lang/Void;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/engine/DataEngine$checkInit$task$1;->onResult(Ljava/lang/Void;)V

    :goto_0
    return-void
.end method

.method public final u(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/transsion/dbdata/engine/base/layer/DataLayer;->values()[Lcom/transsion/dbdata/engine/base/layer/DataLayer;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Lcom/transsion/dbdata/engine/base/layer/DataLayer;->getInstance(Landroid/content/Context;)Lpu4;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/transsion/dbdata/engine/DataEngine;->b:Ljava/util/List;

    sget-object p0, Lcom/transsion/dbdata/engine/DataEngine;->e:Ljs1;

    invoke-virtual {p0}, Ljs1;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/transsion/dbdata/engine/DataEngine;->f:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p1, Lcom/transsion/dbdata/engine/DataEngine;->g:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public final v(Landroid/content/Context;)V
    .locals 2

    sget-object p0, Lcom/transsion/dbdata/engine/DataEngine;->i:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/transsion/dbdata/engine/DataEngine;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    invoke-virtual {v1, p1}, Lcom/transsion/dbdata/engine/DataEngine;->u(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
