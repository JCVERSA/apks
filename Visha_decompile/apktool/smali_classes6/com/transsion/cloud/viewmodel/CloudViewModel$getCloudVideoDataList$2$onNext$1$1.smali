.class final Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
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
    c = "com.transsion.cloud.viewmodel.CloudViewModel$getCloudVideoDataList$2$onNext$1$1"
    f = "CloudViewModel.kt"
    l = {
        0x1be,
        0x1bf
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $dataType:I

.field final synthetic $it:Lcom/transsion/dbdata/beans/CloudResponseModel;

.field final synthetic $pageNo:I

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/beans/CloudResponseModel;Lcom/transsion/cloud/viewmodel/CloudViewModel;IILwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/dbdata/beans/CloudResponseModel;",
            "Lcom/transsion/cloud/viewmodel/CloudViewModel;",
            "II",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->$it:Lcom/transsion/dbdata/beans/CloudResponseModel;

    iput-object p2, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iput p3, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->$pageNo:I

    iput p4, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->$dataType:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 6
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

    new-instance p1, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;

    iget-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->$it:Lcom/transsion/dbdata/beans/CloudResponseModel;

    iget-object v2, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iget v3, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->$pageNo:I

    iget v4, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->$dataType:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;-><init>(Lcom/transsion/dbdata/beans/CloudResponseModel;Lcom/transsion/cloud/viewmodel/CloudViewModel;IILwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v1, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->$it:Lcom/transsion/dbdata/beans/CloudResponseModel;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/CloudResponseModel;->getVideoList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->$pageNo:I

    if-ne v2, v6, :cond_6

    iget v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->$dataType:I

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-static {v6}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    iget-object v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->$it:Lcom/transsion/dbdata/beans/CloudResponseModel;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/CloudResponseModel;->getVideoList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    iget-object v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_0

    :cond_9
    iget-object v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-static {v3}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_a
    :goto_0
    iget-object v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->$it:Lcom/transsion/dbdata/beans/CloudResponseModel;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/CloudResponseModel;->getVideoList()Ljava/util/List;

    move-result-object v2

    iget-object v7, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->$it:Lcom/transsion/dbdata/beans/CloudResponseModel;

    invoke-virtual {v7}, Lcom/transsion/dbdata/beans/CloudResponseModel;->getVideoList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_d

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-virtual {v8}, Lcom/transsion/dbdata/beans/VideoCloudData;->getPlayDuration()J

    move-result-wide v9

    const/16 v11, 0x3e8

    int-to-long v11, v11

    mul-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lcom/transsion/dbdata/beans/VideoCloudData;->setPlayDuration(J)V

    invoke-virtual {v8}, Lcom/transsion/dbdata/beans/VideoCloudData;->getDuration()Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    mul-long/2addr v9, v11

    invoke-static {v9, v10}, Lmk0;->c(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_2

    :cond_c
    move-object v9, v5

    :goto_2
    invoke-virtual {v8, v9}, Lcom/transsion/dbdata/beans/VideoCloudData;->setDuration(Ljava/lang/Long;)V

    invoke-virtual {v8}, Lcom/transsion/dbdata/beans/VideoCloudData;->getPlayDuration()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_b

    sget-object v10, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    invoke-virtual {v8}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/transsion/dbdata/beans/VideoCloudData;->getPlayDuration()J

    move-result-wide v12

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->X(Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;Ljava/lang/String;JLjava/lang/Runnable;ILjava/lang/Object;)V

    goto :goto_1

    :cond_d
    iget v7, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->$dataType:I

    if-eqz v7, :cond_e

    if-eq v7, v4, :cond_e

    const/4 v8, 0x3

    if-ne v7, v8, :cond_12

    :cond_e
    iget-object v7, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iput-object v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->label:I

    invoke-virtual {v7, v2, v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->r0(Ljava/util/List;Lwh1;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_f

    return-object v1

    :cond_f
    :goto_3
    iget-object v7, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iput-object v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->label:I

    invoke-static {v7, v2, v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->d(Lcom/transsion/cloud/viewmodel/CloudViewModel;Ljava/util/List;Lwh1;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_10

    return-object v1

    :cond_10
    move-object v1, v2

    :goto_4
    iget-object v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-static {v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->g(Lcom/transsion/cloud/viewmodel/CloudViewModel;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-static {v2, v3}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->l(Lcom/transsion/cloud/viewmodel/CloudViewModel;Z)V

    iget-object v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-instance v3, Lkotlin/Triple;

    invoke-static {v6}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget v8, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->$pageNo:I

    invoke-static {v8}, Lmk0;->b(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v3, v7, v1, v8}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_5

    :cond_11
    iget-object v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-instance v7, Lkotlin/Triple;

    invoke-static {v3}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget v8, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->$pageNo:I

    invoke-static {v8}, Lmk0;->b(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v3, v1, v8}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_5
    iget-object v2, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-static {v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->k(Lcom/transsion/cloud/viewmodel/CloudViewModel;)V

    move-object v2, v1

    :cond_12
    iget v1, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->$pageNo:I

    const-string v3, "insertDataToCache videoList "

    const-string v7, "CloudViewModel"

    if-ne v1, v6, :cond_17

    iget v1, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->$dataType:I

    if-eqz v1, :cond_15

    if-eq v1, v4, :cond_13

    goto/16 :goto_6

    :cond_13
    iget-object v1, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {v1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->F()Lnk1;

    move-result-object v8

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v9

    new-instance v11, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1$3;

    iget-object v0, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-direct {v11, v2, v0, v5}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1$3;-><init>(Ljava/util/List;Lcom/transsion/cloud/viewmodel/CloudViewModel;Lwh1;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    if-eqz v2, :cond_14

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lmk0;->b(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_15
    iget-object v1, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {v1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->F()Lnk1;

    move-result-object v8

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v9

    new-instance v11, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1$2;

    iget-object v0, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-direct {v11, v2, v0, v5}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1$2;-><init>(Ljava/util/List;Lcom/transsion/cloud/viewmodel/CloudViewModel;Lwh1;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    if-eqz v2, :cond_16

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lmk0;->b(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertDataToCache clearAllCache videoList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_17
    iget v1, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->$dataType:I

    if-eqz v1, :cond_18

    if-ne v1, v4, :cond_1a

    :cond_18
    iget-object v0, v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-static {v0, v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->i(Lcom/transsion/cloud/viewmodel/CloudViewModel;Ljava/util/List;)V

    if-eqz v2, :cond_19

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lmk0;->b(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_6
    sget-object v0, Lzfb;->a:Lzfb;

    return-object v0
.end method
