.class public abstract Lcom/hunantv/media/widget/MgtvAbstractVideoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;,
        Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;
    }
.end annotation


# static fields
.field public static final INVALID_FILE_START_TIME_VALUE:I = -0x1

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_ONLY_AUDIO:I = 0x1

.field static sAutoNativeStack:Z = true


# instance fields
.field protected backPlayStartEnable:Z

.field public isBackground:Z

.field isRequestAudioFocus:Z

.field mABRegion:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;

.field mAMCKeyFrameBackMode:I

.field private mAVPlayListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;

.field mAddrInfoTimeoutMs:I

.field mAntiViewShake:Z

.field private mAudioEffectConfig:[B

.field volatile mAudioFocusObtained:Z

.field mBackPlayEnable:Z

.field mConfiguration:Lcom/hunantv/media/widget/IVideoView$Configuration;

.field mConnectTimeOut:I

.field mContext:Landroid/content/Context;

.field mCurrentUri:Landroid/net/Uri;

.field mDataSource:Lcom/hunantv/media/player/MgtvPlayerDataSource;

.field mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

.field mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

.field mDebugPanel:Lcom/hunantv/media/widget/debug/DebugPanel;

.field mDecorateLayout:Landroid/widget/FrameLayout;

.field mDisplayFloatRect:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

.field mDnsFamilyType:I

.field mDrmInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDrmSession:Lcom/hunantv/media/drm/IDrmSession;

.field mEnableDefaultFileStartTime:Z

.field private mEnableFramePTSNotify:Z

.field mEnableImgoVsr:Z

.field mEnableMediacodecSW:Z

.field mEnableTexture:Z

.field mEnableVideoStartTime:Z

.field mFakeFrameView:Lcom/hunantv/media/player/c;

.field mFileStartTimeFloatS:F

.field mForceHttpDns:Z

.field mForceReuseTexture:Z

.field private mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

.field private mInfoStringListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;

.field public mInitRenderViewType:I

.field mIsDrmPrepared:Z

.field mIsSubtitleEnable:Z

.field mJavaDnsEnable:Z

.field mKeyInfoData:[B

.field mKeyInfoRet:I

.field mKeyInfoSet:Z

.field mKeyInfoSetEnable:Z

.field mKeyInfoSetLayer:I

.field mLastMediaMode:I

.field mLeftVolume:F

.field private mLiveLowLatencyEnable:Z

.field mLoopABPlayEnable:Z

.field mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

.field mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

.field mMediacodecRecreateformat:Z

.field mMediacodecRecreateformatOnly4K:Z

.field mMgtvFastMode:I

.field mNetPlayConfig:Lcom/hunantv/media/config/NetPlayConfig;

.field mOnAVPlayListener:Lcom/hunantv/media/widget/IVideoView$OnAVPlayListener;

.field mOnEventInfoListener:Lcom/hunantv/media/widget/IVideoView$OnEventInfoListener;

.field mOnFrameListener:Lcom/hunantv/media/widget/IVideoView$OnFrameListener;

.field mOnInfoStringListener:Lcom/hunantv/media/widget/IVideoView$OnInfoStringListener;

.field mOnProvisionSuccessListener:Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;

.field mOnSubtitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

.field mOnSwitchSmoothSourceListener:Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;

.field private mPlayerEventListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPlayerEventListener;

.field private mPreBufferTimeoutMs:I

.field mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

.field mProxyUri:Landroid/net/Uri;

.field mReadDataSourceTypeConfig:I

.field mReciveDataTimeOut:I

.field mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

.field mRenderViewType:I

.field mReportParams:Lcom/hunantv/media/report/ReportParams;

.field mResizableFrameView:Lcom/hunantv/media/player/l;

.field mRightVolume:F

.field mSeekAutoStartAfterCompleteEnable:Z

.field mSmoothModeOpen:Z

.field mSmoothModeSwitch:Z

.field mSmoothSwitchMode:I

.field private mSubtitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

.field mSubtitleSource:Lcom/hunantv/media/player/subtitle/SubtitleSource;

.field mSubtitleView:Lcom/hunantv/media/widget/extra/SubtitleView;

.field mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

.field mSurfaceKeyGen:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSwitchSmoothSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

.field mVideoIntroduction:Ljava/lang/String;

.field ptsListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;",
            ">;"
        }
    .end annotation
.end field

.field ptsLocker:Ljava/lang/Object;

.field tsFlowTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderViewType:I

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    iput-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mFileStartTimeFloatS:F

    const/4 v3, 0x1

    iput v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDnsFamilyType:I

    iput-boolean v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSetEnable:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSetLayer:I

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    new-instance v4, Lcom/hunantv/media/widget/MgtvAbstractVideoView$1;

    invoke-direct {v4, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$1;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object v4, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnProvisionSuccessListener:Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mForceReuseTexture:Z

    iput-boolean v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAMCKeyFrameBackMode:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableMediacodecSW:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableImgoVsr:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAudioFocusObtained:Z

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMgtvFastMode:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediacodecRecreateformat:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediacodecRecreateformatOnly4K:Z

    iput-boolean v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableDefaultFileStartTime:Z

    new-instance v0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-direct {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;-><init>()V

    const-string v4, "init"

    invoke-virtual {v0, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setVideoFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setFileFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object v0

    const-string v4, "0"

    invoke-virtual {v0, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setBitRate(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSeekAutoStartAfterCompleteEnable:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mJavaDnsEnable:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLastMediaMode:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mBackPlayEnable:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mVideoIntroduction:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLiveLowLatencyEnable:Z

    iput v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLeftVolume:F

    iput v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRightVolume:F

    iput v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReadDataSourceTypeConfig:I

    new-instance v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$2;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$2;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAVPlayListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$3;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$3;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSwitchSmoothSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mInfoStringListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$6;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$6;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    new-instance v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$7;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$7;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPlayerEventListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPlayerEventListener;

    iput v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mInitRenderViewType:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->ptsListeners:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->ptsLocker:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isBackground:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceKeyGen:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isRequestAudioFocus:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->backPlayStartEnable:Z

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderViewType:I

    sget-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    iput-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mFileStartTimeFloatS:F

    const/4 v2, 0x1

    iput v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDnsFamilyType:I

    iput-boolean v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSetEnable:Z

    iput v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSetLayer:I

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    new-instance v3, Lcom/hunantv/media/widget/MgtvAbstractVideoView$1;

    invoke-direct {v3, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$1;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnProvisionSuccessListener:Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mForceReuseTexture:Z

    iput-boolean v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAMCKeyFrameBackMode:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableMediacodecSW:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableImgoVsr:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAudioFocusObtained:Z

    sget-object p2, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMgtvFastMode:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediacodecRecreateformat:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediacodecRecreateformatOnly4K:Z

    iput-boolean v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableDefaultFileStartTime:Z

    new-instance p2, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-direct {p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;-><init>()V

    const-string v3, "init"

    invoke-virtual {p2, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setVideoFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setFileFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object p2

    const-string v3, "0"

    invoke-virtual {p2, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setBitRate(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSeekAutoStartAfterCompleteEnable:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mJavaDnsEnable:Z

    iput v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLastMediaMode:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mBackPlayEnable:Z

    const-string p2, ""

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mVideoIntroduction:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLiveLowLatencyEnable:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLeftVolume:F

    iput v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRightVolume:F

    iput v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReadDataSourceTypeConfig:I

    new-instance p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView$2;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$2;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAVPlayListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView$3;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$3;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSwitchSmoothSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mInfoStringListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView$6;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$6;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    new-instance p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView$7;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$7;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPlayerEventListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPlayerEventListener;

    iput v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mInitRenderViewType:I

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->ptsListeners:Ljava/util/Set;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->ptsLocker:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isBackground:Z

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0xa

    invoke-direct {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceKeyGen:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isRequestAudioFocus:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->backPlayStartEnable:Z

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 p3, 0x0

    iput p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderViewType:I

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mFileStartTimeFloatS:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDnsFamilyType:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSetEnable:Z

    iput p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSetLayer:I

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    new-instance v2, Lcom/hunantv/media/widget/MgtvAbstractVideoView$1;

    invoke-direct {v2, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$1;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnProvisionSuccessListener:Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mForceReuseTexture:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAMCKeyFrameBackMode:I

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableMediacodecSW:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableImgoVsr:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAudioFocusObtained:Z

    sget-object p2, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMgtvFastMode:I

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediacodecRecreateformat:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediacodecRecreateformatOnly4K:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableDefaultFileStartTime:Z

    new-instance p2, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-direct {p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;-><init>()V

    const-string v2, "init"

    invoke-virtual {p2, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setVideoFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setFileFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object p2

    const-string v2, "0"

    invoke-virtual {p2, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setBitRate(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSeekAutoStartAfterCompleteEnable:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mJavaDnsEnable:Z

    iput p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLastMediaMode:I

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mBackPlayEnable:Z

    const-string p2, ""

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mVideoIntroduction:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLiveLowLatencyEnable:Z

    iput v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLeftVolume:F

    iput v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRightVolume:F

    iput p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReadDataSourceTypeConfig:I

    new-instance p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView$2;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$2;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAVPlayListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView$3;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$3;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSwitchSmoothSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mInfoStringListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView$6;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$6;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    new-instance p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView$7;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$7;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPlayerEventListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPlayerEventListener;

    iput p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mInitRenderViewType:I

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->ptsListeners:Ljava/util/Set;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->ptsLocker:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isBackground:Z

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceKeyGen:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isRequestAudioFocus:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->backPlayStartEnable:Z

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hunantv/media/widget/IVideoView$Configuration;)V
    .locals 5

    .line 4
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderViewType:I

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    iput-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mFileStartTimeFloatS:F

    const/4 v3, 0x1

    iput v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDnsFamilyType:I

    iput-boolean v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSetEnable:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSetLayer:I

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    new-instance v4, Lcom/hunantv/media/widget/MgtvAbstractVideoView$1;

    invoke-direct {v4, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$1;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object v4, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnProvisionSuccessListener:Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mForceReuseTexture:Z

    iput-boolean v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAMCKeyFrameBackMode:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableMediacodecSW:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableImgoVsr:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAudioFocusObtained:Z

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMgtvFastMode:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediacodecRecreateformat:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediacodecRecreateformatOnly4K:Z

    iput-boolean v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableDefaultFileStartTime:Z

    new-instance v0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-direct {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;-><init>()V

    const-string v4, "init"

    invoke-virtual {v0, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setVideoFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setFileFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object v0

    const-string v4, "0"

    invoke-virtual {v0, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setBitRate(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSeekAutoStartAfterCompleteEnable:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mJavaDnsEnable:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLastMediaMode:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mBackPlayEnable:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mVideoIntroduction:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLiveLowLatencyEnable:Z

    iput v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLeftVolume:F

    iput v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRightVolume:F

    iput v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReadDataSourceTypeConfig:I

    new-instance v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$2;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$2;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAVPlayListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$3;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$3;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSwitchSmoothSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mInfoStringListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$6;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$6;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    new-instance v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$7;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$7;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPlayerEventListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPlayerEventListener;

    iput v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mInitRenderViewType:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->ptsListeners:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->ptsLocker:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isBackground:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceKeyGen:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isRequestAudioFocus:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->backPlayStartEnable:Z

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->init(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mConfiguration:Lcom/hunantv/media/widget/IVideoView$Configuration;

    if-eqz p2, :cond_0

    iget-boolean p1, p2, Lcom/hunantv/media/widget/IVideoView$Configuration;->forceReuseTexture:Z

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mForceReuseTexture:Z

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDecorateLayout:Landroid/widget/FrameLayout;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/16 v1, 0x11

    invoke-direct {p1, v0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDecorateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDecorateLayout:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setKeyInfoDataInner([B)V
    .locals 2

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setKeyInfoDataInner in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoFileHash()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/hunantv/media/utils/KeyFrameInfoUtils;->isKeyFrameDataValid([BLjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I

    if-nez p1, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSetLayer:I

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoData:[B

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setKeyFrameInfoFileBuf([B)I

    move-result p1

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I

    :cond_1
    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->updateKeyInfoReport()V

    :cond_2
    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setKeyInfoDataInner out"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateKeyInfoReport()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSet:Z

    iput-boolean v1, v0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoSet:Z

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v0

    iget v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I

    iput v1, v0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoRet:I

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSetLayer:I

    iput p0, v0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoSetLayer:I

    :cond_0
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 1

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAudioFocusObtained:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hunantv/media/utils/AudioUtil;->abandonAudioFocus(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAudioFocusObtained:Z

    :cond_0
    return-void
.end method

.method public addDecorateLayout()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDecorateLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/hunantv/media/utils/ViewUtil;->isViewExsit(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDecorateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public addSubtitleView()V
    .locals 2

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mIsSubtitleEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleView:Lcom/hunantv/media/widget/extra/SubtitleView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/hunantv/media/widget/extra/SubtitleView;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hunantv/media/widget/extra/SubtitleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleView:Lcom/hunantv/media/widget/extra/SubtitleView;

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    invoke-static {v1}, Lcom/hunantv/media/a/a;->a(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/hunantv/media/a/a;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleView:Lcom/hunantv/media/widget/extra/SubtitleView;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/widget/extra/SubtitleView;->setStyle(Lcom/hunantv/media/a/a;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleView:Lcom/hunantv/media/widget/extra/SubtitleView;

    invoke-virtual {v0}, Lcom/hunantv/media/widget/extra/SubtitleView;->setUserDefaultTextSize()V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleView:Lcom/hunantv/media/widget/extra/SubtitleView;

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mIsSubtitleEnable:Z

    invoke-virtual {v0, v1}, Lcom/hunantv/media/widget/extra/SubtitleView;->setVisible(Z)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDecorateLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleView:Lcom/hunantv/media/widget/extra/SubtitleView;

    invoke-static {v0, v1}, Lcom/hunantv/media/utils/ViewUtil;->isViewExsit(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDecorateLayout:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleView:Lcom/hunantv/media/widget/extra/SubtitleView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public addVideoPTSListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;)V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->ptsLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->ptsListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->addVideoPTSListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public afterRelease()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDebugPanel:Lcom/hunantv/media/widget/debug/DebugPanel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->release()V

    :cond_0
    return-void
.end method

.method public beforeOpenVideo()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mVideoIntroduction:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "FFF2[0-9]222"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getSvds()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getSvds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iget v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderViewType:I

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "beforeOpenVideo check the source is HDR. try to change to surfaceview"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->toggleRenders(I)V

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    iget v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mInitRenderViewType:I

    if-eq v0, v1, :cond_4

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beforeOpenVideo check the source is not HDR. recovery renderview to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mInitRenderViewType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mInitRenderViewType:I

    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->toggleRenders(I)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_6

    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderViewType:I

    if-ne p0, v3, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v0, v2}, Lcom/hunantv/media/report/ReportParams;->setRenvtp(I)Lcom/hunantv/media/report/ReportParams;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_4
    return-void
.end method

.method public bindDrmSession(Lcom/hunantv/media/drm/IDrmSession;)V
    .locals 1

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDrmSession:Lcom/hunantv/media/drm/IDrmSession;

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->bindDrmSession(Lcom/hunantv/media/drm/IDrmSession;)V

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDrmSession:Lcom/hunantv/media/drm/IDrmSession;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/hunantv/media/drm/IDrmSession;->getCurrentStatus()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mIsDrmPrepared:Z

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDrmSession:Lcom/hunantv/media/drm/IDrmSession;

    invoke-interface {p1}, Lcom/hunantv/media/drm/IDrmSession;->setDrmLicensePrepared()V

    :cond_1
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDrmSession:Lcom/hunantv/media/drm/IDrmSession;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnProvisionSuccessListener:Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;

    invoke-interface {p1, p0}, Lcom/hunantv/media/drm/IDrmSession;->addOnProvisionSuccessListener(Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;)V

    :cond_2
    return-void
.end method

.method public configAudioImgoPlayer()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPreBufferTimeoutMs:I

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPreBufferTimeoutMs(I)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPrepared4StartMode(Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mForceHttpDns:Z

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setForceHttpDns(Z)Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDnsFamilyType:I

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDnsFamilyType(I)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mNetPlayConfig:Lcom/hunantv/media/config/NetPlayConfig;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setNetPlayConfig(Lcom/hunantv/media/config/NetPlayConfig;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMgtvFastMode:I

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setMgtvFastMode(I)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSourceInfo(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)V

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLoopABPlayEnable:Z

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mABRegion:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;

    invoke-virtual {p0, v0, v1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setLoopABPlay(ZLcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;)Z

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->tsFlowTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setTsFlowTag(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isBackground:Z

    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setBackground(Z)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAudioEffectConfig:[B

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setWanosAudioEffectConfig([B)I

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDrmInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDrmInfoList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableFramePTSNotify:Z

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->enableFramePTSNotify(Z)V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configImgoPlayer -mPrepared4StartMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-mForceHttpDns:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mForceHttpDns:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-mEnableVideoStartTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableVideoStartTime:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-mDnsFamilyType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDnsFamilyType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-mAMCKeyFrameBackMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAMCKeyFrameBackMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-mFileStartTimeFloatS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mFileStartTimeFloatS:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "-mMgtvFastMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMgtvFastMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-mDataSourceInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-mPreBufferTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPreBufferTimeoutMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-isBackground:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isBackground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-mEnableFramePTSNotify:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableFramePTSNotify:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public configImgoPlayer()V
    .locals 4

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isReuseTextureDisable()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAMCKeyFrameBackMode:I

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_d

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPreBufferTimeoutMs:I

    invoke-virtual {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPreBufferTimeoutMs(I)V

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mIsSubtitleEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleSource:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleView:Lcom/hunantv/media/widget/extra/SubtitleView;

    invoke-virtual {v2, v3, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->addSubtitleSource(Lcom/hunantv/media/player/subtitle/d$c;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleSource:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    invoke-interface {v0, v2}, Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;->onError(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    invoke-virtual {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPrepared4StartMode(Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_LOADDATA_DISAV:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDisableAVDecoderStart(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDisableAVDecoderStart(Z)V

    :goto_1
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mForceHttpDns:Z

    invoke-virtual {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setForceHttpDns(Z)Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableVideoStartTime:Z

    invoke-virtual {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setEnableVideoStartTime(Z)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDnsFamilyType:I

    invoke-virtual {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDnsFamilyType(I)V

    iget v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAMCKeyFrameBackMode:I

    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setAMCKeyFrameBackMode(I)V

    :cond_3
    sget-boolean v0, Lcom/hunantv/media/global/Constants;->FOR_OTT:Z

    if-nez v0, :cond_8

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->isCodecSWRenderOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v2, Lcom/hunantv/media/report/ReportParams$VideoType;->IMMERSIVE:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v2, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne v0, v2, :cond_6

    :cond_4
    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->isOppoSrOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hunantv/media/report/c/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hunantv/media/report/c/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    iput-boolean v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableMediacodecSW:Z

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v2, Lcom/hunantv/media/report/ReportParams$VideoType;->TRY_WATCHING:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getPlayPreviewType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getPlayPreviewType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getPlayPreviewType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const v2, 0x782a0cca

    invoke-virtual {v0, v2, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setConfig(II)V

    :cond_8
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableMediacodecSW:Z

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setEnableMediacodecSWRender(Z)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->isCodecSWRenderMark()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setMarkMediacodecSWRender(Z)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableImgoVsr:Z

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setEnableImgoVsr(Z)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mNetPlayConfig:Lcom/hunantv/media/config/NetPlayConfig;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setNetPlayConfig(Lcom/hunantv/media/config/NetPlayConfig;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMgtvFastMode:I

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setMgtvFastMode(I)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediacodecRecreateformat:Z

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediacodecRecreateformatOnly4K:Z

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setMediacodecRecreateformat(ZZ)V

    iget v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mFileStartTimeFloatS:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableDefaultFileStartTime:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    if-eqz v0, :cond_a

    const-string v1, "h265"

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->getVideoFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x3da3d70a    # 0.08f

    :goto_3
    iput v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mFileStartTimeFloatS:F

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->getVideoFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "h264"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x3fbd70a4    # 1.48f

    goto :goto_3

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mFileStartTimeFloatS:F

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlayerFileStartTimeFloatS(F)V

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSet:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoData:[B

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setKeyInfoDataInner([B)V

    :cond_b
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSourceInfo(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDrmSession:Lcom/hunantv/media/drm/IDrmSession;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->bindDrmSession(Lcom/hunantv/media/drm/IDrmSession;)V

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mIsDrmPrepared:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDrmSession:Lcom/hunantv/media/drm/IDrmSession;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/hunantv/media/drm/IDrmSession;->setDrmLicensePrepared()V

    :cond_c
    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLoopABPlayEnable:Z

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mABRegion:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;

    invoke-virtual {p0, v0, v1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setLoopABPlay(ZLcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;)Z

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSeekAutoStartAfterCompleteEnable:Z

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSeekAutoStartAfterComplete(Z)V

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLiveLowLatencyEnable:Z

    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->enableLiveLowLatency(Z)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->tsFlowTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setTsFlowTag(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isBackground:Z

    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setBackground(Z)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAudioEffectConfig:[B

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setWanosAudioEffectConfig([B)I

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDrmInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDrmInfoList(Ljava/util/List;)V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configImgoPlayer -mPrepared4StartMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-mForceHttpDns:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mForceHttpDns:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-mEnableVideoStartTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableVideoStartTime:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-mDnsFamilyType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDnsFamilyType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-mAMCKeyFrameBackMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAMCKeyFrameBackMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-mFileStartTimeFloatS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mFileStartTimeFloatS:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "-mMgtvFastMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMgtvFastMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-mMediacodecRecreateformat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediacodecRecreateformat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-mMediacodecRecreateformatOnly4K:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediacodecRecreateformatOnly4K:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-mDataSourceInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-mPreBufferTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPreBufferTimeoutMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-mLiveLowlantacyEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLiveLowLatencyEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-tsFlowTag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->tsFlowTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-isBackground:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isBackground:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public configLoadMaxRetryTime(I)V
    .locals 0

    return-void
.end method

.method public configTsNotSkip(Z)V
    .locals 0

    return-void
.end method

.method public configWeakNetSpeed(I)V
    .locals 0

    return-void
.end method

.method public defaultNetAddr()V
    .locals 0

    return-void
.end method

.method public enableFramePTSNotify(Z)V
    .locals 3

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableFramePTSNotify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableFramePTSNotify:Z

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->enableFramePTSNotify(Z)V

    :cond_0
    return-void
.end method

.method public enableImgoAIQE(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->enableImgoAIQE(Z)V

    :cond_0
    return-void
.end method

.method public enableImgoVSR(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->enableImgoVSR(Z)V

    :cond_0
    return-void
.end method

.method public enableLiveLowLatency(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLiveLowLatencyEnable:Z

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->enableLiveLowLatency(Z)V

    :cond_0
    return-void
.end method

.method public enableMediaCodecSW(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableMediacodecSW:Z

    return-void
.end method

.method public enableOppoFunc(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->enableOppoFunc(IZ)V

    :cond_0
    return-void
.end method

.method public enableSubtitle(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mIsSubtitleEnable:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->addSubtitleView()V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDecorateLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->removeSubtitleSource()V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->removeSubtitleView()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleView:Lcom/hunantv/media/widget/extra/SubtitleView;

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mIsSubtitleEnable:Z

    invoke-virtual {p1, p0}, Lcom/hunantv/media/widget/extra/SubtitleView;->setVisible(Z)V

    :cond_2
    return-void
.end method

.method public getABRegion()Lcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mABRegion:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;

    return-object p0
.end method

.method public getAMCKeyFrameBackMode()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAMCKeyFrameBackMode:I

    return p0
.end method

.method public getBindDrmSession()Lcom/hunantv/media/drm/IDrmSession;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDrmSession:Lcom/hunantv/media/drm/IDrmSession;

    return-object p0
.end method

.method public getBufferedPositionMs()J
    .locals 2

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getBufferedPositionMs()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getDataSourceType()Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    return-object p0
.end method

.method public getDisplayFloatRect()Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDisplayFloatRect:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    return-object p0
.end method

.method public getDnsFamilyType()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDnsFamilyType:I

    return p0
.end method

.method public getFileStartTimeFloatS()F
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getFileStartTimeFloatS()F

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mFileStartTimeFloatS:F

    return p0
.end method

.method public getKeyInfoData()[B
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoData:[B

    return-object p0
.end method

.method public getLastIP()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastIP()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLeftVolume()F
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLeftVolume:F

    return p0
.end method

.method public getMediaPlayer()Lcom/hunantv/media/player/MgtvMediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    return-object p0
.end method

.method public getMemoryPlayType()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getMemoryPlayType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMgtvFastMode()I
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getMgtvFastMode()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMgtvFastMode:I

    return p0
.end method

.method public getPrepared4StartMode()Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    return-object p0
.end method

.method public getPropertyLong(IJ)J
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPropertyLong(IJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public getReadDataSourceType()I
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getReadDataSourceType()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReadDataSourceTypeConfig:I

    return p0
.end method

.method public getRenderViewSize()Lcom/hunantv/media/widget/IVideoView$Size;
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDisplayFloatRect:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mResizableFrameView:Lcom/hunantv/media/player/l;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hunantv/media/widget/IVideoView$Size;

    invoke-direct {v0}, Lcom/hunantv/media/widget/IVideoView$Size;-><init>()V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mResizableFrameView:Lcom/hunantv/media/player/l;

    invoke-virtual {v1}, Lcom/hunantv/media/player/l;->getCenterDisplayW()I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/widget/IVideoView$Size;->width:I

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mResizableFrameView:Lcom/hunantv/media/player/l;

    invoke-virtual {p0}, Lcom/hunantv/media/player/l;->getCenterDisplayH()I

    move-result p0

    iput p0, v0, Lcom/hunantv/media/widget/IVideoView$Size;->height:I

    return-object v0

    :cond_0
    new-instance v0, Lcom/hunantv/media/widget/IVideoView$Size;

    invoke-direct {v0}, Lcom/hunantv/media/widget/IVideoView$Size;-><init>()V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/widget/IVideoView$Size;->width:I

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iput p0, v0, Lcom/hunantv/media/widget/IVideoView$Size;->height:I

    :cond_1
    return-object v0
.end method

.method public getReportParams()Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    return-object p0
.end method

.method public getRightVolume()F
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRightVolume:F

    return p0
.end method

.method public getSubtitleSource()Lcom/hunantv/media/player/subtitle/SubtitleSource;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleSource:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    return-object p0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoProxyPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWanosAudioEffectChoice()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getWanosAudioEffectChoice()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initListener(Lcom/hunantv/media/player/MgtvMediaPlayer;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->clearVideoPTSListener()V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->ptsListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;

    invoke-virtual {p1, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->addVideoPTSListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSubtitleCallback(Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnFrameListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAVPlayListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnAVPlayListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSwitchSmoothSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnSwitchSmoothSourceListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mInfoStringListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnInfoStringListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;)V

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPlayerEventListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPlayerEventListener;

    invoke-virtual {p1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnPlayerEventListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnPlayerEventListener;)V

    :cond_1
    return-void
.end method

.method public isAntiViewShake()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAntiViewShake:Z

    return p0
.end method

.method public isBackPlayEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mBackPlayEnable:Z

    return p0
.end method

.method public isBackground()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isBackground:Z

    return p0
.end method

.method public isForceHttpDns()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mForceHttpDns:Z

    return p0
.end method

.method public isKeyInfoDataSet()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSet:Z

    return p0
.end method

.method public isMediaCodecSWEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableMediacodecSW:Z

    return p0
.end method

.method public isOnlyAudioMode()Z
    .locals 1

    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLastMediaMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReuseTextureDisable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mForceReuseTexture:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSmoothSwitchOpen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSmoothModeOpen:Z

    return p0
.end method

.method public isSupportAMCKeyFrameBackup()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isSupportAMCKeyFrameBackup()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isWanosAudioEffectValid()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isWanosAudioEffectValid()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onVideoRenderStart()V
    .locals 0

    return-void
.end method

.method public openImgoDSModule(Z)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public releaseNoStatus()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->release()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/global/PlayerReferenceObserver;->remove(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    :cond_0
    return-void
.end method

.method public removeDecorateLayout()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDecorateLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/hunantv/media/utils/ViewUtil;->isViewExsit(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDecorateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeSubtitleSource()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->removeSubtitleSources()V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleSource:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleSource:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    :cond_1
    return-void
.end method

.method public removeSubtitleView()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDecorateLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleView:Lcom/hunantv/media/widget/extra/SubtitleView;

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lcom/hunantv/media/utils/ViewUtil;->isViewExsit(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDecorateLayout:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleView:Lcom/hunantv/media/widget/extra/SubtitleView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeVideoPTSListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;)V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->ptsLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->ptsListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->removeVideoPTSListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestAudioFocus()V
    .locals 1

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAudioFocusObtained:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hunantv/media/utils/AudioUtil;->requestAudioFocus(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAudioFocusObtained:Z

    :cond_0
    return-void
.end method

.method public resetDataAfter(Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;)V
    .locals 2

    sget-object v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->OUT:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSet:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoData:[B

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSetLayer:I

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams$KeyInfo;->reset()V

    :cond_0
    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mIsDrmPrepared:Z

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDrmSession:Lcom/hunantv/media/drm/IDrmSession;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnProvisionSuccessListener:Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;

    invoke-interface {p1, v1}, Lcom/hunantv/media/drm/IDrmSession;->removeOnProvisionSuccessListener(Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDrmSession:Lcom/hunantv/media/drm/IDrmSession;

    :cond_1
    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDrmInfoList:Ljava/util/List;

    :cond_2
    return-void
.end method

.method public resetDataBefore(Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleView:Lcom/hunantv/media/widget/extra/SubtitleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/widget/extra/SubtitleView;->clear()V

    :cond_0
    sget-object v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->OUT:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    if-ne p1, v0, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mFileStartTimeFloatS:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSmoothModeOpen:Z

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->removeSubtitleSource()V

    :cond_1
    return-void
.end method

.method public setAMCKeyFrameBackMode(I)V
    .locals 0

    return-void
.end method

.method public setAccurateSeekEnable(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setAntiViewShake(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAntiViewShake:Z

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvRenderView;->setAntiShake(Z)V

    :cond_0
    return-void
.end method

.method public setBackPlayEnable(Z)V
    .locals 3

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackPlayEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mBackPlayEnable:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isLoadDataPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->resumeLoadData()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setBackPlayEnable:resumeLoadData"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBackPlayStartEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->backPlayStartEnable:Z

    return-void
.end method

.method public setBackground(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isBackground:Z

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackground "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",threadId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setBackground(Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isLoadDataPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->resumeLoadData()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setBackPlayEnable:resumeLoadData"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBufferTimeout(I)V
    .locals 0

    return-void
.end method

.method public setConnectTimeOut(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mConnectTimeOut:I

    return-void
.end method

.method public setDataSourceInfo(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSourceInfo(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)V

    :cond_0
    return-void
.end method

.method public setDisableAudioFocus(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isRequestAudioFocus:Z

    return-void
.end method

.method public setDisplayFloatRect(Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;)V
    .locals 3

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayFloatRect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDisplayFloatRect:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->isRendered()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDisplayFloatRect:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    invoke-virtual {p1, p0}, Lcom/hunantv/media/player/MgtvRenderView;->setDisplayFloatRect(Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;)V

    :cond_0
    return-void
.end method

.method public setDnsFamilyType(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDnsFamilyType:I

    return-void
.end method

.method public setDrmInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDrmInfoList:Ljava/util/List;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDrmInfoList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setDrmLicensePrepared()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mIsDrmPrepared:Z

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDrmLicensePrepared()V

    :cond_0
    return-void
.end method

.method public setEnableVideoStartTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableVideoStartTime:Z

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setEnableVideoStartTime(Z)V

    :cond_0
    return-void
.end method

.method public setEnableWanosAudioEffect(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setEnableWanosAudioEffect(Z)V

    :cond_0
    return-void
.end method

.method public setFileStartTimeFloatS(F)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mFileStartTimeFloatS:F

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlayerFileStartTimeFloatS(F)V

    :cond_0
    return-void
.end method

.method public setForceHttpDns(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mForceHttpDns:Z

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setForceHttpDns(Z)Lcom/hunantv/media/player/MgtvMediaPlayer;

    :cond_0
    return-void
.end method

.method public setKeyInfoData(Ljava/lang/String;)I
    .locals 6

    .line 1
    const-string v0, "setKeyInfoData(String fileStr) out."

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setKeyInfoData(String fileStr) in"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSetEnable:Z

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSet:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSetLayer:I

    invoke-static {p1}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p1, -0x15

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I

    return p1

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, -0x16

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_3

    const/16 p1, -0x17

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_3
    :try_start_2
    invoke-static {v1}, Lcom/hunantv/media/utils/FileUtil;->readFile(Ljava/io/File;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setKeyInfoData([B)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 p1, -0x14

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :goto_1
    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public setKeyInfoData([B)I
    .locals 3

    .line 2
    const-string v0, "setKeyInfoData(byte[] data) out. mKeyInfoRet:"

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setKeyInfoData(byte[] data) in"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSetEnable:Z

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoData:[B

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSet:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSetLayer:I

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setKeyInfoDataInner([B)V

    iget p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_1
    iget p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public setKeyInfoData([BII)I
    .locals 4

    .line 3
    const-string v0, "setKeyInfoData(byte[] data) out. mKeyInfoRet:"

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyInfoData(byte[] data) vid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " def:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSetEnable:Z

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoData:[B

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSet:Z

    iput p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSetLayer:I

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setKeyInfoDataInner([B)V

    iget p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_1
    iget p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoRet:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public setLastMediaMode(I)V
    .locals 3

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastMediaMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLastMediaMode:I

    return-void
.end method

.method public setLoopABPlay(ZLcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;)Z
    .locals 11

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoopABPlay in enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget v1, p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;->bPosMs:I

    iget v2, p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;->aPosMs:I

    if-gt v1, v2, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setLoopABPlay error b <= a"

    :goto_0
    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLoopABPlayEnable:Z

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mABRegion:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;

    if-eqz p2, :cond_1

    iget v1, p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;->aPosMs:I

    int-to-long v1, v1

    iget p2, p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;->bPosMs:I

    int-to-long v3, p2

    move-wide v9, v3

    goto :goto_1

    :cond_1
    const-wide/16 v1, -0x1

    move-wide v9, v1

    :goto_1
    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v3, :cond_2

    move v4, p1

    move-wide v5, v1

    move-wide v7, v9

    invoke-virtual/range {v3 .. v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setLoopABPlay(ZJJ)V

    if-eqz p1, :cond_2

    const-wide/16 p1, 0x0

    cmp-long v1, v1, p1

    if-ltz v1, :cond_2

    cmp-long p1, v9, p1

    if-ltz p1, :cond_2

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->start()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setLoopABPlay out success"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setLoopABPlay out failed"

    goto :goto_0
.end method

.method public setLoopSeekPlay(ZI)V
    .locals 3

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoopSeekPlay enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",loop_step_s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setLoopSeekPlay(ZI)V

    :cond_0
    return-void
.end method

.method public setMediacodecRecreateformat(ZZ)V
    .locals 3

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMediacodecRecreateformat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",only_4k:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediacodecRecreateformat:Z

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediacodecRecreateformatOnly4K:Z

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setMediacodecRecreateformat(ZZ)V

    :cond_0
    return-void
.end method

.method public setMgtvFastMode(I)V
    .locals 3

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMgtvFastMode mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMgtvFastMode:I

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setMgtvFastMode(I)V

    :cond_0
    return-void
.end method

.method public setNETIsBroken(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setNETIsBroken(Z)V

    :cond_0
    return-void
.end method

.method public setNetAddrinfo(Ljava/lang/String;IZ)V
    .locals 3

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNetAddrinfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",timeout:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",enablePreDns:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->defaultNetAddr()V

    if-lez p2, :cond_0

    mul-int/lit16 p2, p2, 0x3e8

    iput p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAddrInfoTimeoutMs:I

    :cond_0
    return-void
.end method

.method public setNetPlayConfig(Lcom/hunantv/media/config/NetPlayConfig;)V
    .locals 5

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mNetPlayConfig:Lcom/hunantv/media/config/NetPlayConfig;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNetPlayConfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_10

    iget v0, p1, Lcom/hunantv/media/config/NetPlayConfig;->is_soft:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p0, v0}, Lcom/hunantv/media/widget/IVideoView;->setPlayerHardwareMode(Z)V

    :cond_1
    iget v0, p1, Lcom/hunantv/media/config/NetPlayConfig;->accurate_seek:I

    if-ltz v0, :cond_3

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setAccurateSeekEnable(Z)V

    :cond_3
    iget v0, p1, Lcom/hunantv/media/config/NetPlayConfig;->ts_not_skip:I

    if-ltz v0, :cond_5

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->configTsNotSkip(Z)V

    :cond_5
    iget v0, p1, Lcom/hunantv/media/config/NetPlayConfig;->load_retry_time:I

    if-ltz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->configLoadMaxRetryTime(I)V

    :cond_6
    iget v0, p1, Lcom/hunantv/media/config/NetPlayConfig;->weak_net_speed:I

    if-ltz v0, :cond_7

    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->configWeakNetSpeed(I)V

    :cond_7
    iget v0, p1, Lcom/hunantv/media/config/NetPlayConfig;->open_timeout:I

    mul-int/lit16 v0, v0, 0x3e8

    iget v3, p1, Lcom/hunantv/media/config/NetPlayConfig;->rw_timeout:I

    mul-int/lit16 v3, v3, 0x3e8

    iget v4, p1, Lcom/hunantv/media/config/NetPlayConfig;->buffer_timeout:I

    mul-int/lit16 v4, v4, 0x3e8

    if-lez v0, :cond_8

    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setConnectTimeOut(I)V

    :cond_8
    if-lez v3, :cond_9

    invoke-virtual {p0, v3}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setReciveDataTimeOut(I)V

    :cond_9
    if-lez v4, :cond_a

    invoke-virtual {p0, v4}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setBufferTimeout(I)V

    :cond_a
    iget v0, p1, Lcom/hunantv/media/config/NetPlayConfig;->datasource_async:I

    if-ltz v0, :cond_c

    if-ne v0, v2, :cond_b

    move v0, v2

    goto :goto_3

    :cond_b
    move v0, v1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->openImgoDSModule(Z)V

    :cond_c
    invoke-virtual {p1}, Lcom/hunantv/media/config/NetPlayConfig;->getAddrinfo_type()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/hunantv/media/config/NetPlayConfig;->getAddrinfo_type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hunantv/media/config/NetPlayConfig;->getAddrinfo_timeout()I

    move-result v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setNetAddrinfo(Ljava/lang/String;IZ)V

    :cond_d
    iget v0, p1, Lcom/hunantv/media/config/NetPlayConfig;->dns_family_type:I

    if-eqz v0, :cond_e

    if-ne v0, v2, :cond_10

    :cond_e
    if-nez v0, :cond_f

    move v1, v2

    :cond_f
    invoke-virtual {p0, v1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setDnsFamilyType(I)V

    :cond_10
    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setNetPlayConfig(Lcom/hunantv/media/config/NetPlayConfig;)V

    :cond_11
    return-void
.end method

.method public setOnAVPlayListener(Lcom/hunantv/media/widget/IVideoView$OnAVPlayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnAVPlayListener:Lcom/hunantv/media/widget/IVideoView$OnAVPlayListener;

    return-void
.end method

.method public setOnEventInfoListener(Lcom/hunantv/media/widget/IVideoView$OnEventInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnEventInfoListener:Lcom/hunantv/media/widget/IVideoView$OnEventInfoListener;

    return-void
.end method

.method public setOnFrameListener(Lcom/hunantv/media/widget/IVideoView$OnFrameListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnFrameListener:Lcom/hunantv/media/widget/IVideoView$OnFrameListener;

    return-void
.end method

.method public setOnInfoStringListener(Lcom/hunantv/media/widget/IVideoView$OnInfoStringListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnInfoStringListener:Lcom/hunantv/media/widget/IVideoView$OnInfoStringListener;

    return-void
.end method

.method public setOnSwitchSmoothSourceListener(Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnSwitchSmoothSourceListener:Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;

    return-void
.end method

.method public setPreBufferTimeoutMs(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPreBufferTimeoutMs:I

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPreBufferTimeoutMs(I)V

    :cond_0
    return-void
.end method

.method public setPrepared4StartMode(Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPrepared4StartMode(Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;)V

    :cond_0
    return-void
.end method

.method public setReadDataSourceType(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReadDataSourceTypeConfig:I

    return-void
.end method

.method public setReciveDataTimeOut(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReciveDataTimeOut:I

    return-void
.end method

.method public setSeekAutoStartAfterComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSeekAutoStartAfterCompleteEnable:Z

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSeekAutoStartAfterComplete(Z)V

    :cond_0
    return-void
.end method

.method public setSmoothKeyFrameInfo([BLjava/lang/String;Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSmoothKeyFrameInfo([BLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public setSmoothSwitchMode(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSmoothSwitchMode:I

    return-void
.end method

.method public setSubtitleCallback(Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnSubtitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    return-void
.end method

.method public setSubtitleConfig(Lcom/hunantv/media/player/subtitle/SubtitleConfig;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleView:Lcom/hunantv/media/widget/extra/SubtitleView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/widget/extra/SubtitleView;->setSubtitleConfig(Lcom/hunantv/media/player/subtitle/SubtitleConfig;)V

    :cond_0
    return-void
.end method

.method public setSubtitleSource(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    .locals 2

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mIsSubtitleEnable:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleSource:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    invoke-virtual {p1}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->getErrorResult()Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;->setCode(I)Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleSource:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    invoke-interface {p1, p0}, Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;->onError(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->removeSubtitleSource()V

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleSource:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleView:Lcom/hunantv/media/widget/extra/SubtitleView;

    invoke-virtual {v0, v1, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->addSubtitleSource(Lcom/hunantv/media/player/subtitle/d$c;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSubtitleSource:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    invoke-interface {p1, p0}, Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;->onError(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTimeout(II)V
    .locals 0

    return-void
.end method

.method public setTsFlowTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->tsFlowTag:Ljava/lang/String;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setTsFlowTag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVideoDataSource(Lcom/hunantv/media/player/MgtvPlayerDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSource:Lcom/hunantv/media/player/MgtvPlayerDataSource;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setReadDataSourceType(I)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSource:Lcom/hunantv/media/player/MgtvPlayerDataSource;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvPlayerDataSource;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoFrameClockNotifyMs(I)V
    .locals 3

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoFrameClockNotifyMs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setVideoFrameClockNotifyMs(I)V

    :cond_0
    return-void
.end method

.method public setVideoFrameClockNotifyPts(JJ)V
    .locals 3

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoFrameClockNotify clockTimeStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",clockTimeEnd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setVideoFrameClockNotifyPts(JJ)V

    :cond_0
    return-void
.end method

.method public setVideoIntroduction(Ljava/lang/String;)V
    .locals 3

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoIntroduction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mVideoIntroduction:Ljava/lang/String;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/report/ReportParams;->setSvds(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLeftVolume:F

    iput p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRightVolume:F

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public setWanosAudioEffectChoice(I)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setWanosAudioEffectChoice(I)V

    :cond_0
    return-void
.end method

.method public setWanosAudioEffectConfig([B)I
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAudioEffectConfig:[B

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setWanosAudioEffectConfig([B)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, -0x3e7

    return p0
.end method

.method public showDebugPanel(Z)Lcom/hunantv/media/widget/debug/DebugPanel;
    .locals 2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDebugPanel:Lcom/hunantv/media/widget/debug/DebugPanel;

    if-nez p1, :cond_0

    new-instance p1, Lcom/hunantv/media/widget/debug/DebugPanel;

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/hunantv/media/widget/debug/DebugPanel;-><init>(Landroid/content/Context;Lcom/hunantv/media/widget/IVideoView;)V

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDebugPanel:Lcom/hunantv/media/widget/debug/DebugPanel;

    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDebugPanel:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p0, v0, p1}, Lcom/hunantv/media/utils/ViewUtil;->addView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDebugPanel:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p0, p1}, Lcom/hunantv/media/utils/ViewUtil;->removeView(Landroid/view/ViewGroup;Landroid/view/View;)V

    :goto_0
    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDebugPanel:Lcom/hunantv/media/widget/debug/DebugPanel;

    return-object p0
.end method

.method public startAVDecoder()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->startAVDecoder()V

    :cond_0
    return-void
.end method

.method public stepPlaybackNextFrame()V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlaybackStep(I)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->stopInner()V

    return-void
.end method

.method public stopInner()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stop()V

    :cond_0
    return-void
.end method

.method public support3X()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->supportMaxSpeed()F

    move-result p0

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportImgoAIQE(Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;)Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->supportImgoAIQE(Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportMaxSpeed()F
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isOnlyAudioMode()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->supportMaxSpeed(Z)F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    :goto_0
    return p0
.end method

.method public switchSmoothSource(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getSwitchMod()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setLastMediaMode(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setLastMediaMode(I)V

    :goto_0
    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->switchSmoothSource(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)V

    :cond_1
    return-void
.end method

.method public toggleRenders(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderViewType:I

    return-void
.end method
