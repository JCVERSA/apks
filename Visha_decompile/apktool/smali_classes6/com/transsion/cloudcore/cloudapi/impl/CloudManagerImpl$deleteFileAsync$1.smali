.class final Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->z(Ljava/util/List;Le74;)V
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
    c = "com.transsion.cloudcore.cloudapi.impl.CloudManagerImpl$deleteFileAsync$1"
    f = "CloudManagerImpl.kt"
    l = {
        0xb7,
        0xc8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field

.field final synthetic $videoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/VideoCloudData;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;Le74;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/VideoCloudData;",
            ">;",
            "Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;",
            "Le74;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->$videoList:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;

    iput-object p3, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->$callback:Le74;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 3
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

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;

    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->$videoList:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->$callback:Le74;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;-><init>(Ljava/util/List;Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;Le74;Lwh1;)V

    iput-object p1, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lnk1;

    :try_start_1
    iget-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->$videoList:Ljava/util/List;

    if-eqz p1, :cond_9

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;

    invoke-static {p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->t(Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;)Lmq3;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1, v1}, Lmq3;->p(Ljava/util/List;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v3, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;

    iget-object v5, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->$callback:Le74;

    instance-of v6, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v6, :cond_7

    move-object v6, p1

    check-cast v6, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-static {v3}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->v(Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;)Lapb;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6, v1}, Lapb;->deleteByFileIds(Ljava/util/List;)I

    move-result v1

    invoke-static {v1}, Lmk0;->b(I)Ljava/lang/Integer;

    :cond_6
    invoke-virtual {v3}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->B()Lnk1;

    move-result-object v6

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v7

    new-instance v9, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1$1$1;

    invoke-direct {v9, v5, v4}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1$1$1;-><init>(Le74;Lwh1;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    :cond_7
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;

    iget-object v3, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->$callback:Le74;

    instance-of v5, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz v5, :cond_8

    move-object v5, p1

    check-cast v5, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {v1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->B()Lnk1;

    move-result-object v6

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v7

    new-instance v9, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1$2$1;

    invoke-direct {v9, v3, v4}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1$2$1;-><init>(Le74;Lwh1;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v3

    invoke-static {v1, v3}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->s(Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;I)V

    :cond_8
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;

    iget-object v3, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->$callback:Le74;

    instance-of v5, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz v5, :cond_b

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-virtual {v1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->B()Lnk1;

    move-result-object v5

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v6

    new-instance v8, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1$3$1;

    invoke-direct {v8, v3, v4}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1$3$1;-><init>(Le74;Lwh1;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->$callback:Le74;

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v1

    new-instance v5, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1$fileIds$2$1;

    invoke-direct {v5, p1, v4}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1$fileIds$2$1;-><init>(Le74;Lwh1;)V

    iput v3, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->label:I

    invoke-static {v1, v5, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    :goto_2
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    new-instance v1, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1$4;

    iget-object v3, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->$callback:Le74;

    invoke-direct {v1, v3, v4}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1$4;-><init>(Le74;Lwh1;)V

    iput v2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_b

    return-object v0

    :cond_b
    :goto_3
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
