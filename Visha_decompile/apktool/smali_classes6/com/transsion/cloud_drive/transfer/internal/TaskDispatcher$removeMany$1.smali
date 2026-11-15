.class final Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$removeMany$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->t(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$removeMany$1;->this$0:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    iput-object p2, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$removeMany$1;->$taskIds:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$removeMany$1;->invoke()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke()V
    .locals 10

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$removeMany$1;->this$0:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    iget-object v2, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$removeMany$1;->$taskIds:Ljava/util/List;

    monitor-enter v1

    .line 3
    :try_start_0
    check-cast v2, Ljava/lang/Iterable;

    .line 4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-static {v1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->g(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lwda;

    if-eqz v4, :cond_1

    .line 6
    invoke-interface {v4, v0}, Lwda;->a(Z)V

    .line 7
    invoke-static {v1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->f(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    if-eqz v3, :cond_0

    .line 8
    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->c(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;Ljava/util/concurrent/Future;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    .line 9
    :cond_1
    invoke-static {v1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->e(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/LinkedList;

    move-result-object v5

    .line 10
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, -0x1

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 11
    check-cast v8, Lwda;

    .line 12
    invoke-interface {v8}, Lwda;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v7, v0

    goto :goto_1

    :cond_3
    move v7, v9

    :goto_2
    if-ltz v7, :cond_4

    .line 13
    invoke-static {v1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->e(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lwda;

    goto :goto_5

    .line 14
    :cond_4
    invoke-static {v1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->i(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/LinkedList;

    move-result-object v5

    .line 15
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 16
    check-cast v7, Lwda;

    .line 17
    invoke-interface {v7}, Lwda;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v9, v6

    goto :goto_4

    :cond_5
    add-int/2addr v6, v0

    goto :goto_3

    :cond_6
    :goto_4
    if-ltz v9, :cond_7

    .line 18
    invoke-static {v1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->i(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lwda;

    :cond_7
    :goto_5
    if-eqz v4, :cond_0

    .line 19
    invoke-interface {v4, v0}, Lwda;->a(Z)V

    .line 20
    invoke-interface {v4}, Lwda;->clear()V

    goto/16 :goto_0

    .line 21
    :cond_8
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v1

    .line 23
    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$removeMany$1;->this$0:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    invoke-static {p0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->j(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)V

    return-void

    .line 24
    :goto_6
    monitor-exit v1

    throw p0
.end method
