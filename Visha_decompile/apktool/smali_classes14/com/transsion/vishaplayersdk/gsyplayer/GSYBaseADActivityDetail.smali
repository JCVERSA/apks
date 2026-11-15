.class public abstract Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;
.super Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;",
        "R:",
        "Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;",
        ">",
        "Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mADOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;-><init>()V

    return-void
.end method


# virtual methods
.method public clickForFullScreen()V
    .locals 0

    return-void
.end method

.method public abstract getGSYADVideoOptionBuilder()Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
.end method

.method public abstract getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public initVideo()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->initVideo()V

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;-><init>(Landroid/app/Activity;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->setEnable(Z)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$1;

    invoke-direct {v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public initVideoBuilderMode()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->initVideoBuilderMode()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoOptionBuilder()Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$2;

    invoke-direct {v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$2;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;)V

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setVideoAllCallBack(Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->build(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)V

    return-void
.end method

.method public isADStarted()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result p0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract isNeedAdOnStart()Z
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->backToProtVideo()I

    :cond_0
    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->backFromWindowFull(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->isPlay:Z

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->isPause:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->isADStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->isPlay:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v2

    iget-object v5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->hideActionBarWhenFull()Z

    move-result v6

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->hideStatusBarWhenFull()Z

    move-result v7

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;ZZ)V

    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->isPlay:Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->onDestroy()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->releaseAllVideos()V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->releaseListener()V

    :cond_0
    return-void
.end method

.method public varargs onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    aget-object p0, p2, p0

    check-cast p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->onPause()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->onPause()V

    return-void
.end method

.method public varargs onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->isNeedAdOnStart()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->startAdPlay()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->onResume()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->onResume()V

    return-void
.end method

.method public varargs onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public showADFull()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->getIsLand()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->resolveByClick()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->hideActionBarWhenFull()Z

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->hideStatusBarWhenFull()Z

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    return-void
.end method

.method public showFull()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->getIsLand()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->resolveByClick()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->hideActionBarWhenFull()Z

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->hideStatusBarWhenFull()Z

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    return-void
.end method

.method public startAdPlay()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->startPlay()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->showADFull()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getSaveBeforeFullSystemUiVisibility()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->setSaveBeforeFullSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
