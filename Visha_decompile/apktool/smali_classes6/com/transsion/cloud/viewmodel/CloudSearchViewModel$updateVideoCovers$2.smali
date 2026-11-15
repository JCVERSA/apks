.class final Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$updateVideoCovers$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->z(Ljava/util/List;Lwh1;)Ljava/lang/Object;
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
    c = "com.transsion.cloud.viewmodel.CloudSearchViewModel$updateVideoCovers$2"
    f = "CloudSearchViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $videoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
            ">;",
            "Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$updateVideoCovers$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$updateVideoCovers$2;->$videoList:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$updateVideoCovers$2;->this$0:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

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

    new-instance p1, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$updateVideoCovers$2;

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$updateVideoCovers$2;->$videoList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$updateVideoCovers$2;->this$0:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$updateVideoCovers$2;-><init>(Ljava/util/List;Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$updateVideoCovers$2;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$updateVideoCovers$2;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$updateVideoCovers$2;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$updateVideoCovers$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$updateVideoCovers$2;->label:I

    if-nez v0, :cond_d

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$updateVideoCovers$2;->$videoList:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getDataType()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getSourceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_4

    move-object v3, v2

    :cond_4
    if-eqz v3, :cond_3

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$updateVideoCovers$2;->this$0:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    invoke-static {p0}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->a(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;)Lxy0;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {p0, p1}, Lxy0;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_6
    move-object p0, v3

    :goto_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    if-eqz p0, :cond_a

    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/transsion/cloud_drive/base/api/model/FileInfo;

    invoke-virtual {v4}, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->getFileId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getSourceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_9
    move-object v2, v3

    :goto_4
    check-cast v2, Lcom/transsion/cloud_drive/base/api/model/FileInfo;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->getThumbnailUrls()Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;

    move-result-object v1

    goto :goto_5

    :cond_a
    move-object v1, v3

    :goto_5
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;->getPreviewUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->setCover(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;->getPreviewUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;->getPreviewUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->setPreviewUrl(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
