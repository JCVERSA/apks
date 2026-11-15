.class public abstract Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$ReleaseReason;
    }
.end annotation


# static fields
.field public static final INVALID_FILE_START_TIME_VALUE:I = -0x1

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_ONLY_AUDIO:I = 0x1

.field static sAutoNativeStack:Z = true


# instance fields
.field public isBackground:Z

.field isRequestAudioFocus:Z

.field mABRegion:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;

.field mAMCKeyFrameBackMode:I

.field private mAVPlayListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;

.field mAddrInfoTimeoutMs:I

.field mAntiViewShake:Z

.field volatile mAudioFocusObtained:Z

.field mBackPlayEnable:Z

.field mConfiguration:Lcom/hunantv/media/widget/IVideoView$Configuration;

.field mConnectTimeOut:I

.field mContext:Landroid/content/Context;

.field mCurrentUri:Landroid/net/Uri;

.field mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

.field mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

.field mDebugPanel:Lcom/hunantv/media/widget/debug/DebugPanel;

.field mDisplayFloatRect:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

.field mDnsFamilyType:I

.field mDrmSession:Lcom/hunantv/media/drm/IDrmSession;

.field mEnableDefaultFileStartTime:Z

.field mEnableMediacodecSW:Z

.field mEnableTexture:Z

.field mEnableVideoStartTime:Z

.field mFakeFrameView:Lcom/hunantv/media/player/c;

.field mFileStartTimeFloatS:F

.field mForceHttpDns:Z

.field mForceReuseTexture:Z

.field private mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

.field mGLView:Lcom/hunantv/media/alpha/IAlphaRenderView;

.field mIsDrmPrepared:Z

.field mJavaDnsEnable:Z

.field mKeyInfoData:[B

.field mKeyInfoRet:I

.field mKeyInfoSet:Z

.field mKeyInfoSetEnable:Z

.field mKeyInfoSetLayer:I

.field mLastMediaMode:I

.field private mLiveLowLatencyEnable:Z

.field mLoopABPlayEnable:Z

.field mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

.field mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

.field mMediacodecRecreateformat:Z

.field mMediacodecRecreateformatOnly4K:Z

.field mMgtvFastMode:I

.field mNetPlayConfig:Lcom/hunantv/media/config/NetPlayConfig;

.field mOnAVPlayListener:Lcom/hunantv/media/widget/IVideoView$OnAVPlayListener;

.field mOnFrameListener:Lcom/hunantv/media/widget/IVideoView$OnFrameListener;

.field mOnProvisionSuccessListener:Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;

.field mOnSwitchSmoothSourceListener:Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;

.field private mPreBufferTimeoutMs:I

.field mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

.field mProxyUri:Landroid/net/Uri;

.field mReciveDataTimeOut:I

.field mReportParams:Lcom/hunantv/media/report/ReportParams;

.field mResizableFrameView:Lcom/hunantv/media/player/l;

.field mSeekAutoStartAfterCompleteEnable:Z

.field mSmoothModeOpen:Z

.field mSmoothModeSwitch:Z

.field mSmoothSwitchMode:I

.field private mSwitchSmoothSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

.field private mVideoIntroduction:Ljava/lang/String;

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
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    iput-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mFileStartTimeFloatS:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDnsFamilyType:I

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSetEnable:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSetLayer:I

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    new-instance p1, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$1;

    invoke-direct {p1, p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$1;-><init>(Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mOnProvisionSuccessListener:Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mForceReuseTexture:Z

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableTexture:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAMCKeyFrameBackMode:I

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableMediacodecSW:Z

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAudioFocusObtained:Z

    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMgtvFastMode:I

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediacodecRecreateformat:Z

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediacodecRecreateformatOnly4K:Z

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableDefaultFileStartTime:Z

    new-instance p1, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-direct {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;-><init>()V

    const-string v2, "init"

    invoke-virtual {p1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setVideoFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setFileFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object p1

    const-string v2, "0"

    invoke-virtual {p1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setBitRate(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mSeekAutoStartAfterCompleteEnable:Z

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mJavaDnsEnable:Z

    iput v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mLastMediaMode:I

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mBackPlayEnable:Z

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->isRequestAudioFocus:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mVideoIntroduction:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mLiveLowLatencyEnable:Z

    new-instance p1, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$2;

    invoke-direct {p1, p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$2;-><init>(Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAVPlayListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;

    new-instance p1, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$3;

    invoke-direct {p1, p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$3;-><init>(Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    new-instance p1, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$4;

    invoke-direct {p1, p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$4;-><init>(Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mSwitchSmoothSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->ptsListeners:Ljava/util/Set;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->ptsLocker:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->isBackground:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    sget-object p2, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    iput-object p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mFileStartTimeFloatS:F

    const/4 p2, 0x1

    iput p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDnsFamilyType:I

    iput-boolean p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSetEnable:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSetLayer:I

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    new-instance p1, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$1;

    invoke-direct {p1, p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$1;-><init>(Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mOnProvisionSuccessListener:Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mForceReuseTexture:Z

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableTexture:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAMCKeyFrameBackMode:I

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableMediacodecSW:Z

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAudioFocusObtained:Z

    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMgtvFastMode:I

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediacodecRecreateformat:Z

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediacodecRecreateformatOnly4K:Z

    iput-boolean p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableDefaultFileStartTime:Z

    new-instance p1, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-direct {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;-><init>()V

    const-string v1, "init"

    invoke-virtual {p1, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setVideoFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setFileFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object p1

    const-string v1, "0"

    invoke-virtual {p1, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setBitRate(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mSeekAutoStartAfterCompleteEnable:Z

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mJavaDnsEnable:Z

    iput v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mLastMediaMode:I

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mBackPlayEnable:Z

    iput-boolean p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->isRequestAudioFocus:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mVideoIntroduction:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mLiveLowLatencyEnable:Z

    new-instance p1, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$2;

    invoke-direct {p1, p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$2;-><init>(Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAVPlayListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;

    new-instance p1, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$3;

    invoke-direct {p1, p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$3;-><init>(Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    new-instance p1, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$4;

    invoke-direct {p1, p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$4;-><init>(Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mSwitchSmoothSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->ptsListeners:Ljava/util/Set;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->ptsLocker:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->isBackground:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    sget-object p2, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    iput-object p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mFileStartTimeFloatS:F

    const/4 p2, 0x1

    iput p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDnsFamilyType:I

    iput-boolean p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSetEnable:Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSetLayer:I

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    new-instance p1, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$1;

    invoke-direct {p1, p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$1;-><init>(Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mOnProvisionSuccessListener:Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;

    iput-boolean p3, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mForceReuseTexture:Z

    iput-boolean p3, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableTexture:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAMCKeyFrameBackMode:I

    iput-boolean p3, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableMediacodecSW:Z

    iput-boolean p3, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAudioFocusObtained:Z

    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMgtvFastMode:I

    iput-boolean p3, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediacodecRecreateformat:Z

    iput-boolean p3, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediacodecRecreateformatOnly4K:Z

    iput-boolean p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableDefaultFileStartTime:Z

    new-instance p1, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-direct {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;-><init>()V

    const-string v0, "init"

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setVideoFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setFileFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setBitRate(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    iput-boolean p3, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mSeekAutoStartAfterCompleteEnable:Z

    iput-boolean p3, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mJavaDnsEnable:Z

    iput p3, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mLastMediaMode:I

    iput-boolean p3, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mBackPlayEnable:Z

    iput-boolean p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->isRequestAudioFocus:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mVideoIntroduction:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mLiveLowLatencyEnable:Z

    new-instance p1, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$2;

    invoke-direct {p1, p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$2;-><init>(Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAVPlayListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;

    new-instance p1, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$3;

    invoke-direct {p1, p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$3;-><init>(Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    new-instance p1, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$4;

    invoke-direct {p1, p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$4;-><init>(Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mSwitchSmoothSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->ptsListeners:Ljava/util/Set;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->ptsLocker:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->isBackground:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hunantv/media/widget/IVideoView$Configuration;)V
    .locals 3

    .line 4
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    iput-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mFileStartTimeFloatS:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDnsFamilyType:I

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSetEnable:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSetLayer:I

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    new-instance p1, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$1;

    invoke-direct {p1, p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$1;-><init>(Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mOnProvisionSuccessListener:Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mForceReuseTexture:Z

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableTexture:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAMCKeyFrameBackMode:I

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableMediacodecSW:Z

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAudioFocusObtained:Z

    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMgtvFastMode:I

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediacodecRecreateformat:Z

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediacodecRecreateformatOnly4K:Z

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableDefaultFileStartTime:Z

    new-instance p1, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-direct {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;-><init>()V

    const-string v2, "init"

    invoke-virtual {p1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setVideoFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setFileFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object p1

    const-string v2, "0"

    invoke-virtual {p1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setBitRate(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mSeekAutoStartAfterCompleteEnable:Z

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mJavaDnsEnable:Z

    iput v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mLastMediaMode:I

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mBackPlayEnable:Z

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->isRequestAudioFocus:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mVideoIntroduction:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mLiveLowLatencyEnable:Z

    new-instance p1, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$2;

    invoke-direct {p1, p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$2;-><init>(Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAVPlayListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;

    new-instance p1, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$3;

    invoke-direct {p1, p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$3;-><init>(Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    new-instance p1, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$4;

    invoke-direct {p1, p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$4;-><init>(Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mSwitchSmoothSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->ptsListeners:Ljava/util/Set;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->ptsLocker:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->isBackground:Z

    iput-object p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mConfiguration:Lcom/hunantv/media/widget/IVideoView$Configuration;

    if-eqz p2, :cond_0

    iget-boolean p1, p2, Lcom/hunantv/media/widget/IVideoView$Configuration;->forceReuseTexture:Z

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mForceReuseTexture:Z

    :cond_0
    return-void
.end method

.method private setKeyInfoDataInner([B)V
    .locals 2

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setKeyInfoDataInner in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoFileHash()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/hunantv/media/utils/KeyFrameInfoUtils;->isKeyFrameDataValid([BLjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I

    if-nez p1, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSetLayer:I

    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoData:[B

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setKeyFrameInfoFileBuf([B)I

    move-result p1

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I

    :cond_1
    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->updateKeyInfoReport()V

    :cond_2
    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setKeyInfoDataInner out"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateKeyInfoReport()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSet:Z

    iput-boolean v1, v0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoSet:Z

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v0

    iget v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I

    iput v1, v0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoRet:I

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v0

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSetLayer:I

    iput p0, v0, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoSetLayer:I

    :cond_0
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 1

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAudioFocusObtained:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hunantv/media/utils/AudioUtil;->abandonAudioFocus(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAudioFocusObtained:Z

    :cond_0
    return-void
.end method

.method public addVideoPTSListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;)V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->ptsLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->ptsListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

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

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDebugPanel:Lcom/hunantv/media/widget/debug/DebugPanel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->release()V

    :cond_0
    return-void
.end method

.method public bindDrmSession(Lcom/hunantv/media/drm/IDrmSession;)V
    .locals 1

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDrmSession:Lcom/hunantv/media/drm/IDrmSession;

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->bindDrmSession(Lcom/hunantv/media/drm/IDrmSession;)V

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDrmSession:Lcom/hunantv/media/drm/IDrmSession;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/hunantv/media/drm/IDrmSession;->getCurrentStatus()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->setDrmLicensePrepared()V

    :cond_1
    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDrmSession:Lcom/hunantv/media/drm/IDrmSession;

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mOnProvisionSuccessListener:Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;

    invoke-interface {p1, p0}, Lcom/hunantv/media/drm/IDrmSession;->addOnProvisionSuccessListener(Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;)V

    :cond_2
    return-void
.end method

.method public configAudioImgoPlayer()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mPreBufferTimeoutMs:I

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPreBufferTimeoutMs(I)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPrepared4StartMode(Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mForceHttpDns:Z

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setForceHttpDns(Z)Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDnsFamilyType:I

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDnsFamilyType(I)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mNetPlayConfig:Lcom/hunantv/media/config/NetPlayConfig;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setNetPlayConfig(Lcom/hunantv/media/config/NetPlayConfig;)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMgtvFastMode:I

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setMgtvFastMode(I)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSourceInfo(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)V

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mLoopABPlayEnable:Z

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mABRegion:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;

    invoke-virtual {p0, v0, v1}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->setLoopABPlay(ZLcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;)Z

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->isBackground:Z

    invoke-virtual {p0, v0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->setBackground(Z)V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configImgoPlayer -mPrepared4StartMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-mForceHttpDns:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mForceHttpDns:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-mEnableVideoStartTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableVideoStartTime:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-mDnsFamilyType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDnsFamilyType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-mAMCKeyFrameBackMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAMCKeyFrameBackMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-mFileStartTimeFloatS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mFileStartTimeFloatS:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "-mMgtvFastMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMgtvFastMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-mDataSourceInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-mPreBufferTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mPreBufferTimeoutMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-isBackground:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->isBackground:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public configImgoPlayer()V
    .locals 3

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->isReuseTextureDisable()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAMCKeyFrameBackMode:I

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_8

    iget v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mPreBufferTimeoutMs:I

    invoke-virtual {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPreBufferTimeoutMs(I)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    invoke-virtual {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPrepared4StartMode(Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mForceHttpDns:Z

    invoke-virtual {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setForceHttpDns(Z)Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableVideoStartTime:Z

    invoke-virtual {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setEnableVideoStartTime(Z)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDnsFamilyType:I

    invoke-virtual {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDnsFamilyType(I)V

    iget v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAMCKeyFrameBackMode:I

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setAMCKeyFrameBackMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v2, Lcom/hunantv/media/report/ReportParams$VideoType;->TRY_WATCHING:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getPlayPreviewType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getPlayPreviewType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getPlayPreviewType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const v2, 0x782a0cca

    invoke-virtual {v0, v2, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setConfig(II)V

    :cond_3
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableMediacodecSW:Z

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setEnableMediacodecSWRender(Z)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mNetPlayConfig:Lcom/hunantv/media/config/NetPlayConfig;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setNetPlayConfig(Lcom/hunantv/media/config/NetPlayConfig;)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMgtvFastMode:I

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setMgtvFastMode(I)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediacodecRecreateformat:Z

    iget-boolean v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediacodecRecreateformatOnly4K:Z

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setMediacodecRecreateformat(ZZ)V

    iget v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mFileStartTimeFloatS:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableDefaultFileStartTime:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    if-eqz v0, :cond_5

    const-string v1, "h265"

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->getVideoFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x3da3d70a    # 0.08f

    :goto_0
    iput v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mFileStartTimeFloatS:F

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->getVideoFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "h264"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x3fbd70a4    # 1.48f

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mFileStartTimeFloatS:F

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlayerFileStartTimeFloatS(F)V

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSet:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoData:[B

    invoke-direct {p0, v0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->setKeyInfoDataInner([B)V

    :cond_6
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSourceInfo(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDrmSession:Lcom/hunantv/media/drm/IDrmSession;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->bindDrmSession(Lcom/hunantv/media/drm/IDrmSession;)V

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mIsDrmPrepared:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->setDrmLicensePrepared()V

    :cond_7
    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mLoopABPlayEnable:Z

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mABRegion:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;

    invoke-virtual {p0, v0, v1}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->setLoopABPlay(ZLcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;)Z

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mSeekAutoStartAfterCompleteEnable:Z

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSeekAutoStartAfterComplete(Z)V

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mLiveLowLatencyEnable:Z

    invoke-virtual {p0, v0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->enableLiveLowLatency(Z)V

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->isBackground:Z

    invoke-virtual {p0, v0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->setBackground(Z)V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configImgoPlayer -mPrepared4StartMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-mForceHttpDns:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mForceHttpDns:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-mEnableVideoStartTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableVideoStartTime:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-mDnsFamilyType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDnsFamilyType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-mAMCKeyFrameBackMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAMCKeyFrameBackMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-mFileStartTimeFloatS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mFileStartTimeFloatS:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "-mMgtvFastMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMgtvFastMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-mMediacodecRecreateformat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediacodecRecreateformat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-mMediacodecRecreateformatOnly4K:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediacodecRecreateformatOnly4K:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-mDataSourceInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-mPreBufferTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mPreBufferTimeoutMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-mLiveLowlantacyEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mLiveLowLatencyEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-isBackground:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->isBackground:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
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

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->enableFramePTSNotify(Z)V

    :cond_0
    return-void
.end method

.method public enableImgoAIQE(Z)V
    .locals 0

    return-void
.end method

.method public enableImgoVSR(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->enableImgoVSR(Z)V

    :cond_0
    return-void
.end method

.method public enableLiveLowLatency(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mLiveLowLatencyEnable:Z

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->enableLiveLowLatency(Z)V

    :cond_0
    return-void
.end method

.method public enableMediaCodecSW(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableMediacodecSW:Z

    return-void
.end method

.method public enableOppoFunc(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->enableOppoFunc(IZ)V

    :cond_0
    return-void
.end method

.method public getABRegion()Lcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mABRegion:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;

    return-object p0
.end method

.method public getAMCKeyFrameBackMode()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAMCKeyFrameBackMode:I

    return p0
.end method

.method public getCurrentUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getDataSourceType()Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    return-object p0
.end method

.method public getDisplayFloatRect()Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDisplayFloatRect:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    return-object p0
.end method

.method public getDnsFamilyType()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDnsFamilyType:I

    return p0
.end method

.method public getFileStartTimeFloatS()F
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getFileStartTimeFloatS()F

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mFileStartTimeFloatS:F

    return p0
.end method

.method public getKeyInfoData()[B
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoData:[B

    return-object p0
.end method

.method public getLastIP()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

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

    const/4 p0, 0x0

    return p0
.end method

.method public getMediaPlayer()Lcom/hunantv/media/player/MgtvMediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    return-object p0
.end method

.method public getMgtvFastMode()I
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getMgtvFastMode()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMgtvFastMode:I

    return p0
.end method

.method public getPrepared4StartMode()Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    return-object p0
.end method

.method public getPropertyLong(IJ)J
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPropertyLong(IJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public getRenderViewSize()Lcom/hunantv/media/widget/IVideoView$Size;
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDisplayFloatRect:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mResizableFrameView:Lcom/hunantv/media/player/l;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hunantv/media/widget/IVideoView$Size;

    invoke-direct {v0}, Lcom/hunantv/media/widget/IVideoView$Size;-><init>()V

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mResizableFrameView:Lcom/hunantv/media/player/l;

    invoke-virtual {v1}, Lcom/hunantv/media/player/l;->getCenterDisplayW()I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/widget/IVideoView$Size;->width:I

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mResizableFrameView:Lcom/hunantv/media/player/l;

    invoke-virtual {p0}, Lcom/hunantv/media/player/l;->getCenterDisplayH()I

    move-result p0

    iput p0, v0, Lcom/hunantv/media/widget/IVideoView$Size;->height:I

    return-object v0

    :cond_0
    new-instance v0, Lcom/hunantv/media/widget/IVideoView$Size;

    invoke-direct {v0}, Lcom/hunantv/media/widget/IVideoView$Size;-><init>()V

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mGLView:Lcom/hunantv/media/alpha/IAlphaRenderView;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/hunantv/media/alpha/IAlphaRenderView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/widget/IVideoView$Size;->width:I

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mGLView:Lcom/hunantv/media/alpha/IAlphaRenderView;

    invoke-interface {p0}, Lcom/hunantv/media/alpha/IAlphaRenderView;->getHeight()I

    move-result p0

    iput p0, v0, Lcom/hunantv/media/widget/IVideoView$Size;->height:I

    :cond_1
    return-object v0
.end method

.method public getRightVolume()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

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

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public initListener(Lcom/hunantv/media/player/MgtvMediaPlayer;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->clearVideoPTSListener()V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->ptsListeners:Ljava/util/Set;

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
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnFrameListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAVPlayListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnAVPlayListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;)V

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mSwitchSmoothSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

    invoke-virtual {p1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnSwitchSmoothSourceListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;)V

    :cond_1
    return-void
.end method

.method public isAntiViewShake()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAntiViewShake:Z

    return p0
.end method

.method public isBackPlayEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mBackPlayEnable:Z

    return p0
.end method

.method public isBackground()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->isBackground:Z

    return p0
.end method

.method public isForceHttpDns()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mForceHttpDns:Z

    return p0
.end method

.method public isKeyInfoDataSet()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSet:Z

    return p0
.end method

.method public isMediaCodecSWEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableMediacodecSW:Z

    return p0
.end method

.method public isOnlyAudioMode()Z
    .locals 1

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mLastMediaMode:I

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

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mForceReuseTexture:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableTexture:Z

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

    iget-boolean p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mSmoothModeOpen:Z

    return p0
.end method

.method public isSupportAMCKeyFrameBackup()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isSupportAMCKeyFrameBackup()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

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

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->release()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/global/PlayerReferenceObserver;->remove(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    :cond_0
    return-void
.end method

.method public removeVideoPTSListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;)V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->ptsLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->ptsListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

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

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAudioFocusObtained:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hunantv/media/utils/AudioUtil;->requestAudioFocus(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAudioFocusObtained:Z

    :cond_0
    return-void
.end method

.method public resetDataAfter(Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$ReleaseReason;)V
    .locals 2

    sget-object v0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$ReleaseReason;->OUT:Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$ReleaseReason;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSet:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoData:[B

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSetLayer:I

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams$KeyInfo;->reset()V

    :cond_0
    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mIsDrmPrepared:Z

    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDrmSession:Lcom/hunantv/media/drm/IDrmSession;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mOnProvisionSuccessListener:Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;

    invoke-interface {p1, v1}, Lcom/hunantv/media/drm/IDrmSession;->removeOnProvisionSuccessListener(Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;)V

    iput-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDrmSession:Lcom/hunantv/media/drm/IDrmSession;

    :cond_1
    return-void
.end method

.method public resetDataBefore(Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$ReleaseReason;)V
    .locals 1

    sget-object v0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$ReleaseReason;->OUT:Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView$ReleaseReason;

    if-ne p1, v0, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mFileStartTimeFloatS:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mSmoothModeOpen:Z

    :cond_0
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

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAntiViewShake:Z

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

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mBackPlayEnable:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isLoadDataPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->resumeLoadData()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setBackPlayEnable:resumeLoadData"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->isBackground:Z

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setBackground(Z)V

    :cond_0
    return-void
.end method

.method public setBufferTimeout(I)V
    .locals 0

    return-void
.end method

.method public setConnectTimeOut(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mConnectTimeOut:I

    return-void
.end method

.method public setDataSourceInfo(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSourceInfo(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)V

    :cond_0
    return-void
.end method

.method public setDisableAudioFocus(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->isRequestAudioFocus:Z

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

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDisplayFloatRect:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    return-void
.end method

.method public setDnsFamilyType(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDnsFamilyType:I

    return-void
.end method

.method public setDrmLicensePrepared()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mIsDrmPrepared:Z

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDrmLicensePrepared()V

    :cond_0
    return-void
.end method

.method public setEnableVideoStartTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mEnableVideoStartTime:Z

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setEnableVideoStartTime(Z)V

    :cond_0
    return-void
.end method

.method public setFileStartTimeFloatS(F)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mFileStartTimeFloatS:F

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlayerFileStartTimeFloatS(F)V

    :cond_0
    return-void
.end method

.method public setForceHttpDns(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mForceHttpDns:Z

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

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

    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSetEnable:Z

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSet:Z

    iput v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSetLayer:I

    invoke-static {p1}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p1, -0x15

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I

    return p1

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, -0x16

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I

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

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_3
    :try_start_2
    invoke-static {v1}, Lcom/hunantv/media/utils/FileUtil;->readFile(Ljava/io/File;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->setKeyInfoData([B)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 p1, -0x14

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :goto_1
    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I

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

    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSetEnable:Z

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoData:[B

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSet:Z

    iput v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSetLayer:I

    iget-object v1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->setKeyInfoDataInner([B)V

    iget p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I

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
    iget p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I

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

    iget-boolean p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSetEnable:Z

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoData:[B

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSet:Z

    iput p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoSetLayer:I

    iget-object p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->setKeyInfoDataInner([B)V

    iget p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I

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
    iget p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->updateKeyInfoReport()V

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mKeyInfoRet:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public setLastMediaMode(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mLastMediaMode:I

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
    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mLoopABPlayEnable:Z

    iput-object p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mABRegion:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;

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
    iget-object v3, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

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

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

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

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediacodecRecreateformat:Z

    iput-boolean p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediacodecRecreateformatOnly4K:Z

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

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

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMgtvFastMode:I

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setMgtvFastMode(I)V

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

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->defaultNetAddr()V

    if-lez p2, :cond_0

    mul-int/lit16 p2, p2, 0x3e8

    iput p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mAddrInfoTimeoutMs:I

    :cond_0
    return-void
.end method

.method public setNetPlayConfig(Lcom/hunantv/media/config/NetPlayConfig;)V
    .locals 5

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mNetPlayConfig:Lcom/hunantv/media/config/NetPlayConfig;

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

    if-eqz p1, :cond_e

    iget v0, p1, Lcom/hunantv/media/config/NetPlayConfig;->accurate_seek:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->setAccurateSeekEnable(Z)V

    :cond_1
    iget v0, p1, Lcom/hunantv/media/config/NetPlayConfig;->ts_not_skip:I

    if-ltz v0, :cond_3

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->configTsNotSkip(Z)V

    :cond_3
    iget v0, p1, Lcom/hunantv/media/config/NetPlayConfig;->load_retry_time:I

    if-ltz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->configLoadMaxRetryTime(I)V

    :cond_4
    iget v0, p1, Lcom/hunantv/media/config/NetPlayConfig;->weak_net_speed:I

    if-ltz v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->configWeakNetSpeed(I)V

    :cond_5
    iget v0, p1, Lcom/hunantv/media/config/NetPlayConfig;->open_timeout:I

    mul-int/lit16 v0, v0, 0x3e8

    iget v3, p1, Lcom/hunantv/media/config/NetPlayConfig;->rw_timeout:I

    mul-int/lit16 v3, v3, 0x3e8

    iget v4, p1, Lcom/hunantv/media/config/NetPlayConfig;->buffer_timeout:I

    mul-int/lit16 v4, v4, 0x3e8

    if-lez v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->setConnectTimeOut(I)V

    :cond_6
    if-lez v3, :cond_7

    invoke-virtual {p0, v3}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->setReciveDataTimeOut(I)V

    :cond_7
    if-lez v4, :cond_8

    invoke-virtual {p0, v4}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->setBufferTimeout(I)V

    :cond_8
    iget v0, p1, Lcom/hunantv/media/config/NetPlayConfig;->datasource_async:I

    if-ltz v0, :cond_a

    if-ne v0, v2, :cond_9

    move v0, v2

    goto :goto_2

    :cond_9
    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->openImgoDSModule(Z)V

    :cond_a
    invoke-virtual {p1}, Lcom/hunantv/media/config/NetPlayConfig;->getAddrinfo_type()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/hunantv/media/config/NetPlayConfig;->getAddrinfo_type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hunantv/media/config/NetPlayConfig;->getAddrinfo_timeout()I

    move-result v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->setNetAddrinfo(Ljava/lang/String;IZ)V

    :cond_b
    iget v0, p1, Lcom/hunantv/media/config/NetPlayConfig;->dns_family_type:I

    if-eqz v0, :cond_c

    if-ne v0, v2, :cond_e

    :cond_c
    if-nez v0, :cond_d

    move v1, v2

    :cond_d
    invoke-virtual {p0, v1}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->setDnsFamilyType(I)V

    :cond_e
    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_f

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setNetPlayConfig(Lcom/hunantv/media/config/NetPlayConfig;)V

    :cond_f
    return-void
.end method

.method public setOnAVPlayListener(Lcom/hunantv/media/widget/IVideoView$OnAVPlayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mOnAVPlayListener:Lcom/hunantv/media/widget/IVideoView$OnAVPlayListener;

    return-void
.end method

.method public setOnFrameListener(Lcom/hunantv/media/widget/IVideoView$OnFrameListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mOnFrameListener:Lcom/hunantv/media/widget/IVideoView$OnFrameListener;

    return-void
.end method

.method public setOnSwitchSmoothSourceListener(Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mOnSwitchSmoothSourceListener:Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;

    return-void
.end method

.method public setPreBufferTimeoutMs(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mPreBufferTimeoutMs:I

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPreBufferTimeoutMs(I)V

    :cond_0
    return-void
.end method

.method public setPrepared4StartMode(Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPrepared4StartMode(Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;)V

    :cond_0
    return-void
.end method

.method public setReciveDataTimeOut(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mReciveDataTimeOut:I

    return-void
.end method

.method public setSeekAutoStartAfterComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mSeekAutoStartAfterCompleteEnable:Z

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSeekAutoStartAfterComplete(Z)V

    :cond_0
    return-void
.end method

.method public setSmoothKeyFrameInfo([BLjava/lang/String;Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

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

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mSmoothSwitchMode:I

    return-void
.end method

.method public setTimeout(II)V
    .locals 0

    return-void
.end method

.method public setTsFlowTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->tsFlowTag:Ljava/lang/String;

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setTsFlowTag(Ljava/lang/String;)V

    :cond_0
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

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

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

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setVideoFrameClockNotifyPts(JJ)V

    :cond_0
    return-void
.end method

.method public setVideoIntroduction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mVideoIntroduction:Ljava/lang/String;

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/report/ReportParams;->setSvds(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    :cond_0
    return-void
.end method

.method public showDebugPanel(Z)Lcom/hunantv/media/widget/debug/DebugPanel;
    .locals 2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDebugPanel:Lcom/hunantv/media/widget/debug/DebugPanel;

    if-nez p1, :cond_0

    new-instance p1, Lcom/hunantv/media/widget/debug/DebugPanel;

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/hunantv/media/widget/debug/DebugPanel;-><init>(Landroid/content/Context;Lcom/hunantv/media/widget/IVideoView;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDebugPanel:Lcom/hunantv/media/widget/debug/DebugPanel;

    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDebugPanel:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p0, v0, p1}, Lcom/hunantv/media/utils/ViewUtil;->addView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDebugPanel:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p0, p1}, Lcom/hunantv/media/utils/ViewUtil;->removeView(Landroid/view/ViewGroup;Landroid/view/View;)V

    :goto_0
    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mDebugPanel:Lcom/hunantv/media/widget/debug/DebugPanel;

    return-object p0
.end method

.method public startAVDecoder()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->startAVDecoder()V

    :cond_0
    return-void
.end method

.method public stepPlaybackNextFrame()V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlaybackStep(I)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->stopInner()V

    return-void
.end method

.method public stopInner()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stop()V

    :cond_0
    return-void
.end method

.method public support3X()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->supportMaxSpeed()F

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

    const/4 p0, 0x0

    return p0
.end method

.method public supportMaxSpeed()F
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->isOnlyAudioMode()Z

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

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getSwitchMod()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->setLastMediaMode(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->setLastMediaMode(I)V

    :goto_0
    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->switchSmoothSource(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)V

    :cond_1
    return-void
.end method
