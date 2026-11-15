.class Lcom/transsion/transfer/androidasync/AsyncServer$RunnableWrapper;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/AsyncServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunnableWrapper"
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field hasRun:Z

.field runnable:Ljava/lang/Runnable;

.field threadQueue:Lcom/transsion/transfer/androidasync/ThreadQueue;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$RunnableWrapper;->hasRun:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$RunnableWrapper;->hasRun:Z

    .line 12
    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    const/4 v0, 0x0

    .line 15
    :try_start_1
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$RunnableWrapper;->runnable:Ljava/lang/Runnable;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$RunnableWrapper;->threadQueue:Lcom/transsion/transfer/androidasync/ThreadQueue;

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Lcom/transsion/transfer/androidasync/ThreadQueue;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$RunnableWrapper;->handler:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$RunnableWrapper;->threadQueue:Lcom/transsion/transfer/androidasync/ThreadQueue;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$RunnableWrapper;->handler:Landroid/os/Handler;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$RunnableWrapper;->runnable:Ljava/lang/Runnable;

    .line 35
    .line 36
    return-void

    .line 37
    :catchall_1
    move-exception v1

    .line 38
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$RunnableWrapper;->threadQueue:Lcom/transsion/transfer/androidasync/ThreadQueue;

    .line 39
    .line 40
    invoke-virtual {v2, p0}, Lcom/transsion/transfer/androidasync/ThreadQueue;->remove(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$RunnableWrapper;->handler:Landroid/os/Handler;

    .line 44
    .line 45
    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$RunnableWrapper;->threadQueue:Lcom/transsion/transfer/androidasync/ThreadQueue;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$RunnableWrapper;->handler:Landroid/os/Handler;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$RunnableWrapper;->runnable:Ljava/lang/Runnable;

    .line 53
    .line 54
    throw v1

    .line 55
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    throw v0
.end method
