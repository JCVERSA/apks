.class public Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;
.super Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;
.source "SourceFile"


# instance fields
.field protected isFirstPrepared:Z

.field protected mADTime:Landroid/widget/TextView;

.field protected mJumpAd:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic B(Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->lambda$init$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onAutoCompletion()V

    :cond_0
    return-void
.end method


# virtual methods
.method public backFromFull(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->backFromWindowFull(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public changeAdUIState()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->mJumpAd:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->mADTime:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/vishaplayersdk/R$color;->bottom_container_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    if-eqz v0, :cond_7

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_8

    move v3, v1

    goto :goto_3

    :cond_8
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_b

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_a

    move v2, v1

    :cond_a
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    :cond_b
    return-void
.end method

.method public cloneParams(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->cloneParams(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    check-cast p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    check-cast p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    iget-boolean p0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    iput-boolean p0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->changeAdUIState()V

    return-void
.end method

.method public getFullId()I
    .locals 0

    sget p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->FULLSCREEN_ID:I

    return p0
.end method

.method public getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;
    .locals 1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->initContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/vishaplayersdk/R$layout;->video_layout_ad:I

    return p0
.end method

.method public getSmallId()I
    .locals 0

    sget p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->SMALL_ID:I

    return p0
.end method

.method public hideAllWidget()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->hideAllWidget()V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->init(Landroid/content/Context;)V

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->jump_ad:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->mJumpAd:Landroid/view/View;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->ad_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->mADTime:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->mJumpAd:Landroid/view/View;

    if-eqz p1, :cond_0

    new-instance v0, Lab4;

    invoke-direct {v0, p0}, Lab4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/vishaplayersdk/R$id;->start:I

    if-ne v0, v1, :cond_0

    iget p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->clickStartIcon()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPrepared()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->onPrepared()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->changeAdUIState()V

    return-void
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->release()V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->mADTime:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public releaseVideos()V
    .locals 0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->releaseAllVideos()V

    return-void
.end method

.method public removeFullWindowViewOnly()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->getFullId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    return-void
.end method

.method public setProgressAndTime(IIIIZ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setProgressAndTime(IIIIZ)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->mADTime:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    if-lez p3, :cond_0

    div-int/lit16 p4, p4, 0x3e8

    div-int/lit16 p3, p3, 0x3e8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p4, p3

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public touchDoubleUp()V
    .locals 0

    return-void
.end method

.method public touchSurfaceMove(FFF)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->touchSurfaceMove(FFF)V

    :goto_0
    return-void
.end method

.method public touchSurfaceMoveFullLogic(FF)V
    .locals 2

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThreshold:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThreshold:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekEndOffset:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentPositionWhenPlaying()I

    move-result p1

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDownPosition:I

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->touchSurfaceMoveFullLogic(FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public touchSurfaceUp()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->touchSurfaceUp()V

    return-void
.end method

.method public updateStartImage()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    sget p0, Lcom/transsion/vishaplayersdk/R$drawable;->empty_drawable:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-ne p0, v1, :cond_1

    sget p0, Lcom/transsion/vishaplayersdk/R$drawable;->video_click_error_selector:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/vishaplayersdk/R$drawable;->empty_drawable:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method
