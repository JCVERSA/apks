.class public abstract Lcom/blankj/utilcode/util/ThreadUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ThreadUtils$Task;,
        Lcom/blankj/utilcode/util/ThreadUtils$b;,
        Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;,
        Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;,
        Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;
    }
.end annotation


# static fields
.field public static final a:Landroid/os/Handler;

.field public static final b:Ljava/util/Map;

.field public static final c:Ljava/util/Map;

.field public static final d:I

.field public static final e:Ljava/util/Timer;

.field public static f:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->a:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->c:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/blankj/utilcode/util/ThreadUtils;->d:I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->e:Ljava/util/Timer;

    return-void
.end method

.method public static synthetic a()I
    .locals 1

    sget v0, Lcom/blankj/utilcode/util/ThreadUtils;->d:I

    return v0
.end method

.method public static synthetic b()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->m()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->c:Ljava/util/Map;

    return-object v0
.end method

.method public static d(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/blankj/utilcode/util/ThreadUtils;->e(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static e(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V
    .locals 3

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string p0, "ThreadUtils"

    const-string p1, "Task can only be executed once."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_2

    cmp-long p4, p2, v0

    if-nez p4, :cond_1

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance p4, Lcom/blankj/utilcode/util/ThreadUtils$1;

    invoke-direct {p4, p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$1;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    sget-object p0, Lcom/blankj/utilcode/util/ThreadUtils;->e:Ljava/util/Timer;

    invoke-virtual {p6, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {p0, p4, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->access$000(Lcom/blankj/utilcode/util/ThreadUtils$Task;Z)V

    new-instance v0, Lcom/blankj/utilcode/util/ThreadUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$2;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    sget-object p0, Lcom/blankj/utilcode/util/ThreadUtils;->e:Ljava/util/Timer;

    invoke-virtual {p6, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p4

    move-object p1, v0

    invoke-virtual/range {p0 .. p5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static f(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .locals 1

    const/4 v0, -0x2

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->p(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/ThreadUtils;->d(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public static g(ILcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->p(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils;->d(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public static h(ILcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->p(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/blankj/utilcode/util/ThreadUtils;->k(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .locals 1

    const/4 v0, -0x4

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->p(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/ThreadUtils;->d(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public static j(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->p(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/ThreadUtils;->d(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public static k(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/blankj/utilcode/util/ThreadUtils;->e(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static l()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, -0x2

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->p(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static m()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->f:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/blankj/utilcode/util/ThreadUtils$a;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/ThreadUtils$a;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->f:Ljava/util/concurrent/Executor;

    :cond_0
    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->f:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static n()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, -0x4

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->p(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static o()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static p(I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils;->q(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static q(II)Ljava/util/concurrent/ExecutorService;
    .locals 3

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$b;->a(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$b;->a(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static r()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static s(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static t(Ljava/lang/Runnable;J)V
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
