.class public Lq8/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private static d:I


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lq8/a;

    .line 2
    .line 3
    const-string v1, "GENERAL_EXECUTOR"

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/16 v3, 0x20

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lq8/a;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lq8/a;->b:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lq8/a;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    .line 19
    sput v3, Lq8/a;->d:I

    .line 20
    .line 21
    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    .line 6
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 9
    .line 10
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v7, Lq8/a$a;

    .line 14
    .line 15
    invoke-direct {v7, p0, p1}, Lq8/a$a;-><init>(Lq8/a;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v3, 0x1e

    .line 19
    .line 20
    move-object v0, v8

    .line 21
    move v1, p2

    .line 22
    move v2, p3

    .line 23
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 24
    .line 25
    .line 26
    iput-object v8, p0, Lq8/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-virtual {v8, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lq8/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-class v1, Lq8/a;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    sget v2, Lq8/a;->d:I

    .line 15
    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    mul-int/lit8 v0, v2, 0x2

    .line 19
    .line 20
    sput v0, Lq8/a;->d:I

    .line 21
    .line 22
    const-string v0, "MultiAsyncTaskExecutor"

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v4, "Tasks queue too long. Size = "

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v0, v2}, Lcom/facebook/biddingkit/logging/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object v0, p0, Lq8/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p1
.end method
