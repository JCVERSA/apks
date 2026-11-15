.class Lcom/google/common/util/concurrent/ClosingFuture$9;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/ClosingFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture;)V
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
    sget-object v0, Lcom/google/common/util/concurrent/ClosingFuture$State;->WILL_CLOSE:Lcom/google/common/util/concurrent/ClosingFuture$State;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/util/concurrent/ClosingFuture$State;->CLOSING:Lcom/google/common/util/concurrent/ClosingFuture$State;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0, v1}, Lcom/google/common/util/concurrent/ClosingFuture;->b(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$State;Lcom/google/common/util/concurrent/ClosingFuture$State;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v2}, Lcom/google/common/util/concurrent/ClosingFuture;->a(Lcom/google/common/util/concurrent/ClosingFuture;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/google/common/util/concurrent/ClosingFuture$State;->CLOSED:Lcom/google/common/util/concurrent/ClosingFuture$State;

    .line 13
    .line 14
    invoke-static {v2, v1, v0}, Lcom/google/common/util/concurrent/ClosingFuture;->b(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$State;Lcom/google/common/util/concurrent/ClosingFuture$State;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
