.class public Lcom/hunantv/media/widget/MgtvLoopVideoView;
.super Lcom/hunantv/media/widget/MgtvAbstractVideoView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/widget/MgtvLoopVideoView$ResetResult;
    }
.end annotation


# static fields
.field private static final LOGMSG_PLAYER_CALLBACK:Ljava/lang/String; = "VideoViewCallBack"


# instance fields
.field private fromBottom:I

.field private fromLeft:I

.field private fromRight:I

.field private fromTop:I

.field private isStretchScreen:Z

.field private mAccurateSeekEnable:Z

.field private mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

.field private mAddrInfoTypeInt:I

.field private mAspectRatio:I

.field private mBufferTimeoutMs:I

.field private mBufferingTimeoutListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;

.field private mBufferingUpdateListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;

.field private mCacheEnable:Z

.field private mCacheM3u8Path:Ljava/lang/String;

.field private mCacheTsPaths:[Ljava/lang/String;

.field private mCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

.field private mCurrentState:I

.field private mDataCacheSizeKB:I

.field private mEnableCoreStartPauseListen:Z

.field private mEnableLiveMode:Z

.field private mEnableMgtvMediaCodec:Z

.field private mEnableOpengl:Z

.field private mEnableTsSkipError:Z

.field private mEnhanceQualityType:I

.field private mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

.field private mErrorMsg:Ljava/lang/String;

.field private mFilterCallback:Lcom/hunantv/media/player/d/f$a;

.field private mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

.field private mForceDecodeMode:Z

.field private mFromSurfaceDestroyPlayPosition:I

.field mFromSurfaceDestroyToPlay:Z

.field private mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

.field mHasSurfaceHolderDestroy:Z

.field private mInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

.field private mIsDataLoaderPaused:Z

.field private mIsLive:Z

.field private mIsLiveConfig:Z

.field protected mIsLoopMode:Z

.field private mIsScreenOnWhilePlaying:Z

.field private mIsSecure:Z

.field private mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

.field private mLastFrameRecovery:Z

.field private volatile mLastSurfaceDestroy:Z

.field private mLiveStartIndex:I

.field private mLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

.field private mLoadMaxRetryTime:I

.field private mLogCallBackOpen:Z

.field private mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

.field private mMgtvMediaPlayerHardwareMode:Z

.field private mNativeDnsAsyncEnable:Z

.field mNeedResetLoopPlay:Z

.field private mNonSurfaceHolderPVTimestamp:J

.field private mOnBufferringUpdateListener:Lcom/hunantv/media/widget/IVideoView$OnBufferingUpdateListener;

.field private mOnChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

.field private mOnCompletionListener:Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;

.field private mOnErrorListener:Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

.field private mOnInfoListener:Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

.field private mOnLoadDataListener:Lcom/hunantv/media/widget/IVideoView$OnLoadDataListener;

.field private mOnPauseListener:Lcom/hunantv/media/widget/IVideoView$OnPauseListener;

.field private mOnPreparedListener:Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

.field private mOnRecordListener:Lcom/hunantv/media/widget/IVideoView$OnRecordListener;

.field private mOnSeekCompleteListener:Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;

.field private mOnStartListener:Lcom/hunantv/media/widget/IVideoView$OnStartListener;

.field private mOnUpdateStatusListener:Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;

.field private mOnVideoSizeChangedListener:Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;

.field private mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

.field private mOpenVideoWhenSurfaceCreate:Z

.field private mPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

.field private mPlaySpeed:F

.field private mPlayerWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

.field mPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

.field private mRebindTexture:Z

.field private mRecordFilePath:Ljava/lang/String;

.field private mRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

.field private mRenderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

.field private mRenderType:I

.field private mRenderWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

.field mSHCallback:Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

.field private mSeekCompleteListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;

.field private mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

.field private mStartLeaveTimestamp:J

.field private mStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

.field mStartPosMs:I

.field private mStreamKey:I

.field private mSurfaceHeight:I

.field private mSurfaceHolderListener:Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

.field private mSurfaceWidth:I

.field private mSwitchSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

.field protected mTargetIsLoopMode:Z

.field private mTargetState:I

.field private mTsNotSkip:Z

.field private mUseSystemPlayer:Z

.field private mUserEnableCoreStartPauseListen:Z

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoWidth:I

.field private mWeakBufferTimeoutMs:I

.field private mWeakNetSpeed:I

.field private metrics:Landroid/util/DisplayMetrics;

.field private originalVideoHeight:I

.field private originalVideoWidth:I

.field private shouldGetVideoParams:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLastSurfaceDestroy:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCurrentState:I

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mMgtvMediaPlayerHardwareMode:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mForceDecodeMode:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyToPlay:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyPlayPosition:I

    const-string v2, ""

    iput-object v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mHasSurfaceHolderDestroy:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLogCallBackOpen:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStreamKey:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLive:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsDataLoaderPaused:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mUseSystemPlayer:Z

    sget-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAddrInfoTypeInt:I

    sget-object v3, Lcom/hunantv/media/player/a/a$b;->a:Lcom/hunantv/media/player/a/a$b;

    iput-object v3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNativeDnsAsyncEnable:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableMgtvMediaCodec:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mWeakNetSpeed:I

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mWeakBufferTimeoutMs:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTsNotSkip:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLoadMaxRetryTime:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mUserEnableCoreStartPauseListen:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableCoreStartPauseListen:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsScreenOnWhilePlaying:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPlaySpeed:F

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLiveStartIndex:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsSecure:Z

    iput v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAspectRatio:I

    sget-object v0, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->NORMAL:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRenderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLiveConfig:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableLiveMode:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetIsLoopMode:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLoopMode:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartPosMs:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNeedResetLoopPlay:Z

    new-instance v0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {v0}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSHCallback:Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$2;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$2;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFilterCallback:Lcom/hunantv/media/player/d/f$a;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$3;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$3;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRenderWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$4;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$4;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSizeChangedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$5;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$5;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$6;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$6;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$7;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$7;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$8;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$8;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$9;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$9;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSeekCompleteListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$10;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$10;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mBufferingUpdateListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$11;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$11;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mBufferingTimeoutListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$12;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$12;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSwitchSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$13;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$13;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPlayerWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v0, Lcom/hunantv/media/recoder/GifRecorder;

    invoke-direct {v0}, Lcom/hunantv/media/recoder/GifRecorder;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$14;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$14;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$15;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$15;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$16;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$16;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$17;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$17;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLastSurfaceDestroy:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCurrentState:I

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mMgtvMediaPlayerHardwareMode:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mForceDecodeMode:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyToPlay:Z

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyPlayPosition:I

    const-string v1, ""

    iput-object v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mHasSurfaceHolderDestroy:Z

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLogCallBackOpen:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStreamKey:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLive:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsDataLoaderPaused:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mUseSystemPlayer:Z

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAddrInfoTypeInt:I

    sget-object v2, Lcom/hunantv/media/player/a/a$b;->a:Lcom/hunantv/media/player/a/a$b;

    iput-object v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNativeDnsAsyncEnable:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableMgtvMediaCodec:Z

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mWeakNetSpeed:I

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mWeakBufferTimeoutMs:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTsNotSkip:Z

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLoadMaxRetryTime:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mUserEnableCoreStartPauseListen:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableCoreStartPauseListen:Z

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsScreenOnWhilePlaying:Z

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPlaySpeed:F

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLiveStartIndex:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsSecure:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAspectRatio:I

    sget-object p2, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->NORMAL:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRenderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLiveConfig:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableLiveMode:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetIsLoopMode:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLoopMode:Z

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartPosMs:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNeedResetLoopPlay:Z

    new-instance p2, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {p2}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    sget-object p2, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSHCallback:Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$2;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$2;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFilterCallback:Lcom/hunantv/media/player/d/f$a;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$3;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$3;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRenderWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$4;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$4;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSizeChangedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$5;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$5;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$6;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$6;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$7;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$7;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$8;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$8;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$9;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$9;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSeekCompleteListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$10;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$10;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mBufferingUpdateListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$11;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$11;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mBufferingTimeoutListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$12;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$12;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSwitchSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$13;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$13;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPlayerWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance p2, Lcom/hunantv/media/recoder/GifRecorder;

    invoke-direct {p2}, Lcom/hunantv/media/recoder/GifRecorder;-><init>()V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$14;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$14;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$15;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$15;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$16;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$16;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$17;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$17;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLastSurfaceDestroy:Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCurrentState:I

    iput p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mMgtvMediaPlayerHardwareMode:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mForceDecodeMode:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyToPlay:Z

    iput p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyPlayPosition:I

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mHasSurfaceHolderDestroy:Z

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLogCallBackOpen:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStreamKey:I

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLive:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsDataLoaderPaused:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mUseSystemPlayer:Z

    sget-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAddrInfoTypeInt:I

    sget-object v1, Lcom/hunantv/media/player/a/a$b;->a:Lcom/hunantv/media/player/a/a$b;

    iput-object v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNativeDnsAsyncEnable:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableMgtvMediaCodec:Z

    iput p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mWeakNetSpeed:I

    iput p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mWeakBufferTimeoutMs:I

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTsNotSkip:Z

    iput p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLoadMaxRetryTime:I

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mUserEnableCoreStartPauseListen:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableCoreStartPauseListen:Z

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsScreenOnWhilePlaying:Z

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPlaySpeed:F

    iput p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLiveStartIndex:I

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsSecure:Z

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAspectRatio:I

    sget-object p2, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->NORMAL:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRenderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLiveConfig:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableLiveMode:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetIsLoopMode:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLoopMode:Z

    iput p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartPosMs:I

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNeedResetLoopPlay:Z

    new-instance p2, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {p2}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    sget-object p2, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSHCallback:Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$2;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$2;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFilterCallback:Lcom/hunantv/media/player/d/f$a;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$3;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$3;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRenderWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$4;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$4;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSizeChangedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$5;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$5;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$6;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$6;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$7;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$7;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$8;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$8;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$9;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$9;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSeekCompleteListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$10;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$10;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mBufferingUpdateListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$11;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$11;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mBufferingTimeoutListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$12;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$12;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSwitchSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$13;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$13;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPlayerWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance p2, Lcom/hunantv/media/recoder/GifRecorder;

    invoke-direct {p2}, Lcom/hunantv/media/recoder/GifRecorder;-><init>()V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$14;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$14;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$15;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$15;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$16;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$16;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvLoopVideoView$17;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$17;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hunantv/media/widget/IVideoView$Configuration;)V
    .locals 4

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;-><init>(Landroid/content/Context;Lcom/hunantv/media/widget/IVideoView$Configuration;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLastSurfaceDestroy:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCurrentState:I

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mMgtvMediaPlayerHardwareMode:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mForceDecodeMode:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyToPlay:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyPlayPosition:I

    const-string v2, ""

    iput-object v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mHasSurfaceHolderDestroy:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLogCallBackOpen:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStreamKey:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLive:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsDataLoaderPaused:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mUseSystemPlayer:Z

    sget-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAddrInfoTypeInt:I

    sget-object v3, Lcom/hunantv/media/player/a/a$b;->a:Lcom/hunantv/media/player/a/a$b;

    iput-object v3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNativeDnsAsyncEnable:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableMgtvMediaCodec:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mWeakNetSpeed:I

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mWeakBufferTimeoutMs:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTsNotSkip:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLoadMaxRetryTime:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mUserEnableCoreStartPauseListen:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableCoreStartPauseListen:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsScreenOnWhilePlaying:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPlaySpeed:F

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLiveStartIndex:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsSecure:Z

    iput v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAspectRatio:I

    sget-object v0, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->NORMAL:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRenderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLiveConfig:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableLiveMode:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetIsLoopMode:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLoopMode:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartPosMs:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNeedResetLoopPlay:Z

    new-instance v0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {v0}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSHCallback:Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$2;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$2;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFilterCallback:Lcom/hunantv/media/player/d/f$a;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$3;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$3;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRenderWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$4;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$4;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSizeChangedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$5;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$5;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$6;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$6;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$7;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$7;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$8;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$8;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$9;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$9;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSeekCompleteListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$10;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$10;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mBufferingUpdateListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$11;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$11;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mBufferingTimeoutListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$12;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$12;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSwitchSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$13;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$13;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPlayerWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v0, Lcom/hunantv/media/recoder/GifRecorder;

    invoke-direct {v0}, Lcom/hunantv/media/recoder/GifRecorder;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$14;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$14;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$15;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$15;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$16;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$16;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$17;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$17;-><init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lcom/hunantv/media/widget/IVideoView$Configuration;->enableTexture:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    iget-boolean v0, p2, Lcom/hunantv/media/widget/IVideoView$Configuration;->opengl:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableOpengl:Z

    iget-boolean v0, p2, Lcom/hunantv/media/widget/IVideoView$Configuration;->isLiveMode:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLiveConfig:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableLiveMode:Z

    iget-boolean v0, p2, Lcom/hunantv/media/widget/IVideoView$Configuration;->isLoopMode:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetIsLoopMode:Z

    iget p2, p2, Lcom/hunantv/media/widget/IVideoView$Configuration;->renderViewType:I

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->initVideoView(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->initVideoView(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSurfaceWidth:I

    return p0
.end method

.method public static synthetic access$002(Lcom/hunantv/media/widget/MgtvLoopVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSurfaceWidth:I

    return p1
.end method

.method public static synthetic access$100(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSurfaceHeight:I

    return p0
.end method

.method public static synthetic access$1000(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/hunantv/media/widget/MgtvLoopVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSurfaceHeight:I

    return p1
.end method

.method public static synthetic access$1102(Lcom/hunantv/media/widget/MgtvLoopVideoView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1200(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOpenVideoWhenSurfaceCreate:Z

    return p0
.end method

.method public static synthetic access$1300(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRebindTexture:Z

    return p0
.end method

.method public static synthetic access$1400(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->openVideo()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->resetVideoPath()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mMgtvMediaPlayerHardwareMode:Z

    return p0
.end method

.method public static synthetic access$1602(Lcom/hunantv/media/widget/MgtvLoopVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mMgtvMediaPlayerHardwareMode:Z

    return p1
.end method

.method public static synthetic access$1700(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyPlayPosition:I

    return p0
.end method

.method public static synthetic access$1702(Lcom/hunantv/media/widget/MgtvLoopVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyPlayPosition:I

    return p1
.end method

.method public static synthetic access$1800(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLastFrameRecovery:Z

    return p0
.end method

.method public static synthetic access$1900(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLastSurfaceDestroy:Z

    return p0
.end method

.method public static synthetic access$1902(Lcom/hunantv/media/widget/MgtvLoopVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLastSurfaceDestroy:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    return p0
.end method

.method public static synthetic access$2000(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLive:Z

    return p0
.end method

.method public static synthetic access$2002(Lcom/hunantv/media/widget/MgtvLoopVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLive:Z

    return p1
.end method

.method public static synthetic access$202(Lcom/hunantv/media/widget/MgtvLoopVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    return p1
.end method

.method public static synthetic access$2100(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->pauseInner()V

    return-void
.end method

.method public static synthetic access$2200(Lcom/hunantv/media/widget/MgtvLoopVideoView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->release(ZZ)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRenderType:I

    return p0
.end method

.method public static synthetic access$2302(Lcom/hunantv/media/widget/MgtvLoopVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRenderType:I

    return p1
.end method

.method public static synthetic access$2400(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnhanceQualityType:I

    return p0
.end method

.method public static synthetic access$2402(Lcom/hunantv/media/widget/MgtvLoopVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnhanceQualityType:I

    return p1
.end method

.method public static synthetic access$2502(Lcom/hunantv/media/widget/MgtvLoopVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->originalVideoWidth:I

    return p1
.end method

.method public static synthetic access$2602(Lcom/hunantv/media/widget/MgtvLoopVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->originalVideoHeight:I

    return p1
.end method

.method public static synthetic access$2700(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnVideoSizeChangedListener:Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;

    return-object p0
.end method

.method public static synthetic access$2800(Lcom/hunantv/media/widget/MgtvLoopVideoView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->changeCurrentState(I)V

    return-void
.end method

.method public static synthetic access$2900(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnPreparedListener:Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mVideoWidth:I

    return p0
.end method

.method public static synthetic access$3000(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnCompletionListener:Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/hunantv/media/widget/MgtvLoopVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mVideoWidth:I

    return p1
.end method

.method public static synthetic access$3100(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnInfoListener:Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

    return-object p0
.end method

.method public static synthetic access$3200(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mVideoRotationDegree:I

    return p0
.end method

.method public static synthetic access$3202(Lcom/hunantv/media/widget/MgtvLoopVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mVideoRotationDegree:I

    return p1
.end method

.method public static synthetic access$3300(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnUpdateStatusListener:Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;

    return-object p0
.end method

.method public static synthetic access$3400(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnErrorListener:Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

    return-object p0
.end method

.method public static synthetic access$3500(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnSeekCompleteListener:Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;

    return-object p0
.end method

.method public static synthetic access$3600(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$OnBufferingUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnBufferringUpdateListener:Lcom/hunantv/media/widget/IVideoView$OnBufferingUpdateListener;

    return-object p0
.end method

.method public static synthetic access$3700(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

    return-object p0
.end method

.method public static synthetic access$3800(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableCoreStartPauseListen:Z

    return p0
.end method

.method public static synthetic access$3900(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->callbackOnStart()V

    return-void
.end method

.method public static synthetic access$400(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mVideoHeight:I

    return p0
.end method

.method public static synthetic access$4000(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->callbackOnPause()V

    return-void
.end method

.method public static synthetic access$402(Lcom/hunantv/media/widget/MgtvLoopVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mVideoHeight:I

    return p1
.end method

.method public static synthetic access$4100(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$OnRecordListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnRecordListener:Lcom/hunantv/media/widget/IVideoView$OnRecordListener;

    return-object p0
.end method

.method public static synthetic access$4200(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRecordFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$4300(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$OnLoadDataListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnLoadDataListener:Lcom/hunantv/media/widget/IVideoView$OnLoadDataListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSeekWhenPrepared:I

    return p0
.end method

.method public static synthetic access$600(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSurfaceHolderListener:Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/hunantv/media/widget/MgtvLoopVideoView;)J
    .locals 2

    iget-wide v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartLeaveTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$702(Lcom/hunantv/media/widget/MgtvLoopVideoView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartLeaveTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$800(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCurrentState:I

    return p0
.end method

.method private callbackOnPause()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->changeCurrentState(I)V

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnPauseListener:Lcom/hunantv/media/widget/IVideoView$OnPauseListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView$OnPauseListener;->onPause()V

    :cond_0
    return-void
.end method

.method private callbackOnStart()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->changeCurrentState(I)V

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnStartListener:Lcom/hunantv/media/widget/IVideoView$OnStartListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView$OnStartListener;->onStart()V

    :cond_0
    return-void
.end method

.method private changeCurrentState(I)V
    .locals 3

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCurrentState:I

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCurrentState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnUpdateStatusListener:Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;->onUpdateStatus()V

    :cond_0
    return-void
.end method

.method private checkMemoryStatus(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->getInstance()Lcom/hunantv/media/player/loader/ImgoLibLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->isAllPlayerLibLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/hunantv/media/utils/MemoryUtil;->getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPlayerWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const/16 v3, 0x14

    shr-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const v2, 0xc3758

    invoke-interface {p0, v2, v0, p1, v1}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private getFullScreenVideoParams()V
    .locals 7

    iget v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mVideoWidth:I

    int-to-float v1, v0

    iget v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mVideoHeight:I

    int-to-float v3, v2

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->metrics:Landroid/util/DisplayMetrics;

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v4

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v3

    div-float/2addr v5, v6

    cmpg-float v1, v5, v1

    const/4 v5, 0x0

    if-gez v1, :cond_0

    mul-int/2addr v2, v4

    div-int/2addr v2, v0

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    iput v5, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->fromLeft:I

    iput v3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->fromTop:I

    iput v4, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->fromRight:I

    add-int/2addr v3, v2

    :goto_0
    iput v3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->fromBottom:I

    goto :goto_1

    :cond_0
    mul-int/2addr v0, v3

    div-int/2addr v0, v2

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->fromLeft:I

    iput v5, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->fromTop:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->fromRight:I

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromLeft:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->fromLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/fromTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->fromTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/fromRight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->fromRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/fromBottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->fromBottom:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "MGTV_1.25.3"

    return-object v0
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->initVideoView(Landroid/content/Context;I)V

    return-void
.end method

.method private initVideoView(Landroid/content/Context;I)V
    .locals 5

    .line 2
    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->metrics:Landroid/util/DisplayMetrics;

    iput p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderViewType:I

    iput p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mInitRenderViewType:I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    :cond_0
    new-instance v1, Lcom/hunantv/media/player/c;

    invoke-direct {v1, p1}, Lcom/hunantv/media/player/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mFakeFrameView:Lcom/hunantv/media/player/c;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->toggleRenders(I)V

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mVideoWidth:I

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mVideoHeight:I

    sget-boolean p2, Lcom/hunantv/media/global/Constants;->FOR_OTT:Z

    if-nez p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_2

    check-cast p1, Landroid/app/Activity;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    :cond_2
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->checkMemoryStatus(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->changeCurrentState(I)V

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    return-void
.end method

.method private isInLoopValidState()Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCurrentState:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInPlaybackState()Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCurrentState:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private openVideo()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mMgtvMediaPlayerHardwareMode:Z

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->openVideo(Z)V

    return-void
.end method

.method private openVideo(Z)V
    .locals 20

    .line 2
    move-object/from16 v1, p0

    const-string v2, "Unable to open content: "

    const-string v3, ",details:"

    const-string v4, ""

    iput-object v4, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    iget-object v4, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    const/4 v5, 0x1

    if-eqz v4, :cond_11

    iget-object v4, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    if-nez v4, :cond_0

    goto/16 :goto_11

    :cond_0
    iget-object v4, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    const v6, 0x6acfc5

    const/4 v7, 0x0

    if-nez v4, :cond_2

    iget-object v2, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    if-eqz v2, :cond_1

    invoke-interface {v2, v6, v7}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    :cond_1
    const-string v2, "openVideo renderView is null"

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvRenderView;->getRenderViewType()I

    move-result v4

    const v8, 0x6acfc9

    if-nez v4, :cond_6

    iget-object v4, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    invoke-interface {v4}, Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    if-eqz v2, :cond_4

    invoke-interface {v2, v8, v7}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    :cond_4
    const-string v2, "openVideo surface is invalid"

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    if-eqz v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openVideo surface is invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    :goto_0
    iget-boolean v4, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isRequestAudioFocus:Z

    if-eqz v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->requestAudioFocus()V

    :cond_7
    invoke-direct {v1, v7, v5}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->release(ZZ)V

    const v4, 0x6acfca

    const v9, 0x6acfc3

    const/4 v10, 0x3

    const/4 v11, -0x1

    :try_start_0
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const-string v12, "BUNDLE_KEY_LOG_TAG_KEY"

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTagKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v12, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mUseSystemPlayer:Z

    if-nez v12, :cond_c

    iget-boolean v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLiveConfig:Z

    if-eqz v12, :cond_8

    move/from16 v16, v5

    goto :goto_1

    :cond_8
    iget-boolean v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetIsLoopMode:Z

    if-eqz v12, :cond_9

    iput-boolean v5, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLoopMode:Z

    const/4 v12, 0x2

    move/from16 v16, v12

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object v2, v0

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-object v4, v0

    goto/16 :goto_a

    :catch_3
    move-exception v0

    move-object v2, v0

    goto/16 :goto_b

    :catch_4
    move-exception v0

    move-object v2, v0

    goto/16 :goto_c

    :catch_5
    move-exception v0

    move-object v3, v0

    goto/16 :goto_d

    :catch_6
    move-exception v0

    move-object v4, v0

    goto/16 :goto_e

    :catch_7
    move-exception v0

    move-object v3, v0

    goto/16 :goto_f

    :catch_8
    move-exception v0

    move-object v3, v0

    goto/16 :goto_10

    :cond_9
    move/from16 v16, v7

    :goto_1
    if-eqz p1, :cond_b

    iget-boolean v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLoopMode:Z

    if-eqz v12, :cond_a

    new-instance v14, Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v13, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    iget-boolean v12, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    const/16 v17, 0x2

    move/from16 v18, v12

    move-object v12, v14

    move-object/from16 v19, v13

    move/from16 v13, v17

    move-object v8, v14

    move-object/from16 v14, v19

    move-object/from16 p1, v15

    move/from16 v15, v18

    move-object/from16 v17, p1

    invoke-direct/range {v12 .. v17}, Lcom/hunantv/media/player/MgtvMediaPlayer;-><init>(ILandroid/content/Context;ZILandroid/os/Bundle;)V

    :goto_2
    iput-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    goto :goto_3

    :cond_a
    move-object/from16 p1, v15

    iput-boolean v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    new-instance v8, Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v14, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    iget-boolean v15, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    const/4 v13, 0x2

    move-object v12, v8

    move-object/from16 v17, p1

    invoke-direct/range {v12 .. v17}, Lcom/hunantv/media/player/MgtvMediaPlayer;-><init>(ILandroid/content/Context;ZILandroid/os/Bundle;)V

    goto :goto_2

    :cond_b
    move-object/from16 p1, v15

    iput-boolean v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    new-instance v8, Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v14, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    iget-boolean v15, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    const/4 v13, 0x1

    move-object v12, v8

    move-object/from16 v17, p1

    invoke-direct/range {v12 .. v17}, Lcom/hunantv/media/player/MgtvMediaPlayer;-><init>(ILandroid/content/Context;ZILandroid/os/Bundle;)V

    goto :goto_2

    :cond_c
    move-object/from16 p1, v15

    new-instance v8, Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    move-object/from16 v13, p1

    invoke-direct {v8, v7, v12, v7, v13}, Lcom/hunantv/media/player/MgtvMediaPlayer;-><init>(ILandroid/content/Context;ZLandroid/os/Bundle;)V

    goto :goto_2

    :goto_3
    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setFlowDataStatistic(Lcom/hunantv/media/player/statistic/FlowDataStatistic;)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReportParams(Lcom/hunantv/media/report/ReportParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->configImgoPlayer()V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-super {v1, v8}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->initListener(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnPreparedListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnStartListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnPauseListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSizeChangedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnVideoSizeChangedListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnCompletionListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnInfoListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnErrorListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mBufferingUpdateListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnBufferingUpdateListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSeekCompleteListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnSeekCompleteListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mBufferingTimeoutListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnBufferingTimeoutListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSwitchSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnSwitchSourceListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPlayerWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnWarningListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnRecordVideoListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnLoadDataListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;)V

    iput-boolean v7, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyToPlay:Z

    iput-boolean v7, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mHasSurfaceHolderDestroy:Z

    iget v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReadDataSourceTypeConfig:I

    if-ne v8, v10, :cond_d

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSource:Lcom/hunantv/media/player/MgtvPlayerDataSource;

    if-eqz v8, :cond_d

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v8, v10}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReadDataSourceType(I)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSource:Lcom/hunantv/media/player/MgtvPlayerDataSource;

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSource(Lcom/hunantv/media/player/MgtvPlayerDataSource;)V

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v8

    const-string v12, "setDataSource READ_DATASOURCE_TYPE_DATA_SOURCE"

    invoke-static {v8, v12}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    if-nez v8, :cond_f

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    if-eqz v8, :cond_e

    goto :goto_4

    :cond_e
    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v8, v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReadDataSourceType(I)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    :goto_4
    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    iget-object v14, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    if-eqz v14, :cond_10

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_5

    :cond_10
    const/4 v14, 0x0

    :goto_5
    iget v15, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStreamKey:I

    invoke-virtual {v8, v12, v13, v14, v15}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setP2pDataSource(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;I)V

    :goto_6
    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSurfaceHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v8, v10}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setAudioStreamType(I)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v12, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsScreenOnWhilePlaying:Z

    invoke-virtual {v8, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->prepareAsync()V

    invoke-direct {v1, v5}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->changeCurrentState(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v8

    const-string v12, "openVideo is over"

    invoke-static {v8, v12}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/hunantv/media/player/loader/c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Throwable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    invoke-interface {v1, v9, v5}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UnsatisfiedLinkError: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    invoke-interface {v1, v4, v7}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LibLoaderError: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "details:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",extra:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/hunantv/media/player/loader/c;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    invoke-virtual {v2}, Lcom/hunantv/media/player/loader/c;->a()I

    move-result v2

    invoke-interface {v1, v4, v2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    invoke-interface {v1, v9, v7}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NullPointerException: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    invoke-interface {v1, v6, v7}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecurityException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v2, 0x6acfc4

    invoke-interface {v1, v2, v7}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v2, 0x6acfc2

    invoke-interface {v1, v2, v7}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v2, 0x6acfc1

    invoke-interface {v1, v2, v7}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v2, 0x6ad3ac

    invoke-interface {v1, v2, v7}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v2, 0x6acfc9

    invoke-interface {v1, v2, v10}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :cond_11
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imgo openVideo: not ready for playback just yet, will try again later, mCurrentUri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mSurfaceHolder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    if-eqz v2, :cond_12

    iget-object v2, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    if-nez v2, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNonSurfaceHolderPVTimestamp:J

    iput-boolean v5, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOpenVideoWhenSurfaceCreate:Z

    :cond_12
    return-void
.end method

.method private pauseInner()V
    .locals 2

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isInLoopValidState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLoopMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isCompletion()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pause play"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->pause()V

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableCoreStartPauseListen:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->callbackOnPause()V

    :cond_1
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isReuseTextureDisable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->saveLastValidFrame()V

    :cond_2
    return-void
.end method

.method private release(ZZ)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release player.clear.cleartargetstate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stop()V

    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->DEFAULT_INNER:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->OUT:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->resetDataBefore(Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->releaseNoStatus()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->changeCurrentState(I)V

    if-eqz p1, :cond_2

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    :cond_2
    if-eqz p2, :cond_3

    sget-object p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->DEFAULT_INNER:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->OUT:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->resetDataAfter(Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;)V

    :cond_4
    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->abandonAudioFocus()V

    :cond_5
    return-void
.end method

.method private resetImpl(Z)Lcom/hunantv/media/widget/MgtvLoopVideoView$ResetResult;
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    sget-object v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->DEFAULT_INNER:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->OUT:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->resetDataBefore(Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->reset()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->changeCurrentState(I)V

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->DEFAULT_INNER:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->OUT:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->resetDataAfter(Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;)V

    if-eqz v0, :cond_3

    sget-object p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$ResetResult;->RESET_OK:Lcom/hunantv/media/widget/MgtvLoopVideoView$ResetResult;

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$ResetResult;->RESET_ERR:Lcom/hunantv/media/widget/MgtvLoopVideoView$ResetResult;

    :goto_2
    return-object p0

    :cond_4
    sget-object p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$ResetResult;->NONE:Lcom/hunantv/media/widget/MgtvLoopVideoView$ResetResult;

    return-object p0
.end method

.method private resetVideoPath()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "resetVideoPath mCurrentUri == null return"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->resetVideoPath(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V

    return-void
.end method

.method private resetVideoPathNormalImpl(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSurfaceHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->resetImpl(Z)Lcom/hunantv/media/widget/MgtvLoopVideoView$ResetResult;

    move-result-object v2

    sget-object v3, Lcom/hunantv/media/widget/MgtvLoopVideoView$ResetResult;->NONE:Lcom/hunantv/media/widget/MgtvLoopVideoView$ResetResult;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->setVideoPath(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object p1, Lcom/hunantv/media/widget/MgtvLoopVideoView$ResetResult;->RESET_ERR:Lcom/hunantv/media/widget/MgtvLoopVideoView$ResetResult;

    if-ne v2, p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------chodison----reprepare MgtvMediaPlayer mMgtvMediaPlayerHardwareMode:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mMgtvMediaPlayerHardwareMode:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " url:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {p2, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReportParams(Lcom/hunantv/media/report/ReportParams;)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->configImgoPlayer()V

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyToPlay:Z

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mHasSurfaceHolderDestroy:Z

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetVideoPath streamKey:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStreamKey:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p2, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReadDataSourceType(I)V

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget v3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStreamKey:I

    invoke-virtual {p2, p3, v2, v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setP2pDataSource(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;I)V

    :goto_1
    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    invoke-virtual {p2, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSurfaceHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->prepareAsync()V

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->changeCurrentState(I)V
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const p3, 0x6acfcc

    invoke-interface {p0, p3, p1}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const p2, 0x6acfc9

    const/4 p3, 0x2

    invoke-interface {p0, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNonSurfaceHolderPVTimestamp:J

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOpenVideoWhenSurfaceCreate:Z

    :goto_4
    return-void
.end method

.method private setRender(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRender render:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid render:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", change to surfaceview"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderViewType:I

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->setRenderView(I)V

    goto :goto_1

    :cond_1
    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSurfaceHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/media/player/MgtvRenderView;->setVideoSize(II)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method private setRenderView(I)V
    .locals 11

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSurfaceHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    iget-object v4, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSHCallback:Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    invoke-virtual {v3, v4}, Lcom/hunantv/media/player/MgtvRenderView;->removeRenderCallback(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {v3}, Lcom/hunantv/media/player/MgtvRenderView;->release()V

    iput-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setRenderView removeRenderView"

    invoke-static {v3, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRenderType:I

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnhanceQualityType:I

    iget-object v4, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v0}, Lcom/hunantv/media/report/ReportParams;->setRenderType(I)Lcom/hunantv/media/report/ReportParams;

    iget-object v4, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4, v0}, Lcom/hunantv/media/report/ReportParams;->setEnhanceQualityType(I)Lcom/hunantv/media/report/ReportParams;

    :cond_2
    new-instance v0, Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-boolean v8, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableOpengl:Z

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRenderWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    iget-object v10, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFilterCallback:Lcom/hunantv/media/player/d/f$a;

    move-object v5, v0

    move v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/hunantv/media/player/MgtvRenderView;-><init>(Landroid/content/Context;IZLcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;Lcom/hunantv/media/player/d/f$a;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mFakeFrameView:Lcom/hunantv/media/player/c;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/MgtvRenderView;->bindFakeFrameView(Lcom/hunantv/media/player/c;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvRenderView;->getRenderView()Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->bindRenderView(Lcom/hunantv/media/player/IMgtvRenderView;)V

    :cond_4
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRenderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->setRenderFilter(Lcom/hunantv/media/widget/IVideoView$RenderFilter;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSHCallback:Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvRenderView;->addRenderCallback(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    iget v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mVideoRotationDegree:I

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvRenderView;->setVideoRotation(I)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAntiViewShake:Z

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvRenderView;->setAntiShake(Z)V

    iget p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAspectRatio:I

    if-lez p1, :cond_6

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/MgtvRenderView;->setAspectRatio(I)V

    :cond_6
    iget p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mVideoWidth:I

    if-lez p1, :cond_7

    iget v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mVideoHeight:I

    if-lez v0, :cond_7

    iget-object v4, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {v4, p1, v0}, Lcom/hunantv/media/player/MgtvRenderView;->setVideoSize(II)V

    :cond_7
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x11

    if-eqz p1, :cond_9

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v4, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsSecure:Z

    invoke-direct {p0, v4}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->setSecureImpl(Z)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "setRenderView addRenderView"

    invoke-static {v4, v5}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v3, :cond_8

    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDisplayFloatRect:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    invoke-virtual {p1, v3}, Lcom/hunantv/media/player/MgtvRenderView;->setDisplayFloatRect(Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mResizableFrameView:Lcom/hunantv/media/player/l;

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mResizableFrameView:Lcom/hunantv/media/player/l;

    :cond_a
    new-instance p1, Lcom/hunantv/media/player/l;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/hunantv/media/player/l;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mResizableFrameView:Lcom/hunantv/media/player/l;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mResizableFrameView:Lcom/hunantv/media/player/l;

    invoke-virtual {p1, p0}, Lcom/hunantv/media/player/MgtvRenderView;->bindResizableFrameView(Lcom/hunantv/media/player/l;)V

    :cond_b
    return-void
.end method

.method private setSecureImpl(Z)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setSecure(Z)V

    :cond_0
    return-void
.end method

.method private setVideoURI(Landroid/net/Uri;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNonSurfaceHolderPVTimestamp:J

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSeekWhenPrepared:I

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->openVideo()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateDataCacheSizeKB()V
    .locals 1

    iget v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mDataCacheSizeKB:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->configDSMemoryKeepSize(II)V

    :cond_0
    return-void
.end method

.method private updateSkipLoopFilter()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    invoke-virtual {v0, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSkipLoopFilter(Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeSourceAsync(Lcom/hunantv/media/widget/IVideoView$MediaSource;III)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    const v13, 0x6acfc1

    const/4 v14, 0x0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v13, v14}, Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;->onChangeSourceFailed(Ljava/lang/String;II)V

    :cond_0
    return-void

    :cond_1
    iget v3, v0, Lcom/hunantv/media/widget/IVideoView$MediaSource;->readType:I

    iget-object v15, v0, Lcom/hunantv/media/widget/IVideoView$MediaSource;->url:Ljava/lang/String;

    iget-object v9, v0, Lcom/hunantv/media/widget/IVideoView$MediaSource;->p2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    iget-object v8, v0, Lcom/hunantv/media/widget/IVideoView$MediaSource;->proxyUrl:Ljava/lang/String;

    iget-object v2, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v2, :cond_4

    if-eqz v3, :cond_2

    if-nez v9, :cond_3

    :try_start_0
    invoke-static {v8}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v2, v8

    move-object v13, v9

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_3
    iget-object v2, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    move-object v4, v15

    move-object v5, v9

    move-object v6, v8

    move/from16 v7, p2

    move-object v0, v8

    move/from16 v8, p3

    move-object v13, v9

    move/from16 v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->switchP2pVideoSource(ILjava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;III)V

    move-object v2, v0

    goto :goto_1

    :goto_0
    iput v14, v0, Lcom/hunantv/media/widget/IVideoView$MediaSource;->readType:I

    iget-object v0, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0, v15, v10, v11, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->switchVideoSource(Ljava/lang/String;III)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeSourceAsync url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeSourceAsync p2pTask:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeSourceAsync proxyUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeSourceAsync type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "src:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",dst:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    :catch_1
    iget-object v0, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

    if-eqz v0, :cond_4

    const v1, 0x6acfc3

    :goto_2
    invoke-interface {v0, v15, v1, v14}, Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;->onChangeSourceFailed(Ljava/lang/String;II)V

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, v1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

    if-eqz v0, :cond_4

    const v1, 0x6acfc1

    goto :goto_2

    :cond_4
    :goto_4
    return-void
.end method

.method public changeSourceAsync(Ljava/lang/String;III)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->switchVideoSource(Ljava/lang/String;III)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeSourceAsync url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeSourceAsync src:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",dst:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

    if-eqz p0, :cond_0

    const p2, 0x6acfc3

    :goto_0
    invoke-interface {p0, p1, p2, v1}, Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;->onChangeSourceFailed(Ljava/lang/String;II)V

    goto :goto_2

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

    if-eqz p0, :cond_0

    const p2, 0x6acfc1

    goto :goto_0

    :cond_0
    :goto_2
    return-void
.end method

.method public cleanUri()V
    .locals 2

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cleanUri"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    return-void
.end method

.method public configDataCacheSizeKB(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mDataCacheSizeKB:I

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->updateDataCacheSizeKB()V

    return-void
.end method

.method public configImgoPlayer()V
    .locals 10

    invoke-super {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->configImgoPlayer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOpenVideoWhenSurfaceCreate:Z

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAddrInfoTypeInt:I

    invoke-virtual {v1, v2}, Lcom/hunantv/media/report/ReportParams;->setAddrInfoInt(I)Lcom/hunantv/media/report/ReportParams;

    :cond_0
    iget v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDnsFamilyType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->setNetAddrinfo(II)V

    :goto_0
    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/hunantv/media/player/MgtvRenderView;->getRenderView()Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->bindRenderView(Lcom/hunantv/media/player/IMgtvRenderView;)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mConnectTimeOut:I

    iget v4, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReciveDataTimeOut:I

    iget v5, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mBufferTimeoutMs:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setTimeout(III)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSourceType(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAccurateSeekEnable:Z

    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setAccurateSeekEnable(Z)V

    iget-object v4, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v5, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iget v6, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAddrInfoTimeoutMs:I

    iget-boolean v7, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mJavaDnsEnable:Z

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iget-boolean v9, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNativeDnsAsyncEnable:Z

    invoke-virtual/range {v4 .. v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setNetAddrinfo(Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;IZLcom/hunantv/media/player/a/a$b;Z)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTsNotSkip:Z

    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->configTsNotSkip(Z)V

    iget v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLoadMaxRetryTime:I

    if-lez v1, :cond_3

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->configLoadMaxRetryTime(I)V

    :cond_3
    iget v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mWeakNetSpeed:I

    if-lez v1, :cond_4

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->configWeakBufferSpeed(I)V

    :cond_4
    iget v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mWeakBufferTimeoutMs:I

    if-lez v1, :cond_5

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->configWeakBufferTimeout(I)V

    :cond_5
    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCacheEnable:Z

    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->enableM3u8Cache(Z)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCacheM3u8Path:Ljava/lang/String;

    iget-object v4, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCacheTsPaths:[Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setM3u8Caches(Ljava/lang/String;[Ljava/lang/String;)V

    iget v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLeftVolume:F

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-ltz v4, :cond_6

    iget v4, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRightVolume:F

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_6

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3, v1, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setVolume(FF)V

    :cond_6
    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isMgtvCore()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mUserEnableCoreStartPauseListen:Z

    if-eqz v1, :cond_7

    iput-boolean v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableCoreStartPauseListen:Z

    goto :goto_2

    :cond_7
    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableCoreStartPauseListen:Z

    :goto_2
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mForceDecodeMode:Z

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->configForceHW(Z)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->bindGifRecorder(Lcom/hunantv/media/recoder/GifRecorder;)Lcom/hunantv/media/recoder/GifRecorder;

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPlaySpeed:F

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlaybackSpeed(F)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLiveStartIndex:I

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setLiveStartIndex(I)V

    iget v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartPosMs:I

    if-lez v0, :cond_8

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlayerPrepareStartPosMs(I)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configImgoPlayer mLoopStartPosMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartPosMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReadDataSourceTypeConfig:I

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReadDataSourceType(I)V

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->updateDataCacheSizeKB()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->updateSkipLoopFilter()V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableTsSkipError:Z

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->enableTsSkipError(Z)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableMgtvMediaCodec:Z

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->enableMgtvMediaCodec(Z)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configImgoPlayer mConnectTimeOut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mConnectTimeOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mReciveDataTimeOut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReciveDataTimeOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mBufferTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mBufferTimeoutMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mDataSourceType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mAccurateSeekEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAccurateSeekEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mAddrInfoType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mAddrInfoTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAddrInfoTimeoutMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mJavaDnsEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mJavaDnsEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mJavaDnsType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mPlaySpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPlaySpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mLiveStartIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLiveStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mEnableLiveMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableLiveMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mReadDataSourceTypeConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReadDataSourceTypeConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mNativeDnsAsyncEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNativeDnsAsyncEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mEnableTsSkipError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableTsSkipError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mEnableMgtvMediaCodec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableMgtvMediaCodec:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNonSurfaceHolderPVTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNonSurfaceHolderPVTimestamp:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setNetdSVCTimeMs(J)V

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p0, v2, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setNetdSVCTimeMs(J)V

    :cond_a
    :goto_3
    return-void
.end method

.method public configLoadMaxRetryTime(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLoadMaxRetryTime:I

    return-void
.end method

.method public configTsNotSkip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTsNotSkip:Z

    return-void
.end method

.method public configWeakBufferTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mWeakBufferTimeoutMs:I

    return-void
.end method

.method public configWeakNetSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mWeakNetSpeed:I

    return-void
.end method

.method public convertRender(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertRender to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0, v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->release(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mInitRenderViewType:I

    invoke-virtual {p0, p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->toggleRenders(I)V

    return-void
.end method

.method public enableCoreStartPauseListen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mUserEnableCoreStartPauseListen:Z

    return-void
.end method

.method public enableM3u8Cache(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCacheEnable:Z

    return-void
.end method

.method public enableSubtitle(Z)V
    .locals 0

    return-void
.end method

.method public enableTsSkipError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableTsSkipError:Z

    return-void
.end method

.method public getAddrInfoTypeInt()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAddrInfoTypeInt:I

    return p0
.end method

.method public getBitRate()I
    .locals 2

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoBitRate()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBufferingPercentage()I
    .locals 1

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getBufferingPercent()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPosition()I
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCurrentState:I

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getCurrentPosition mMediaPlayer is null"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPositionUnsafe()I
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCurrentState:I

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentPositionUnSafe()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentStatus()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCurrentState:I

    return p0
.end method

.method public getDLSpeedB()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurDLSpeed()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDLSpeedFormat()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurDLSpeed()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "KB/S"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDuration()I
    .locals 1

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDuration()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getErrorUrl()Ljava/lang/String;

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getFPS()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoFPS()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getFlowDataStatistic()Lcom/hunantv/media/player/statistic/FlowDataStatistic;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    return-object p0
.end method

.method public getGifRecorder()Lcom/hunantv/media/recoder/GifRecorder;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    return-object p0
.end method

.method public getLastErrorTypeCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastErrorTypeCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTagKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLoopMode:Z

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "00"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLogTagKey()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->NONE:Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-static {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoTypeName(Lcom/hunantv/media/report/ReportParams$VideoType;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoTypeName(Lcom/hunantv/media/report/ReportParams$VideoType;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-boolean v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->sAutoNativeStack:Z

    if-eqz v1, :cond_1

    const-string v1, "STACK-"

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getRenderViewName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackSpeed()F
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPlaySpeed:F

    return p0
.end method

.method public getPlayerExtraInfo()Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayerExtraInfo()Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlayerVersion()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRenderFilter()Lcom/hunantv/media/widget/IVideoView$RenderFilter;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRenderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    return-object p0
.end method

.method public getRenderView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRenderViewName()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderViewType:I

    if-nez p0, :cond_0

    const-string p0, "surface"

    goto :goto_0

    :cond_0
    const-string p0, "texture"

    :goto_0
    return-object p0
.end method

.method public getRenderViewType()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderViewType:I

    return p0
.end method

.method public getSnapshot(II)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getSnapshot(II)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTotalBuffering()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getBufferedPercentage()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAccurateSeekEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAccurateSeekEnable:Z

    return p0
.end method

.method public isCompletion()Z
    .locals 1

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCurrentState:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDataLoadPaused()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsDataLoaderPaused:Z

    return p0
.end method

.method public isHardware()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isHardware()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isImgoSourceModuleOpen()Z
    .locals 1

    invoke-static {}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->getInstance()Lcom/hunantv/media/player/loader/ImgoLibLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->isDsLibLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_IMGO:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOnlyAudioMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPrepared()Z
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isInPlaybackState()Z

    move-result p0

    return p0
.end method

.method public isRecording()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRecording()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRendered()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRendered()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isStretchScreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isStretchScreen:Z

    return p0
.end method

.method public isSupportedSnapshot()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isSupportedSnapshot()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTextureView()Z
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvRenderView;->getRenderViewType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTsSkipErrorEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableTsSkipError:Z

    return p0
.end method

.method public nativeCrashTest(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;->TYPE_NATIVESO_IMGOFFMPEG:Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;->TYPE_NATIVESO_IMGODS:Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;->TYPE_NATIVESO_IMGOMEDIAPLAYER:Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;->TYPE_NATIVESO_IMGOHELP:Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;

    :goto_0
    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->nativeCrashTest(Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;)V

    :cond_3
    return-void
.end method

.method public onVideoRenderStart()V
    .locals 1

    invoke-super {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->onVideoRenderStart()V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDisplayFloatRect:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    invoke-virtual {v0, p0}, Lcom/hunantv/media/player/MgtvRenderView;->setDisplayFloatRect(Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;)V

    :cond_0
    return-void
.end method

.method public openImgoDSModule(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetIsLoopMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openImgoDSModule fileFormat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->getFileFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_IMGO:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    :goto_0
    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public pause()V
    .locals 1

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->pauseInner()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    return-void
.end method

.method public pauseLoadData()V
    .locals 2

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pauseLoadData"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pauseLoadData in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsDataLoaderPaused:Z

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->pauseLoadData()V

    :cond_0
    return-void
.end method

.method public reBindTexture()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->release()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->release(ZZ)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->afterRelease()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->resetImpl(Z)Lcom/hunantv/media/widget/MgtvLoopVideoView$ResetResult;

    return-void
.end method

.method public resetDataBefore(Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->resetDataBefore(Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLive:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsDataLoaderPaused:Z

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvRenderView;->reset()V

    :cond_0
    sget-object v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->OUT:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    if-ne p1, v1, :cond_2

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartLeaveTimestamp:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCacheM3u8Path:Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCacheTsPaths:[Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartPosMs:I

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->isBindPlayerLifecycle()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-virtual {p1}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->reset()V

    :cond_1
    iput-wide v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNonSurfaceHolderPVTimestamp:J

    :cond_2
    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOpenVideoWhenSurfaceCreate:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNeedResetLoopPlay:Z

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSeekWhenPrepared:I

    return-void
.end method

.method public resetRender()V
    .locals 1

    sget-boolean v0, Lcom/hunantv/media/global/Constants;->FOR_OTT:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mHasSurfaceHolderDestroy:Z

    :cond_0
    return-void
.end method

.method public resetVideoPath(Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->resetVideoPath(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V

    return-void
.end method

.method public resetVideoPath(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V
    .locals 4

    .line 3
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetVideoPath path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",proxyPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNonSurfaceHolderPVTimestamp:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNeedResetLoopPlay:Z

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v2, 0x6acfcb

    const/16 v3, 0xc

    invoke-interface {v1, v2, v3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    :goto_0
    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    invoke-static {p3}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    goto :goto_2

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    :goto_2
    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v1, :cond_5

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRebindTexture:Z

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mHasSurfaceHolderDestroy:Z

    if-eqz v0, :cond_2

    iget p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderViewType:I

    invoke-virtual {p0, p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->convertRender(I)V

    goto :goto_3

    :cond_2
    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isInLoopValidState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLoopMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isLoopSwitching()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resetVideoPathLoopImpl in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->resetVideoPathLoopImpl(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "resetVideoPathLoopImpl out"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isLoopSwitching()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isLoopSwitching change to resetVideoPathNormalImpl"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resetVideoPathNormalImpl in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->resetVideoPathNormalImpl(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->setVideoPath(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public resetVideoPathLoopImpl(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resetVideoPathLoopImpl mMediaPlayer == null return"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReportParams(Lcom/hunantv/media/report/ReportParams;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyToPlay:Z

    iput-boolean v1, v0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mHasSurfaceHolderDestroy:Z

    iget-object v2, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->resetLoopPlay()V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->resumeLoadData()V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->configImgoPlayer()V

    iget-object v2, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isTextureView()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resetVideoPathLoopImpl mSurfaceHolder == null wait surface attach to window"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNeedResetLoopPlay:Z

    goto :goto_1

    :cond_2
    :goto_0
    iget v7, v0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartPosMs:I

    if-lez v7, :cond_3

    iget-object v2, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v3, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReadDataSourceTypeConfig:I

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->switchLoopSource(ILjava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;I)V

    iput v1, v0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartPosMs:I

    goto :goto_1

    :cond_3
    iget-object v8, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v9, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReadDataSourceTypeConfig:I

    const/4 v13, 0x0

    move-object v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v8 .. v13}, Lcom/hunantv/media/player/MgtvMediaPlayer;->switchLoopSource(ILjava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public resume()V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->openVideo()V

    return-void
.end method

.method public resumeLoadData()V
    .locals 2

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resumeLoadData"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsDataLoaderPaused:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resumeLoadData in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsDataLoaderPaused:Z

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->resumeLoadData()V

    :cond_0
    return-void
.end method

.method public saveLastValidFrame()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvRenderView;->saveLastValidFrame()V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyToPlay:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyPlayPosition:I

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->seekTo(I)V

    iget-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSeekAutoStartAfterCompleteEnable:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCurrentState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->callbackOnStart()V

    :cond_1
    const/4 p1, 0x0

    :cond_2
    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSeekWhenPrepared:I

    return-void
.end method

.method public seekTo(IZ)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_2

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyToPlay:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyPlayPosition:I

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo msec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isLoadDataPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "seekTo resumeLoadData"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->resumeLoadData()V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->seekTo(IZ)V

    iget-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSeekAutoStartAfterCompleteEnable:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCurrentState:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->callbackOnStart()V

    :cond_2
    const/4 p1, 0x0

    :cond_3
    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSeekWhenPrepared:I

    return-void
.end method

.method public setAccurateSeekEnable(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAccurateSeekEnable:Z

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 3

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAspectRatio:I

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAspectRatio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvRenderView;->setAspectRatio(I)V

    :cond_0
    return-void
.end method

.method public setAudioPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public setBufferTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mBufferTimeoutMs:I

    return-void
.end method

.method public setFlowDataStatistic(Lcom/hunantv/media/player/statistic/FlowDataStatistic;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    return-void
.end method

.method public setForceDecodeMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mForceDecodeMode:Z

    return-void
.end method

.method public setLastFrameRecovery(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLastFrameRecovery:Z

    return-void
.end method

.method public setLiveMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLiveConfig:Z

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableLiveMode:Z

    return-void
.end method

.method public setLiveReopen()V
    .locals 1

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableLiveMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setLiveReopen()V

    :cond_0
    return-void
.end method

.method public setLiveStartIndex(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mLiveStartIndex:I

    return-void
.end method

.method public setM3u8Caches(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCacheM3u8Path:Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCacheTsPaths:[Ljava/lang/String;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setM3u8Caches(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setNetAddrinfo(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->setNetAddrinfo(IIZ)V

    return-void
.end method

.method public setNetAddrinfo(IIZ)V
    .locals 4

    .line 2
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNativeDnsAsyncEnable:Z

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v2, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_PRE:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v2, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_MID:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v2, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_BOOT:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne v0, v2, :cond_1

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    :cond_1
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNetAddrinfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",timeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",enablePreDns:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAddrInfoTypeInt:I

    iput-boolean v3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableMgtvMediaCodec:Z

    iget v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDnsFamilyType:I

    if-ne v0, p3, :cond_2

    if-eq p1, p3, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    if-eq p1, v1, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/16 v0, 0x9

    if-eq p1, v0, :cond_4

    const/16 v0, 0x14

    if-eq p1, v0, :cond_3

    :cond_2
    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    :goto_0
    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    goto :goto_1

    :cond_3
    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableMgtvMediaCodec:Z

    goto :goto_1

    :cond_4
    iput-boolean v3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNativeDnsAsyncEnable:Z

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_DNS_CACHE:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    sget-object p1, Lcom/hunantv/media/player/a/a$b;->b:Lcom/hunantv/media/player/a/a$b;

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_DNS_CACHE:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    goto :goto_0

    :cond_7
    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_ONE_BY_ONE:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    goto :goto_0

    :cond_8
    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_THREAD:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    goto :goto_0

    :goto_1
    move p3, v3

    :goto_2
    if-lez p2, :cond_9

    mul-int/lit16 p2, p2, 0x3e8

    iput p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAddrInfoTimeoutMs:I

    :cond_9
    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mJavaDnsEnable:Z

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/hunantv/media/widget/IVideoView$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnBufferringUpdateListener:Lcom/hunantv/media/widget/IVideoView$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnChangeSourceListener(Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnCompletionListener:Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/hunantv/media/widget/IVideoView$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnErrorListener:Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/hunantv/media/widget/IVideoView$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnInfoListener:Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

    return-void
.end method

.method public setOnLoadDataListener(Lcom/hunantv/media/widget/IVideoView$OnLoadDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnLoadDataListener:Lcom/hunantv/media/widget/IVideoView$OnLoadDataListener;

    return-void
.end method

.method public setOnPauseListener(Lcom/hunantv/media/widget/IVideoView$OnPauseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnPauseListener:Lcom/hunantv/media/widget/IVideoView$OnPauseListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnPreparedListener:Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

    return-void
.end method

.method public setOnRecordListener(Lcom/hunantv/media/widget/IVideoView$OnRecordListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnRecordListener:Lcom/hunantv/media/widget/IVideoView$OnRecordListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnSeekCompleteListener:Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;

    return-void
.end method

.method public setOnStartListener(Lcom/hunantv/media/widget/IVideoView$OnStartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnStartListener:Lcom/hunantv/media/widget/IVideoView$OnStartListener;

    return-void
.end method

.method public setOnSwitchSmoothSourceListener(Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;)V
    .locals 0

    return-void
.end method

.method public setOnUpdateStatusListener(Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnUpdateStatusListener:Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnVideoSizeChangedListener:Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;

    return-void
.end method

.method public setOnWarningListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mPlaySpeed:F

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlaybackSpeed(F)V

    :cond_0
    return-void
.end method

.method public setPlayerDebug(Z)V
    .locals 0

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlayerDebug(Z)V

    return-void
.end method

.method public setPlayerHardwareMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mMgtvMediaPlayerHardwareMode:Z

    return-void
.end method

.method public setRenderFilter(Lcom/hunantv/media/widget/IVideoView$RenderFilter;)V
    .locals 1

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRenderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    sget-object v0, Lcom/hunantv/media/widget/MgtvLoopVideoView$18;->$SwitchMap$com$hunantv$media$widget$IVideoView$RenderFilter:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/MgtvRenderView;->setRenderFilter(I)V

    :cond_1
    return-void
.end method

.method public setRenderViewVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setReportParams(Lcom/hunantv/media/report/ReportParams;)V
    .locals 1

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRenderType:I

    invoke-virtual {p1, v0}, Lcom/hunantv/media/report/ReportParams;->setRenderType(I)Lcom/hunantv/media/report/ReportParams;

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    iget v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnhanceQualityType:I

    invoke-virtual {p1, v0}, Lcom/hunantv/media/report/ReportParams;->setEnhanceQualityType(I)Lcom/hunantv/media/report/ReportParams;

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mVideoIntroduction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/report/ReportParams;->setSvds(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {p1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReportParams(Lcom/hunantv/media/report/ReportParams;)V

    :cond_1
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsScreenOnWhilePlaying:Z

    return-void
.end method

.method public setSecure(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsSecure:Z

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->setSecureImpl(Z)V

    return-void
.end method

.method public setSkipLoopFilter(Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->updateSkipLoopFilter()V

    return-void
.end method

.method public setStartPosMs(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStartPosMs:I

    return-void
.end method

.method public setStreamKey(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mStreamKey:I

    return-void
.end method

.method public setStretchScreen()V
    .locals 5

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->shouldGetVideoParams:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "@@@"

    const-string v2, "getFullScreenVideoParams"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getFullScreenVideoParams()V

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->shouldGetVideoParams:Z

    :cond_0
    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isStretchScreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1, v1, v2, v0}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mVideoWidth:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mVideoHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isStretchScreen:Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->originalVideoWidth:I

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mVideoWidth:I

    iget v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->originalVideoHeight:I

    iput v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mVideoHeight:I

    iget v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->fromLeft:I

    iget v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->fromTop:I

    iget v3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->fromRight:I

    iget v4, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->fromBottom:I

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isStretchScreen:Z

    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mVideoWidth:I

    iget p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mVideoHeight:I

    invoke-virtual {v0, v1, p0}, Lcom/hunantv/media/player/MgtvRenderView;->setVideoSize(II)V

    :cond_2
    return-void
.end method

.method public setSurfaceHolderListener(Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSurfaceHolderListener:Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    return-void
.end method

.method public setTargetIsLoopMode(Z)Lcom/hunantv/media/widget/MgtvLoopVideoView;
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetIsLoopMode:Z

    return-object p0
.end method

.method public setTimeout(II)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mConnectTimeOut:I

    iput p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReciveDataTimeOut:I

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->setVideoPath(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoPath path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",proxyPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNeedResetLoopPlay:Z

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRebindTexture:Z

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    invoke-static {p3}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :goto_1
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const p1, 0x6acfcb

    const/16 p2, 0xb

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->setVideoURI(Landroid/net/Uri;)V

    :goto_2
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isRequestAudioFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->requestAudioFocus()V

    :cond_0
    iget v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mCurrentState:I

    if-eq v0, v1, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "play video direct after complete"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->resumeLoadData()V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->start()V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "start play"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mEnableCoreStartPauseListen:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->callbackOnStart()V

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isLoadDataPaused()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->resumeLoadData()V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "start:resumeLoadData"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iput v1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mTargetState:I

    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mRecordFilePath:Ljava/lang/String;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->startRecVideo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stopInner()V
    .locals 1

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLoopMode:Z

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->pause()V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopRecord()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stopRecVideo()V

    :cond_0
    return-void
.end method

.method public toggleRenders(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->toggleRenders(I)V

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->setRender(I)V

    return-void
.end method

.method public useSystemPlayer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mUseSystemPlayer:Z

    return-void
.end method
