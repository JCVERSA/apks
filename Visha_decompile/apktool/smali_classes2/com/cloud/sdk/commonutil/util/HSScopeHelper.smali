.class public final Lcom/cloud/sdk/commonutil/util/HSScopeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

.field public static b:Z

.field public static final c:Lhk1;

.field public static final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:Lnk1;

.field public static final i:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final j:Lkotlinx/coroutines/h;

.field public static final k:Lnk1;

.field public static final l:Lnk1;

.field public static final m:Lnk1;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    invoke-direct {v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;-><init>()V

    sput-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    sget-object v0, Lhk1;->w1:Lhk1$b;

    new-instance v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper$a;

    invoke-direct {v1, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper$a;-><init>(Lhk1$b;)V

    sput-object v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->c:Lhk1;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->e:I

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lwn8;->k(III)I

    move-result v1

    sput v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->f:I

    mul-int/lit8 v0, v0, 0x2

    const/16 v3, 0x10

    invoke-static {v0, v1, v3}, Lwn8;->k(III)I

    move-result v6

    sput v6, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g:I

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v3, v1}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    sput-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->h:Lnk1;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v11, Lem4;

    invoke-direct {v11}, Lem4;-><init>()V

    new-instance v12, Lfm4;

    invoke-direct {v12}, Lfm4;-><init>()V

    const/4 v5, 0x1

    const-wide/16 v7, 0x3c

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Lef3;->b(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/h;

    move-result-object v0

    sput-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->j:Lkotlinx/coroutines/h;

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v2

    sput-object v2, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->k:Lnk1;

    invoke-static {v1, v3, v1}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    sput-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->l:Lnk1;

    invoke-static {}, Lmc2;->a()Lkotlinx/coroutines/c;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    sput-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->m:Lnk1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->v(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method public static synthetic b(Lc74;Le74;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->t(Lc74;Le74;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->u(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static final t(Lc74;Le74;)V
    .locals 1

    const-string v0, "$runnable"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Lcom/cloud/sdk/commonutil/util/a$b;

    invoke-direct {v0, p0}, Lcom/cloud/sdk/commonutil/util/a$b;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Lcom/cloud/sdk/commonutil/util/a$a;

    invoke-direct {v0, p0}, Lcom/cloud/sdk/commonutil/util/a$a;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static final u(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hs-io-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final v(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 6

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->h:Lnk1;

    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->c:Lhk1;

    new-instance v3, Lcom/cloud/sdk/commonutil/util/HSScopeHelper$sdkIoExecutor$2$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper$sdkIoExecutor$2$1;-><init>(Ljava/lang/Runnable;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method


# virtual methods
.method public final d()Lnk1;
    .locals 0

    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->m:Lnk1;

    return-object p0
.end method

.method public final e()Lhk1;
    .locals 0

    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->c:Lhk1;

    return-object p0
.end method

.method public final f()Lnk1;
    .locals 0

    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->l:Lnk1;

    return-object p0
.end method

.method public final g()Lnk1;
    .locals 0

    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->k:Lnk1;

    return-object p0
.end method

.method public final h()Z
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final i(Ljava/lang/Runnable;)V
    .locals 1

    const-string p0, "runnable"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object p0, Lwn4;->a:Lwn4;

    const-string v0, "hs_fetch_ad_thread"

    invoke-virtual {p0, v0}, Lwn4;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/Runnable;)V
    .locals 3

    const-string p0, "runnable"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    sget-object v0, Lwn4;->a:Lwn4;

    const-string v1, "hs_fetch_ad_thread"

    invoke-virtual {v0, v1}, Lwn4;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {p0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lwn4;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final k(Ljava/lang/Runnable;J)V
    .locals 1

    const-string p0, "runnable"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lwn4;->a:Lwn4;

    const-string v0, "hs_fetch_ad_thread"

    invoke-virtual {p0, v0}, Lwn4;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final l(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "runnable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->m(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final m(Ljava/lang/Runnable;J)V
    .locals 6

    const-string p0, "runnable"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->b:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lbm4;->b()Lbm4;

    move-result-object p0

    invoke-virtual {p0, p1}, Lbm4;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->l:Lnk1;

    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->c:Lhk1;

    new-instance v3, Lcom/cloud/sdk/commonutil/util/HSScopeHelper$runIOThread$1;

    const/4 p0, 0x0

    invoke-direct {v3, p2, p3, p1, p0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper$runIOThread$1;-><init>(JLjava/lang/Runnable;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final n(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "runnable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->o(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final o(Ljava/lang/Runnable;J)V
    .locals 6

    const-string p0, "runnable"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->m:Lnk1;

    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->c:Lhk1;

    new-instance v3, Lcom/cloud/sdk/commonutil/util/HSScopeHelper$runNewThread$1;

    const/4 p0, 0x0

    invoke-direct {v3, p2, p3, p1, p0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper$runNewThread$1;-><init>(JLjava/lang/Runnable;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final p(Ljava/lang/Runnable;)V
    .locals 6

    const-string v0, "runnable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->k:Lnk1;

    new-instance v3, Lcom/cloud/sdk/commonutil/util/HSScopeHelper$runUIThread$1;

    const/4 p0, 0x0

    invoke-direct {v3, p1, p0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper$runUIThread$1;-><init>(Ljava/lang/Runnable;Lwh1;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final q(Lc74;Le74;)V
    .locals 3

    const-string p0, "runnable"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    sget-object v0, Lwn4;->a:Lwn4;

    const-string v1, "hs_work_thread"

    invoke-virtual {v0, v1}, Lwn4;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {p0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p1}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Lcom/cloud/sdk/commonutil/util/a$b;

    invoke-direct {p1, p0}, Lcom/cloud/sdk/commonutil/util/a$b;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/cloud/sdk/commonutil/util/a$a;

    invoke-direct {p1, p0}, Lcom/cloud/sdk/commonutil/util/a$a;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lwn4;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Lgm4;

    invoke-direct {v0, p1, p2}, Lgm4;-><init>(Lc74;Le74;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final r(Ljava/lang/Runnable;)V
    .locals 3

    const-string p0, "runnable"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    sget-object v0, Lwn4;->a:Lwn4;

    const-string v1, "hs_work_thread"

    invoke-virtual {v0, v1}, Lwn4;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {p0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lwn4;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final s(Ljava/lang/Runnable;J)V
    .locals 1

    const-string p0, "runnable"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lwn4;->a:Lwn4;

    const-string v0, "hs_work_thread"

    invoke-virtual {p0, v0}, Lwn4;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
