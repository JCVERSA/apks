.class final Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/fragment/CloudBaseFragment;->jumpToPlayerPage(Lcom/transsion/dbdata/beans/VideoCloudData;I)V
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
    c = "com.transsion.cloud.fragment.CloudBaseFragment$jumpToPlayerPage$1"
    f = "CloudBaseFragment.kt"
    l = {
        0x126,
        0x12b,
        0x135
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $listFlag1:I

.field final synthetic $localPath:Ljava/lang/String;

.field final synthetic $videoCloudData:Lcom/transsion/dbdata/beans/VideoCloudData;

.field label:I

.field final synthetic this$0:Lcom/transsion/cloud/fragment/CloudBaseFragment;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/transsion/dbdata/beans/VideoCloudData;Lcom/transsion/cloud/fragment/CloudBaseFragment;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/transsion/dbdata/beans/VideoCloudData;",
            "Lcom/transsion/cloud/fragment/CloudBaseFragment;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->$localPath:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->$listFlag1:I

    iput-object p3, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->$videoCloudData:Lcom/transsion/dbdata/beans/VideoCloudData;

    iput-object p4, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->this$0:Lcom/transsion/cloud/fragment/CloudBaseFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 6
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

    new-instance p1, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->$localPath:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->$listFlag1:I

    iget-object v3, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->$videoCloudData:Lcom/transsion/dbdata/beans/VideoCloudData;

    iget-object v4, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->this$0:Lcom/transsion/cloud/fragment/CloudBaseFragment;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;-><init>(Ljava/lang/String;ILcom/transsion/dbdata/beans/VideoCloudData;Lcom/transsion/cloud/fragment/CloudBaseFragment;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Ltpb;->b:Ltpb$a;

    invoke-virtual {p1}, Ltpb$a;->a()Ltpb;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->$localPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ltpb;->m(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;-><init>()V

    iget v3, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->$listFlag1:I

    iget-object v6, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->$videoCloudData:Lcom/transsion/dbdata/beans/VideoCloudData;

    iput v3, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    iget v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput v3, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    iget-object v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iput-object v3, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iput-object v3, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    iget-wide v7, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iput-wide v7, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v6, "data"

    invoke-static {v3, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setData(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {v1, v5}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setNeedRecordVideoStates(Z)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v3

    invoke-static {p1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->d0()I

    move-result p1

    if-eqz p1, :cond_3

    int-to-long v6, p1

    iput-wide v6, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    :cond_3
    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    new-instance v3, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1$1;

    iget-object v6, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->this$0:Lcom/transsion/cloud/fragment/CloudBaseFragment;

    invoke-direct {v3, v6, v1, v4}, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1$1;-><init>(Lcom/transsion/cloud/fragment/CloudBaseFragment;Lcom/transsion/dbdata/beans/media/PlayVideoData;Lwh1;)V

    iput v5, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->label:I

    invoke-static {p1, v3, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_4
    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    new-instance v1, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1$2;

    iget-object v5, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->this$0:Lcom/transsion/cloud/fragment/CloudBaseFragment;

    iget-object v6, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->$videoCloudData:Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-direct {v1, v5, v6, v4}, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1$2;-><init>(Lcom/transsion/cloud/fragment/CloudBaseFragment;Lcom/transsion/dbdata/beans/VideoCloudData;Lwh1;)V

    iput v3, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v0, :cond_5

    return-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryVideoItem error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    new-instance v1, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1$3;

    iget-object v3, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->this$0:Lcom/transsion/cloud/fragment/CloudBaseFragment;

    iget-object v5, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->$videoCloudData:Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-direct {v1, v3, v5, v4}, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1$3;-><init>(Lcom/transsion/cloud/fragment/CloudBaseFragment;Lcom/transsion/dbdata/beans/VideoCloudData;Lwh1;)V

    iput v2, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
