.class Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;
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

    iput-object p1, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    invoke-static {v0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->access$000(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)V

    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    invoke-static {v0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->access$300(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    invoke-static {v1}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->access$100(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object p0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;->this$0:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    invoke-static {p0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->access$200(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
