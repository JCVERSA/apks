.class Lcom/facebook/biddingkit/auction/RemoteAuctionRunner;
.super Lcom/facebook/biddingkit/auction/AuctionRunner;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteAuctionRunner"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/biddingkit/auction/AuctionRunner;-><init>()V

    return-void
.end method

.method public static getRemoteBids(Ljava/lang/String;Lcom/facebook/biddingkit/remote/RemoteBidder;Lcom/facebook/biddingkit/auction/AuctionConfig;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/biddingkit/remote/RemoteBidder;",
            "Lcom/facebook/biddingkit/auction/AuctionConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/biddingkit/remote/RemoteBid;",
            ">;"
        }
    .end annotation

    const-string v0, "RemoteAuctionRunner"

    sget-object v1, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/facebook/biddingkit/auction/RemoteAuctionRunner$1;

    invoke-direct {v2, p1, p0}, Lcom/facebook/biddingkit/auction/RemoteAuctionRunner$1;-><init>(Lcom/facebook/biddingkit/remote/RemoteBidder;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    new-instance v9, Lcom/facebook/biddingkit/logging/EventLog;

    invoke-direct {v9}, Lcom/facebook/biddingkit/logging/EventLog;-><init>()V

    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/biddingkit/auction/AuctionConfig;->getTimeoutMs()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/biddingkit/remote/RemoteAuctionResult;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    move-object p1, v2

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-virtual {p1}, Lcom/facebook/biddingkit/remote/RemoteBidder;->getBidderName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p0, p1}, Lcom/facebook/biddingkit/auction/AuctionRunner;->addTimeoutEventLog(Lcom/facebook/biddingkit/logging/EventLog;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auction ID: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timed out after "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/facebook/biddingkit/auction/AuctionConfig;->getTimeoutMs()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An exception occurred when requesting remote bids for auction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lcom/facebook/biddingkit/remote/RemoteBidder;->getBidderName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p0, p1, p2}, Lcom/facebook/biddingkit/auction/AuctionRunner;->addExceptionEventLog(Lcom/facebook/biddingkit/logging/EventLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    :goto_3
    if-nez p1, :cond_0

    invoke-virtual {v9}, Lcom/facebook/biddingkit/logging/EventLog;->saveEvent()V

    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/biddingkit/remote/RemoteAuctionResult;->getBids()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/biddingkit/gen/Bid;

    invoke-interface {v0}, Lcom/facebook/biddingkit/gen/Bid;->getBidderName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/facebook/biddingkit/gen/Bid;->getPrice()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/facebook/biddingkit/remote/RemoteAuctionResult;->getLatency()J

    move-result-wide v7

    move-object v2, v9

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/facebook/biddingkit/auction/AuctionRunner;->addSuccessEventLog(Lcom/facebook/biddingkit/logging/EventLog;Ljava/lang/String;Ljava/lang/String;DJ)V

    goto :goto_4

    :cond_1
    invoke-virtual {v9}, Lcom/facebook/biddingkit/logging/EventLog;->saveEvent()V

    invoke-virtual {p1}, Lcom/facebook/biddingkit/remote/RemoteAuctionResult;->getBids()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
