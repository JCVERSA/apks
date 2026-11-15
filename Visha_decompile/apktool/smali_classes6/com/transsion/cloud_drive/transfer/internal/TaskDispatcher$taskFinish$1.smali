.class final Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$taskFinish$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->D(Lwda;Ljava/lang/Throwable;)V
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
.field final synthetic $error:Ljava/lang/Throwable;

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
.method public constructor <init>(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;Lwda;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;",
            "Lwda;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$taskFinish$1;->this$0:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    iput-object p2, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$taskFinish$1;->$task:Lwda;

    iput-object p3, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$taskFinish$1;->$error:Ljava/lang/Throwable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$taskFinish$1;->invoke()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$taskFinish$1;->this$0:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$taskFinish$1;->$task:Lwda;

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$taskFinish$1;->$error:Ljava/lang/Throwable;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->g(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-interface {v1}, Lwda;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->f(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-interface {v1}, Lwda;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_2

    .line 5
    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->e(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, p0, Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;->isNoNetwork()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->j(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {v1}, Lwda;->isCompleted()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 9
    sget-object p0, Loq5;->a:Loq5;

    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->h(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "task is completed, clear block info"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-interface {v1}, Lwda;->clear()V

    .line 11
    :cond_3
    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->j(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)V

    .line 12
    :cond_4
    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method
