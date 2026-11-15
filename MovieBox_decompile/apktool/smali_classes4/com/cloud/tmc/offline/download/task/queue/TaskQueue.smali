.class public final Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/task/queue/TaskQueue$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001d\u0010\u0010\u001a\u00020\u0011\"\u0008\u0008\u0000\u0010\u0012*\u00020\u000f2\u0006\u0010\u0013\u001a\u0002H\u0012\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0006\u0010\u0017\u001a\u00020\u0016J\u0006\u0010\u0018\u001a\u00020\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;",
        "",
        "addQueueExecute",
        "",
        "(Z)V",
        "mAtomicInteger",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "mDispatcher",
        "Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;",
        "mHandler",
        "Landroid/os/Handler;",
        "mTaskExecutor",
        "Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;",
        "mTaskQueue",
        "Ljava/util/concurrent/PriorityBlockingQueue;",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "add",
        "",
        "T",
        "task",
        "(Lcom/cloud/tmc/offline/download/task/base/ITask;)I",
        "checkTaskExecutor",
        "",
        "quit",
        "start",
        "Companion",
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/offline/download/task/queue/TaskQueue$Companion;

.field private static final KEY_QUIT:I = 0x2

.field private static final KEY_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TaskQueue"


# instance fields
.field private final addQueueExecute:Z

.field private final mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDispatcher:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

.field private final mHandler:Landroid/os/Handler;

.field private mTaskExecutor:Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;

.field private final mTaskQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->Companion:Lcom/cloud/tmc/offline/download/task/queue/TaskQueue$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->addQueueExecute:Z

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/cloud/tmc/offline/download/task/queue/a;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/offline/download/task/queue/a;-><init>(Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->mHandler:Landroid/os/Handler;

    .line 4
    new-instance p1, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->mDispatcher:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

    .line 5
    new-instance p1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->mTaskQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;-><init>(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->mHandler$lambda$0(Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;Landroid/os/Message;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final checkTaskExecutor()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->mTaskExecutor:Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->mDispatcher:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iget-object v3, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->mTaskQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v3}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;-><init>(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;ILjava/util/concurrent/BlockingQueue;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->mTaskExecutor:Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;

    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->addQueueExecute:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->start()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method private static final mHandler$lambda$0(Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;Landroid/os/Message;)Z
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "it"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->mTaskExecutor:Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->quit()V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->mTaskExecutor:Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->startQueue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :goto_0
    const-string p1, "TaskQueue"

    .line 39
    .line 40
    invoke-static {p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public final add(Lcom/cloud/tmc/offline/download/task/base/ITask;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            ">(TT;)I"
        }
    .end annotation

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->checkTaskExecutor()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->mTaskQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->mTaskQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-interface {p1, v1}, Lcom/cloud/tmc/offline/download/task/base/ITask;->setSequence(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->mTaskQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public final quit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method
