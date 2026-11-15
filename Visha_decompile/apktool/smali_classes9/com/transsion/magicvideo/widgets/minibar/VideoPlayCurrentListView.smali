.class public Lcom/transsion/magicvideo/widgets/minibar/VideoPlayCurrentListView;
.super Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forceExit()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->forceExit()V

    return-void
.end method

.method public bridge synthetic loadMiMediaVideData(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->loadMiMediaVideData(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;Z)V

    return-void
.end method

.method public bridge synthetic onInfo(II)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onInfo(II)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onLoadingOnlineVideo(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onLoadingOnlineVideo(ZZ)V

    return-void
.end method

.method public bridge synthetic onMusicPlayerProgressUpdate(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onMusicPlayerProgressUpdate(II)V

    return-void
.end method

.method public bridge synthetic onPlayItemChanged(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onPlayItemChanged(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method public bridge synthetic onPlayListLoadFinished(Ljava/util/ArrayList;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onPlayListLoadFinished(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic onPlayerStateUpdate(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onPlayerStateUpdate(I)V

    return-void
.end method

.method public bridge synthetic onShowError(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onShowError(II)V

    return-void
.end method

.method public bridge synthetic onStartChangedPlayItem(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onStartChangedPlayItem(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    return-void
.end method

.method public bridge synthetic onUpdateAll(Lcom/transsion/magicvideo/player/VideoPlayManager;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onUpdateAll(Lcom/transsion/magicvideo/player/VideoPlayManager;)V

    return-void
.end method

.method public bridge synthetic onUpdateNotification(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onUpdateNotification(I)V

    return-void
.end method

.method public bridge synthetic onVideoSizeChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onVideoSizeChanged(II)V

    return-void
.end method

.method public bridge synthetic onVolumeChange(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onVolumeChange(I)V

    return-void
.end method

.method public bridge synthetic seekTo(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->seekTo(I)V

    return-void
.end method

.method public showLast()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic videoPlayOrPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->videoPlayOrPause()V

    return-void
.end method
