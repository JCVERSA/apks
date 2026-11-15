.class public final Lcom/transsion/core/pool/TranssionPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;,
        Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;,
        Lcom/transsion/core/pool/TranssionPoolExecutor$ComparableFutureTask;
    }
.end annotation


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;ZZ)V
    .locals 8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;

    invoke-direct {v7, p2, p3, p4}, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;-><init>(Ljava/lang/String;Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;Z)V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-boolean p5, p0, Lcom/transsion/core/pool/TranssionPoolExecutor;->b:Z

    :try_start_0
    const-string p1, "ThreadPool"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "size is :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b()I
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "cpu[0-9]+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    new-instance v2, Lcom/transsion/core/pool/TranssionPoolExecutor$a;

    invoke-direct {v2, v1}, Lcom/transsion/core/pool/TranssionPoolExecutor$a;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Failed to calculate accurate cpu count"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ZeroPoolExecutor"

    invoke-static {v1, v0}, Lcom/transsion/core/log/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static e()Lcom/transsion/core/pool/TranssionPoolExecutor;
    .locals 3

    invoke-static {}, Lcom/transsion/core/pool/TranssionPoolExecutor;->b()I

    move-result v0

    const-string v1, "source"

    sget-object v2, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;->DEFAULT:Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

    invoke-static {v0, v1, v2}, Lcom/transsion/core/pool/TranssionPoolExecutor;->g(ILjava/lang/String;Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;)Lcom/transsion/core/pool/TranssionPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static g(ILjava/lang/String;Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;)Lcom/transsion/core/pool/TranssionPoolExecutor;
    .locals 7

    new-instance v6, Lcom/transsion/core/pool/TranssionPoolExecutor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/core/pool/TranssionPoolExecutor;-><init>(ILjava/lang/String;Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;ZZ)V

    return-object v6
.end method


# virtual methods
.method public final d(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/core/pool/TranssionPoolExecutor;->b:Z

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-object p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/core/pool/TranssionPoolExecutor;->b:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/core/pool/TranssionPoolExecutor$ComparableFutureTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/core/pool/TranssionPoolExecutor$ComparableFutureTask;-><init>(Lcom/transsion/core/pool/TranssionPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1

    .line 2
    new-instance v0, Lcom/transsion/core/pool/TranssionPoolExecutor$ComparableFutureTask;

    invoke-direct {v0, p0, p1}, Lcom/transsion/core/pool/TranssionPoolExecutor$ComparableFutureTask;-><init>(Lcom/transsion/core/pool/TranssionPoolExecutor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/core/pool/TranssionPoolExecutor;->d(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/core/pool/TranssionPoolExecutor;->d(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/core/pool/TranssionPoolExecutor;->d(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
