.class Lcom/transsion/dbdata/utils/LoadDataUtils$2;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/dbdata/utils/LoadDataUtils;->k(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Ljava/util/ArrayList<",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

.field final synthetic val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

    iput-object p2, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->onBackground()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public onBackground()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget v2, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_11

    const/4 v3, 0x2

    if-eq v2, v3, :cond_e

    const/16 v3, 0xd

    if-eq v2, v3, :cond_d

    const/16 v3, 0xe

    if-eq v2, v3, :cond_c

    const/16 v3, 0x10

    if-eq v2, v3, :cond_b

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_a

    const/16 v3, 0x21

    if-eq v2, v3, :cond_a

    const/16 v3, 0x63

    if-eq v2, v3, :cond_9

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_8

    const/16 v3, 0x31

    if-eq v2, v3, :cond_2

    const/16 v3, 0x32

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 4
    iget-object v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

    invoke-static {v0, v1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->i(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_2

    .line 5
    :pswitch_0
    invoke-static {}, Lcom/transsion/dbdata/dbhelpder/VideoCloudCacheHelper;->a()Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_2

    .line 6
    :pswitch_1
    sget-object v0, Ls21;->b:Ls21$a;

    invoke-virtual {v0}, Ls21$a;->a()Ls21;

    move-result-object v0

    invoke-virtual {v0}, Ls21;->k()Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_2

    .line 7
    :pswitch_2
    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 8
    sget-object v0, Ls21;->b:Ls21$a;

    invoke-virtual {v0}, Ls21$a;->a()Ls21;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls21;->i(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_2

    .line 9
    :pswitch_3
    sget-object v0, Ls21;->b:Ls21$a;

    invoke-virtual {v0}, Ls21$a;->a()Ls21;

    move-result-object v0

    invoke-virtual {v0}, Ls21;->j()Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_2

    .line 10
    :cond_0
    iget-boolean v2, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/dbdata/dbhelpder/VideoCloudCacheHelper;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_2

    .line 12
    :cond_2
    iget v0, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    invoke-static {v0}, Lcom/transsion/dbdata/utils/LoadDataUtils;->m(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    invoke-virtual {v0, v1}, Ltpb;->h(I)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 14
    iget-object v1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 15
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ltpb;->n(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    .line 16
    iget-object v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->toMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    goto :goto_1

    .line 17
    :cond_5
    iget-object v1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-wide v2, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_6

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 18
    :cond_6
    iget-wide v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iput-wide v2, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    .line 19
    :cond_7
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_2

    .line 20
    :cond_8
    sget-object v0, Ls21;->b:Ls21$a;

    invoke-virtual {v0}, Ls21$a;->a()Ls21;

    move-result-object v0

    invoke-virtual {v0}, Ls21;->l()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    .line 21
    :cond_9
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v1

    sget-object v2, Lyx2;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ltpb;->f0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 23
    :cond_a
    iget-object v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

    invoke-static {v0, v1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->f(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    .line 24
    :cond_b
    invoke-static {}, Lykc;->a()Lykc;

    move-result-object v0

    invoke-virtual {v0}, Lykc;->b()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    .line 25
    :cond_c
    iget-object v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

    invoke-static {v0, v1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->h(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    .line 26
    :cond_d
    iget-object v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

    invoke-static {v0, v1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->g(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    .line 27
    :cond_e
    iget-boolean v0, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isShuffle:Z

    if-eqz v0, :cond_f

    .line 28
    iget-object v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

    invoke-static {v0, v1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->d(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    .line 29
    :cond_f
    iget-object v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

    invoke-static {v0}, Lcom/transsion/dbdata/utils/LoadDataUtils;->a(Lcom/transsion/dbdata/utils/LoadDataUtils;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpp3;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 30
    iget-object v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

    iget-object v1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-static {v0, v1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->c(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    .line 31
    :cond_10
    iget-object v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

    iget-object v1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-static {v0, v1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->d(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    .line 32
    :cond_11
    iget-object v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

    invoke-static {v0, v1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->e(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;

    move-result-object v0

    .line 33
    :cond_12
    :goto_2
    iget-object v1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-boolean v1, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isShuffle:Z

    if-eqz v1, :cond_13

    .line 34
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 35
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncLoadBuckets, listFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget v2, v2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "LoadDataUtils"

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->onResult(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResult(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

    invoke-static {v0}, Lcom/transsion/dbdata/utils/LoadDataUtils;->b(Lcom/transsion/dbdata/utils/LoadDataUtils;)Lcom/transsion/dbdata/utils/LoadDataUtils$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

    invoke-static {v0}, Lcom/transsion/dbdata/utils/LoadDataUtils;->b(Lcom/transsion/dbdata/utils/LoadDataUtils;)Lcom/transsion/dbdata/utils/LoadDataUtils$a;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-interface {v0, p1, p0}, Lcom/transsion/dbdata/utils/LoadDataUtils$a;->b(Ljava/util/ArrayList;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    :cond_0
    return-void
.end method
