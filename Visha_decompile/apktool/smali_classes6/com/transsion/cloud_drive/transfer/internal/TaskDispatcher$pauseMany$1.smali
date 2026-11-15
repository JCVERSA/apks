.class final Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$pauseMany$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->r(Ljava/util/List;)V
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
.field final synthetic $taskIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
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
.method public constructor <init>(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$pauseMany$1;->this$0:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    iput-object p2, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$pauseMany$1;->$taskIds:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$pauseMany$1;->invoke()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$pauseMany$1;->this$0:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$pauseMany$1;->$taskIds:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    check-cast v1, Ljava/lang/Iterable;

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->g(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwda;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v3, v4}, Lwda;->a(Z)V

    .line 7
    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->e(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 8
    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->f(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    if-eqz v2, :cond_0

    .line 9
    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->c(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;Ljava/util/concurrent/Future;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 10
    :cond_1
    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->i(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/LinkedList;

    move-result-object v3

    .line 11
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 12
    check-cast v6, Lwda;

    .line 13
    invoke-interface {v6}, Lwda;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    :goto_2
    if-ltz v5, :cond_0

    .line 14
    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->i(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwda;

    .line 15
    invoke-static {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->e(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {v2, v4}, Lwda;->a(Z)V

    goto :goto_0

    .line 17
    :cond_4
    sget-object v1, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v0

    .line 19
    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$pauseMany$1;->this$0:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    invoke-static {p0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->j(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)V

    return-void

    .line 20
    :goto_3
    monitor-exit v0

    throw p0
.end method
