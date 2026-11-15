.class public Lcom/android/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "source.java"


# instance fields
.field private final mCache:Lcom/android/volley/c;

.field private final mDelivery:Lcom/android/volley/j;

.field private final mNetwork:Lcom/android/volley/f;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/f;Lcom/android/volley/c;Lcom/android/volley/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request;",
            ">;",
            "Lcom/android/volley/f;",
            "Lcom/android/volley/c;",
            "Lcom/android/volley/j;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/f;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/c;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/j;

    .line 14
    .line 15
    return-void
.end method

.method private addTrafficStatsTag(Lcom/android/volley/Request;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTrafficStatsTag()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/j;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/android/volley/j;->c(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private processRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/volley/NetworkDispatcher;->processRequest(Lcom/android/volley/Request;)V

    return-void
.end method


# virtual methods
.method processRequest(Lcom/android/volley/Request;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x3

    .line 4
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->sendEvent(I)V

    const/4 v2, 0x4

    .line 5
    :try_start_0
    const-string v3, "network-queue-take"

    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    const-string v3, "network-discard-cancelled"

    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/android/volley/Request;->notifyListenerResponseNotUsable()V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->sendEvent(I)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto/16 :goto_2

    .line 10
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/volley/NetworkDispatcher;->addTrafficStatsTag(Lcom/android/volley/Request;)V

    .line 11
    iget-object v3, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/f;

    invoke-interface {v3, p1}, Lcom/android/volley/f;->a(Lcom/android/volley/Request;)Lcom/android/volley/g;

    move-result-object v3

    .line 12
    const-string v4, "network-http-complete"

    invoke-virtual {p1, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 13
    iget-boolean v4, v3, Lcom/android/volley/g;->e:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/volley/Request;->hasHadResponseDelivered()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 14
    const-string v3, "not-modified"

    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/android/volley/Request;->notifyListenerResponseNotUsable()V
    :try_end_1
    .catch Lcom/android/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->sendEvent(I)V

    return-void

    .line 17
    :cond_1
    :try_start_2
    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/g;)Lcom/android/volley/i;

    move-result-object v3

    .line 18
    const-string v4, "network-parse-complete"

    invoke-virtual {p1, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/volley/i;->b:Lcom/android/volley/c$a;

    if-eqz v4, :cond_2

    .line 20
    iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/c;

    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/android/volley/i;->b:Lcom/android/volley/c$a;

    invoke-interface {v4, v5, v6}, Lcom/android/volley/c;->c(Ljava/lang/String;Lcom/android/volley/c$a;)V

    .line 21
    const-string v4, "network-cache-written"

    invoke-virtual {p1, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 22
    :cond_2
    invoke-virtual {p1}, Lcom/android/volley/Request;->markDelivered()V

    .line 23
    iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/j;

    invoke-interface {v4, p1, v3}, Lcom/android/volley/j;->a(Lcom/android/volley/Request;Lcom/android/volley/i;)V

    .line 24
    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->notifyListenerResponseReceived(Lcom/android/volley/i;)V
    :try_end_2
    .catch Lcom/android/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->sendEvent(I)V

    goto :goto_3

    .line 26
    :goto_1
    :try_start_3
    const-string v4, "Unhandled exception %s"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v3, v4, v6}, Lcom/android/volley/l;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    new-instance v4, Lcom/android/volley/VolleyError;

    invoke-direct {v4, v3}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/android/volley/VolleyError;->setNetworkTimeMs(J)V

    .line 29
    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/j;

    invoke-interface {v0, p1, v4}, Lcom/android/volley/j;->c(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 30
    invoke-virtual {p1}, Lcom/android/volley/Request;->notifyListenerResponseNotUsable()V

    goto :goto_0

    .line 31
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/android/volley/VolleyError;->setNetworkTimeMs(J)V

    .line 32
    invoke-direct {p0, p1, v3}, Lcom/android/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 33
    invoke-virtual {p1}, Lcom/android/volley/Request;->notifyListenerResponseNotUsable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_3
    return-void

    .line 34
    :goto_4
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->sendEvent(I)V

    throw v0
.end method

.method public quit()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/volley/NetworkDispatcher;->processRequest()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    iget-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    .line 24
    .line 25
    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/android/volley/l;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0
.end method
