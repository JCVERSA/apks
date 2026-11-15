.class Lcom/facebook/biddingkit/logging/EventLogDispatcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/logging/EventLogDispatcher;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$2;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$2;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    invoke-static {v0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->access$400(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$2;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    invoke-static {v0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->access$400(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iget-object p0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$2;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    invoke-static {p0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->access$500(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
