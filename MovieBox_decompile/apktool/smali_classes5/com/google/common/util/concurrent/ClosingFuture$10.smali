.class Lcom/google/common/util/concurrent/ClosingFuture$10;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/ClosingFuture;

.field final synthetic val$consumer:Lcom/google/common/util/concurrent/ClosingFuture$b;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v0}, Lcom/google/common/util/concurrent/ClosingFuture;->c(Lcom/google/common/util/concurrent/ClosingFuture$b;Lcom/google/common/util/concurrent/ClosingFuture;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
