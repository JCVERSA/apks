.class final Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$resumeMany$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->v(Ljava/util/List;Le74;)V
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
.field final synthetic $block:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;Le74;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;",
            "Le74;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$resumeMany$1;->this$0:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    iput-object p2, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$resumeMany$1;->$block:Le74;

    iput-object p3, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$resumeMany$1;->$taskIds:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$resumeMany$1;->invoke()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$resumeMany$1;->this$0:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    iget-object v2, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$resumeMany$1;->$taskIds:Ljava/util/List;

    monitor-enter v1

    .line 4
    :try_start_0
    check-cast v2, Ljava/lang/Iterable;

    .line 5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-static {v1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->e(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/LinkedList;

    move-result-object v4

    .line 7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 8
    check-cast v6, Lwda;

    .line 9
    invoke-interface {v6}, Lwda;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    const/4 v5, -0x1

    :goto_2
    if-ltz v5, :cond_0

    .line 10
    invoke-static {v1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->e(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "removeAt(...)"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lwda;

    .line 11
    invoke-static {v1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->i(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_3
    sget-object v2, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v1

    .line 15
    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$resumeMany$1;->$block:Le74;

    invoke-interface {v1, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$resumeMany$1;->this$0:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    invoke-static {p0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->j(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)V

    return-void

    .line 17
    :goto_3
    monitor-exit v1

    throw p0
.end method
