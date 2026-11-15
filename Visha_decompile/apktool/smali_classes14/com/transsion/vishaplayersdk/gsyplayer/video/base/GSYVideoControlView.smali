.class public abstract Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;
.super Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lh27$b;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field dismissControlTask:Ljava/lang/Runnable;

.field protected gestureDetector:Landroid/view/GestureDetector;

.field protected mAdBackImageView:Landroid/widget/ImageView;

.field protected mAdPlaying:Z

.field protected mBackButton:Landroid/widget/ImageView;

.field protected mBatteryView:Lcom/transsion/widgets/battery/BatteryMeterView;

.field protected mBottomContainer:Landroid/view/ViewGroup;

.field protected mBottomProgressBar:Landroid/widget/ProgressBar;

.field protected mBrightness:Z

.field protected mBrightnessData:F

.field protected mChangePosition:Z

.field protected mChangeSpeed:Z

.field protected mChangeVolume:Z

.field protected mClarityTextView:Landroid/widget/TextView;

.field protected mClarityTipTv:Landroid/widget/TextView;

.field protected mCurrentTimeTextView:Landroid/widget/TextView;

.field protected mDismissControlTime:I

.field protected mDoubleTapStartTime:J

.field protected mDownPosition:I

.field protected mDownX:F

.field protected mDownY:F

.field protected mEnlargeImageRes:I

.field protected mErrorContainer:Landroid/view/ViewGroup;

.field protected mErrorType:I

.field public mErrorlayersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;",
            ">;"
        }
    .end annotation
.end field

.field private mEvents:[I

.field protected mFirstTouch:Z

.field protected mFullscreenButton:Landroid/widget/ImageView;

.field protected mGSYVideoProgressListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoProgressListener;

.field protected mGestureDownVolume:I

.field protected mHadSeekTouch:Z

.field protected mHideKey:Z

.field protected mIsGestureSeeking:Z

.field protected mIsPipMode:Z

.field protected mIsTouchWiget:Z

.field protected mIsTouchWigetFull:Z

.field protected mIvBottomGradientBg:Landroid/widget/ImageView;

.field protected mIvBottomTitleLeftTag:Landroid/widget/ImageView;

.field protected mIvBottomTitleRightArrow:Landroid/widget/ImageView;

.field protected mIvClarity:Landroid/widget/ImageView;

.field protected mIvLanguage:Landroid/widget/ImageView;

.field protected mLiveMuteButton:Landroid/widget/ImageView;

.field protected mLlBottomTitle:Landroid/widget/LinearLayout;

.field protected mLlLiveLogo:Landroid/widget/LinearLayout;

.field protected mLlLiveTitle24hour:Landroid/widget/LinearLayout;

.field protected mLoadingProgressBar:Landroid/view/View;

.field private final mLock:Ljava/lang/Object;

.field protected mLockClickListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/LockClickListener;

.field protected mLockCurScreen:Z

.field protected mLockScreen:Landroid/widget/ImageView;

.field protected mLoginOpenVipContainer:Landroid/view/View;

.field protected mLoginOpenVipTv:Landroid/widget/TextView;

.field protected mLottieLiveLogo:Lcom/airbnb/lottie/LottieAnimationView;

.field protected mMoreButton:Landroid/widget/ImageView;

.field protected mMoveY:F

.field protected mMusk:Landroid/view/View;

.field protected mMuteButton:Landroid/widget/ImageView;

.field protected mNeedLockFull:Z

.field protected mNeedShowWifiTip:Z

.field protected mNextButton:Landroid/widget/ImageView;

.field protected mOpenVipTipContainer:Landroid/view/View;

.field protected mOpenVipTipTv:Landroid/widget/TextView;

.field protected mOsSeekbar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

.field protected mPlayListButton:Landroid/widget/ImageView;

.field protected mPostDismiss:Z

.field protected mPostNetSpeed:Z

.field protected mPostProgress:Z

.field protected mPreLoading:Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;

.field protected mPreviewDuration:I

.field protected mProgressBar:Landroid/widget/SeekBar;

.field protected mProgressDuration:Landroid/widget/TextView;

.field protected mProgressTextView:Landroid/widget/TextView;

.field protected mProgressTimeDialog:Landroid/view/View;

.field protected mSeekEndOffset:I

.field protected mSeekProgress:I

.field protected mSeekRatio:F

.field protected mSeekTimePosition:I

.field protected mSetUpLazy:Z

.field protected mShowVKey:Z

.field protected mShrinkImageRes:I

.field protected mSpeedTextView:Landroid/widget/TextView;

.field protected mStartButton:Landroid/widget/ImageView;

.field protected mSubtitleTextView:Landroid/widget/TextView;

.field protected mSwithClarietyTip:Landroid/widget/TextView;

.field protected mThreshold:I

.field protected mThumbImageView:Landroid/view/View;

.field protected mThumbImageViewLayout:Landroid/widget/RelativeLayout;

.field protected mThumbPlay:Z

.field protected mTimeTextView:Landroid/widget/TextView;

.field protected mTitleTextView:Landroid/widget/TextView;

.field protected mTopContainer:Landroid/view/ViewGroup;

.field protected mTotalTimeTextView:Landroid/widget/TextView;

.field protected mTouchingProgressBar:Z

.field protected mTvBottomTitle:Landroid/widget/TextView;

.field protected mTvLive24hours:Landroid/widget/TextView;

.field protected mTvLivePlaying:Landroid/widget/TextView;

.field protected mTvLiveTitle:Landroid/widget/TextView;

.field private mTvVipTip:Landroid/widget/TextView;

.field protected mVerticalSeekBar:Landroid/widget/SeekBar;

.field public mVideoRetreatForwardLayout:Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;

.field protected mVipBackTv:Landroid/widget/ImageView;

.field protected mVolBriIcon:Landroid/widget/ImageView;

.field protected mVolumeBrightnessConatiner:Landroid/view/ViewGroup;

.field protected mbPreviewVideo:Z

.field protected mbShowError:Z

.field protected mbShowNeedVIP:Z

.field private mbShowSubtitle:Z

.field protected mbSwitchResolutionNeedVip:Z

.field prePlayNetworkSpeedTask:Ljava/lang/Runnable;

.field progressTask:Ljava/lang/Runnable;

.field runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_playersdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x50

    .line 2
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThreshold:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 4
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0xbb8

    .line 5
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 6
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 9
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 10
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 11
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 12
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 13
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 15
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 16
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 17
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 18
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 19
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    .line 20
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    .line 21
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostNetSpeed:Z

    .line 22
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostDismiss:Z

    .line 23
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdPlaying:Z

    .line 24
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    .line 25
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbPreviewVideo:Z

    .line 26
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbSwitchResolutionNeedVip:Z

    .line 27
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    .line 28
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorType:I

    .line 29
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPreviewDuration:I

    .line 30
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsPipMode:Z

    .line 31
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLock:Ljava/lang/Object;

    .line 32
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowSubtitle:Z

    .line 33
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsGestureSeeking:Z

    .line 34
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorlayersMap:Ljava/util/Map;

    .line 35
    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$1;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->prePlayNetworkSpeedTask:Ljava/lang/Runnable;

    .line 36
    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$2;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$2;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->progressTask:Ljava/lang/Runnable;

    .line 37
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$4;

    invoke-direct {v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    .line 38
    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$5;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$5;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->dismissControlTask:Ljava/lang/Runnable;

    .line 39
    new-instance p1, Ltb4;

    invoke-direct {p1, p0}, Ltb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x50

    .line 41
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThreshold:I

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 43
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0xbb8

    .line 44
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 45
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 46
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 48
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 49
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 50
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 51
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 52
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    const/4 p2, 0x1

    .line 53
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 54
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 55
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 56
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 57
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 58
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    .line 59
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    .line 60
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostNetSpeed:Z

    .line 61
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostDismiss:Z

    .line 62
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdPlaying:Z

    .line 63
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    .line 64
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbPreviewVideo:Z

    .line 65
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbSwitchResolutionNeedVip:Z

    .line 66
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    .line 67
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorType:I

    .line 68
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPreviewDuration:I

    .line 69
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsPipMode:Z

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLock:Ljava/lang/Object;

    .line 71
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowSubtitle:Z

    .line 72
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsGestureSeeking:Z

    .line 73
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorlayersMap:Ljava/util/Map;

    .line 74
    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$1;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->prePlayNetworkSpeedTask:Ljava/lang/Runnable;

    .line 75
    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$2;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$2;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->progressTask:Ljava/lang/Runnable;

    .line 76
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$4;

    invoke-direct {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    .line 77
    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$5;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$5;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->dismissControlTask:Ljava/lang/Runnable;

    .line 78
    new-instance p1, Ltb4;

    invoke-direct {p1, p0}, Ltb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x50

    .line 80
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThreshold:I

    const/4 p1, -0x1

    .line 81
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 82
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0xbb8

    .line 83
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 84
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 85
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 87
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 88
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 89
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 90
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 91
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    const/4 p2, 0x1

    .line 92
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 93
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 94
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 95
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 96
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 97
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    .line 98
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    .line 99
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostNetSpeed:Z

    .line 100
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostDismiss:Z

    .line 101
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdPlaying:Z

    .line 102
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    .line 103
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbPreviewVideo:Z

    .line 104
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbSwitchResolutionNeedVip:Z

    .line 105
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    .line 106
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorType:I

    .line 107
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPreviewDuration:I

    .line 108
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsPipMode:Z

    .line 109
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLock:Ljava/lang/Object;

    .line 110
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowSubtitle:Z

    .line 111
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsGestureSeeking:Z

    .line 112
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorlayersMap:Ljava/util/Map;

    .line 113
    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$1;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->prePlayNetworkSpeedTask:Ljava/lang/Runnable;

    .line 114
    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$2;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$2;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->progressTask:Ljava/lang/Runnable;

    .line 115
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$4;

    invoke-direct {p3, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    .line 116
    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$5;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$5;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->dismissControlTask:Ljava/lang/Runnable;

    .line 117
    new-instance p1, Ltb4;

    invoke-direct {p1, p0}, Ltb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 1

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/16 p1, 0x50

    .line 119
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThreshold:I

    const/4 p1, -0x1

    .line 120
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 121
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0xbb8

    .line 122
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 123
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 124
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 125
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 126
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 127
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 128
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 129
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 130
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    const/4 p2, 0x1

    .line 131
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 132
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 133
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 134
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 135
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 136
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    .line 137
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    .line 138
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostNetSpeed:Z

    .line 139
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostDismiss:Z

    .line 140
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdPlaying:Z

    .line 141
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    .line 142
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbPreviewVideo:Z

    .line 143
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbSwitchResolutionNeedVip:Z

    .line 144
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    .line 145
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorType:I

    .line 146
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPreviewDuration:I

    .line 147
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsPipMode:Z

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLock:Ljava/lang/Object;

    .line 149
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowSubtitle:Z

    .line 150
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsGestureSeeking:Z

    .line 151
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorlayersMap:Ljava/util/Map;

    .line 152
    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$1;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->prePlayNetworkSpeedTask:Ljava/lang/Runnable;

    .line 153
    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$2;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$2;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->progressTask:Ljava/lang/Runnable;

    .line 154
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$4;

    invoke-direct {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    .line 155
    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$5;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$5;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->dismissControlTask:Ljava/lang/Runnable;

    .line 156
    new-instance p1, Ltb4;

    invoke-direct {p1, p0}, Ltb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method private applyNetworkBlockOverlayUi()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isNetworkBlockErrorShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideLoadingView()V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorContainer:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private buyVip()V
    .locals 2

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onRequestVip(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->lambda$new$8()V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->lambda$showBuffering$11(Z)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->lambda$setClarity$0()V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->lambda$lockTouchLogic$3()V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->lambda$didReceivedNotification$6()V

    return-void
.end method

.method private getClarity()Z
    .locals 6

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getVideoDefinitions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    sget v4, Lcom/transsion/vishaplayersdk/R$string;->tip_clariety:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v4

    iget-object v4, v4, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mMiniDefinition:Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v4

    iget-object v4, v4, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mMiniDefinition:Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

    iget v4, v4, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->type:I

    iget v5, v3, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->type:I

    if-le v4, v5, :cond_5

    :cond_4
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v4

    iput-object v3, v4, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mMiniDefinition:Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

    :cond_5
    iget-boolean v4, v3, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->bCurrent:Z

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_6
    iget-object v5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v4

    iget v4, v4, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSwitchingResolution:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v4

    iget v4, v4, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSwitchingResolution:I

    iget v5, v3, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->type:I

    if-ne v4, v5, :cond_3

    move-object v1, v3

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {p0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->switchVideoResolution(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;)V

    :cond_9
    return v2
.end method

.method public static synthetic h(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->lambda$init$9(IZ)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->lambda$onClick$5(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;)V

    return-void
.end method

.method private initEvent()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mEvents:[I

    return-void

    :array_0
    .array-data 4
        0x3ea
        0x3e9
        0x3e8
        0x3eb
        0x3ee
        0x3ed
        0x3ec
        0x3f5
        0x3f9
        0x3e8
        0x3e7
        0x40e
        0x40d
        0x40c
        0x416
        0x417
        0x419
        0x41a
        0x41b
        0x3f6
        0x3f7
        0x44e
    .end array-data
.end method

.method private isNetworkBlockErrorType(I)Z
    .locals 0

    const/16 p0, 0x3ea

    if-eq p1, p0, :cond_1

    const/16 p0, 0x3e9

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic j(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->lambda$onBufferingUpdate$2(I)V

    return-void
.end method

.method public static synthetic k(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->lambda$onClick$4(Ljava/lang/String;F)V

    return-void
.end method

.method public static synthetic l(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->lambda$showErrorLayer$1(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$6()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTipTv:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$7()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTipTv:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$init$10(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->lockTouchLogic()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockClickListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/LockClickListener;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    invoke-interface {v0, p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/LockClickListener;->onClick(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$init$9(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getDuration()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentPositionWhenPlaying()I

    move-result v1

    if-eqz p2, :cond_0

    :goto_0
    mul-int/lit16 p1, p1, 0x3e8

    goto :goto_1

    :cond_0
    neg-int p1, p1

    goto :goto_0

    :goto_1
    add-int/2addr v1, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz p2, :cond_1

    mul-int/lit8 v1, p1, 0x64

    div-int/2addr v1, v0

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    if-lez p1, :cond_3

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$lockTouchLogic$3()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$new$8()V
    .locals 4

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-wide v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mStartBuffering:J

    const-wide/32 v2, 0x186a0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mMiniDefinition:Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mVideoDefinition:Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mMiniDefinition:Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

    iget v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->type:I

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v3

    iget-object v3, v3, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mVideoDefinition:Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

    iget v3, v3, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->type:I

    if-eq v0, v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showBuffering(ZZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showBuffering(ZZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onBufferingUpdate$2(I)V
    .locals 3

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setTextAndProgress(I)V

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mBufferPoint:I

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mLooping:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPlay:Z

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->loopSetProgressAndTime()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onClick$4(Ljava/lang/String;F)V
    .locals 3

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x43a

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setSpeed(F)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSpeedTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p0, "speed"

    invoke-static {p0, p1}, Lwz5;->O(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onClick$5(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->switchVideoResolution(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;)V

    return-void
.end method

.method private synthetic lambda$setClarity$0()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getClarity()Z

    return-void
.end method

.method private synthetic lambda$showBuffering$11(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showBuffering(ZZ)V

    return-void
.end method

.method private synthetic lambda$showErrorLayer$1(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorlayersMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorContainer:Landroid/view/ViewGroup;

    if-ne v2, v3, :cond_0

    sget-object p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showErrorLayer reuse existing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideLoadingView()V

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->pausePlaybackForNetworkBlock(I)V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->applyNetworkBlockOverlayUi()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->hideError()V

    :cond_1
    invoke-static {p2}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p2, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    move-object p2, v1

    :goto_0
    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$3;

    invoke-direct {v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$3;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    invoke-virtual {p2, v1}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->setRefrashListener(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$RefrashListener;)V

    sget-object v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showErrorLayer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorlayersMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideLoadingView()V

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorlayersMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->pausePlaybackForNetworkBlock(I)V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->applyNetworkBlockOverlayUi()V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic m(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->lambda$didReceivedNotification$7()V

    return-void
.end method

.method public static synthetic n(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->lambda$init$10(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->buyVip()V

    return-void
.end method

.method public static bridge synthetic p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private pausePlaybackForNetworkBlock(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isNetworkBlockErrorType(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPauseBeforePrepared:Z

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pausePlaybackForNetworkBlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    :cond_3
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    :cond_4
    return-void
.end method

.method private resolveSwitchResolutionVIPUI()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipTv:Landroid/widget/TextView;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLogin:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/vishaplayersdk/R$string;->vip_open_vip:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/vishaplayersdk/R$string;->vip_login_open_vip:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTvVipTip:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget v0, Lcom/transsion/vishaplayersdk/R$string;->SWITCH_VIP_RESOLUTION_TIP:I

    invoke-static {v0}, Lr0a;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mClarity:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lr0a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTvVipTip:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private setCLick(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lha1;

    invoke-direct {v0, p0}, Lha1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private setCLick(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Lha1;

    invoke-direct {p2, p0}, Lha1;-><init>(Landroid/view/View$OnClickListener;)V

    move-object p0, p2

    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private setClarity()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getClarity()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Lub4;

    invoke-direct {v1, p0}, Lub4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private setLoad()V
    .locals 1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->updateLoadingView(I)V

    return-void
.end method

.method private setPlayStatus()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/vishaplayersdk/R$drawable;->video_click_pause_selector:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/vishaplayersdk/R$drawable;->video_click_play_selector:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method private setSpeed()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSpeedTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getCurrentSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSpeedTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setTitle()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setViewVisible(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method private shouldBlockPrepareForNetworkPrompt()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    const-string v1, "startPrepare blocked: no network"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showErrorLayer(I)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    const-string v1, "startPrepare blocked: mobile data prompt"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showErrorLayer(I)V

    return v2

    :cond_2
    return v1
.end method

.method private showProgressTime(Landroid/widget/SeekBar;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getDuration()I

    move-result v0

    mul-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressDuration:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private switchClarity(Ljava/lang/String;I)V
    .locals 5

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput p2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mClaritySwithIndex:I

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-object p1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mClarity:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTipTv:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/vishaplayersdk/R$string;->chalrity_change_fail:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTipTv:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTipTv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTipTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    if-nez p2, :cond_3

    sget v3, Lcom/transsion/vishaplayersdk/R$string;->chalrity_change_start:I

    goto :goto_1

    :cond_3
    sget v3, Lcom/transsion/vishaplayersdk/R$string;->chalrity_change_ok:I

    :goto_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne p2, v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideLoadingView()V

    :cond_4
    new-instance p2, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTipTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTipTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTipTv:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private updateLoadingView(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPreLoading:Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLoadingView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPreLoading:Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addVolume()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showVolumeDialog(FI)V

    const-string p0, "gesture_volume"

    invoke-static {p0}, Lwz5;->N(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public appliedSubtitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isShortVideoPlayer()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-object p1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mCureentSubTitle:Ljava/lang/String;

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x3f4

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtitleCode:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const-string p1, "-1"

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->onSetSubtitlesSuccess(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public cancelDismissControlViewTimer()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostDismiss:Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->dismissControlTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelPrePlayNetSpeedTimer()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostNetSpeed:Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->prePlayNetworkSpeedTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelProgressTimer()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->progressTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract changeUiToCompleteShow()V
.end method

.method public abstract changeUiToError()V
.end method

.method public abstract changeUiToNormal()V
.end method

.method public abstract changeUiToPauseShow()V
.end method

.method public abstract changeUiToPlayingBufferingShow()V
.end method

.method public abstract changeUiToPlayingShow()V
.end method

.method public abstract changeUiToPreparingShow()V
.end method

.method public clickStartIcon()V
    .locals 7

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickStartIcon play state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mMapPlayState:Ljava/util/Map;

    iget v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "********"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/vishaplayersdk/R$string;->no_url:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mProgressChange:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isNetworkBlockErrorShowing()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    if-ne v3, v4, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const-string p0, "clickStartIcon ignore resume while network block showing"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    iget v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v5, 0x6

    if-eqz v3, :cond_c

    const/4 v6, 0x7

    if-eq v3, v6, :cond_c

    if-ne v3, v5, :cond_4

    goto/16 :goto_5

    :cond_4
    const/4 v0, 0x5

    if-ne v3, v4, :cond_6

    if-nez v1, :cond_6

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoPause()V

    const-string v1, "pause"

    invoke-static {v1}, Lwz5;->N(Ljava/lang/String;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x452

    invoke-virtual {v1, v3, v2}, Lh27;->e(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_5

    const-string v0, "onClickStopFullscreen"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onClickStopFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_5
    const-string v0, "onClickStop"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onClickStop(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_6
    if-eq v3, v0, :cond_8

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    if-ne v3, v5, :cond_e

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->startButtonLogic()V

    goto/16 :goto_6

    :cond_8
    :goto_2
    const-string v0, "play"

    invoke-static {v0}, Lwz5;->N(Ljava/lang/String;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x451

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_9

    const-string v0, "onClickResumeFullscreen"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onClickResumeFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    const-string v0, "onClickResume"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onClickResume(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_3
    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPlay:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mStartAfterPrepared:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->startAfterPrepared()V

    :cond_b
    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->togglePlay()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    invoke-virtual {p0, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    goto :goto_6

    :cond_c
    :goto_5
    if-ne v3, v5, :cond_d

    const-string v1, "play clickStartIcon, mCurrentState == CURRENT_STATE_AUTO_COMPLETE"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setSeekOnStart(J)V

    :cond_d
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->startButtonLogic()V

    :cond_e
    :goto_6
    return-void
.end method

.method public cutVolume()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showVolumeDialog(FI)V

    const-string p0, "gesture_volume"

    invoke-static {p0}, Lwz5;->N(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 10

    const/16 v0, 0x3f9

    if-eq p1, v0, :cond_15

    const/16 v0, 0x44e

    const/4 v1, -0x1

    const/4 v2, -0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq p1, v0, :cond_13

    const/16 v0, 0x416

    if-eq p1, v0, :cond_e

    const/16 v0, 0x417

    if-eq p1, v0, :cond_d

    packed-switch p1, :pswitch_data_0

    const-wide/16 v8, -0x1

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_5

    :pswitch_0
    aget-object p1, p2, v7

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mStartBuffering:J

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->runnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    aget-object p1, p2, v7

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x64

    if-ne p1, p2, :cond_1

    invoke-virtual {p0, v7, v7}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showBuffering(ZZ)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iput-wide v8, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mStartBuffering:J

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideLoadingView()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    iput-boolean v7, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLoading:Z

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    iput-boolean v7, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mTearing:Z

    goto/16 :goto_5

    :cond_1
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iput-boolean v6, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mTearing:Z

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iput-boolean v6, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLoading:Z

    invoke-virtual {p0, v6}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showLoadingView(Z)V

    goto/16 :goto_5

    :pswitch_1
    aget-object p1, p2, v7

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v6, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    const/4 v4, -0x4

    goto :goto_0

    :cond_3
    move v4, v7

    :goto_0
    invoke-static {v4}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GSYVideoType;->setShowType(I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->changeTextureViewShowType()V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->requestLayout()V

    goto/16 :goto_5

    :pswitch_2
    aget-object p1, p2, v6

    check-cast p1, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mClarity:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-object p1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mVideoDefinition:Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v3

    iget-object v3, v3, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mClarity:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    aget-object p2, p2, v7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch video resolution result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videodeifintion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v3, 0x7d0

    if-nez p2, :cond_5

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mClarity:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->switchClarity(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTipTv:Landroid/widget/TextView;

    new-instance p2, Lcc4;

    invoke-direct {p2, p0}, Lcc4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    invoke-virtual {p1, p2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const-wide/32 p1, 0x89544e

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x40a

    invoke-virtual {p0, p2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mClarity:Ljava/lang/String;

    invoke-direct {p0, p1, v6}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->switchClarity(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTipTv:Landroid/widget/TextView;

    new-instance p2, Ldc4;

    invoke-direct {p2, p0}, Ldc4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    invoke-virtual {p1, p2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    iput v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mClaritySwithIndex:I

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    iput v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSwitchingResolution:I

    goto/16 :goto_5

    :pswitch_3
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p0, :cond_16

    const/4 p1, 0x0

    new-array p2, v7, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onRequestVip(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_4
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsTaskAutoPlay:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_16

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_5
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayType:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    sget-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_LIVE:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    if-ne p1, v0, :cond_6

    return-void

    :cond_6
    aget-object p1, p2, v7

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPreviewDuration:I

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOpenVipTipTv:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->initPre()V

    :cond_7
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipContainer:Landroid/view/View;

    invoke-virtual {p0, p1, v5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOpenVipTipContainer:Landroid/view/View;

    invoke-virtual {p0, p1, v7}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iput-boolean v7, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    iput-boolean v6, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbPreviewVideo:Z

    goto/16 :goto_5

    :pswitch_6
    sget-object p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    const-string p2, "Player pause video"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_16

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    new-array p2, v7, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onVideoPause(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_7
    sget-object p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    const-string p2, "video start play"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iput-wide v8, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mStartBuffering:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iput-boolean v7, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mTearing:Z

    invoke-virtual {p0, v7, v7}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showBuffering(ZZ)V

    invoke-virtual {p0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setClarity()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->isNeedMute()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setMute(Z)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_16

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    new-array p2, v7, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onVideoStartShow(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_8
    :try_start_0
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdBackImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isShortVideoPlayer()Z

    move-result p1

    if-nez p1, :cond_16

    sget-object p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show back button:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p2, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdBackImageView:Landroid/widget/ImageView;

    aget-object p1, p2, v7

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    move v5, v7

    :cond_8
    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    :pswitch_9
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v6}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewVisible(Landroid/view/View;Z)V

    goto/16 :goto_5

    :pswitch_a
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNextButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLast:Z

    if-nez p2, :cond_9

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsYoutube:Z

    if-nez p2, :cond_9

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsVk:Z

    if-nez p2, :cond_9

    goto :goto_2

    :cond_9
    move v6, v7

    :goto_2
    invoke-direct {p0, p1, v6}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewVisible(Landroid/view/View;Z)V

    goto/16 :goto_5

    :pswitch_b
    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTipTv:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_a
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mClarity:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p2

    iget p2, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mClaritySwithIndex:I

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->switchClarity(Ljava/lang/String;I)V

    goto/16 :goto_5

    :pswitch_c
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setSubTitle()V

    goto/16 :goto_5

    :pswitch_d
    aget-object p2, p2, v7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showErrorLayer(I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLiveFullscreen()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isShortVideoPlayer()Z

    move-result p1

    if-nez p1, :cond_16

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v7}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    goto/16 :goto_5

    :cond_b
    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideErrorLayer(I)V

    goto/16 :goto_5

    :pswitch_e
    aget-object v0, p2, v7

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on player error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    aget-object p2, p2, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showErrorLayer(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_16

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    new-array p2, v7, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onPlayError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_c
    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideErrorLayer(I)V

    goto/16 :goto_5

    :cond_d
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getPreLoading()Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getPreLoading()Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_16

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getPreLoading()Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->getNetSpeedTextView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsPip:Z

    if-nez p1, :cond_16

    aget-object p1, p2, v7

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->getTextSpeed(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getPreLoading()Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->getNetSpeedTextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/vishaplayersdk/R$string;->wonderful_start:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getPreLoading()Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->getNetSpeedTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_e
    iput-boolean v6, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    iput-boolean v7, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbPreviewVideo:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideLoadingView()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->stop()V

    invoke-virtual {p0, v7}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipTv:Landroid/widget/TextView;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLogin:Z

    if-eqz p2, :cond_f

    sget p2, Lcom/transsion/vishaplayersdk/R$string;->vip_open_vip:I

    goto :goto_3

    :cond_f
    sget p2, Lcom/transsion/vishaplayersdk/R$string;->vip_login_open_vip:I

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTipTv:Landroid/widget/TextView;

    invoke-direct {p0, p1, v7}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewVisible(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipContainer:Landroid/view/View;

    invoke-virtual {p0, p1, v7}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOpenVipTipContainer:Landroid/view/View;

    invoke-virtual {p0, p1, v5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->statisticPlayerPreviewDuration()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onNeedVip()V

    :cond_10
    iput-boolean v7, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbSwitchResolutionNeedVip:Z

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipContainer:Landroid/view/View;

    if-eqz p1, :cond_11

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_11
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTvVipTip:Landroid/widget/TextView;

    if-eqz p1, :cond_12

    sget p2, Lcom/transsion/vishaplayersdk/R$string;->vip_open_tip:I

    invoke-static {p2}, Lr0a;->e(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getVipBackTv()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isIfCurrentIsFullscreen()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getVipBackTv()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_13
    iput-boolean v6, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbSwitchResolutionNeedVip:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideLoadingView()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result p1

    if-ne p1, v3, :cond_14

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->clickStartIcon()V

    goto :goto_4

    :cond_14
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->changeUiToPauseShow()V

    :goto_4
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipContainer:Landroid/view/View;

    invoke-virtual {p0, p1, v7}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOpenVipTipContainer:Landroid/view/View;

    invoke-virtual {p0, p1, v5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->resolveSwitchResolutionVIPUI()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iput v2, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mClaritySwithIndex:I

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iput v1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSwitchingResolution:I

    iput-boolean v6, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTipTv:Landroid/widget/TextView;

    if-eqz p0, :cond_16

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    iput v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mClaritySwithIndex:I

    goto :goto_5

    :cond_15
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->resetNormalState()V

    :cond_16
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f5
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x40c
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x419
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract dismissBrightnessDialog()V
.end method

.method public abstract dismissProgressDialog()V
.end method

.method public abstract dismissVolumeDialog()V
.end method

.method public getAdBackButton()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdBackImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getBackButton()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBackButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getEnlargeImageRes()I
    .locals 0

    sget p0, Lcom/transsion/vishaplayersdk/R$drawable;->video_play_rorate:I

    return p0
.end method

.method public getFullscreenButton()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getLiveMuteButton()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLiveMuteButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getLoadingBackTv()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPreLoading:Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->getLoadingBack()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlayListBtn()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPlayListButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getPreLoading()Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPreLoading:Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;

    return-object p0
.end method

.method public getShrinkImageRes()I
    .locals 0

    sget p0, Lcom/transsion/vishaplayersdk/R$drawable;->video_play_rorate:I

    return p0
.end method

.method public getStartButton()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getVipBackTv()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVipBackTv:Landroid/widget/ImageView;

    return-object p0
.end method

.method public hideAdBack()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdBackImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method public hideAllErrorViews()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorlayersMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->hideError()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract hideAllWidget()V
.end method

.method public hideErrorLayer(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorlayersMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->hideError()V

    :cond_0
    return-void
.end method

.method public hideLoadingView()V
    .locals 2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLoading:Z

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->updateLoadingView(I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelPrePlayNetSpeedTimer()V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility",
            "CutPasteId"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->init(Landroid/content/Context;)V

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->start:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->title:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->back:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBackButton:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->fullscreen:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->progress:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->current:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->total:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->layout_bottom:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->refreshBottomContainer()V

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->layout_top:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->bottom_progressbar:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->thumb:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->lock_screen:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->buffer_loading_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->video_retreat_forward_tip_layout:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVideoRetreatForwardLayout:Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;

    if-eqz p1, :cond_0

    new-instance v0, Lac4;

    invoke-direct {v0, p0}, Lac4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->setListener(Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout$RetreatForwardListener;)V

    :cond_0
    sget p1, Lcom/transsion/vishaplayersdk/R$id;->error_contaniner:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorContainer:Landroid/view/ViewGroup;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->app_video_brightness:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVerticalSeekBar:Landroid/widget/SeekBar;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->app_video_brightness_box:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVolumeBrightnessConatiner:Landroid/view/ViewGroup;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->app_vol_bri_icon:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVolBriIcon:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->ad_back:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdBackImageView:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->musk:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMusk:Landroid/view/View;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->progress_duration:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressDuration:Landroid/widget/TextView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->progress_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressTimeDialog:Landroid/view/View;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->mute:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMuteButton:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->next:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNextButton:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->speed:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSpeedTextView:Landroid/widget/TextView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->episode:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPlayListButton:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTimeTextView:Landroid/widget/TextView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->power:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/battery/BatteryMeterView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBatteryView:Lcom/transsion/widgets/battery/BatteryMeterView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->language:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSubtitleTextView:Landroid/widget/TextView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->more:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMoreButton:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->clarity:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTextView:Landroid/widget/TextView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->clarity_tip:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTipTv:Landroid/widget/TextView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->progress_result:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressTextView:Landroid/widget/TextView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->pre_loading:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPreLoading:Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->vip_back:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVipBackTv:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->layout_vip_tip:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOpenVipTipContainer:Landroid/view/View;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->tv_open_vip:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOpenVipTipTv:Landroid/widget/TextView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->vip_contaniner:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipContainer:Landroid/view/View;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->vip_tip:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipTv:Landroid/widget/TextView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->live_mute:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLiveMuteButton:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOpenVipTipTv:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setCLick(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipTv:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setCLick(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipTv:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOpenVipTipTv:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOpenVipTipTv:Landroid/widget/TextView;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_1
    sget p1, Lcom/transsion/vishaplayersdk/R$id;->tv_vip_tip:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTvVipTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_7
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageView:Landroid/view/View;

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->resolveThumbImage(Landroid/view/View;)V

    :cond_9
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBackButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setCLick(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdPlaying:Z

    if-nez v3, :cond_b

    iget v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_a

    goto :goto_0

    :cond_a
    move v3, v2

    goto :goto_1

    :cond_b
    :goto_0
    const/4 v3, 0x4

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    new-instance v3, Lbc4;

    invoke-direct {v3, p0}, Lbc4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {p1, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekEndOffset:I

    :cond_d
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mVipBackTv:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setCLick(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMuteButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setCLick(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLiveMuteButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setCLick(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMoreButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setCLick(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPlayListButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setCLick(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSpeedTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setCLick(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setCLick(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setCLick(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNextButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setCLick(Landroid/view/View;)V

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->swith_clarity_tip:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSwithClarietyTip:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->initEvent()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNextButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLast:Z

    xor-int/2addr v0, v3

    invoke-direct {p0, p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewVisible(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setClarity()V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setSpeed()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->initSubTitle()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setTitle()V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setLoad()V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setPlayStatus()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipContainer:Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOpenVipTipContainer:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewVisible(Landroid/view/View;Z)V

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMuteButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_f

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->isNeedMute()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_f
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_10

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mProgressOffset:I

    invoke-virtual {p1, v0}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    :cond_10
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->initShortVideoControlViews()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->initShortVideoControlViewListeners()V

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->ll_live_logo:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLlLiveLogo:Landroid/widget/LinearLayout;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->lottie_live_logo:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLottieLiveLogo:Lcom/airbnb/lottie/LottieAnimationView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->tv_live_playing:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTvLivePlaying:Landroid/widget/TextView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->ll_live_title_24hour:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLlLiveTitle24hour:Landroid/widget/LinearLayout;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->tv_live_24hours:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTvLive24hours:Landroid/widget/TextView;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->tv_live_title:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTvLiveTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsYoutube:Z

    if-nez p1, :cond_11

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsVk:Z

    if-eqz p1, :cond_14

    :cond_11
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNextButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_12

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_12
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPlayListButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_13

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_13
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_14

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    return-void
.end method

.method public initPre()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPreviewDuration:I

    const v2, 0xea60

    if-lt v1, v2, :cond_0

    div-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x3c

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/vishaplayersdk/R$string;->vip_open_vip_land:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_0
    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/vishaplayersdk/R$string;->vip_open_vip_land_second:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_0
    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$6;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$6;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;Landroid/content/Context;Z)V

    new-instance v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$7;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$7;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;Landroid/content/Context;Z)V

    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/vishaplayersdk/R$string;->vip_open_vip:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/vishaplayersdk/R$string;->vip_open_vip_arrow:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v7, 0x12

    invoke-virtual {v3, v1, v4, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v5, v2, v4, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOpenVipTipTv:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOpenVipTipTv:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public initShortVideoControlViewListeners()V
    .locals 0

    return-void
.end method

.method public initShortVideoControlViews()V
    .locals 0

    return-void
.end method

.method public initSubTitle()V
    .locals 5

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtitleCodeByUser:I

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getSubtitleList()Ljava/util/List;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;

    invoke-virtual {v3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->getLanguage()I

    move-result v4

    if-ne v4, v0, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->setSelect(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->setSubtitleList(Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSubTitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initSubTitle"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setSubTitle()V

    return-void
.end method

.method public isInDoubleTapMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedLockFull()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    return p0
.end method

.method public isNetworkBlockErrorShowing()Z
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorType:I

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isNetworkBlockErrorType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorlayersMap:Ljava/util/Map;

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorlayersMap:Ljava/util/Map;

    const/16 v2, 0x3ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public isShortVideoPlayer()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoSourceType:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSwitchResolutionNeedVip()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbSwitchResolutionNeedVip:Z

    return p0
.end method

.method public lockTouchLogic()V
    .locals 4

    const-string v0, "lock"

    invoke-static {v0}, Lwz5;->N(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    sget v2, Lcom/transsion/vishaplayersdk/R$drawable;->ic_unlock:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->onClickUiToggle()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    sget v2, Lcom/transsion/vishaplayersdk/R$drawable;->ic_lock:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    new-instance v1, Lfc4;

    invoke-direct {v1, p0}, Lfc4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public loopSetProgressAndTime()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setPlayStatus()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAdComplete(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onAdComplete(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdPlaying:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    sget-object p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    const-string v0, "onAdComplete:false"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onAdComplete()V

    :cond_0
    return-void
.end method

.method public onAdCountdown(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onAdCountdown(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;I)V

    return-void
.end method

.method public onAdPrepared(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onAdPrepared(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    return-void
.end method

.method public onAdStartPlaying(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onAdStartPlaying(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdPlaying:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideLoadingView()V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onAdStartPlaying()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onAttachedToWindow()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "------------------------------ visible onAttachedToWindow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mEvents:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v4

    invoke-virtual {v4, p0, v3}, Lh27;->b(Lh27$b;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAuthorizeResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onAutoCompletion()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onAutoCompletion()V

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->lockTouchLogic()V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onBrightnessSlide(F)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const v2, 0x3c23d70a    # 0.01f

    if-gtz v1, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    goto :goto_0

    :cond_1
    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iput v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v3, v1, p1

    if-lez v3, :cond_3

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1

    :cond_3
    cmpg-float p1, v1, v2

    if-gez p1, :cond_4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :cond_4
    :goto_1
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showBrightnessDialog(F)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onBufferingUpdate(I)V
    .locals 1

    new-instance v0, Lwb4;

    invoke-direct {v0, p0, p1}, Lwb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/vishaplayersdk/R$id;->start:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->clickStartIcon()V

    goto/16 :goto_2

    :cond_0
    sget v1, Lcom/transsion/vishaplayersdk/R$id;->surface_container:I

    if-ne v0, v1, :cond_2

    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_1

    const-string p1, "onClickStartError"

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onClickStartError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->prepareVideo()V

    goto/16 :goto_2

    :cond_2
    sget v2, Lcom/transsion/vishaplayersdk/R$id;->thumb:I

    if-ne v0, v2, :cond_6

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbPlay:Z

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "********"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/vishaplayersdk/R$string;->no_url:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    return-void

    :cond_4
    iget p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->startPlay()V

    goto/16 :goto_2

    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_15

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->onClickUiToggle()V

    goto/16 :goto_2

    :cond_6
    if-ne v0, v1, :cond_a

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbSwitchResolutionNeedVip:Z

    if-eqz p1, :cond_7

    return-void

    :cond_7
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isCurrentMediaListener()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-eqz p1, :cond_8

    const-string p1, "onClickBlankFullscreen"

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onClickBlankFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    const-string p1, "onClickBlank"

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    const-string p0, "screencl"

    invoke-static {p0}, Lwz5;->N(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    sget v1, Lcom/transsion/vishaplayersdk/R$id;->mute:I

    if-ne v0, v1, :cond_c

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMuteButton:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/vishaplayersdk/R$drawable;->selector_mute:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->isNeedMute()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, " unmute"

    goto :goto_1

    :cond_b
    const-string p1, "mute"

    :goto_1
    invoke-static {p1}, Lwz5;->N(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->isNeedMute()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->setNeedMute(Z)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMuteButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->isNeedMute()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_2

    :cond_c
    sget v1, Lcom/transsion/vishaplayersdk/R$id;->live_mute:I

    if-ne v0, v1, :cond_d

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLiveMuteButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_15

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->isNeedMute()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->setNeedMute(Z)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLiveMuteButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->isNeedMute()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLiveMuteButton:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/vishaplayersdk/R$drawable;->selector_mute:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p0, :cond_15

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->isNeedMute()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onSetMute(Z)V

    goto/16 :goto_2

    :cond_d
    sget v1, Lcom/transsion/vishaplayersdk/R$id;->next:I

    if-ne v0, v1, :cond_e

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->playNext(Landroid/view/View;)V

    const-string p0, "next"

    invoke-static {p0}, Lwz5;->N(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    sget v1, Lcom/transsion/vishaplayersdk/R$id;->language:I

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mCureentSubTitle:Ljava/lang/String;

    invoke-static {p1}, Lwz5;->f0(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mCureentSubTitle:Ljava/lang/String;

    invoke-static {p1}, Lwz5;->d0(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;->newInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;

    move-result-object p1

    new-instance v0, Lxb4;

    invoke-direct {v0, p0}, Lxb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;->setCallback(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog$SubtitleCallback;)Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "subtitle"

    invoke-virtual {p1, p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->showListDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    sget v1, Lcom/transsion/vishaplayersdk/R$id;->speed:I

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SpeedDialog;->newInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SpeedDialog;

    move-result-object p1

    new-instance v0, Lyb4;

    invoke-direct {v0, p0}, Lyb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SpeedDialog;->setCallback(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SpeedDialog$SpeedCallback;)Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SpeedDialog;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "speed"

    invoke-virtual {p1, p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->showListDialog(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "setPlaySpeed"

    invoke-static {p0}, Lwz5;->N(Ljava/lang/String;)V

    goto :goto_2

    :cond_10
    sget v1, Lcom/transsion/vishaplayersdk/R$id;->clarity:I

    if-ne v0, v1, :cond_11

    invoke-static {}, Lwz5;->g()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mClarityTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lwz5;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;->newInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;

    move-result-object p1

    new-instance v0, Lzb4;

    invoke-direct {v0, p0}, Lzb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;->setCallback(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog$ClarityCallback;)Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "clarity"

    invoke-virtual {p1, p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->showListDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_11
    sget v1, Lcom/transsion/vishaplayersdk/R$id;->more:I

    if-ne v0, v1, :cond_12

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;->newInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "more"

    invoke-virtual {p1, p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->showListDialog(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lwz5;->N(Ljava/lang/String;)V

    invoke-static {}, Lwz5;->z()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x405

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_12
    sget v1, Lcom/transsion/vishaplayersdk/R$id;->episode:I

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showPlayList(Landroid/view/View;)V

    const-string p0, "playlist"

    invoke-static {p0}, Lwz5;->N(Ljava/lang/String;)V

    goto :goto_2

    :cond_13
    sget p1, Lcom/transsion/vishaplayersdk/R$id;->tv_open_vip:I

    if-eq v0, p1, :cond_14

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->vip_tip:I

    if-ne v0, p1, :cond_15

    :cond_14
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->buyVip()V

    :cond_15
    :goto_2
    return-void
.end method

.method public abstract onClickUiToggle()V
.end method

.method public onDetachedFromWindow()V
    .locals 5

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mEvents:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v4

    invoke-virtual {v4, p0, v3}, Lh27;->f(Lh27$b;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "------------------------------ dismiss onDetachedFromWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsTaskAutoPlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsTaskAutoPlay:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->release()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->release()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    return-void
.end method

.method public onError(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onError(II)V

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->lockTouchLogic()V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onNetworkStateChanged(Ljava/lang/String;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onNetworkStateChanged(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLiveFullscreen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "NONE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3ea

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    sget-object p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    const-string v0, "onNetworkStateChanged, no network state"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result p1

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->pause()V

    :cond_1
    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    invoke-virtual {p0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showErrorLayer(I)V

    goto :goto_0

    :cond_2
    const-string v0, "MOBILE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0x3e9

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    const-string v0, "onNetworkStateChanged, mobile is connected,not allowed to play"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result p1

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->pause()V

    :cond_3
    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    invoke-virtual {p0, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showErrorLayer(I)V

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    const-string v0, "onNetworkStateChanged, mobile is connected,,allowed to play"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideErrorLayer(I)V

    invoke-virtual {p0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideErrorLayer(I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result p1

    if-ne p1, v3, :cond_7

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->start()V

    goto :goto_0

    :cond_5
    const-string v0, "WIFI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result p1

    if-ne p1, v3, :cond_6

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->start()V

    :cond_6
    invoke-virtual {p0, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideErrorLayer(I)V

    invoke-virtual {p0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideErrorLayer(I)V

    :cond_7
    :goto_0
    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isShortVideoPlayer()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMoreButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    :cond_8
    return-void
.end method

.method public onPlayerInitResult(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;)V
    .locals 0

    return-void
.end method

.method public onPrepared()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setTextAndProgress(IZ)V

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onPrepared()V

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "------------------------------ surface_container onPrepared"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showProgressTime(Landroid/widget/SeekBar;)V

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOsSeekbar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    :cond_1
    return-void
.end method

.method public onSetSubtitlesFailed(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x3eb

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onSetSubtitlesSuccess(Ljava/lang/String;)V
    .locals 3

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowSubtitle:Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    const-string p1, "onSetSubtitlesSuccess,but not show subtitle"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->switchSubtitleSource(I)V

    return-void

    :cond_0
    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getSubtitleList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getSubtitleList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->isSubtitleAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getSubtitleList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->getLanguage()I

    move-result v1

    if-ne v1, p0, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->setSelect(Z)V

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mCureentSubTitle:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->getLanguage()I

    move-result v0

    iput v0, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtitleCode:I

    goto :goto_0

    :cond_4
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x3eb

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressTimeDialog:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekProgress:I

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mProgressChange:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onClickSeekbarFullscreen"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onClickSeekbarFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "onClickSeekbar"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onClickSeekbar(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPlay:Z

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getDuration()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressTimeDialog:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->seekTo(J)V

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showProgressTime(Landroid/widget/SeekBar;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfWarning(Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string v0, "seekbar"

    invoke-static {v0}, Lwz5;->N(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekProgress:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    if-lez p1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getDuration()I

    move-result v2

    mul-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v1, p1}, Lwz5;->W(ZI)V

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    return-void
.end method

.method public onSubtitlesAvailable(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtitleCodeByUser:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->getLanguage()I

    move-result v3

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->switchSubtitleSource(I)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iput v0, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtitleCode:I

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->appliedSubtitle(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->setSubtitleList(Ljava/util/List;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x3eb

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->onClickUiToggle()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    return v3

    :cond_0
    sget v2, Lcom/transsion/vishaplayersdk/R$id;->fullscreen:I

    const/4 v4, 0x0

    if-ne p1, v2, :cond_1

    return v4

    :cond_1
    sget v2, Lcom/transsion/vishaplayersdk/R$id;->surface_container:I

    const/4 v5, 0x2

    if-ne p1, v2, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v5, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    iget p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDownX:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDownY:F

    sub-float p1, v1, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-boolean v5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-eqz v5, :cond_3

    iget-boolean v6, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    if-nez v6, :cond_4

    :cond_3
    iget-boolean v6, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    if-eqz v6, :cond_5

    if-nez v5, :cond_5

    :cond_4
    iget-boolean v5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightness:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangeSpeed:Z

    if-nez v5, :cond_5

    invoke-virtual {p0, v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->touchSurfaceMoveFullLogic(FF)V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLive()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLiveFullscreen()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->touchSurfaceMove(FFF)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->touchSurfaceUp()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "------------------------------ surface_container ACTION_UP"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mHideKey:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    if-eqz p1, :cond_9

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->touchSurfaceDown(FF)V

    :cond_9
    :goto_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_3

    :cond_a
    sget v0, Lcom/transsion/vishaplayersdk/R$id;->progress:I

    if-ne p1, v0, :cond_f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_d

    if-eq p1, v3, :cond_b

    if-eq p1, v5, :cond_e

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "------------------------------ progress ACTION_UP"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_c

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_1

    :cond_c
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    goto :goto_3

    :cond_d
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    :cond_e
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_f

    invoke-interface {p0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_2

    :cond_f
    :goto_3
    return v4
.end method

.method public onVideoStart()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoStart()V

    return-void
.end method

.method public playNext(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getPlayNextListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getPlayNextListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public prepareVideo()V
    .locals 7

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCache:Z

    iget-object v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCachePath:Ljava/io/File;

    iget-object v5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mMapHeadData:Ljava/util/Map;

    iget-object v6, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    move-object v1, p0

    invoke-super/range {v1 .. v6}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    :cond_0
    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->prepareVideo()V

    return-void
.end method

.method public refreshBottomContainer()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isVkVideo()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMuteButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    :cond_5
    return-void
.end method

.method public resetNormalState()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSpeedTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v1, "1.0X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setClarity()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const-string v1, ""

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mClarity:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const/16 v1, 0x3e6

    iput v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtitleCode:I

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const-string v1, "Subtitle"

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mCureentSubTitle:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->clearSubtitle()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setSubTitle()V

    return-void
.end method

.method public resetProgressAndTime()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setPlayStatus()V

    :cond_2
    :goto_0
    return-void
.end method

.method public resetVIPControls()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbPreviewVideo:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbSwitchResolutionNeedVip:Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOpenVipTipContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method public resolveThumbImage(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public resolveUIState(I)V
    .locals 1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->changeUiToError()V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->changeUiToCompleteShow()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsPip:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->updateStartImage()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->changeUiToPauseShow()V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->changeUiToPlayingBufferingShow()V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsPip:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->updateStartImage()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->changeUiToPlayingShow()V

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->changeUiToPreparingShow()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->changeUiToNormal()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    :goto_2
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->resolveVishaUIState()V

    return-void
.end method

.method public resolveVishaUIState()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdPlaying:Z

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdBackImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdBackImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdBackImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorType:I

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showErrorLayer(I)V

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorType:I

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isNetworkBlockErrorType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    :cond_3
    return-void
.end method

.method public setBottomVisible(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isVkVideo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isShortVideoPlayer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewVisible(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setDismissControlTime(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    return-void
.end method

.method public setEnlargeImageRes(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    return-void
.end method

.method public setFullScreenVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewVisible(Landroid/view/View;Z)V

    return-void
.end method

.method public setGSYVideoProgressListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mGSYVideoProgressListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoProgressListener;

    return-void
.end method

.method public setHideKey(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mHideKey:Z

    return-void
.end method

.method public setIsPipMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsPipMode:Z

    return-void
.end method

.method public setIsTouchWiget(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    return-void
.end method

.method public setIsTouchWigetFull(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    return-void
.end method

.method public setLockClickListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/LockClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockClickListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/LockClickListener;

    return-void
.end method

.method public setMute(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMuteButton:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->setNeedMute(Z)V

    return-void
.end method

.method public setNeedLockFull(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    return-void
.end method

.method public setNeedShowWifiTip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    return-void
.end method

.method public setProgressAndTime(IIIIZ)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mGSYVideoProgressListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoProgressListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoProgressListener;->onProgress(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    if-nez v1, :cond_4

    if-nez p1, :cond_3

    if-eqz p5, :cond_4

    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getBufferedPercentage()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getBufferedPercentage()I

    move-result p2

    :cond_5
    const/16 v0, 0x5e

    if-le p2, v0, :cond_6

    const/16 p2, 0x64

    :cond_6
    invoke-virtual {p0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setSecondaryProgress(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    invoke-static {p4}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p3, :cond_7

    iget-object p4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz p3, :cond_a

    if-nez p1, :cond_8

    if-eqz p5, :cond_9

    :cond_8
    invoke-virtual {p3, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_9
    invoke-virtual {p0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setSecondaryProgress(I)V

    :cond_a
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setPlayStatus()V

    :cond_b
    :goto_0
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->isCacheFile()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->isCacheFile()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_1
    return-void
.end method

.method public setSeekRatio(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    return-void
.end method

.method public setShowSubtitle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowSubtitle:Z

    return-void
.end method

.method public setShrinkImageRes(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    return-void
.end method

.method public setSmallVideoTextureView(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->setSmallVideoTextureView(Landroid/view/View$OnTouchListener;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public setStateAndUi(I)V
    .locals 7

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStateAndUi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mMapPlayState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visha player:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setLastState(I)V

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isCurrentMediaListener()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPrepared:Z

    :cond_2
    iget v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const-string v5, ""

    if-eqz v4, :cond_d

    const/4 v6, 0x1

    if-eq v4, v6, :cond_b

    const/4 v5, 0x2

    if-eq v4, v5, :cond_a

    const/4 v3, 0x5

    if-eq v4, v3, :cond_9

    if-eq v4, v2, :cond_5

    if-eq v4, v1, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isCurrentMediaListener()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "releaseMediaPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->releaseMediaPlayer()V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->statisticPlayerPreviewDuration()V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "------------------------------ dismiss CURRENT_STATE_AUTO_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->statisticPlayerPreviewDuration()V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "------------------------------ CURRENT_STATE_PAUSE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->statisticPlayerPreviewDuration()V

    goto/16 :goto_0

    :cond_a
    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbSwitchResolutionNeedVip:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "------------------------------ CURRENT_STATE_PLAYING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    goto :goto_0

    :cond_b
    iput-object v5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerErrMsg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->resetProgressAndTime()V

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbPreviewVideo:Z

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbSwitchResolutionNeedVip:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isNetworkBlockErrorShowing()Z

    move-result v0

    if-nez v0, :cond_c

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    iput v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorType:I

    :cond_c
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSwitchingResolution:I

    goto :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "------------------------------ dismiss CURRENT_STATE_NORMAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->releaseMediaPlayer()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->releasePauseCover()V

    iput v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mBufferPoint:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSaveChangeViewTIme:J

    iput v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPreviewDuration:I

    :cond_e
    iput-object v5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerErrMsg:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    iput v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorType:I

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->releaseNetWorkState()V

    :cond_f
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->resolveUIState(I)V

    return-void
.end method

.method public setSubTitle()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSubTitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getSubtitleList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setSubTitle"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getSelectSubtitle()Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSubtitleTextView:Landroid/widget/TextView;

    sget v0, Lcom/transsion/vishaplayersdk/R$string;->tip_no_subtitle:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTextAndProgress(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setTextAndProgress(IZ)V

    return-void
.end method

.method public setTextAndProgress(IZ)V
    .locals 6

    .line 2
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentPositionWhenPlaying()I

    move-result v3

    .line 3
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getDuration()I

    move-result v4

    mul-int/lit8 v0, v3, 0x64

    if-nez v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v4

    .line 4
    :goto_0
    div-int v1, v0, v1

    move-object v0, p0

    move v2, p1

    move v5, p2

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setProgressAndTime(IIIIZ)V

    return-void
.end method

.method public setThumbImageView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbImageView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->resolveThumbImage(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setThumbPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThumbPlay:Z

    return-void
.end method

.method public setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-object p4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayTitle:Ljava/lang/String;

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p4, :cond_0

    .line 4
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public setUp(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCache:Z

    iput-object p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCachePath:Ljava/io/File;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    iput-object p5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mMapHeadData:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isCurrentMediaListener()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iget-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSaveChangeViewTIme:J

    sub-long/2addr p4, v0

    const-wide/16 v0, 0x7d0

    cmp-long p2, p4, v0

    if-gez p2, :cond_0

    return p3

    :cond_0
    const-string p2, "waiting"

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    return p1
.end method

.method public setViewShowState(Landroid/view/View;I)V
    .locals 4

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isShortVideoPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsPipMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/vishaplayersdk/R$id;->surface_container:I

    if-eq v0, v1, :cond_1

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLive()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLiveFullscreen()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isShortVideoPlayer()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/transsion/vishaplayersdk/R$id;->fullscreen:I

    if-ne v0, v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/transsion/vishaplayersdk/R$id;->bottom_container:I

    if-ne v0, v2, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/transsion/vishaplayersdk/R$id;->back:I

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isShortVideoPlayer()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/transsion/vishaplayersdk/R$id;->ad_back:I

    if-ne v0, v2, :cond_10

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isVkVideo()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/transsion/vishaplayersdk/R$id;->fullscreen:I

    if-ne v0, v2, :cond_9

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/transsion/vishaplayersdk/R$id;->bottom_container:I

    if-ne v0, v2, :cond_a

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/transsion/vishaplayersdk/R$id;->start:I

    if-ne v0, v2, :cond_b

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/transsion/vishaplayersdk/R$id;->current:I

    if-ne v0, v2, :cond_c

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/transsion/vishaplayersdk/R$id;->progress:I

    if-ne v0, v2, :cond_d

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/transsion/vishaplayersdk/R$id;->total:I

    if-ne v0, v2, :cond_e

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/transsion/vishaplayersdk/R$id;->mute:I

    if-ne v0, v2, :cond_f

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/transsion/vishaplayersdk/R$id;->musk:I

    if-ne v0, v2, :cond_10

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLiveFullscreen()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isShortVideoPlayer()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/vishaplayersdk/R$id;->lottie_live_logo:I

    if-ne v0, v1, :cond_12

    if-nez p2, :cond_12

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/common/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v0, p1

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/vishaplayersdk/R$color;->white:I

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v0, v1}, Lgu5;->i(Lcom/airbnb/lottie/LottieAnimationView;I)V

    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->vip_contaniner:I

    if-ne p1, v0, :cond_13

    if-nez p2, :cond_13

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbSwitchResolutionNeedVip:Z

    if-eqz p1, :cond_13

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->resolveSwitchResolutionVIPUI()V

    :cond_13
    :goto_1
    return-void
.end method

.method public shouldAllowedMobileNetPlay()Z
    .locals 5

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    const-string v2, "allow_mobile_data_play"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v4, "moble_remind"

    invoke-virtual {v1, v4, v3}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldAllowedMobileNetPlay:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    const/4 v4, 0x2

    if-nez v1, :cond_2

    const-string v1, "liveFullscreen, network is not available"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->pause()V

    :cond_1
    iput-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showErrorLayer(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLottieLiveLogo:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTvLive24hours:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    if-eqz v1, :cond_4

    const-string v1, "liveFullscreen, mobile is connected,don\'t allow playback"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result v0

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->pause()V

    :cond_3
    iput-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showErrorLayer(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLottieLiveLogo:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTvLive24hours:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isShortVideoPlayer()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMoreButton:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    :cond_5
    return v2
.end method

.method public abstract showBrightnessDialog(F)V
.end method

.method public showBuffering(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSwithClarietyTip:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsPip:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x432

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSwithClarietyTip:Landroid/widget/TextView;

    if-nez p2, :cond_0

    sget v0, Lcom/transsion/vishaplayersdk/R$string;->switch_chalrity_tip_net:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/vishaplayersdk/R$string;->switch_chalrity_tip:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSwithClarietyTip:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSwithClarietyTip:Landroid/widget/TextView;

    new-instance v0, Lec4;

    invoke-direct {v0, p0, p2}, Lec4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;Z)V

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSwithClarietyTip:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public showErrorLayer(I)V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showErrorLayer(ILjava/lang/String;)V

    return-void
.end method

.method public showErrorLayer(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    .line 3
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorType:I

    .line 4
    new-instance v0, Lvb4;

    invoke-direct {v0, p0, p1, p2}, Lvb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showLoadingView(Z)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->resetVIPControls()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAllErrorViews()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->updateLoadingView(I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getPreLoading()Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getPreLoading()Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;->setPreparedLoading(Z)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getLoadingBackTv()Landroid/widget/ImageView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsPipMode:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/16 v0, 0x8

    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->startPrePlayNetSpeedTimer()V

    return-void
.end method

.method public showPlayList(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getPlayListListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getPlayListListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public abstract showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V
.end method

.method public abstract showVolumeDialog(FI)V
.end method

.method public startDismissControlViewTimer()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLiveFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostDismiss:Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->dismissControlTask:Ljava/lang/Runnable;

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startPrePlayNetSpeedTimer()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelPrePlayNetSpeedTimer()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostNetSpeed:Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->prePlayNetworkSpeedTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startPrepare()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->shouldBlockPrepareForNetworkPrompt()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->startPrepare()V

    return-void
.end method

.method public startProgressTimer()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->progressTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public statisticPlayerPreviewDuration()V
    .locals 4

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbPreviewVideo:Z

    if-eqz p0, :cond_0

    sget-wide v0, Lcom/transsion/vishaplayersdk/base/config/PlayerStatisticInfo;->playRealDuration:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-wide v0, Lcom/transsion/vishaplayersdk/base/config/PlayerStatisticInfo;->playRealDuration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x900002

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    sput-wide v2, Lcom/transsion/vishaplayersdk/base/config/PlayerStatisticInfo;->playRealDuration:J

    :cond_0
    return-void
.end method

.method public switchVideoResolution(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;)V
    .locals 6

    if-nez p1, :cond_0

    sget-object p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    const-string p1, "switch video resolution failed, null resolution"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-boolean v1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->bCurrent:Z

    if-eqz v1, :cond_2

    sget-object p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch video resolution, current playing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSwitchingResolution:I

    return-void

    :cond_2
    sget-object v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch video resolution:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->getType()I

    move-result v3

    iput v3, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSwitchingResolution:I

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isYoutubeVideo()Z

    move-result v2

    const/16 v3, 0x3f0

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mYoutubePlayData:Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;->mStreamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    if-eqz v2, :cond_3

    invoke-static {v2, p1}, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayUtil;->getVideoStream(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;)Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switch definition to play youtube video:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mYoutubePlayData:Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;

    iput-object p1, v1, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;->mVideoStream:Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    iput-boolean v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbSwitchResolutionNeedVip:Z

    iput-boolean v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->startPlay()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    invoke-direct {p0, v0, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->switchClarity(Ljava/lang/String;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    iput-boolean v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbSwitchResolutionNeedVip:Z

    iput-boolean v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->switchResolution(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public touchDoubleUp()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPlay:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->clickStartIcon()V

    return-void
.end method

.method public touchSurfaceDown(FF)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDownX:F

    iput p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDownY:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMoveY:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightness:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    return-void
.end method

.method public touchSurfaceMove(FFF)V
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lf39;->d()I

    move-result v0

    invoke-static {}, Lf39;->c()I

    move-result v2

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLive()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getDuration()I

    move-result p2

    iget p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDownPosition:I

    int-to-float p3, p3

    int-to-float v2, p2

    mul-float/2addr v2, p1

    int-to-float v0, v0

    div-float/2addr v2, v0

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    div-float/2addr v2, v0

    add-float/2addr p3, v2

    float-to-int p3, p3

    iput p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    if-le p3, p2, :cond_2

    move p3, p2

    :cond_2
    iput p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    if-gez p3, :cond_3

    goto :goto_1

    :cond_3
    move v1, p3

    :goto_1
    iput v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    invoke-static {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    iget v5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    move-object v2, p0

    move v3, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_4

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    mul-int/lit8 p0, p0, 0x64

    div-int/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_4
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mProgressChange:Z

    goto/16 :goto_2

    :cond_5
    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLive()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLiveFullscreen()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    if-eqz p1, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    neg-float p1, p2

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mAudioManager:Landroid/media/AudioManager;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p2

    int-to-float v0, p2

    mul-float/2addr v0, p1

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mGestureDownVolume:I

    add-int/2addr v5, v0

    invoke-virtual {v4, p3, v5, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mGestureDownVolume:I

    mul-int/lit8 p3, p3, 0x64

    div-int/2addr p3, p2

    int-to-float p2, p3

    mul-float/2addr v3, p1

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float/2addr v3, p3

    div-float/2addr v3, v2

    add-float/2addr p2, v3

    float-to-int p2, p2

    const-string p3, "gesture_volume"

    invoke-static {p3}, Lwz5;->N(Ljava/lang/String;)V

    neg-float p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showVolumeDialog(FI)V

    goto :goto_2

    :cond_8
    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightness:Z

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLive()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLiveFullscreen()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    if-eqz p1, :cond_a

    :cond_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    const-string p1, "gesture_brightness"

    invoke-static {p1}, Lwz5;->N(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThreshold:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_b

    neg-float p1, p2

    int-to-float p2, v2

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->onBrightnessSlide(F)V

    iput p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDownY:F

    :cond_b
    :goto_2
    return-void
.end method

.method public touchSurfaceMoveFullLogic(FF)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lf39;->d()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThreshold:I

    int-to-float v3, v2

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_1

    int-to-float v2, v2

    cmpl-float p2, p2, v2

    if-lez p2, :cond_8

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    iget p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mThreshold:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    const/4 p2, 0x1

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDownX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekEndOffset:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentPositionWhenPlaying()I

    move-result p1

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDownPosition:I

    goto :goto_3

    :cond_2
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDownY:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekEndOffset:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_4

    move p1, p2

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_1
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDownX:F

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    cmpg-float v0, v2, v0

    if-gez v0, :cond_5

    if-eqz p1, :cond_5

    move v0, p2

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightness:Z

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    :cond_6
    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightness:Z

    if-nez v0, :cond_7

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mGestureDownVolume:I

    :cond_7
    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    :cond_8
    :goto_3
    return-void
.end method

.method public touchSurfaceUp()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getDuration()I

    move-result v0

    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    mul-int/lit8 v2, v2, 0x64

    if-nez v0, :cond_0

    move v0, v1

    :cond_0
    div-int/2addr v2, v0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->dismissVolumeDialog()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->dismissBrightnessDialog()V

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLive()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    :try_start_0
    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getDuration()I

    move-result v0

    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    mul-int/lit8 v2, v2, 0x64

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    div-int/2addr v2, v1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "onTouchScreenSeekPosition"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onTouchScreenSeekPosition(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBrightness:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "onTouchScreenSeekLight"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onTouchScreenSeekLight(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "onTouchScreenSeekVolume"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onTouchScreenSeekVolume(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public updateStartImage()V
    .locals 0

    return-void
.end method
