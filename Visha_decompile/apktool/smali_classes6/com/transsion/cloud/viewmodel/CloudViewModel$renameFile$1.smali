.class final Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/CloudViewModel;->h0(Lcom/transsion/dbdata/beans/VideoCloudData;Ljava/lang/String;)V
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
    c = "com.transsion.cloud.viewmodel.CloudViewModel$renameFile$1"
    f = "CloudViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $nameFileName:Ljava/lang/String;

.field final synthetic $videoCloudData:Lcom/transsion/dbdata/beans/VideoCloudData;

.field label:I

.field final synthetic this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;Lcom/transsion/dbdata/beans/VideoCloudData;Ljava/lang/String;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/cloud/viewmodel/CloudViewModel;",
            "Lcom/transsion/dbdata/beans/VideoCloudData;",
            "Ljava/lang/String;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iput-object p2, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;->$videoCloudData:Lcom/transsion/dbdata/beans/VideoCloudData;

    iput-object p3, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;->$nameFileName:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/dbdata/beans/VideoCloudData;Ljava/lang/String;Lcom/transsion/cloud/viewmodel/CloudViewModel;ZLcom/transsion/cloud_drive/base/api/model/FileInfo;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;->h(Lcom/transsion/dbdata/beans/VideoCloudData;Ljava/lang/String;Lcom/transsion/cloud/viewmodel/CloudViewModel;ZLcom/transsion/cloud_drive/base/api/model/FileInfo;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lcom/transsion/dbdata/beans/VideoCloudData;Ljava/lang/String;Lcom/transsion/cloud/viewmodel/CloudViewModel;ZLcom/transsion/cloud_drive/base/api/model/FileInfo;)Lzfb;
    .locals 8

    if-eqz p3, :cond_b

    if-eqz p4, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p4}, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/transsion/dbdata/beans/VideoCloudData;->setFileName(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_2

    invoke-static {p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->h(Lcom/transsion/cloud/viewmodel/CloudViewModel;)Lapb;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-static {p0}, Lcom/transsion/dbdata/beans/VideoCloudCache;->fromVideoCloudData(Lcom/transsion/dbdata/beans/VideoCloudData;)Lcom/transsion/dbdata/beans/VideoCloudCache;

    move-result-object v0

    invoke-interface {p4, v0}, Lapb;->updateCache(Lcom/transsion/dbdata/beans/VideoCloudCache;)I

    :cond_1
    sget-object p4, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->K(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance p4, Lcom/transsion/dbdata/beans/FileHandlerData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    invoke-direct {p4, p3, v1, p0, v0}, Lcom/transsion/dbdata/beans/FileHandlerData;-><init>(ZILcom/transsion/dbdata/beans/VideoCloudData;Ljava/util/List;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p3

    const/16 v0, 0x46d

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, v0, p4}, Lh27;->e(I[Ljava/lang/Object;)V

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileName()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, p3

    :cond_4
    :goto_0
    const/4 p3, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    move-object p0, p3

    :goto_1
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-nez p4, :cond_6

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-nez p4, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p4

    const-string v0, "getPlayList(...)"

    invoke-static {p4, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v0, 0x0

    :cond_8
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v2, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iput-object p1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iput-object p1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p4

    if-eqz p4, :cond_a

    iget-boolean v1, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    if-eqz v1, :cond_a

    iget-object v1, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iput-object p1, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iput-object p1, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->F()Lnk1;

    move-result-object v2

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v3

    new-instance v5, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1$1$4;

    invoke-direct {v5, p0, p3}, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1$1$4;-><init>(Ljava/lang/String;Lwh1;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    :cond_b
    :goto_3
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
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

    new-instance p1, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iget-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;->$videoCloudData:Lcom/transsion/dbdata/beans/VideoCloudData;

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;->$nameFileName:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;Lcom/transsion/dbdata/beans/VideoCloudData;Ljava/lang/String;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-static {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->e(Lcom/transsion/cloud/viewmodel/CloudViewModel;)Lxy0;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;->$videoCloudData:Lcom/transsion/dbdata/beans/VideoCloudData;

    iget-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;->$nameFileName:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    new-instance v2, Lcom/transsion/cloud/viewmodel/g;

    invoke-direct {v2, v0, v1, p0}, Lcom/transsion/cloud/viewmodel/g;-><init>(Lcom/transsion/dbdata/beans/VideoCloudData;Ljava/lang/String;Lcom/transsion/cloud/viewmodel/CloudViewModel;)V

    invoke-interface {p1, v0, v1, v2}, Lxy0;->e(Lcom/transsion/dbdata/beans/VideoCloudData;Ljava/lang/String;Ls74;)V

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
