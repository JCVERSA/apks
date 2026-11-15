.class Lcom/blankj/utilcode/util/ThreadUtils$1;
.super Ljava/util/TimerTask;
.source "source.java"


# instance fields
.field final synthetic val$pool:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$task:Lcom/blankj/utilcode/util/ThreadUtils$Task;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$1;->val$pool:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/blankj/utilcode/util/ThreadUtils$1;->val$task:Lcom/blankj/utilcode/util/ThreadUtils$Task;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$1;->val$pool:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$1;->val$task:Lcom/blankj/utilcode/util/ThreadUtils$Task;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
