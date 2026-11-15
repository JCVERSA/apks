.class public final Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->r(Ljava/lang/String;Ljava/lang/Boolean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/Boolean;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;ILjava/lang/String;Ljava/lang/Boolean;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;->b:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    iput p2, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;->c:I

    iput-object p3, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;->e:Ljava/lang/Boolean;

    iput p5, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 11

    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;->b:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->p()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v0

    const-string v1, "CloudSearchViewModel"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;->b:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->g(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Z)V

    const-string v0, "response.isSuccess"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getRecords()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;->b:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    iget v4, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;->c:I

    invoke-static {v1}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->b(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;)Lnk1;

    move-result-object p0

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v6

    new-instance v8, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1$onNext$1$1;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v2, v3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1$onNext$1$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Ljava/util/List;Ljava/util/List;ILwh1;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    goto :goto_0

    :cond_0
    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lgec;->o(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;->b:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    invoke-static {p1}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->e(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object p1

    new-instance v6, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1$a;

    iget-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;->b:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    iget-object v2, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;->e:Ljava/lang/Boolean;

    iget v4, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;->c:I

    iget v5, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;->f:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1$a;-><init>(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Ljava/lang/String;Ljava/lang/Boolean;II)V

    invoke-virtual {p1, v6}, Lgec;->k(Lgec$d;)V

    goto :goto_0

    :cond_1
    const-string p0, "!isSuccess"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    const-string p0, "CloudSearchViewModel"

    const-string v0, "onComplete"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "CloudSearchViewModel"

    const-string v0, "onError"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;->b:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->p()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    const-string p0, "d"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "CloudSearchViewModel"

    const-string p1, "onSubscribe"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
