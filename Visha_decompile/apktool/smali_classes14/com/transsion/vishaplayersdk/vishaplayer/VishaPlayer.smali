.class public Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;
.super Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;
.source "SourceFile"


# static fields
.field private static final GESTURE_SPEED:[F

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEndPosition:J

.field protected mGestureSpeedItemHeight:I

.field private final mHideTipsUIRun:Ljava/lang/Runnable;

.field private mPlayerSpeedChooseView:Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field protected mPreviousSpeed:F

.field private mSlideChangeSpeed:Z

.field private mTextToast:Landroid/widget/TextView;

.field private mVibrator:Landroid/os/Vibrator;

.field private platformBasicColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_playersdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->GESTURE_SPEED:[F

    return-void

    :array_0
    .array-data 4
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Liec;

    invoke-direct {p1, p0}, Liec;-><init>(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mHideTipsUIRun:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, Liec;

    invoke-direct {p1, p0}, Liec;-><init>(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mHideTipsUIRun:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 2
    new-instance p1, Liec;

    invoke-direct {p1, p0}, Liec;-><init>(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mHideTipsUIRun:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic B(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic C(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->doubleTabControl(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static bridge synthetic D(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->longPressChangeSpeed(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDoubleTapStartTime:J

    return-wide v0
.end method

.method public static synthetic access$200(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightness:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->onClickUiToggle()V

    return-void
.end method

.method private changeSpeed(F)V
    .locals 1

    iget v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mPreviousSpeed:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mPreviousSpeed:F

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->vibratorStart()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setSpeedPlaying(FZ)V

    :cond_0
    return-void
.end method

.method private doubleTabControl(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLiveFullscreen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLiveFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->touchDoubleUp()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVideoRetreatForwardLayout:Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;

    if-eqz v0, :cond_2

    invoke-static {}, Lf39;->d()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVideoRetreatForwardLayout:Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->getCurrentScreenLand(Landroid/app/Activity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->requestedOrientation(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v3, v0

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDoubleTapStartTime:J

    invoke-direct {p0, v1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->getPlayPosition(Z)V

    const-string p0, "gesture_doubletap_forward"

    invoke-static {p0}, Lwz5;->N(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    div-float/2addr v0, v4

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDoubleTapStartTime:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->getPlayPosition(Z)V

    const-string p0, "gesture_doubletap_retreat"

    invoke-static {p0}, Lwz5;->N(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->touchDoubleUp()V

    :goto_1
    return-void
.end method

.method private getPlayPosition(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVideoRetreatForwardLayout:Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->setIsRetreat(Z)V

    :cond_0
    return-void
.end method

.method private initGestureDetector()V
    .locals 1

    new-instance v0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;

    invoke-direct {v0, p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;-><init>(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initTextToast()V
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/vishaplayersdk/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    iput v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->platformBasicColor:I

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->click_toast:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mTextToast:Landroid/widget/TextView;

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->view_player_speed_chooser:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mPlayerSpeedChooseView:Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/vishaplayersdk/R$dimen;->gesture_speed_item_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mGestureSpeedItemHeight:I

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->hideTextToast()V

    return-void
.end method

.method private longPressChangeSpeed(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->hideAllWidget()V

    const-string v0, "gesture_longpress_forward"

    invoke-static {v0}, Lwz5;->N(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangeSpeed:Z

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mPlayerSpeedChooseView:Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lf39;->d()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->vibratorStart()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-ne v3, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mPlayerSpeedChooseView:Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;

    invoke-virtual {p1, v5}, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->setSpeedState(I)V

    iput-boolean v2, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mSlideChangeSpeed:Z

    sget-object p1, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->GESTURE_SPEED:[F

    aget p1, p1, v4

    invoke-virtual {p0, p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setSpeedPlaying(FZ)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v1, v1

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v1, v6

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v1, v6

    cmpg-float v1, v3, v1

    if-gez v1, :cond_3

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mPlayerSpeedChooseView:Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;

    invoke-virtual {p1, v5}, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->setSpeedState(I)V

    sget-object p1, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->GESTURE_SPEED:[F

    aget p1, p1, v4

    invoke-virtual {p0, p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setSpeedPlaying(FZ)V

    iput-boolean v2, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mSlideChangeSpeed:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->moveToChangeSpeed(F)V

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mSlideChangeSpeed:Z

    :goto_1
    return-void
.end method

.method private vibratorStart()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getEnlargeImageRes()I
    .locals 0

    sget p0, Lcom/transsion/vishaplayersdk/R$drawable;->video_shrink:I

    return p0
.end method

.method public getLayoutId()I
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/vishaplayersdk/R$layout;->layout_video_contoller_land:I

    return p0

    :cond_0
    sget p0, Lcom/transsion/vishaplayersdk/R$layout;->layout_video_contoller_port:I

    return p0
.end method

.method public getShrinkImageRes()I
    .locals 0

    sget p0, Lcom/transsion/vishaplayersdk/R$drawable;->video_shrink:I

    return p0
.end method

.method public hideAllWidget()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->hideAllWidget()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method public hideTextToast()V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mHideTipsUIRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mTextToast:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->init(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->initGestureDetector()V

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->initViews(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->initTextToast()V

    return-void
.end method

.method public isInDoubleTapMode()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDoubleTapStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDoubleTapStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDoubleTapStartTime:J

    :cond_1
    return v0
.end method

.method public moveToChangeSpeed(F)V
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lf39;->c()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    int-to-float v0, v0

    const/high16 v2, 0x40800000    # 4.0f

    div-float v3, v0, v2

    cmpg-float v4, p1, v3

    const/4 v5, 0x3

    if-gez v4, :cond_2

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mPlayerSpeedChooseView:Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;

    invoke-virtual {p1, v1}, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->setSpeedState(I)V

    sget-object p1, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->GESTURE_SPEED:[F

    aget p1, p1, v5

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->changeSpeed(F)V

    goto :goto_1

    :cond_2
    cmpl-float v3, p1, v3

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    if-ltz v3, :cond_3

    div-float v3, v0, v7

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_3

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mPlayerSpeedChooseView:Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;

    invoke-virtual {p1, v6}, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->setSpeedState(I)V

    sget-object p1, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->GESTURE_SPEED:[F

    aget p1, p1, v4

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->changeSpeed(F)V

    goto :goto_1

    :cond_3
    div-float v3, v0, v7

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_4

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    div-float/2addr v0, v2

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mPlayerSpeedChooseView:Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;

    invoke-virtual {p1, v4}, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->setSpeedState(I)V

    sget-object p1, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->GESTURE_SPEED:[F

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->changeSpeed(F)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mPlayerSpeedChooseView:Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;

    invoke-virtual {p1, v5}, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->setSpeedState(I)V

    sget-object p1, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->GESTURE_SPEED:[F

    aget p1, p1, v1

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->changeSpeed(F)V

    :goto_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public replay()V
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "replay"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->resetVIPControls()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    sget-object v1, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->ANDROID_MEDIA_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->replay()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->startPlay()V

    :goto_0
    return-void
.end method

.method public resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;)V
    .locals 1

    move-object v0, p3

    check-cast v0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->dismissVolumeDialog()V

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->dismissBrightnessDialog()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;)V

    return-void
.end method

.method public setEndPosition(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mEndPosition:J

    return-void
.end method

.method public setProgressAndTime(IIIIZ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setProgressAndTime(IIIIZ)V

    iget-wide p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mEndPosition:J

    const-wide/16 p4, 0x0

    cmp-long p4, p1, p4

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getDuration()I

    move-result p4

    int-to-long p4, p4

    cmp-long p1, p1, p4

    if-eqz p1, :cond_0

    int-to-long p1, p3

    iget-wide p3, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mEndPosition:J

    cmp-long p1, p1, p3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->stopPlay()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onClickStop(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setUp(Ljava/lang/String;ZLjava/lang/String;Z)Z
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public showTextToast(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mTextToast:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/vishaplayersdk/R$string;->switch_toast_1:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mTextToast:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mHideTipsUIRun:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mHideTipsUIRun:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public touchSurfaceDown(FF)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->touchSurfaceDown(FF)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLive()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->isInDoubleTapMode()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-static {}, Lf39;->d()I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    int-to-float p2, p2

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, p2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDoubleTapStartTime:J

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->getPlayPosition(Z)V

    const-string p0, "gesture_doubletap_forward"

    invoke-static {p0}, Lwz5;->N(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    div-float/2addr p2, v2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDoubleTapStartTime:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->getPlayPosition(Z)V

    const-string p0, "gesture_doubletap_retreat"

    invoke-static {p0}, Lwz5;->N(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public touchSurfaceMove(FFF)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->touchSurfaceMove(FFF)V

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangeSpeed:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mSlideChangeSpeed:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->moveToChangeSpeed(F)V

    :cond_0
    return-void
.end method

.method public touchSurfaceUp()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->touchSurfaceUp()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mPlayerSpeedChooseView:Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mPlayerSpeedChooseView:Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangeSpeed:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->mPreviousSpeed:F

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget v1, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSpeed:F

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setSpeedPlaying(FZ)V

    :cond_0
    return-void
.end method

.method public updateStartImage()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    sget p0, Lcom/transsion/vishaplayersdk/R$drawable;->video_click_pause_selector:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-ne p0, v1, :cond_1

    sget p0, Lcom/transsion/vishaplayersdk/R$drawable;->video_click_play_selector:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/vishaplayersdk/R$drawable;->video_click_play_selector:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    :cond_3
    :goto_0
    return-void
.end method
