.class final Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->s(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "Lzfb;",
        "<anonymous>",
        "(Lnk1;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.cloud.updownload.viewmodel.TransferDataViewModel$loadFinishedTask$1"
    f = "TransferDataViewModel.kt"
    l = {
        0x115,
        0x121
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $taskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;",
            "Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->$taskList:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->this$0:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->$taskList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->this$0:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-direct {v0, v1, p0, p2}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;-><init>(Ljava/util/List;Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;Lwh1;)V

    iput-object p1, v0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lnk1;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk1;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->label:I

    const/4 v2, 0x0

    const-string v3, "TransferDataViewModel"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lnk1;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lnk1;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->$taskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFinishedTask taskList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->$taskList:Ljava/util/List;

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v9, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1$localFileExistStatus$1;

    invoke-direct {v9, v1, v2}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1$localFileExistStatus$1;-><init>(Ljava/util/ArrayList;Lwh1;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Lcl0;->b(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Ld72;

    move-result-object v6

    iput-object p1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->L$1:Ljava/lang/Object;

    iput v5, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->label:I

    invoke-interface {v6, p0}, Ld72;->o(Lwh1;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_3

    return-object v0

    :cond_3
    move-object v12, v5

    move-object v5, p1

    move-object p1, v12

    :goto_0
    check-cast p1, Ljava/util/Map;

    sget v6, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez v6, :cond_5

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iget-object v4, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    goto :goto_1

    :cond_5
    new-instance v8, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1$cloudFileExistIds$1;

    iget-object v6, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->this$0:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-direct {v8, v6, v1, v2}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1$cloudFileExistIds$1;-><init>(Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;Ljava/util/ArrayList;Lwh1;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lcl0;->b(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Ld72;

    move-result-object v2

    iput-object v1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->label:I

    invoke-interface {v2, p0}, Ld72;->o(Lwh1;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, p1

    move-object p1, v2

    :goto_2
    check-cast p1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iget-object v5, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    :cond_8
    iget-object v5, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isCloudFileExist:Z

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;->this$0:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->c(Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;)Lcom/transsion/cloudcore/db/CloudTaskDao;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-interface {p0, v1}, Lcom/transsion/cloudcore/db/CloudTaskDao;->updateTasks(Ljava/util/List;)V

    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadFinishedTask:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
