.class abstract Lcom/facebook/biddingkit/auction/e;
.super Lcom/facebook/biddingkit/auction/d;
.source "source.java"


# direct methods
.method protected static a(Ljava/lang/String;Lp8/b;Lcom/facebook/biddingkit/auction/b;)Ljava/util/List;
    .locals 1

    .line 1
    sget-object p2, Lq8/a;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    new-instance v0, Lcom/facebook/biddingkit/auction/e$a;

    .line 4
    .line 5
    invoke-direct {v0, p1, p0}, Lcom/facebook/biddingkit/auction/e$a;-><init>(Lp8/b;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 9
    .line 10
    .line 11
    new-instance p0, Lcom/facebook/biddingkit/logging/e;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/facebook/biddingkit/logging/e;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0
.end method
