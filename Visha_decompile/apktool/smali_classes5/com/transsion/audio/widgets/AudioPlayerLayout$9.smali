.class Lcom/transsion/audio/widgets/AudioPlayerLayout$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/player/MusicPlayManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/widgets/AudioPlayerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic hideBottomOperateBar()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/audio/player/MusicPlayManager$d;->hideBottomOperateBar()V

    return-void
.end method

.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onInfo(II)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/player/MusicPlayManager$d;->onInfo(II)Z

    move-result p0

    return p0
.end method

.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->I(Lcom/transsion/audio/widgets/AudioPlayerLayout;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->z(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0}, La64;->c(Lcom/transsion/playercommon/activities/BaseActivity;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {}, Lao;->U()Lao;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v2}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->A(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lao;->c0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsInFavorites:Z

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    iget-boolean v1, v0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsInFavorites:Z

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateFavoriteIcon(Z)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-virtual {v0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateDisplayUI(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-virtual {p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updatePreviousAndNextButton()V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->N(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->x(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->A(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->A(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, v3

    :goto_0
    invoke-virtual {p1, p0, v3}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateSmartEditLayout(ZZ)V

    return-void
.end method

.method public onPlayListLoadFinished(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-virtual {p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updatePreviousAndNextButton()V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->A(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    iget-boolean v0, v0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mFromShare:Z

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->A(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;->isAudioItemChanged(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateDisplayUI(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_1
    return-void
.end method

.method public onPlayerStateUpdate(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->G(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->z(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/a;->D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->G(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updatePlayPauseButton(I)V

    :goto_0
    return-void
.end method

.method public onShowError(II)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->w(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTimerShow(J)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p0, p1, p2}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->P(Lcom/transsion/audio/widgets/AudioPlayerLayout;J)V

    return-void
.end method

.method public onUpdateAll(Lcom/transsion/audio/player/MusicPlayManager;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    iget-object p1, p1, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mFromPage:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "audio_list_item_click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->H(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->onPlayerStateUpdate(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->H(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->Y()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->onPlayListLoadFinished(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoSizeChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayerLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->D(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->D(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->onVideoSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public bridge synthetic seekTo(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager$d;->seekTo(I)V

    return-void
.end method
