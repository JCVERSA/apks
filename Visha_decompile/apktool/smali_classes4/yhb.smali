.class public Lyhb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/concurrent/TimeUnit;


# instance fields
.field public a:I

.field public b:Lcom/lzy/okserver/task/XExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lyhb;->c:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lyhb;->a:I

    return-void
.end method


# virtual methods
.method public a()Lcom/lzy/okserver/task/XExecutor;
    .locals 11

    iget-object v0, p0, Lyhb;->b:Lcom/lzy/okserver/task/XExecutor;

    if-nez v0, :cond_1

    const-class v0, Lyhb;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyhb;->b:Lcom/lzy/okserver/task/XExecutor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lzy/okserver/task/XExecutor;

    iget v3, p0, Lyhb;->a:I

    sget-object v7, Lyhb;->c:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-direct {v8}, Lcom/lzy/okserver/task/PriorityBlockingQueue;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/4 v4, 0x5

    const-wide/16 v5, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/lzy/okserver/task/XExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lyhb;->b:Lcom/lzy/okserver/task/XExecutor;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    iget-object p0, p0, Lyhb;->b:Lcom/lzy/okserver/task/XExecutor;

    return-object p0
.end method
