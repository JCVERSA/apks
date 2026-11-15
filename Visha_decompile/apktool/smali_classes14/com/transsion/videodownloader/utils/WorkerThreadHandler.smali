.class public abstract Lcom/transsion/videodownloader/utils/WorkerThreadHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/videodownloader/utils/WorkerThreadHandler$a;,
        Lcom/transsion/videodownloader/utils/WorkerThreadHandler$MediaWorkerThread;
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:Ljava/util/concurrent/BlockingQueue;

.field public static final e:Ljava/util/concurrent/ExecutorService;

.field public static f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/transsion/videodownloader/utils/WorkerThreadHandler;->a:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/transsion/videodownloader/utils/WorkerThreadHandler;->b:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x1

    sput v3, Lcom/transsion/videodownloader/utils/WorkerThreadHandler;->c:I

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v7, Lcom/transsion/videodownloader/utils/WorkerThreadHandler;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Lcom/transsion/videodownloader/utils/WorkerThreadHandler$a;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lcom/transsion/videodownloader/utils/WorkerThreadHandler$a;-><init>(Lhpc;)V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const-wide/16 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/transsion/videodownloader/utils/WorkerThreadHandler;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transsion/videodownloader/utils/WorkerThreadHandler;->f:Landroid/os/Handler;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1

    sget-object v0, Lcom/transsion/videodownloader/utils/WorkerThreadHandler;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
