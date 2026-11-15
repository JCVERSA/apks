.class public Lcom/transsion/transfer/androidasync/c;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field a:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/Semaphore;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/c;->a:Ljava/util/concurrent/Semaphore;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/ThreadQueue;->getOrCreateThreadQueue(Ljava/lang/Thread;)Lcom/transsion/transfer/androidasync/ThreadQueue;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    .line 10
    .line 11
    iput-object p0, v0, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/transsion/transfer/androidasync/ThreadQueue;->queueSemaphore:Ljava/util/concurrent/Semaphore;

    .line 14
    .line 15
    :try_start_0
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/c;->a:Ljava/util/concurrent/Semaphore;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    .line 18
    .line 19
    .line 20
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iput-object v1, v0, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ThreadQueue;->remove()Ljava/lang/Runnable;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x1

    .line 37
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/c;->a:Ljava/util/concurrent/Semaphore;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    .line 47
    .line 48
    .line 49
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    iput-object v1, v0, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    .line 53
    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception v2

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :try_start_2
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :goto_1
    iput-object v1, v0, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    .line 62
    .line 63
    throw v2
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/c;->a:Ljava/util/concurrent/Semaphore;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/transsion/transfer/androidasync/ThreadQueue;->release(Lcom/transsion/transfer/androidasync/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)Z
    .locals 9

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-static {p3}, Lcom/transsion/transfer/androidasync/ThreadQueue;->getOrCreateThreadQueue(Ljava/lang/Thread;)Lcom/transsion/transfer/androidasync/ThreadQueue;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    iget-object v0, p3, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    .line 16
    .line 17
    iput-object p0, p3, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    .line 18
    .line 19
    iget-object v1, p3, Lcom/transsion/transfer/androidasync/ThreadQueue;->queueSemaphore:Ljava/util/concurrent/Semaphore;

    .line 20
    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/c;->a:Ljava/util/concurrent/Semaphore;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    .line 24
    .line 25
    .line 26
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    const/4 v3, 0x1

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iput-object v0, p3, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    .line 31
    .line 32
    return v3

    .line 33
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/transsion/transfer/androidasync/ThreadQueue;->remove()Ljava/lang/Runnable;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-nez v2, :cond_4

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 52
    .line 53
    invoke-virtual {v1, v2, p1, p2, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    .line 54
    .line 55
    .line 56
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    const/4 v6, 0x0

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    iput-object v0, p3, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    .line 61
    .line 62
    return v6

    .line 63
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/c;->a:Ljava/util/concurrent/Semaphore;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    .line 66
    .line 67
    .line 68
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    iput-object v0, p3, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    .line 72
    .line 73
    return v3

    .line 74
    :cond_3
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    sub-long/2addr v7, v4

    .line 79
    cmp-long v2, v7, p1

    .line 80
    .line 81
    if-ltz v2, :cond_1

    .line 82
    .line 83
    iput-object v0, p3, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    .line 84
    .line 85
    return v6

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    :try_start_4
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :goto_1
    iput-object v0, p3, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    .line 93
    .line 94
    throw p1
.end method
