.class public abstract Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;",
        ">",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;"
    }
.end annotation


# instance fields
.field protected isPause:Z

.field protected isPlay:Z

.field protected orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clickForFullScreen()V
.end method

.method public abstract getDetailOrientationRotateAuto()Z
.end method

.method public abstract getGSYVideoOptionBuilder()Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
.end method

.method public abstract getGSYVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public hideActionBarWhenFull()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hideStatusBarWhenFull()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public initVideo()V
    .locals 2

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;-><init>(Landroid/app/Activity;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->setEnable(Z)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail$1;

    invoke-direct {v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public initVideoBuilderMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->initVideo()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->getGSYVideoOptionBuilder()Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setVideoAllCallBack(Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->build(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    return-void
.end method

.method public isAutoFullWithSize()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public varargs onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->backToProtVideo()I

    :cond_0
    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->backFromWindowFull(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public varargs onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickBlankFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickResume(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickResumeFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickSeekbar(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickSeekbarFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickStartError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickStartIcon(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickStartThumb(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickStop(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickStopFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->isPlay:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->isPause:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->hideActionBarWhenFull()Z

    move-result v5

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->hideStatusBarWhenFull()Z

    move-result v6

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;ZZ)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->isPlay:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->release()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->releaseListener()V

    :cond_1
    return-void
.end method

.method public varargs onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onEnterSmallWidget(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoPause()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->setIsPause(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->isPause:Z

    return-void
.end method

.method public varargs onPlayError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->getDetailOrientationRotateAuto()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->isAutoFullWithSize()Z

    move-result p2

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->setEnable(Z)V

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->isPlay:Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "initVideo() or initVideoBuilderMode() first"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->backToProtVideo()I

    :cond_0
    return-void
.end method

.method public varargs onQuitSmallWidget(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoResume()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->setIsPause(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->isPause:Z

    return-void
.end method

.method public varargs onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onTouchScreenSeekLight(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onTouchScreenSeekPosition(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onTouchScreenSeekVolume(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

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
