.class public Lcom/mbridge/msdk/foundation/same/image/f;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private static a()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/mbridge/msdk/foundation/same/image/f$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/image/f$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static b()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    .line 1
    sget-object v0, Lcom/mbridge/msdk/foundation/same/image/f;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 14
    .line 15
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 18
    .line 19
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/image/f;->a()Ljava/util/concurrent/ThreadFactory;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    .line 27
    .line 28
    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    .line 29
    .line 30
    .line 31
    const-wide/16 v4, 0xa

    .line 32
    .line 33
    move-object v1, v0

    .line 34
    move v2, v3

    .line 35
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/mbridge/msdk/foundation/same/image/f;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 39
    .line 40
    :cond_0
    sget-object v0, Lcom/mbridge/msdk/foundation/same/image/f;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/mbridge/msdk/foundation/same/image/f;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 47
    .line 48
    return-object v0
.end method
