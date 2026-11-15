.class final Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
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
    c = "com.transsion.cloud.viewmodel.CloudViewModel$getRecentPlayList$1$onNext$1$1"
    f = "CloudViewModel.kt"
    l = {
        0x134
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/transsion/cloud/viewmodel/CloudViewModel;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;",
            ">;",
            "Lcom/transsion/cloud/viewmodel/CloudViewModel;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;->$it:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 1
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

    new-instance p1, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;->$it:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;-><init>(Ljava/util/List;Lcom/transsion/cloud/viewmodel/CloudViewModel;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;->$it:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->toVideoCloudData()Lcom/transsion/dbdata/beans/VideoCloudData;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/VideoCloudData;->getPlayDuration()J

    move-result-wide v5

    const/16 v7, 0x3e8

    int-to-long v7, v7

    mul-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/transsion/dbdata/beans/VideoCloudData;->setPlayDuration(J)V

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/VideoCloudData;->getDuration()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Lmk0;->c(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v5, v2

    :goto_2
    invoke-virtual {v4, v5}, Lcom/transsion/dbdata/beans/VideoCloudData;->setDuration(Ljava/lang/Long;)V

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/VideoCloudData;->getPlayDuration()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    sget-object v6, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/VideoCloudData;->getPlayDuration()J

    move-result-wide v8

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->X(Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;Ljava/lang/String;JLjava/lang/Runnable;ILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iput-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->r0(Ljava/util/List;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, v1

    :goto_3
    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {p1, v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-static {p1}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    const-string v1, "recent_play_list_cache"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/retrofit/cache/CacheManager;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Triple;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    :cond_7
    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_8
    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1$onNext$1$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_b
    :goto_4
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
