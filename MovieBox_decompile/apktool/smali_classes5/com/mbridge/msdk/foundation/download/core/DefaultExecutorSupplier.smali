.class public Lcom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/download/core/ExecutorSupplier;


# instance fields
.field private DEFAULT_MAX_NUM_THREADS:I

.field private final backgroundExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final downloadResultExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final networkExecutor:Lcom/mbridge/msdk/foundation/download/core/DownloadExecutor;


# direct methods
.method constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    iput v0, p0, Lcom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->DEFAULT_MAX_NUM_THREADS:I

    .line 7
    .line 8
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/setting/h;->b(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/b;->M()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, p0, Lcom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->DEFAULT_MAX_NUM_THREADS:I

    .line 31
    .line 32
    if-gtz v1, :cond_0

    .line 33
    .line 34
    iput v0, p0, Lcom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->DEFAULT_MAX_NUM_THREADS:I

    .line 35
    .line 36
    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lcom/mbridge/msdk/foundation/download/core/DownloadExecutor;

    .line 42
    .line 43
    iget v3, p0, Lcom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->DEFAULT_MAX_NUM_THREADS:I

    .line 44
    .line 45
    new-instance v4, Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;

    .line 46
    .line 47
    invoke-direct {v4, v0}, Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v3, v4, v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lcom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->networkExecutor:Lcom/mbridge/msdk/foundation/download/core/DownloadExecutor;

    .line 54
    .line 55
    iget v1, p0, Lcom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->DEFAULT_MAX_NUM_THREADS:I

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    if-lez v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 61
    .line 62
    .line 63
    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 64
    .line 65
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 66
    .line 67
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 68
    .line 69
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v11, Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;

    .line 73
    .line 74
    invoke-direct {v11, v0}, Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;-><init>(I)V

    .line 75
    .line 76
    .line 77
    new-instance v12, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    .line 78
    .line 79
    invoke-direct {v12}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    .line 80
    .line 81
    .line 82
    const/4 v6, 0x1

    .line 83
    const-wide/16 v7, 0xa

    .line 84
    .line 85
    const/4 v5, 0x1

    .line 86
    move-object v4, v1

    .line 87
    move-object v9, v2

    .line 88
    invoke-direct/range {v4 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Lcom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->backgroundExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 94
    .line 95
    .line 96
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 97
    .line 98
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 99
    .line 100
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v11, Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;

    .line 104
    .line 105
    invoke-direct {v11, v0}, Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;-><init>(I)V

    .line 106
    .line 107
    .line 108
    new-instance v12, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    .line 109
    .line 110
    invoke-direct {v12}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    .line 111
    .line 112
    .line 113
    move-object v4, v1

    .line 114
    invoke-direct/range {v4 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 115
    .line 116
    .line 117
    iput-object v1, p0, Lcom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->downloadResultExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 118
    .line 119
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 120
    .line 121
    .line 122
    return-void
.end method


# virtual methods
.method public getBackgroundTasks()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->backgroundExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadResultTasks()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->downloadResultExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadTasks()Lcom/mbridge/msdk/foundation/download/core/DownloadExecutor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->networkExecutor:Lcom/mbridge/msdk/foundation/download/core/DownloadExecutor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLruCacheThreadTasks()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->backgroundExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    return-object v0
.end method
