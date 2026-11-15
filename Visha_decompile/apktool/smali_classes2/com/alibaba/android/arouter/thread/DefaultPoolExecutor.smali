.class public Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# static fields
.field private static final CPU_COUNT:I

.field private static final INIT_THREAD_COUNT:I

.field private static final MAX_THREAD_COUNT:I

.field private static final SURPLUS_THREAD_LIFE:J = 0x1eL

.field private static volatile instance:Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;->INIT_THREAD_COUNT:I

    sput v0, Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;->MAX_THREAD_COUNT:I

    return-void
.end method

.method private constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    new-instance v8, Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor$1;

    invoke-direct {v8}, Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor$1;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public static getInstance()Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;
    .locals 10

    sget-object v0, Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;->instance:Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;

    if-nez v0, :cond_1

    const-class v0, Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;->instance:Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;

    sget v3, Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;->INIT_THREAD_COUNT:I

    sget v4, Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;->MAX_THREAD_COUNT:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x40

    invoke-direct {v8, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v9, Lcom/alibaba/android/arouter/thread/DefaultThreadFactory;

    invoke-direct {v9}, Lcom/alibaba/android/arouter/thread/DefaultThreadFactory;-><init>()V

    const-wide/16 v5, 0x1e

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;->instance:Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;->instance:Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;

    return-object v0
.end method


# virtual methods
.method public afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    if-nez p2, :cond_0

    instance-of p0, p1, Ljava/util/concurrent/Future;

    if-eqz p0, :cond_0

    :try_start_0
    check-cast p1, Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object p2, p0

    goto :goto_1

    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    sget-object p0, Lcom/alibaba/android/arouter/launcher/ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Running task appeared exception! Thread ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], because ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/android/arouter/utils/TextUtils;->formatStackTrace([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ARouter::"

    invoke-interface {p0, p2, p1}, Lcom/alibaba/android/arouter/facade/template/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
