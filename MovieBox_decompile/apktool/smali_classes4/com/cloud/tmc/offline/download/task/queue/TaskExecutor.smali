.class public final Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\'\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013H\u0002J\u0006\u0010\u0014\u001a\u00020\u0010J\u0008\u0010\u0015\u001a\u00020\u0010H\u0016J\u0008\u0010\u0016\u001a\u00020\u0010H\u0002J\u0006\u0010\u0017\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;",
        "Ljava/lang/Runnable;",
        "dispatcher",
        "Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;",
        "parallelism",
        "",
        "mTask",
        "Ljava/util/concurrent/BlockingQueue;",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;ILjava/util/concurrent/BlockingQueue;)V",
        "inFlightTasks",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "isRunning",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "waitCountLimit",
        "log",
        "",
        "",
        "printStack",
        "",
        "quit",
        "run",
        "sleep",
        "startQueue",
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
.field public static final Companion:Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$Companion;

.field private static final MAX_WAIT_COUNT_LIMIT:I = 0x3

.field private static final MAX_WAIT_TIMEOUT:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "TmcOfflineDownload: TaskExecutor"


# instance fields
.field private final dispatcher:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

.field private final inFlightTasks:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTask:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            ">;"
        }
    .end annotation
.end field

.field private final parallelism:I

.field private final waitCountLimit:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->Companion:Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;ILjava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;",
            "I",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mTask"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->dispatcher:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

    .line 3
    iput p2, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->parallelism:I

    .line 4
    iput-object p3, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->mTask:Ljava/util/concurrent/BlockingQueue;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->inFlightTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->waitCountLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;ILjava/util/concurrent/BlockingQueue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;-><init>(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;ILjava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method public static final synthetic access$getInFlightTasks$p(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->inFlightTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object p0
.end method

.method private final log(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Ljava/lang/Throwable;

    .line 4
    .line 5
    const-string v0, "Just Print"

    .line 6
    .line 7
    invoke-direct {p2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p2, ""

    .line 16
    .line 17
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " "

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "TmcOfflineDownload: TaskExecutor"

    .line 38
    .line 39
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method static synthetic log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V
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
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final sleep()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    const-string v1, "TmcOfflineDownload: TaskExecutor"

    .line 9
    .line 10
    const-string v2, "InterruptedException while sleeping."

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method


# virtual methods
.method public final quit()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    const-string v3, "quit"

    .line 14
    .line 15
    invoke-static {p0, v3, v1, v0, v2}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    const-string v1, "TmcOfflineDownload: TaskExecutor"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_7

    .line 18
    .line 19
    const-string v0, "Start Waiting..."

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x2

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {p0, v0, v1, v2, v3}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->mTask:Ljava/util/concurrent/BlockingQueue;

    .line 28
    .line 29
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    .line 31
    const-wide/16 v5, 0x2710

    .line 32
    .line 33
    invoke-interface {v0, v5, v6, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/cloud/tmc/offline/download/task/base/ITask;

    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v5, "Waiting for task: "

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {p0, v4, v1, v2, v3}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->waitCountLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v5, "incrementAndGet: "

    .line 73
    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {p0, v4, v1, v2, v3}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    const/4 v4, 0x3

    .line 88
    if-lt v0, v4, :cond_1

    .line 89
    .line 90
    const-string v0, "When the maximum number of acquisition timeouts is reached, exit the current thread"

    .line 91
    .line 92
    invoke-static {p0, v0, v1, v2, v3}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->quit()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_1
    move-object v0, v3

    .line 100
    :cond_2
    if-eqz v0, :cond_3

    .line 101
    .line 102
    iget-object v4, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->waitCountLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 103
    .line 104
    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 105
    .line 106
    .line 107
    :cond_3
    iget-object v4, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->inFlightTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v6, "inFlight: "

    .line 119
    .line 120
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-static {p0, v5, v1, v2, v3}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget v5, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->parallelism:I

    .line 134
    .line 135
    if-gt v4, v5, :cond_5

    .line 136
    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v5, "Run task: "

    .line 145
    .line 146
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-static {p0, v4, v1, v2, v3}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->dispatcher:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

    .line 160
    .line 161
    new-instance v2, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$run$2$1;

    .line 162
    .line 163
    invoke-direct {v2, p0, v0}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$run$2$1;-><init>(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->dispatch(Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->inFlightTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 174
    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_5
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->sleep()V

    .line 179
    .line 180
    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v5, "Reached the maximum parallelism, re-throw into the queue "

    .line 189
    .line 190
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-static {p0, v4, v1, v2, v3}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->mTask:Ljava/util/concurrent/BlockingQueue;

    .line 204
    .line 205
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->inFlightTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 211
    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :catch_0
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-nez v0, :cond_0

    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->quit()V

    .line 224
    .line 225
    .line 226
    :cond_7
    return-void
.end method

.method public final startQueue()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x2

    .line 12
    const/4 v1, 0x0

    .line 13
    const-string v2, "startQueue"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {p0, v2, v3, v0, v1}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->inFlightTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->waitCountLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->dispatcher:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 32
    .line 33
    .line 34
    return-void
.end method
