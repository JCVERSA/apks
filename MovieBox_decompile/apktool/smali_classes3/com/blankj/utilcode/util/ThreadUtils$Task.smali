.class public abstract Lcom/blankj/utilcode/util/ThreadUtils$Task;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ThreadUtils$Task$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final CANCELLED:I = 0x4

.field private static final COMPLETING:I = 0x3

.field private static final EXCEPTIONAL:I = 0x2

.field private static final INTERRUPTED:I = 0x5

.field private static final NEW:I = 0x0

.field private static final RUNNING:I = 0x1

.field private static final TIMEOUT:I = 0x6


# instance fields
.field private deliver:Ljava/util/concurrent/Executor;

.field private volatile isSchedule:Z

.field private mTimeoutListener:Lcom/blankj/utilcode/util/ThreadUtils$Task$a;

.field private mTimeoutMillis:J

.field private mTimer:Ljava/util/Timer;

.field private volatile runner:Ljava/lang/Thread;

.field private final state:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    return-void
.end method

.method static synthetic access$000(Lcom/blankj/utilcode/util/ThreadUtils$Task;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->setSchedule(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/blankj/utilcode/util/ThreadUtils$Task;)Lcom/blankj/utilcode/util/ThreadUtils$Task$a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method static synthetic access$500(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->timeout()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getDeliver()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->deliver:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->b()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method private setSchedule(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->isSchedule:Z

    .line 2
    .line 3
    return-void
.end method

.method private timeout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-le v1, v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    const/4 v2, 0x6

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 21
    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void

    .line 34
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->cancel(Z)V

    return-void
.end method

.method public cancel(Z)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->getDeliver()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/blankj/utilcode/util/ThreadUtils$Task$5;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task$5;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 9
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public isCanceled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public isDone()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method

.method public abstract onCancel()V
.end method

.method protected onDone()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->c()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimer:Ljava/util/Timer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimer:Ljava/util/Timer;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public abstract onFail(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public run()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->isSchedule:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eq v0, v2, :cond_4

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    .line 50
    .line 51
    :cond_4
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->doInBackground()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-boolean v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->isSchedule:Z

    .line 56
    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eq v1, v2, :cond_5

    .line 66
    .line 67
    return-void

    .line 68
    :cond_5
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->getDeliver()Ljava/util/concurrent/Executor;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v3, Lcom/blankj/utilcode/util/ThreadUtils$Task$2;

    .line 73
    .line 74
    invoke-direct {v3, p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task$2;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto :goto_1

    .line 83
    :cond_6
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    .line 85
    const/4 v3, 0x3

    .line 86
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_7

    .line 91
    .line 92
    return-void

    .line 93
    :cond_7
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->getDeliver()Ljava/util/concurrent/Executor;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v3, Lcom/blankj/utilcode/util/ThreadUtils$Task$3;

    .line 98
    .line 99
    invoke-direct {v3, p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task$3;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :goto_1
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 107
    .line 108
    const/4 v3, 0x2

    .line 109
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_8

    .line 114
    .line 115
    return-void

    .line 116
    :cond_8
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->getDeliver()Ljava/util/concurrent/Executor;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    new-instance v2, Lcom/blankj/utilcode/util/ThreadUtils$Task$4;

    .line 121
    .line 122
    invoke-direct {v2, p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task$4;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :catch_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 130
    .line 131
    const/4 v1, 0x4

    .line 132
    const/4 v2, 0x5

    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 134
    .line 135
    .line 136
    :goto_2
    return-void
.end method

.method public setDeliver(Ljava/util/concurrent/Executor;)Lcom/blankj/utilcode/util/ThreadUtils$Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->deliver:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTimeout(JLcom/blankj/utilcode/util/ThreadUtils$Task$a;)Lcom/blankj/utilcode/util/ThreadUtils$Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task$a;",
            ")",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimeoutMillis:J

    .line 2
    .line 3
    return-object p0
.end method
