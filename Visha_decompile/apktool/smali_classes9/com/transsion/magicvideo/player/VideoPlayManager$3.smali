.class Lcom/transsion/magicvideo/player/VideoPlayManager$3;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/player/VideoPlayManager;->c1(Lcom/transsion/dbdata/beans/media/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mHiddenCurrentByArg:Z

.field private mShouldStopMusicMode:Z

.field private mShouldSwitchToNext:Z

.field final synthetic this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

.field final synthetic val$hiddenItem:Lcom/transsion/dbdata/beans/media/MediaItem;

.field final synthetic val$wasPlayingBeforeHide:Z


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iput-object p2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->val$hiddenItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-boolean p3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->val$wasPlayingBeforeHide:Z

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Ljava/lang/Boolean;
    .locals 6

    .line 2
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->b0()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->filterData()V

    .line 3
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->val$hiddenItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 5
    iget v4, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-lez v4, :cond_0

    iget v5, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v5, v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 6
    :goto_0
    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v4, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v3

    .line 7
    :goto_3
    iput-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->mHiddenCurrentByArg:Z

    .line 8
    :cond_4
    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->mHiddenCurrentByArg:Z

    if-eqz v0, :cond_8

    .line 9
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->s(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->s(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->s(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_5

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    .line 12
    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->p0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iput-boolean v3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->mShouldSwitchToNext:Z

    goto :goto_4

    .line 14
    :cond_5
    iput-boolean v3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->mShouldStopMusicMode:Z

    .line 15
    :goto_4
    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->mShouldSwitchToNext:Z

    if-nez v0, :cond_6

    iget-boolean p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->mShouldStopMusicMode:Z

    if-eqz p0, :cond_7

    :cond_6
    move v2, v3

    :cond_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 16
    :cond_8
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->t(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->t(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->t(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Lav3;->x(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHide "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->t(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iput-boolean v3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->mShouldStopMusicMode:Z

    .line 19
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->mShouldSwitchToNext:Z

    if-nez v0, :cond_a

    iget-boolean p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->mShouldStopMusicMode:Z

    if-eqz p0, :cond_b

    :cond_a
    move v2, v3

    :cond_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->onBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onResult(Ljava/lang/Boolean;)V
    .locals 5

    .line 2
    iget-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->mShouldSwitchToNext:Z

    const/16 v0, 0x404

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 3
    iget-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->val$wasPlayingBeforeHide:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->o1()V

    .line 5
    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->val$hiddenItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p1, :cond_6

    .line 6
    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->s(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->val$hiddenItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p1, p0, v2}, Lcom/transsion/dbdata/beans/media/PlayListData;->removeMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/PlayListData$RemoveListener;)Lcom/transsion/dbdata/beans/media/PlayListData;

    goto/16 :goto_1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->s(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->s(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->getNext()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->val$hiddenItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {v3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->s(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->val$hiddenItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v3, v4, v2}, Lcom/transsion/dbdata/beans/media/PlayListData;->removeMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/PlayListData$RemoveListener;)Lcom/transsion/dbdata/beans/media/PlayListData;

    :cond_2
    if-nez p1, :cond_3

    .line 10
    iget-object v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->s(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->s(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->s(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 13
    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->s(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    :cond_3
    if-eqz p1, :cond_4

    .line 14
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->s(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayListData;

    .line 15
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->z2(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    .line 16
    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->i1(Z)V

    goto :goto_1

    .line 17
    :cond_4
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 18
    :cond_5
    iget-boolean p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->mShouldStopMusicMode:Z

    if-eqz p0, :cond_6

    .line 19
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$3;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method
