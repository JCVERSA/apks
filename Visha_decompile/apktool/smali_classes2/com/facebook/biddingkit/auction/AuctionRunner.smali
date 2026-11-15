.class Lcom/facebook/biddingkit/auction/AuctionRunner;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AuctionRunner"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addErrorEventLog(Lcom/facebook/biddingkit/logging/EventLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/facebook/biddingkit/logging/EventLog;->addError(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "error"

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/biddingkit/auction/AuctionRunner;->addExtraData(Lcom/facebook/biddingkit/logging/EventLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed to get bid."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AuctionRunner"

    invoke-static {p1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addExceptionEventLog(Lcom/facebook/biddingkit/logging/EventLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/facebook/biddingkit/logging/EventLog;->addError(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p0, p1, p2, v0}, Lcom/facebook/biddingkit/auction/AuctionRunner;->addExtraData(Lcom/facebook/biddingkit/logging/EventLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed to get bid. Got exception"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AuctionRunner"

    invoke-static {p1, p0, p3}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static addExtraData(Lcom/facebook/biddingkit/logging/EventLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/facebook/biddingkit/logging/EventLog;->addAuctionId(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/facebook/biddingkit/logging/EventLog;->addResultData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addSuccessEventLog(Lcom/facebook/biddingkit/logging/EventLog;Ljava/lang/String;Ljava/lang/String;DJ)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Lcom/facebook/biddingkit/logging/EventLog;->addCpmCentsData(Ljava/lang/String;D)V

    invoke-virtual {p0, p2, p5, p6}, Lcom/facebook/biddingkit/logging/EventLog;->addLatencyMs(Ljava/lang/String;J)V

    const-string/jumbo p5, "success"

    invoke-static {p0, p1, p2, p5}, Lcom/facebook/biddingkit/auction/AuctionRunner;->addExtraData(Lcom/facebook/biddingkit/logging/EventLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " succeeded to get a bid. CPM cents: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AuctionRunner"

    invoke-static {p1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addTimeoutEventLog(Lcom/facebook/biddingkit/logging/EventLog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "timeout"

    invoke-static {p0, p1, p2, v0}, Lcom/facebook/biddingkit/auction/AuctionRunner;->addExtraData(Lcom/facebook/biddingkit/logging/EventLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " timed out while getting a bid."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AuctionRunner"

    invoke-static {p1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getBids(Ljava/lang/String;Ljava/util/List;Lcom/facebook/biddingkit/auction/AuctionConfig;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/biddingkit/bidders/Bidder;",
            ">;",
            "Lcom/facebook/biddingkit/auction/AuctionConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/biddingkit/gen/Bid;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    invoke-static {p1, p0, p2}, Lcom/facebook/biddingkit/auction/AuctionRunner;->getPendingBiddingRequestsMap(Ljava/util/List;Ljava/lang/String;Lcom/facebook/biddingkit/auction/AuctionConfig;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/facebook/biddingkit/auction/AuctionRunner;->getBidsFromFuture(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getBidsFromFuture(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/facebook/biddingkit/bidders/Bidder;",
            "Ljava/util/concurrent/Future<",
            "Landroid/util/Pair<",
            "Lcom/facebook/biddingkit/gen/Bid;",
            "Ljava/lang/Long;",
            ">;>;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/biddingkit/gen/Bid;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v8, Lcom/facebook/biddingkit/logging/EventLog;

    invoke-direct {v8}, Lcom/facebook/biddingkit/logging/EventLog;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/facebook/biddingkit/bidders/Bidder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/biddingkit/gen/Bid;

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Lcom/facebook/biddingkit/bidders/Bidder;->getBidderName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/facebook/biddingkit/gen/Bid;->getPrice()D

    move-result-wide v4

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v1, v8

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/facebook/biddingkit/auction/AuctionRunner;->addSuccessEventLog(Lcom/facebook/biddingkit/logging/EventLog;Ljava/lang/String;Ljava/lang/String;DJ)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-interface {v9}, Lcom/facebook/biddingkit/bidders/Bidder;->getBidderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No bid"

    invoke-static {v8, p1, v1, v2}, Lcom/facebook/biddingkit/auction/AuctionRunner;->addErrorEventLog(Lcom/facebook/biddingkit/logging/EventLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    invoke-interface {v9}, Lcom/facebook/biddingkit/bidders/Bidder;->getBidderName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, p1, v2, v1}, Lcom/facebook/biddingkit/auction/AuctionRunner;->addExceptionEventLog(Lcom/facebook/biddingkit/logging/EventLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    invoke-interface {v9}, Lcom/facebook/biddingkit/bidders/Bidder;->getBidderName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, p1, v2}, Lcom/facebook/biddingkit/auction/AuctionRunner;->addTimeoutEventLog(Lcom/facebook/biddingkit/logging/EventLog;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Lcom/facebook/biddingkit/logging/EventLog;->saveEvent()V

    return-object v0
.end method

.method private static getPendingBiddingRequestsMap(Ljava/util/List;Ljava/lang/String;Lcom/facebook/biddingkit/auction/AuctionConfig;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/biddingkit/bidders/Bidder;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/biddingkit/auction/AuctionConfig;",
            ")",
            "Ljava/util/HashMap<",
            "Lcom/facebook/biddingkit/bidders/Bidder;",
            "Ljava/util/concurrent/Future<",
            "Landroid/util/Pair<",
            "Lcom/facebook/biddingkit/gen/Bid;",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/biddingkit/bidders/Bidder;

    sget-object v3, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/facebook/biddingkit/auction/AuctionRunner$1;

    invoke-direct {v4, v1, p1, v2}, Lcom/facebook/biddingkit/auction/AuctionRunner$1;-><init>(Lcom/facebook/biddingkit/bidders/Bidder;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/biddingkit/auction/AuctionConfig;->getTimeoutMs()I

    move-result p0

    int-to-long v3, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auction ID: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " timed out after "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/facebook/biddingkit/auction/AuctionConfig;->getTimeoutMs()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AuctionRunner"

    invoke-static {p1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method
