.class Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;
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
    iput-object p1, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->a(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->d(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->b(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Ljava/lang/Runnable;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->c(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    int-to-long v2, v2

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method
