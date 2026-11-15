.class public Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;
.super Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "visha_playersdk_StandardGSYVideoPlayer"


# instance fields
.field duration:Ljava/lang/String;

.field protected mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDialogProgressHighLightColor:I

.field protected mDialogProgressNormalColor:I

.field private mDismissDialogTask:Ljava/lang/Runnable;

.field private mIsVolumeProgress:Z

.field protected mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;-><init>(Landroid/content/Context;)V

    const/16 p1, -0xb

    .line 7
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mDialogProgressHighLightColor:I

    .line 8
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mDialogProgressNormalColor:I

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mIsVolumeProgress:Z

    .line 10
    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$1;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mDismissDialogTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, -0xb

    .line 12
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mDialogProgressHighLightColor:I

    .line 13
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mDialogProgressNormalColor:I

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mIsVolumeProgress:Z

    .line 15
    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$1;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mDismissDialogTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/16 p1, -0xb

    .line 2
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mDialogProgressHighLightColor:I

    .line 3
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mDialogProgressNormalColor:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mIsVolumeProgress:Z

    .line 5
    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$1;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mDismissDialogTask:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic A(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->dismissVolumeBrightnessDialogDelayed()V

    return-void
.end method

.method public static synthetic access$000(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVolBriIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMusk:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVolBriIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVolBriIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$802(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;F)F
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    return p1
.end method

.method public static synthetic access$900(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVolBriIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method private changeUIToLivePlayingStatus()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayType:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    sget-object v1, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_LIVE:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    const/16 v2, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLiveMuteButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMuteButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    sget-object v3, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->MGTV_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    if-eq v0, v3, :cond_2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsYoutube:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsVk:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLlLiveLogo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLlLiveLogo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTvLiveTitle:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLottieLiveLogo:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lcom/transsion/common/R$attr;->os_platform_basic_color:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLottieLiveLogo:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/vishaplayersdk/R$color;->white:I

    iget-object v5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-static {v0, v3}, Lgu5;->i(Lcom/airbnb/lottie/LottieAnimationView;I)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSpeedTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLottieLiveLogo:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTvLive24hours:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPlayListButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLiveMuteButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    :goto_3
    return-void
.end method

.method private changeUiToLiveCompleteShow()V
    .locals 4

    const-string v0, "changeUiToLiveCompleteShow"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsTaskAutoPlay:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onOutImmerse()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setMusk(Z)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v3, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdBackImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    const/16 v0, 0x42c

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showErrorLayer(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->reset()V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideLoadingView()V

    :cond_3
    :goto_0
    return-void
.end method

.method private dismissVolumeBrightnessDialogDelayed()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mDismissDialogTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mDismissDialogTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initFullUI(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setBottomProgressBarDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setBottomShowProgressBarDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setDialogVolumeProgressBar(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setDialogProgressBar(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mDialogProgressHighLightColor:I

    if-ltz v0, :cond_4

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mDialogProgressNormalColor:I

    if-ltz p0, :cond_4

    invoke-virtual {p1, v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setDialogProgressColor(II)V

    :cond_4
    return-void
.end method

.method private setMusk(Z)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLiveFullscreen()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isVkVideo()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isShortVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMusk:Landroid/view/View;

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMusk:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4

    return-void

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMusk:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_5

    move v4, v2

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_1
    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v4, v3, v0

    const/4 v0, 0x1

    aput v2, v3, v0

    const-string v0, "alpha"

    invoke-static {v1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$3;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_7
    :goto_3
    return-void
.end method

.method private updatePreviewStatus()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayType:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    sget-object v1, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_LIVE:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsTaskAutoPlay:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOpenVipTipTv:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbPreviewVideo:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->initPre()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOpenVipTipContainer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbPreviewVideo:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipTv:Landroid/widget/TextView;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLogin:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/transsion/vishaplayersdk/R$string;->vip_open_vip:I

    goto :goto_1

    :cond_3
    sget v1, Lcom/transsion/vishaplayersdk/R$string;->vip_login_open_vip:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipContainer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static bridge synthetic y(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mDismissDialogTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic z(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mIsVolumeProgress:Z

    return p0
.end method


# virtual methods
.method public autoPlay()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->startButtonLogic()V

    return-void
.end method

.method public changeUiToClear()V
    .locals 3

    const-string v0, "changeUiToClear"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isShortVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "changeUiToClear, play short video"

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onEnterImmerse()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setMusk(Z)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->reset()V

    :cond_2
    return-void
.end method

.method public changeUiToCompleteClear()V
    .locals 4

    const-string v0, "changeUiToCompleteClear"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onEnterImmerse()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setMusk(Z)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v3, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz v3, :cond_1

    move v2, v0

    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->reset()V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    return-void
.end method

.method public changeUiToCompleteShow()V
    .locals 3

    const-string v0, "changeUiToCompleteShow"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onOutImmerse()V

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsTaskAutoPlay:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setMusk(Z)V

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->reset()V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideLoadingView()V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUiToLiveCompleteShow()V

    return-void
.end method

.method public changeUiToError()V
    .locals 5

    const-string v0, "changeUiToError"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onOutImmerse()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setMusk(Z)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v3, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdBackImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    const/16 v3, 0x3e8

    iget-object v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerErrMsg:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showErrorLayer(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v4, v3, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-virtual {v3}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->reset()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideLoadingView()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLiveFullscreen()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->hideAllWidget()V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public changeUiToNormal()V
    .locals 5

    const-string v0, "changeUiToNormal"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onOutImmerse()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz v4, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOpenVipTipContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipContainer:Landroid/view/View;

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    if-eqz v2, :cond_2

    move v3, v1

    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->reset()V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    sget-object v2, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->MGTV_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    if-eq v0, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showLoadingView(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideLoadingView()V

    :goto_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMuteButton:Landroid/widget/ImageView;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_5
    return-void
.end method

.method public changeUiToPauseClear()V
    .locals 2

    const-string v0, "changeUiToPauseClear"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUiToClear()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->updatePauseCover()V

    return-void
.end method

.method public changeUiToPauseShow()V
    .locals 5

    const-string v0, "changeUiToPauseShow"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onOutImmerse()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setMusk(Z)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipContainer:Landroid/view/View;

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbSwitchResolutionNeedVip:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTipTv:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->reset()V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->updatePauseCover()V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUIToLivePlayingStatus()V

    return-void
.end method

.method public changeUiToPlayingBufferingClear()V
    .locals 4

    const-string v0, "changeUiToPlayingBufferingClear"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onEnterImmerse()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setMusk(Z)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v3, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->start()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    return-void
.end method

.method public changeUiToPlayingBufferingShow()V
    .locals 2

    const-string v0, "changeUiToPlayingBufferingShow"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onOutImmerse()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->start()V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showLoadingView(Z)V

    return-void
.end method

.method public changeUiToPlayingClear()V
    .locals 2

    const-string v0, "changeUiToPlayingClear"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUiToClear()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method public changeUiToPlayingShow()V
    .locals 4

    const-string v0, "changeUiToPlayingShow"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onOutImmerse()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setMusk(Z)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOpenVipTipContainer:Landroid/view/View;

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbPreviewVideo:Z

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipContainer:Landroid/view/View;

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->updatePreviewStatus()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getPlayerType()Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    move-result-object v0

    sget-object v1, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->ANDROID_MEDIA_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getPreLoading()Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getPreLoading()Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->isBuffering()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideLoadingView()V

    :cond_4
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUIToLivePlayingStatus()V

    return-void
.end method

.method public changeUiToPrepareingClear()V
    .locals 3

    const-string v0, "changeUiToPrepareingClear"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onEnterImmerse()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setMusk(Z)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->reset()V

    :cond_1
    return-void
.end method

.method public changeUiToPreparingShow()V
    .locals 4

    const-string v0, "changeUiToPreparingShow"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onOutImmerse()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {p0, v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipContainer:Landroid/view/View;

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideErrorLayer(I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->resetNormalState()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    check-cast p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->start()V

    :cond_2
    return-void
.end method

.method public cloneParams(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->cloneParams(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    check-cast p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    check-cast p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    iget-object p0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz p0, :cond_0

    iget-object v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_0
    iget-object p0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    iget-object v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    iget-object p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public dismissBrightnessDialog()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVolumeBrightnessConatiner:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressTimeDialog:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public dismissVolumeDialog()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVolumeBrightnessConatiner:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/vishaplayersdk/R$layout;->video_layout_standard:I

    return p0
.end method

.method public hideAllWidget()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setMusk(Z)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->init(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVerticalSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$2;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_3
    return-void
.end method

.method public onClickUiToggle()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLiveFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsBannerAd:Z

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUiToPrepareingClear()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUiToPreparingShow()V

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingClear()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingShow()V

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbSwitchResolutionNeedVip:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUiToPauseClear()V

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUiToPauseShow()V

    goto :goto_0

    :cond_a
    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUiToCompleteClear()V

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUiToCompleteShow()V

    goto :goto_0

    :cond_c
    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingBufferingClear()V

    goto :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingBufferingShow()V

    :cond_e
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->dismissVolumeDialog()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->dismissBrightnessDialog()V

    return-void
.end method

.method public restoreNormal()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public saveFrame(Ljava/io/File;Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->saveFrame(Ljava/io/File;ZLcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;)V

    return-void
.end method

.method public saveFrame(Ljava/io/File;ZLcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->getRenderProxy()Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->getRenderProxy()Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->saveFrame(Ljava/io/File;ZLcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;)V

    :cond_0
    return-void
.end method

.method public setBottomProgressBarDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBottomShowProgressBarDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setDialogProgressBar(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDialogProgressColor(II)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mDialogProgressHighLightColor:I

    iput p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mDialogProgressNormalColor:I

    return-void
.end method

.method public setDialogVolumeProgressBar(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public showBrightnessDialog(F)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mIsVolumeProgress:Z

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVolumeBrightnessConatiner:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVolBriIcon:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/vishaplayersdk/R$drawable;->video_play_brightness:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVerticalSeekBar:Landroid/widget/SeekBar;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->dismissVolumeBrightnessDialogDelayed()V

    return-void
.end method

.method public showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    const/4 p3, 0x0

    cmpg-float p1, p1, p3

    if-gez p1, :cond_0

    const-string p1, "retreat"

    goto :goto_0

    :cond_0
    const-string p1, "forward"

    :goto_0
    invoke-static {p1}, Lwz5;->N(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->duration:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressDuration:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->duration:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressTimeDialog:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showVolumeDialog(FI)V
    .locals 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->mIsVolumeProgress:Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVolumeBrightnessConatiner:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVolBriIcon:Landroid/widget/ImageView;

    if-lez p2, :cond_0

    sget v2, Lcom/transsion/vishaplayersdk/R$drawable;->video_play_volume:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/transsion/vishaplayersdk/R$drawable;->video_play_volume0:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVerticalSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    if-ge p2, p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setMute(Z)V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->dismissVolumeBrightnessDialogDelayed()V

    return-void
.end method

.method public startPlay()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPlay\uff0cplayer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_playersdk_StandardGSYVideoPlayer"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_0

    const-string v0, "onClickStartThumb"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onClickStartThumb(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->prepareVideo()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    return-void
.end method

.method public startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    iget-object p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockClickListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/LockClickListener;

    invoke-virtual {p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setLockClickListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/LockClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isNeedLockFull()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setNeedLockFull(Z)V

    invoke-direct {p0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->initFullUI(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)V

    :cond_0
    return-object p1
.end method

.method public stopPlay()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsTaskAutoPlay:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    :cond_0
    return-void
.end method

.method public updateStartImage()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    sget p0, Lcom/transsion/vishaplayersdk/R$drawable;->video_click_pause_selector:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-ne p0, v1, :cond_1

    sget p0, Lcom/transsion/vishaplayersdk/R$drawable;->video_click_error_selector:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/vishaplayersdk/R$drawable;->video_click_play_selector:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method
