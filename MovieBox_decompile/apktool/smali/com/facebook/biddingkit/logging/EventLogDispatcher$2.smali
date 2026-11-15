.class Lcom/facebook/biddingkit/logging/EventLogDispatcher$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/logging/EventLogDispatcher;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$2;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$2;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->e(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$2;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->e(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$2;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->f(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Ljava/lang/Runnable;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
