.class public abstract Lcom/therouter/TheRouterThreadPool;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static e:J

.field private static f:I

.field private static g:Ljava/util/concurrent/ExecutorService;

.field private static final h:Landroid/os/Handler;

.field private static i:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lcom/therouter/TheRouterThreadPool;->a:I

    .line 10
    .line 11
    add-int/lit8 v1, v0, -0x1

    .line 12
    .line 13
    const/4 v2, 0x6

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x3

    .line 19
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    sput v4, Lcom/therouter/TheRouterThreadPool;->b:I

    .line 24
    .line 25
    mul-int/lit8 v1, v0, 0x4

    .line 26
    .line 27
    sput v1, Lcom/therouter/TheRouterThreadPool;->c:I

    .line 28
    .line 29
    mul-int/lit8 v0, v0, 0x8

    .line 30
    .line 31
    sput v0, Lcom/therouter/TheRouterThreadPool;->d:I

    .line 32
    .line 33
    const-wide/16 v0, 0x1e

    .line 34
    .line 35
    sput-wide v0, Lcom/therouter/TheRouterThreadPool;->e:J

    .line 36
    .line 37
    const/16 v0, 0xa

    .line 38
    .line 39
    sput v0, Lcom/therouter/TheRouterThreadPool;->f:I

    .line 40
    .line 41
    new-instance v0, Lcom/therouter/BufferExecutor;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/therouter/BufferExecutor;-><init>()V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/therouter/TheRouterThreadPool;->g:Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    new-instance v0, Landroid/os/Handler;

    .line 49
    .line 50
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/therouter/TheRouterThreadPool;->h:Landroid/os/Handler;

    .line 58
    .line 59
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 60
    .line 61
    sget-wide v6, Lcom/therouter/TheRouterThreadPool;->e:J

    .line 62
    .line 63
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 64
    .line 65
    new-instance v9, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 66
    .line 67
    sget v1, Lcom/therouter/TheRouterThreadPool;->f:I

    .line 68
    .line 69
    invoke-direct {v9, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 70
    .line 71
    .line 72
    const-string v1, "TheRouterLibThread"

    .line 73
    .line 74
    invoke-static {v1}, Lcom/therouter/TheRouterThreadPool;->k(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    const v5, 0x7fffffff

    .line 79
    .line 80
    .line 81
    move-object v3, v0

    .line 82
    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 83
    .line 84
    .line 85
    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 87
    .line 88
    .line 89
    sput-object v0, Lcom/therouter/TheRouterThreadPool;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 90
    .line 91
    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 1
    sget v0, Lcom/therouter/TheRouterThreadPool;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic b()I
    .locals 1

    .line 1
    sget v0, Lcom/therouter/TheRouterThreadPool;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    .line 1
    sget v0, Lcom/therouter/TheRouterThreadPool;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic d()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 1
    sget-object v0, Lcom/therouter/TheRouterThreadPool;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/therouter/TheRouterThreadPool;->j([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final f(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    const-string v0, "command"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lcom/therouter/TheRouterThreadPool;->g:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    new-instance v0, Lcom/therouter/TheRouterThreadPool$execute$1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/therouter/TheRouterThreadPool$execute$1;-><init>(Ljava/lang/Exception;)V

    .line 16
    .line 17
    .line 18
    const-string p0, "TheRouterThreadPool"

    .line 19
    .line 20
    const-string v1, "rejected execute runnable"

    .line 21
    .line 22
    invoke-static {p0, v1, v0}, Lcom/therouter/TheRouterKt;->c(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public static final g(Ljava/lang/Runnable;)Z
    .locals 2

    .line 1
    const-string v0, "command"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object v0, Lcom/therouter/TheRouterThreadPool;->h:Landroid/os/Handler;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    :goto_0
    return p0
.end method

.method public static final h()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/therouter/TheRouterThreadPool;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final i()I
    .locals 1

    .line 1
    sget v0, Lcom/therouter/TheRouterThreadPool;->f:I

    .line 2
    .line 3
    return v0
.end method

.method private static final j([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/16 v3, 0xa

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v0, "toString(...)"

    .line 28
    .line 29
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object p0
.end method

.method public static final k(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 1
    const-string v0, "threadName"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/therouter/TheRouterThreadPool$a;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/therouter/TheRouterThreadPool$a;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
