.class public Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

.field public static final GENERAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final MAX_POOL_SIZE:I = 0x20

.field public static final SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final TAG:Ljava/lang/String; = "MultiAsyncTaskExecutor"

.field private static sThreshold:I


# instance fields
.field private mReservedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;

    const-string v1, "GENERAL_EXECUTOR"

    const/4 v2, 0x4

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;->GENERAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledExecutorService;

    sput v3, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;->sThreshold:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor$1;

    invoke-direct {v7, p0, p1}, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor$1;-><init>(Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;Ljava/lang/String;)V

    const-wide/16 v3, 0x1e

    move-object v0, v8

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;->mReservedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 p0, 0x1

    invoke-virtual {v8, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 5

    iget-object v0, p0, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;->mReservedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const-class v1, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;

    monitor-enter v1

    :try_start_0
    sget v2, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;->sThreshold:I

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v2, 0x2

    sput v0, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;->sThreshold:I

    const-string v0, "MultiAsyncTaskExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tasks queue too long. Size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;->mReservedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
