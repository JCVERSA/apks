.class public final Lcom/transsion/cloud/viewmodel/RecentlyViewModel$getCloudRecentlyVideoDataList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/RecentlyViewModel;->t0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/viewmodel/RecentlyViewModel;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$getCloudRecentlyVideoDataList$1;->b:Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    iput p2, p0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$getCloudRecentlyVideoDataList$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 6

    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecentPlayList onNext  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$getCloudRecentlyVideoDataList$1;->b:Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->n0(Z)V

    const-string v0, "response.isSuccess"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getRecords()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$getCloudRecentlyVideoDataList$1;->b:Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->F()Lnk1;

    move-result-object v0

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$getCloudRecentlyVideoDataList$1$onNext$1$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p0, v2}, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$getCloudRecentlyVideoDataList$1$onNext$1$1;-><init>(Ljava/util/List;Lcom/transsion/cloud/viewmodel/RecentlyViewModel;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    goto :goto_0

    :cond_0
    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lgec;->o(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$getCloudRecentlyVideoDataList$1;->b:Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->S()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object p1

    new-instance v0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$getCloudRecentlyVideoDataList$1$a;

    iget-object v1, p0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$getCloudRecentlyVideoDataList$1;->b:Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    iget p0, p0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$getCloudRecentlyVideoDataList$1;->c:I

    invoke-direct {v0, v1, p0}, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$getCloudRecentlyVideoDataList$1$a;-><init>(Lcom/transsion/cloud/viewmodel/RecentlyViewModel;I)V

    invoke-virtual {p1, v0}, Lgec;->k(Lgec$d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    const-string p0, "RecentlyViewModel"

    const-string v0, "getRecentPlayList onComplete"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "e"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRecentPlayList onError "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecentlyViewModel"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$getCloudRecentlyVideoDataList$1;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    const-string p0, "d"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "CloudViewModel"

    const-string p1, "getRecentPlayList onSubscribe"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
