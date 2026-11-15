.class final Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$enqueue$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->m(Lwda;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u0002\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lwda;",
        "T",
        "Lzfb;",
        "invoke",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $task:Lwda;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwda;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;Lwda;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;",
            "Lwda;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$enqueue$1;->this$0:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    iput-object p2, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$enqueue$1;->$task:Lwda;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$enqueue$1;->invoke()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$enqueue$1;->this$0:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$enqueue$1;->$task:Lwda;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->h(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->g(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->n()I

    move-result v3

    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->i(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enqueue-runningTask.size :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , maxRunning: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", waitingQueue.size: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->h(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->f(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->e(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enqueue-runningFutures.size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pausedTaskQueue.size : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->h(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->d(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enqueue-mQueue.size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->g(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->n()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 11
    invoke-static {v0, p0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->k(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;Lwda;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->i(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 13
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
