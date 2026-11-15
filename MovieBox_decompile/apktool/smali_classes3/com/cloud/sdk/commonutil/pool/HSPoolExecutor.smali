.class public final Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;,
        Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$DefaultThreadFactory;,
        Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$ComparableFutureTask;
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;ZZ)V
    .locals 8

    .line 1
    const-string p1, "ssp"

    .line 2
    .line 3
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    .line 6
    .line 7
    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v7, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$DefaultThreadFactory;

    .line 11
    .line 12
    invoke-direct {v7, p2, p3, p4}, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$DefaultThreadFactory;-><init>(Ljava/lang/String;Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;Z)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const v2, 0x7fffffff

    .line 17
    .line 18
    .line 19
    const-wide/16 v3, 0x3c

    .line 20
    .line 21
    move-object v0, p0

    .line 22
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 23
    .line 24
    .line 25
    iput-boolean p5, p0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;->a:Z

    .line 26
    .line 27
    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    new-instance p3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string p4, "HSPoolExecutor init, poolSize="

    .line 37
    .line 38
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    .line 42
    .line 43
    .line 44
    move-result p4

    .line 45
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p2, p1, p3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p2

    .line 57
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    new-instance p4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string p5, "HSPoolExecutor init error: "

    .line 67
    .line 68
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p3, p1, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method

.method private a(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :catch_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :catch_1
    move-exception p1

    .line 12
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :cond_0
    :goto_1
    return-object p1
.end method

.method public static b()Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;
    .locals 7

    .line 1
    new-instance v6, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;

    .line 2
    .line 3
    sget-object v3, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;->DEFAULT:Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    const/16 v1, 0x14

    .line 8
    .line 9
    const-string v2, "zero"

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;-><init>(ILjava/lang/String;Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;ZZ)V

    .line 13
    .line 14
    .line 15
    return-object v6
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$ComparableFutureTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$ComparableFutureTask;-><init>(Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1

    .line 2
    new-instance v0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$ComparableFutureTask;

    invoke-direct {v0, p0, p1}, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$ComparableFutureTask;-><init>(Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;->a(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;->a(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;->a(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
