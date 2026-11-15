.class Lcom/google/common/util/concurrent/MoreExecutors$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$future:Lcom/google/common/util/concurrent/r;

.field final synthetic val$queue:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/common/util/concurrent/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/MoreExecutors$1;->val$queue:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/common/util/concurrent/MoreExecutors$1;->val$future:Lcom/google/common/util/concurrent/r;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$1;->val$queue:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$1;->val$future:Lcom/google/common/util/concurrent/r;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method
