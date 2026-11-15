.class final Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.cloud.viewmodel.CloudViewModel$getDataFromCache$1$4"
    f = "CloudViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $favoriteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onSuccess:Lu74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu74;"
        }
    .end annotation
.end field

.field final synthetic $videoCloudDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/VideoCloudData;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Lu74;Ljava/util/List;Ljava/util/List;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu74;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/VideoCloudData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;",
            ">;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;->$onSuccess:Lu74;

    iput-object p2, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;->$videoCloudDatas:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;->$favoriteList:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

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

    new-instance p1, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;->$onSuccess:Lu74;

    iget-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;->$videoCloudDatas:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;->$favoriteList:Ljava/util/List;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;-><init>(Lu74;Ljava/util/List;Ljava/util/List;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;->$onSuccess:Lu74;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;->$videoCloudDatas:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;->$favoriteList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, p0}, Lu74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
