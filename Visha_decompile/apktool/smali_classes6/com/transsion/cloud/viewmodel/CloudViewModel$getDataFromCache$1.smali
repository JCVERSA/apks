.class final Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/CloudViewModel;->x(ILjava/lang/String;Ljava/lang/String;ILu74;)V
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
    c = "com.transsion.cloud.viewmodel.CloudViewModel$getDataFromCache$1"
    f = "CloudViewModel.kt"
    l = {
        0x2d7,
        0x2db
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $dataType:I

.field final synthetic $onSuccess:Lu74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu74;"
        }
    .end annotation
.end field

.field final synthetic $pageNo:I

.field final synthetic $sortBy:Ljava/lang/String;

.field final synthetic $sortField:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;IILjava/lang/String;Ljava/lang/String;Lu74;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/cloud/viewmodel/CloudViewModel;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lu74;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iput p2, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->$dataType:I

    iput p3, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->$pageNo:I

    iput-object p4, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->$sortField:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->$sortBy:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->$onSuccess:Lu74;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 8
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

    new-instance p1, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;

    iget-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iget v2, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->$dataType:I

    iget v3, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->$pageNo:I

    iget-object v4, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->$sortField:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->$sortBy:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->$onSuccess:Lu74;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;IILjava/lang/String;Ljava/lang/String;Lu74;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->R()I

    move-result p1

    iget v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->$dataType:I

    if-nez v1, :cond_3

    const/16 p1, 0xc

    :cond_3
    move v6, p1

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-static {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->h(Lcom/transsion/cloud/viewmodel/CloudViewModel;)Lapb;

    move-result-object v4

    const/4 p1, 0x0

    if-eqz v4, :cond_4

    iget v5, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->$pageNo:I

    iget-object v7, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->$sortField:Ljava/lang/String;

    iget-object v8, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->$sortBy:Ljava/lang/String;

    iget v9, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->$dataType:I

    invoke-interface/range {v4 .. v9}, Lapb;->getVideoCloudDataByPage(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, p1

    :goto_1
    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v4

    const-string v5, "recent_play_list_cache"

    invoke-virtual {v4, v5}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$1;

    invoke-direct {v5}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$1;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v4, v5}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    goto :goto_2

    :cond_5
    move-object v4, p1

    :goto_2
    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {v5, v4}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object v7, v4

    goto :goto_3

    :cond_6
    move-object v7, p1

    :goto_3
    iget-object v4, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-static {v4}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->f(Lcom/transsion/cloud/viewmodel/CloudViewModel;)Lhw5;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-interface {v4}, Lhw5;->getAllCaches()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->toMIMediaLibraryData()Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-object v9, v5

    goto :goto_5

    :cond_8
    move-object v9, p1

    :goto_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_a

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/VideoCloudCache;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/VideoCloudCache;->toVideoCloudData()Lcom/transsion/dbdata/beans/VideoCloudData;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/VideoCloudData;->isRecentData()Ljava/lang/Boolean;

    move-result-object v6

    const/4 v10, 0x0

    invoke-static {v10}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v6, v10}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v8, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    iget v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->$dataType:I

    if-nez v1, :cond_d

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    new-instance v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$3;

    iget-object v6, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->$onSuccess:Lu74;

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$3;-><init>(Lu74;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lwh1;)V

    iput v3, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_e

    return-object v0

    :cond_d
    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;

    iget-object v5, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->$onSuccess:Lu74;

    invoke-direct {v3, v5, v4, v9, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1$4;-><init>(Lu74;Ljava/util/List;Ljava/util/List;Lwh1;)V

    iput v2, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;->label:I

    invoke-static {v1, v3, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_e

    return-object v0

    :cond_e
    :goto_8
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
