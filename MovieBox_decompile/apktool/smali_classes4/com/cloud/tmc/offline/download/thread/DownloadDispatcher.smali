.class public final Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0013\u0008\u0007\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J5\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2%\u0008\u0002\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000bJ\u0006\u0010\u000e\u001a\u00020\u0007J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0012\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u00112\u0006\u0010\u0012\u001a\u00020\u0013R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;",
        "",
        "executor",
        "Ljava/util/concurrent/ExecutorService;",
        "(Ljava/util/concurrent/ExecutorService;)V",
        "mExecutor",
        "dispatch",
        "",
        "task",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "onCompleted",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "dispatcherEnd",
        "execute",
        "submit",
        "Ljava/util/concurrent/Future;",
        "runnable",
        "Ljava/lang/Runnable;",
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
.field public static final Companion:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$Companion;

.field private static final TAG:Ljava/lang/String; = "TmcOfflineDownload: DownLoadDispatcher"


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->Companion:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;-><init>(Ljava/util/concurrent/ExecutorService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5
    new-instance v1, Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory;

    const-string v2, "DownLoadThreadFactory"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory;-><init>(Ljava/lang/String;Z)V

    .line 6
    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    :cond_0
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/ExecutorService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->dispatch$lambda$1$lambda$0(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$execute(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/offline/download/task/base/ITask;Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lkotlin/jvm/functions/Function1;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->dispatch$lambda$1(Lcom/cloud/tmc/offline/download/task/base/ITask;Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lkotlin/jvm/functions/Function1;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic c(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->dispatch$lambda$2(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic dispatch$default(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->dispatch(Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final dispatch$lambda$1(Lcom/cloud/tmc/offline/download/task/base/ITask;Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lkotlin/jvm/functions/Function1;)Z
    .locals 2

    .line 1
    const-string v0, "$task"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "execute idleHandler task: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "TmcOfflineDownload: DownLoadDispatcher"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p1, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 34
    .line 35
    new-instance v1, Lcom/cloud/tmc/offline/download/thread/c;

    .line 36
    .line 37
    invoke-direct {v1, p1, p0, p2}, Lcom/cloud/tmc/offline/download/thread/c;-><init>(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method private static final dispatch$lambda$1$lambda$0(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$task"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    .line 12
    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private static final dispatch$lambda$2(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$task"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    .line 12
    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private final execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "execute task: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "TmcOfflineDownload: DownLoadDispatcher"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    new-instance v0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$execute$1$1;

    .line 24
    .line 25
    invoke-direct {v0, p1, p0, p1}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$execute$1$1;-><init>(Lcom/cloud/tmc/offline/download/task/base/ITask;Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0}, Lcom/cloud/tmc/offline/download/task/base/ITask;->run(Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    const-string v0, "execute task run failed!"

    .line 34
    .line 35
    invoke-static {v1, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method


# virtual methods
.method public final dispatch(Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "Lkotlin/Unit;",
            ">;)V"
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
    invoke-interface {p1}, Lcom/cloud/tmc/offline/download/task/base/ITask;->isIdleRunTask()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/cloud/tmc/offline/download/thread/a;

    .line 21
    .line 22
    invoke-direct {v1, p1, p0, p2}, Lcom/cloud/tmc/offline/download/thread/a;-><init>(Lcom/cloud/tmc/offline/download/task/base/ITask;Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    new-instance v1, Lcom/cloud/tmc/offline/download/thread/b;

    .line 32
    .line 33
    invoke-direct {v1, p0, p1, p2}, Lcom/cloud/tmc/offline/download/thread/b;-><init>(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public final dispatcherEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->executor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->isAppDebugAble()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "TmcOfflineDownload: DownLoadDispatcher"

    .line 18
    .line 19
    const-string v1, "auto shutdown default executor"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 1
    const-string v0, "runnable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "mExecutor.submit(runnable)"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object p1
.end method
