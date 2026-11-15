.class final Lcom/transsion/cloud/viewmodel/CloudViewModel$getLocalVideoDataList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/CloudViewModel;->z(Landroid/content/Context;)V
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
    c = "com.transsion.cloud.viewmodel.CloudViewModel$getLocalVideoDataList$1"
    f = "CloudViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/cloud/viewmodel/CloudViewModel;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/viewmodel/CloudViewModel$getLocalVideoDataList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getLocalVideoDataList$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 0
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

    new-instance p1, Lcom/transsion/cloud/viewmodel/CloudViewModel$getLocalVideoDataList$1;

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getLocalVideoDataList$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-direct {p1, p0, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getLocalVideoDataList$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getLocalVideoDataList$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getLocalVideoDataList$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getLocalVideoDataList$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getLocalVideoDataList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getLocalVideoDataList$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "start queryAllVideoMediaItem"

    const-string v1, "CloudViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ltpb;->b:Ltpb$a;

    invoke-virtual {v0}, Ltpb$a;->a()Ltpb;

    move-result-object v0

    invoke-static {}, Loa1;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ltpb;->U(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataList_size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-nez v2, :cond_0

    new-instance v2, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;

    iget-object v4, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-object v5, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v3}, Lmk0;->b(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    iget-wide v8, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-static {v8, v9}, Lmk0;->c(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    iget-wide v10, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-static {v10, v11}, Lmk0;->c(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v11, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v11, v12}, Lmk0;->c(J)Ljava/lang/Long;

    move-result-object v11

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getLocalVideoDataList$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->O()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
