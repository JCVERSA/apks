.class public final Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/CloudViewModel;->u(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/cloud/viewmodel/CloudViewModel;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->b:I

    iput-object p2, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->c:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iput p3, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->d:I

    iput-object p4, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 11

    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->c:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoList onNext  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CloudViewModel"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->c:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->n0(Z)V

    const-string v0, "response.isSuccess"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->d:I

    if-ne v0, v3, :cond_0

    const-string v0, "mSowNetException.postValue(false)"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->c:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/transsion/dbdata/beans/CloudResponseModel;

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->c:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {p1, v1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->j0(Lcom/transsion/dbdata/beans/CloudResponseModel;)V

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->c:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iget v3, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->d:I

    iget v4, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->b:I

    invoke-virtual {v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->F()Lnk1;

    move-result-object p0

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v6

    new-instance v8, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$onNext$1$1;-><init>(Lcom/transsion/dbdata/beans/CloudResponseModel;Lcom/transsion/cloud/viewmodel/CloudViewModel;IILwh1;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lgec;->o(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->c:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->S()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object p1

    new-instance v7, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$a;

    iget-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->c:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iget v2, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->d:I

    iget-object v3, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->f:Ljava/lang/String;

    iget v5, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->b:I

    iget-object v6, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->g:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$a;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v7}, Lgec;->k(Lgec$d;)V

    goto/16 :goto_2

    :cond_2
    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->c:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->P()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->d:I

    iget v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->b:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoList onNext failure "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ,"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->d:I

    if-ne p1, v3, :cond_4

    iget p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->b:I

    if-eq p1, v0, :cond_4

    const-string p1, "mSowNetException.postValue(true)"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->c:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lkotlin/Pair;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->b:I

    if-ne p1, v0, :cond_5

    sget p1, Lcom/transsion/netdisk/R$string;->network_error:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_5
    :goto_1
    iget p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->d:I

    if-le p1, v3, :cond_6

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->c:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->N()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onComplete()V
    .locals 1

    const-string p0, "CloudViewModel"

    const-string v0, "getVideoList onComplete"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoList onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CloudViewModel"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->b:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    sget p1, Lcom/transsion/netdisk/R$string;->network_error:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->c:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->d:I

    if-ne p1, v1, :cond_1

    const-string p1, "onError mSowNetException.postValue(true)"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->c:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance p1, Lkotlin/Pair;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->d:I

    if-le p1, v1, :cond_2

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->c:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->N()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    const-string p0, "d"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "CloudViewModel"

    const-string p1, "getVideoList onSubscribe"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
