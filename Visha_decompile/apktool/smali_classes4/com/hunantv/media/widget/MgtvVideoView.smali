.class public Lcom/hunantv/media/widget/MgtvVideoView;
.super Lcom/hunantv/media/widget/MgtvAbstractVideoView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/widget/MgtvVideoView$ResetResult;
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

.field private mBackJavaDns:Z

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

.field private mEnableDnsNoNetStrategy:Z

.field private mEnableHttpDnsRetry:Z

.field private mEnableJavaIPCache:Z

.field private mEnableLiveMode:Z

.field private mEnableMgtvMediaCodec:Z

.field private mEnableOpengl:Z

.field private mEnableP2pHttpDns:Z

.field private mEnableTsSkipError:Z

.field private mEnhanceQualityType:I

.field private mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

.field private mErrorMsg:Ljava/lang/String;

.field private mFilterCallback:Lcom/hunantv/media/player/d/f$a;

.field private mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

.field private mForceDecodeMode:Z

.field private mFromSurfaceDestroyPlayPosition:I

.field private mFromSurfaceDestroyToPlay:Z

.field private mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

.field private mHasSurfaceHolderDestroy:Z

.field private mHlsMD5CheckValue:I

.field private mInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

.field private mIsLive:Z

.field private mIsLiveConfig:Z

.field private mIsScreenOnWhilePlaying:Z

.field private mIsSecure:Z

.field private mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

.field private mLastFrameRecovery:Z

.field private volatile mLastSurfaceDestroy:Z

.field private mLiveStartIndex:I

.field private mLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

.field private mLoadMaxRetryTime:I

.field private mLogCallBackOpen:Z

.field private mMgtvMediaPlayerHardwareMode:Z

.field private mNativeDnsAsyncEnable:Z

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

.field private mOpenAddrDefaultConfig:Z

.field private mOpenVideoWhenSurfaceCreate:Z

.field private mPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

.field private mPlaySpeed:F

.field private mPlayerWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

.field mPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

.field private mRebindTexture:Z

.field private mRecordFilePath:Ljava/lang/String;

.field private mRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

.field private mReleasedByPauseLoadData:Z

.field private mRenderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

.field private mRenderType:I

.field private mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

.field private mRenderWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

.field mSHCallback:Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

.field private mSeekCompleteListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;

.field private mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

.field private mStartLeaveTimestamp:J

.field private mStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

.field private mStartPosMs:I

.field private mStreamKey:I

.field private mSurfaceHeight:I

.field private mSurfaceHolderListener:Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

.field private mSurfaceWidth:I

.field private mSwitchSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

.field private mTargetState:I

.field private mTsNotSkip:Z

.field private mUseSystemPlayer:Z

.field private mUserEnableCoreStartPauseListen:Z

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private mWeakBufferTimeoutMs:I

.field private mWeakNetSpeed:I

.field private metrics:Landroid/util/DisplayMetrics;

.field private originalVideoHeight:I

.field private originalVideoWidth:I

.field private reportErrWithoutMpManager:Lcom/hunantv/media/report/a;

.field private shouldGetVideoParams:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastSurfaceDestroy:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCurrentState:I

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mMgtvMediaPlayerHardwareMode:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mForceDecodeMode:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyToPlay:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyPlayPosition:I

    const-string v2, ""

    iput-object v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHasSurfaceHolderDestroy:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLogCallBackOpen:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStreamKey:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLive:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mUseSystemPlayer:Z

    sget-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoTypeInt:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOpenAddrDefaultConfig:Z

    sget-object v3, Lcom/hunantv/media/player/a/a$b;->a:Lcom/hunantv/media/player/a/a$b;

    iput-object v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNativeDnsAsyncEnable:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBackJavaDns:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableHttpDnsRetry:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableDnsNoNetStrategy:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableP2pHttpDns:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHlsMD5CheckValue:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableMgtvMediaCodec:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableJavaIPCache:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastFrameRecovery:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakNetSpeed:I

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakBufferTimeoutMs:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTsNotSkip:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLoadMaxRetryTime:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mUserEnableCoreStartPauseListen:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableCoreStartPauseListen:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsScreenOnWhilePlaying:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlaySpeed:F

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLiveStartIndex:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsSecure:Z

    iput v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAspectRatio:I

    sget-object v0, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->NORMAL:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLiveConfig:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableLiveMode:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartPosMs:I

    new-instance v0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {v0}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$1;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSHCallback:Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$2;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$2;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFilterCallback:Lcom/hunantv/media/player/d/f$a;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$3;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$3;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$4;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$4;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSizeChangedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$5;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$5;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$6;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$6;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$7;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$7;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->reportErrWithoutMpManager:Lcom/hunantv/media/report/a;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$8;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$8;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$9;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$9;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSeekCompleteListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$10;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$10;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferingUpdateListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$11;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$11;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferingTimeoutListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$12;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$12;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSwitchSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$13;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$13;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlayerWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v0, Lcom/hunantv/media/recoder/GifRecorder;

    invoke-direct {v0}, Lcom/hunantv/media/recoder/GifRecorder;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$14;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$14;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$15;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$15;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$16;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$16;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$17;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$17;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvVideoView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 2
    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastSurfaceDestroy:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCurrentState:I

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mMgtvMediaPlayerHardwareMode:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mForceDecodeMode:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyToPlay:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyPlayPosition:I

    const-string v2, ""

    iput-object v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHasSurfaceHolderDestroy:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLogCallBackOpen:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStreamKey:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLive:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mUseSystemPlayer:Z

    sget-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoTypeInt:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOpenAddrDefaultConfig:Z

    sget-object v3, Lcom/hunantv/media/player/a/a$b;->a:Lcom/hunantv/media/player/a/a$b;

    iput-object v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNativeDnsAsyncEnable:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBackJavaDns:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableHttpDnsRetry:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableDnsNoNetStrategy:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableP2pHttpDns:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHlsMD5CheckValue:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableMgtvMediaCodec:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableJavaIPCache:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastFrameRecovery:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakNetSpeed:I

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakBufferTimeoutMs:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTsNotSkip:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLoadMaxRetryTime:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mUserEnableCoreStartPauseListen:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableCoreStartPauseListen:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsScreenOnWhilePlaying:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlaySpeed:F

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLiveStartIndex:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsSecure:Z

    iput v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAspectRatio:I

    sget-object v0, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->NORMAL:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLiveConfig:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableLiveMode:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartPosMs:I

    new-instance v0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {v0}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$1;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSHCallback:Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$2;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$2;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFilterCallback:Lcom/hunantv/media/player/d/f$a;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$3;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$3;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$4;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$4;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSizeChangedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$5;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$5;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$6;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$6;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$7;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$7;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->reportErrWithoutMpManager:Lcom/hunantv/media/report/a;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$8;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$8;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$9;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$9;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSeekCompleteListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$10;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$10;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferingUpdateListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$11;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$11;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferingTimeoutListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$12;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$12;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSwitchSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$13;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$13;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlayerWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v0, Lcom/hunantv/media/recoder/GifRecorder;

    invoke-direct {v0}, Lcom/hunantv/media/recoder/GifRecorder;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$14;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$14;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$15;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$15;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$16;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$16;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$17;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$17;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/widget/MgtvVideoView;->initVideoView(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 4

    .line 3
    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastSurfaceDestroy:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCurrentState:I

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mMgtvMediaPlayerHardwareMode:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mForceDecodeMode:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyToPlay:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyPlayPosition:I

    const-string v2, ""

    iput-object v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHasSurfaceHolderDestroy:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLogCallBackOpen:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStreamKey:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLive:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mUseSystemPlayer:Z

    sget-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoTypeInt:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOpenAddrDefaultConfig:Z

    sget-object v3, Lcom/hunantv/media/player/a/a$b;->a:Lcom/hunantv/media/player/a/a$b;

    iput-object v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNativeDnsAsyncEnable:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBackJavaDns:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableHttpDnsRetry:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableDnsNoNetStrategy:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableP2pHttpDns:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHlsMD5CheckValue:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableMgtvMediaCodec:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableJavaIPCache:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastFrameRecovery:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakNetSpeed:I

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakBufferTimeoutMs:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTsNotSkip:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLoadMaxRetryTime:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mUserEnableCoreStartPauseListen:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableCoreStartPauseListen:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsScreenOnWhilePlaying:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlaySpeed:F

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLiveStartIndex:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsSecure:Z

    iput v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAspectRatio:I

    sget-object v0, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->NORMAL:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLiveConfig:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableLiveMode:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartPosMs:I

    new-instance v0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {v0}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$1;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSHCallback:Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$2;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$2;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFilterCallback:Lcom/hunantv/media/player/d/f$a;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$3;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$3;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$4;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$4;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSizeChangedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$5;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$5;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$6;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$6;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$7;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$7;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->reportErrWithoutMpManager:Lcom/hunantv/media/report/a;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$8;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$8;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$9;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$9;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSeekCompleteListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$10;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$10;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferingUpdateListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$11;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$11;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferingTimeoutListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$12;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$12;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSwitchSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$13;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$13;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlayerWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v0, Lcom/hunantv/media/recoder/GifRecorder;

    invoke-direct {v0}, Lcom/hunantv/media/recoder/GifRecorder;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$14;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$14;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$15;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$15;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$16;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$16;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$17;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$17;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/widget/MgtvVideoView;->initVideoView(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 4

    .line 4
    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastSurfaceDestroy:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCurrentState:I

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mMgtvMediaPlayerHardwareMode:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mForceDecodeMode:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyToPlay:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyPlayPosition:I

    const-string v2, ""

    iput-object v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHasSurfaceHolderDestroy:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLogCallBackOpen:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStreamKey:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLive:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mUseSystemPlayer:Z

    sget-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoTypeInt:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOpenAddrDefaultConfig:Z

    sget-object v3, Lcom/hunantv/media/player/a/a$b;->a:Lcom/hunantv/media/player/a/a$b;

    iput-object v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNativeDnsAsyncEnable:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBackJavaDns:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableHttpDnsRetry:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableDnsNoNetStrategy:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableP2pHttpDns:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHlsMD5CheckValue:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableMgtvMediaCodec:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableJavaIPCache:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastFrameRecovery:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakNetSpeed:I

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakBufferTimeoutMs:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTsNotSkip:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLoadMaxRetryTime:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mUserEnableCoreStartPauseListen:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableCoreStartPauseListen:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsScreenOnWhilePlaying:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlaySpeed:F

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLiveStartIndex:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsSecure:Z

    iput v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAspectRatio:I

    sget-object v0, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->NORMAL:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLiveConfig:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableLiveMode:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartPosMs:I

    new-instance v0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {v0}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$1;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSHCallback:Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$2;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$2;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFilterCallback:Lcom/hunantv/media/player/d/f$a;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$3;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$3;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$4;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$4;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSizeChangedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$5;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$5;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$6;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$6;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$7;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$7;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->reportErrWithoutMpManager:Lcom/hunantv/media/report/a;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$8;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$8;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$9;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$9;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSeekCompleteListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$10;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$10;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferingUpdateListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$11;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$11;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferingTimeoutListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$12;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$12;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSwitchSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$13;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$13;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlayerWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v0, Lcom/hunantv/media/recoder/GifRecorder;

    invoke-direct {v0}, Lcom/hunantv/media/recoder/GifRecorder;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$14;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$14;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$15;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$15;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$16;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$16;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$17;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$17;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    iput-boolean p4, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableOpengl:Z

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/widget/MgtvVideoView;->initVideoView(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastSurfaceDestroy:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCurrentState:I

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mMgtvMediaPlayerHardwareMode:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mForceDecodeMode:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyToPlay:Z

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyPlayPosition:I

    const-string v1, ""

    iput-object v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHasSurfaceHolderDestroy:Z

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLogCallBackOpen:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStreamKey:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLive:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mUseSystemPlayer:Z

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoTypeInt:I

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOpenAddrDefaultConfig:Z

    sget-object v2, Lcom/hunantv/media/player/a/a$b;->a:Lcom/hunantv/media/player/a/a$b;

    iput-object v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNativeDnsAsyncEnable:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBackJavaDns:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableHttpDnsRetry:Z

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableDnsNoNetStrategy:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableP2pHttpDns:Z

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHlsMD5CheckValue:I

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableMgtvMediaCodec:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableJavaIPCache:Z

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastFrameRecovery:Z

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakNetSpeed:I

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakBufferTimeoutMs:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTsNotSkip:Z

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLoadMaxRetryTime:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mUserEnableCoreStartPauseListen:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableCoreStartPauseListen:Z

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsScreenOnWhilePlaying:Z

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlaySpeed:F

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLiveStartIndex:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsSecure:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAspectRatio:I

    sget-object p2, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->NORMAL:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLiveConfig:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableLiveMode:Z

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartPosMs:I

    new-instance p2, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {p2}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    sget-object p2, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$1;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$1;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSHCallback:Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$2;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$2;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFilterCallback:Lcom/hunantv/media/player/d/f$a;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$3;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$3;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$4;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$4;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSizeChangedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$5;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$5;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$6;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$6;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$7;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$7;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->reportErrWithoutMpManager:Lcom/hunantv/media/report/a;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$8;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$8;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$9;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$9;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSeekCompleteListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$10;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$10;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferingUpdateListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$11;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$11;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferingTimeoutListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$12;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$12;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSwitchSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$13;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$13;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlayerWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance p2, Lcom/hunantv/media/recoder/GifRecorder;

    invoke-direct {p2}, Lcom/hunantv/media/recoder/GifRecorder;-><init>()V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$14;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$14;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$15;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$15;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$16;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$16;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$17;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$17;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvVideoView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastSurfaceDestroy:Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCurrentState:I

    iput p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mMgtvMediaPlayerHardwareMode:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mForceDecodeMode:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyToPlay:Z

    iput p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyPlayPosition:I

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHasSurfaceHolderDestroy:Z

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLogCallBackOpen:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStreamKey:I

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLive:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mUseSystemPlayer:Z

    sget-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoTypeInt:I

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOpenAddrDefaultConfig:Z

    sget-object v1, Lcom/hunantv/media/player/a/a$b;->a:Lcom/hunantv/media/player/a/a$b;

    iput-object v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNativeDnsAsyncEnable:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBackJavaDns:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableHttpDnsRetry:Z

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableDnsNoNetStrategy:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableP2pHttpDns:Z

    iput p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHlsMD5CheckValue:I

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableMgtvMediaCodec:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableJavaIPCache:Z

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastFrameRecovery:Z

    iput p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakNetSpeed:I

    iput p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakBufferTimeoutMs:I

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTsNotSkip:Z

    iput p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLoadMaxRetryTime:I

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mUserEnableCoreStartPauseListen:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableCoreStartPauseListen:Z

    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsScreenOnWhilePlaying:Z

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlaySpeed:F

    iput p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLiveStartIndex:I

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsSecure:Z

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAspectRatio:I

    sget-object p2, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->NORMAL:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLiveConfig:Z

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableLiveMode:Z

    iput p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartPosMs:I

    new-instance p2, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {p2}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    sget-object p2, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$1;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$1;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSHCallback:Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$2;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$2;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFilterCallback:Lcom/hunantv/media/player/d/f$a;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$3;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$3;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$4;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$4;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSizeChangedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$5;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$5;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$6;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$6;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$7;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$7;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->reportErrWithoutMpManager:Lcom/hunantv/media/report/a;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$8;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$8;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$9;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$9;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSeekCompleteListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$10;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$10;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferingUpdateListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$11;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$11;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferingTimeoutListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$12;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$12;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSwitchSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$13;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$13;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlayerWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance p2, Lcom/hunantv/media/recoder/GifRecorder;

    invoke-direct {p2}, Lcom/hunantv/media/recoder/GifRecorder;-><init>()V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$14;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$14;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$15;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$15;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$16;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$16;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    new-instance p2, Lcom/hunantv/media/widget/MgtvVideoView$17;

    invoke-direct {p2, p0}, Lcom/hunantv/media/widget/MgtvVideoView$17;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvVideoView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hunantv/media/widget/IVideoView$Configuration;)V
    .locals 4

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;-><init>(Landroid/content/Context;Lcom/hunantv/media/widget/IVideoView$Configuration;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastSurfaceDestroy:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCurrentState:I

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mMgtvMediaPlayerHardwareMode:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mForceDecodeMode:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyToPlay:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyPlayPosition:I

    const-string v2, ""

    iput-object v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHasSurfaceHolderDestroy:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLogCallBackOpen:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStreamKey:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLive:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mUseSystemPlayer:Z

    sget-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoTypeInt:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOpenAddrDefaultConfig:Z

    sget-object v3, Lcom/hunantv/media/player/a/a$b;->a:Lcom/hunantv/media/player/a/a$b;

    iput-object v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNativeDnsAsyncEnable:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBackJavaDns:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableHttpDnsRetry:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableDnsNoNetStrategy:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableP2pHttpDns:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHlsMD5CheckValue:I

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableMgtvMediaCodec:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableJavaIPCache:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastFrameRecovery:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakNetSpeed:I

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakBufferTimeoutMs:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTsNotSkip:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLoadMaxRetryTime:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mUserEnableCoreStartPauseListen:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableCoreStartPauseListen:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsScreenOnWhilePlaying:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlaySpeed:F

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLiveStartIndex:I

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsSecure:Z

    iput v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAspectRatio:I

    sget-object v0, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->NORMAL:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLiveConfig:Z

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableLiveMode:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartPosMs:I

    new-instance v0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {v0}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$1;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSHCallback:Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$2;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$2;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFilterCallback:Lcom/hunantv/media/player/d/f$a;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$3;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$3;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$4;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$4;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSizeChangedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$5;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$5;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$6;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$6;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$7;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$7;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->reportErrWithoutMpManager:Lcom/hunantv/media/report/a;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$8;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$8;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$9;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$9;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSeekCompleteListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$10;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$10;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferingUpdateListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$11;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$11;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferingTimeoutListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$12;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$12;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSwitchSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$13;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$13;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlayerWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v0, Lcom/hunantv/media/recoder/GifRecorder;

    invoke-direct {v0}, Lcom/hunantv/media/recoder/GifRecorder;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$14;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$14;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$15;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$15;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$16;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$16;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView$17;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvVideoView$17;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lcom/hunantv/media/widget/IVideoView$Configuration;->enableTexture:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    iget-boolean v0, p2, Lcom/hunantv/media/widget/IVideoView$Configuration;->opengl:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableOpengl:Z

    iget-boolean v0, p2, Lcom/hunantv/media/widget/IVideoView$Configuration;->isLiveMode:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLiveConfig:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableLiveMode:Z

    iget p2, p2, Lcom/hunantv/media/widget/IVideoView$Configuration;->renderViewType:I

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/widget/MgtvVideoView;->initVideoView(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvVideoView;->initVideoView(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSurfaceHolderListener:Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/player/MgtvRenderView;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/hunantv/media/widget/MgtvVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRebindTexture:Z

    return p0
.end method

.method public static synthetic access$1100(Lcom/hunantv/media/widget/MgtvVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->openVideo()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/hunantv/media/widget/MgtvVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyToPlay:Z

    return p0
.end method

.method public static synthetic access$1202(Lcom/hunantv/media/widget/MgtvVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyToPlay:Z

    return p1
.end method

.method public static synthetic access$1300(Lcom/hunantv/media/widget/MgtvVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mMgtvMediaPlayerHardwareMode:Z

    return p0
.end method

.method public static synthetic access$1302(Lcom/hunantv/media/widget/MgtvVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mMgtvMediaPlayerHardwareMode:Z

    return p1
.end method

.method public static synthetic access$1400(Lcom/hunantv/media/widget/MgtvVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyPlayPosition:I

    return p0
.end method

.method public static synthetic access$1402(Lcom/hunantv/media/widget/MgtvVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyPlayPosition:I

    return p1
.end method

.method public static synthetic access$1500(Lcom/hunantv/media/widget/MgtvVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastFrameRecovery:Z

    return p0
.end method

.method public static synthetic access$1600(Lcom/hunantv/media/widget/MgtvVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastSurfaceDestroy:Z

    return p0
.end method

.method public static synthetic access$1602(Lcom/hunantv/media/widget/MgtvVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastSurfaceDestroy:Z

    return p1
.end method

.method public static synthetic access$1700(Lcom/hunantv/media/widget/MgtvVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->videoSurfaceDestroyed()V

    return-void
.end method

.method public static synthetic access$1800(Lcom/hunantv/media/widget/MgtvVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderType:I

    return p0
.end method

.method public static synthetic access$1802(Lcom/hunantv/media/widget/MgtvVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderType:I

    return p1
.end method

.method public static synthetic access$1900(Lcom/hunantv/media/widget/MgtvVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnhanceQualityType:I

    return p0
.end method

.method public static synthetic access$1902(Lcom/hunantv/media/widget/MgtvVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnhanceQualityType:I

    return p1
.end method

.method public static synthetic access$200(Lcom/hunantv/media/widget/MgtvVideoView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/widget/MgtvVideoView;->autoStartByStateAndSize(II)V

    return-void
.end method

.method public static synthetic access$2002(Lcom/hunantv/media/widget/MgtvVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->originalVideoWidth:I

    return p1
.end method

.method public static synthetic access$2100(Lcom/hunantv/media/widget/MgtvVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoWidth:I

    return p0
.end method

.method public static synthetic access$2102(Lcom/hunantv/media/widget/MgtvVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoWidth:I

    return p1
.end method

.method public static synthetic access$2202(Lcom/hunantv/media/widget/MgtvVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->originalVideoHeight:I

    return p1
.end method

.method public static synthetic access$2300(Lcom/hunantv/media/widget/MgtvVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoHeight:I

    return p0
.end method

.method public static synthetic access$2302(Lcom/hunantv/media/widget/MgtvVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoHeight:I

    return p1
.end method

.method public static synthetic access$2400(Lcom/hunantv/media/widget/MgtvVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoSarNum:I

    return p0
.end method

.method public static synthetic access$2402(Lcom/hunantv/media/widget/MgtvVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoSarNum:I

    return p1
.end method

.method public static synthetic access$2500(Lcom/hunantv/media/widget/MgtvVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoSarDen:I

    return p0
.end method

.method public static synthetic access$2502(Lcom/hunantv/media/widget/MgtvVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoSarDen:I

    return p1
.end method

.method public static synthetic access$2600(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnVideoSizeChangedListener:Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;

    return-object p0
.end method

.method public static synthetic access$2700(Lcom/hunantv/media/widget/MgtvVideoView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/hunantv/media/widget/MgtvVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mUseSystemPlayer:Z

    return p0
.end method

.method public static synthetic access$2900(Lcom/hunantv/media/widget/MgtvVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartPosMs:I

    return p0
.end method

.method public static synthetic access$300(Lcom/hunantv/media/widget/MgtvVideoView;)J
    .locals 2

    iget-wide v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartLeaveTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$3000(Lcom/hunantv/media/widget/MgtvVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSurfaceWidth:I

    return p0
.end method

.method public static synthetic access$302(Lcom/hunantv/media/widget/MgtvVideoView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartLeaveTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$3100(Lcom/hunantv/media/widget/MgtvVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSurfaceHeight:I

    return p0
.end method

.method public static synthetic access$3200(Lcom/hunantv/media/widget/MgtvVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    return p0
.end method

.method public static synthetic access$3202(Lcom/hunantv/media/widget/MgtvVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    return p1
.end method

.method public static synthetic access$3300(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnPreparedListener:Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

    return-object p0
.end method

.method public static synthetic access$3400(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnCompletionListener:Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;

    return-object p0
.end method

.method public static synthetic access$3502(Lcom/hunantv/media/widget/MgtvVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLive:Z

    return p1
.end method

.method public static synthetic access$3600(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnInfoListener:Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

    return-object p0
.end method

.method public static synthetic access$3700(Lcom/hunantv/media/widget/MgtvVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoRotationDegree:I

    return p0
.end method

.method public static synthetic access$3702(Lcom/hunantv/media/widget/MgtvVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoRotationDegree:I

    return p1
.end method

.method public static synthetic access$3800(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnUpdateStatusListener:Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;

    return-object p0
.end method

.method public static synthetic access$3900(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/report/a;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->reportErrWithoutMpManager:Lcom/hunantv/media/report/a;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    return-object p0
.end method

.method public static synthetic access$4000(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnErrorListener:Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

    return-object p0
.end method

.method public static synthetic access$4100(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnSeekCompleteListener:Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;

    return-object p0
.end method

.method public static synthetic access$4200(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnBufferingUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnBufferringUpdateListener:Lcom/hunantv/media/widget/IVideoView$OnBufferingUpdateListener;

    return-object p0
.end method

.method public static synthetic access$4300(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

    return-object p0
.end method

.method public static synthetic access$4400(Lcom/hunantv/media/widget/MgtvVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableCoreStartPauseListen:Z

    return p0
.end method

.method public static synthetic access$4500(Lcom/hunantv/media/widget/MgtvVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->callbackOnStart()V

    return-void
.end method

.method public static synthetic access$4600(Lcom/hunantv/media/widget/MgtvVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->callbackOnPause()V

    return-void
.end method

.method public static synthetic access$4700(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnRecordListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnRecordListener:Lcom/hunantv/media/widget/IVideoView$OnRecordListener;

    return-object p0
.end method

.method public static synthetic access$4800(Lcom/hunantv/media/widget/MgtvVideoView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRecordFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$4900(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnLoadDataListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnLoadDataListener:Lcom/hunantv/media/widget/IVideoView$OnLoadDataListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/hunantv/media/widget/MgtvVideoView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCurrentState:I

    return p0
.end method

.method public static synthetic access$600(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/hunantv/media/widget/MgtvVideoView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$800(Lcom/hunantv/media/widget/MgtvVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOpenVideoWhenSurfaceCreate:Z

    return p0
.end method

.method public static synthetic access$900(Lcom/hunantv/media/widget/MgtvVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHasSurfaceHolderDestroy:Z

    return p0
.end method

.method private addRenderView()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsSecure:Z

    invoke-direct {p0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->setSecureImpl(Z)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setRenderView addRenderView"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private autoStartByStateAndSize(II)V
    .locals 4

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSurfaceWidth:I

    iput p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSurfaceHeight:I

    iget v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvRenderView;->shouldWaitForResize()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoWidth:I

    if-ne v1, p1, :cond_2

    iget p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoHeight:I

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    iget p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSeekWhenPrepared:I

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1, v3}, Lcom/hunantv/media/widget/MgtvVideoView;->seekTo(IZ)V

    iput v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSeekWhenPrepared:I

    :cond_4
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->start()V

    :cond_5
    return-void
.end method

.method private callbackOnPause()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnPauseListener:Lcom/hunantv/media/widget/IVideoView$OnPauseListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView$OnPauseListener;->onPause()V

    :cond_0
    return-void
.end method

.method private callbackOnStart()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnStartListener:Lcom/hunantv/media/widget/IVideoView$OnStartListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView$OnStartListener;->onStart()V

    :cond_0
    return-void
.end method

.method private changeCurrentState(I)V
    .locals 3

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCurrentState:I

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCurrentState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnUpdateStatusListener:Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;

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

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlayerWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

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

    iget v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoWidth:I

    int-to-float v1, v0

    iget v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoHeight:I

    int-to-float v3, v2

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->metrics:Landroid/util/DisplayMetrics;

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

    iput v5, p0, Lcom/hunantv/media/widget/MgtvVideoView;->fromLeft:I

    iput v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->fromTop:I

    iput v4, p0, Lcom/hunantv/media/widget/MgtvVideoView;->fromRight:I

    add-int/2addr v3, v2

    :goto_0
    iput v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->fromBottom:I

    goto :goto_1

    :cond_0
    mul-int/2addr v0, v3

    div-int/2addr v0, v2

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/hunantv/media/widget/MgtvVideoView;->fromLeft:I

    iput v5, p0, Lcom/hunantv/media/widget/MgtvVideoView;->fromTop:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/hunantv/media/widget/MgtvVideoView;->fromRight:I

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromLeft:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->fromLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/fromTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->fromTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/fromRight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->fromRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/fromBottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->fromBottom:I

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

    invoke-direct {p0, p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->initVideoView(Landroid/content/Context;I)V

    return-void
.end method

.method private initVideoView(Landroid/content/Context;I)V
    .locals 3

    .line 2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/hunantv/media/report/a;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/a;-><init>(Landroid/content/Context;Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->reportErrWithoutMpManager:Lcom/hunantv/media/report/a;

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->metrics:Landroid/util/DisplayMetrics;

    iput p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderViewType:I

    iput p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mInitRenderViewType:I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    :cond_0
    invoke-virtual {p0, p2}, Lcom/hunantv/media/widget/MgtvVideoView;->toggleRenders(I)V

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoWidth:I

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoHeight:I

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

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvVideoView;->checkMemoryStatus(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    return-void
.end method

.method private isInPlaybackState()Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCurrentState:I

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

.method private openAudio()V
    .locals 13

    const-string v0, "Unable to open content: "

    const-string v1, ",details:"

    const-string v2, ""

    iput-object v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imgo openAudio: not ready for playback just yet, will try again later, mCurrentUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->requestAudioFocus()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/hunantv/media/widget/MgtvVideoView;->release(ZZ)V

    const v4, 0x6acfca

    const v5, 0x6acfc3

    const/4 v6, 0x3

    const/4 v7, -0x1

    :try_start_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "BUNDLE_KEY_LOG_TAG_KEY"

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTagKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "BUNDLE_KEY_BOOLEAN_AUDIO_MODE"

    invoke-virtual {v8, v9, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v9, Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v10, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    invoke-direct {v9, v3, v10, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;-><init>(ILandroid/content/Context;Landroid/os/Bundle;)V

    iput-object v9, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p0, v3}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setLastMediaMode(I)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const v9, 0xc02c0fb

    invoke-virtual {v8, v9, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setConfig(II)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setFlowDataStatistic(Lcom/hunantv/media/player/statistic/FlowDataStatistic;)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->setLogTag(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_7

    :catch_3
    move-exception v3

    goto/16 :goto_8

    :catch_4
    move-exception v0

    goto/16 :goto_9

    :catch_5
    move-exception v0

    goto/16 :goto_a

    :catch_6
    move-exception v1

    goto/16 :goto_b

    :catch_7
    move-exception v3

    goto/16 :goto_c

    :catch_8
    move-exception v1

    goto/16 :goto_d

    :catch_9
    move-exception v1

    goto/16 :goto_e

    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReportParams(Lcom/hunantv/media/report/ReportParams;)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->configAudioImgoPlayer()V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-super {p0, v8}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->initListener(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnPreparedListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnStartListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnPauseListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSizeChangedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnVideoSizeChangedListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnCompletionListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnInfoListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnErrorListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferingUpdateListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnBufferingUpdateListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSeekCompleteListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnSeekCompleteListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferingTimeoutListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnBufferingTimeoutListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSwitchSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnSwitchSourceListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlayerWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnWarningListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnRecordVideoListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnLoadDataListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;)V

    iput-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyToPlay:Z

    iput-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHasSurfaceHolderDestroy:Z

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v8, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReadDataSourceType(I)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    iget-object v11, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    iget v12, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStreamKey:I

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setP2pDataSource(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;I)V

    :goto_3
    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v9, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSurfaceHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v8, v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setAudioStreamType(I)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v9, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsScreenOnWhilePlaying:Z

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->prepareAsync()V

    invoke-direct {p0, v3}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v8

    const-string v9, "openAudio is over"

    invoke-static {v8, v9}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/hunantv/media/player/loader/c; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_4
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Throwable: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v7, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    invoke-interface {p0, v5, v3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_5
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v7, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v0, 0x6acfc6

    invoke-interface {p0, v0, v2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_6
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnsatisfiedLinkError: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v7, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    invoke-interface {p0, v4, v2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_7
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LibLoaderError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "details:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",extra:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hunantv/media/player/loader/c;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v7, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    invoke-virtual {v0}, Lcom/hunantv/media/player/loader/c;->a()I

    move-result v0

    invoke-interface {p0, v4, v0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_8
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v7, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    invoke-interface {p0, v5, v2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_9
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointerException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v7, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v0, 0x6acfc5

    invoke-interface {p0, v0, v2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_a
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecurityException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v7, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v0, 0x6acfc4

    invoke-interface {p0, v0, v2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_b
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v7, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v0, 0x6acfc2

    invoke-interface {p0, v0, v2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_c
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v7, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v0, 0x6acfc1

    invoke-interface {p0, v0, v2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_d
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v7, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v0, 0x6ad3ac

    invoke-interface {p0, v0, v2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_e
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v7, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v0, 0x6acfc9

    invoke-interface {p0, v0, v6}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void
.end method

.method private openVideo()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mMgtvMediaPlayerHardwareMode:Z

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->openVideo(Z)V

    return-void
.end method

.method private openVideo(Z)V
    .locals 18

    .line 2
    move-object/from16 v1, p0

    const-string v2, "Unable to open content: "

    const-string v3, ",details:"

    const-string v4, ""

    iput-object v4, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Lcom/hunantv/media/widget/MgtvVideoView;->release(ZZ)V

    iget-boolean v6, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->backPlayStartEnable:Z

    const v7, 0x6acfc9

    const v8, 0x6acfc5

    if-eqz v6, :cond_0

    iget-boolean v6, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isBackground:Z

    if-nez v6, :cond_7

    :cond_0
    iget-object v6, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    if-eqz v6, :cond_11

    iget-object v6, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    if-nez v6, :cond_1

    goto/16 :goto_12

    :cond_1
    iget-object v6, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-nez v6, :cond_3

    iget-object v2, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    if-eqz v2, :cond_2

    invoke-interface {v2, v8, v4}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    :cond_2
    const-string v2, "openVideo renderView is null"

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {v6}, Lcom/hunantv/media/player/MgtvRenderView;->getRenderViewType()I

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    invoke-interface {v6}, Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    if-eqz v2, :cond_5

    invoke-interface {v2, v7, v4}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    :cond_5
    const-string v2, "openVideo surface is invalid"

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    if-eqz v6, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openVideo surface is invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    :goto_0
    iget-boolean v6, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isRequestAudioFocus:Z

    if-eqz v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->requestAudioFocus()V

    :cond_8
    const v6, 0x6acfca

    const v9, 0x6acfc3

    const/4 v10, 0x3

    const/4 v11, -0x1

    :try_start_0
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const-string v12, "BUNDLE_KEY_LOG_TAG_KEY"

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTagKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v12, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v14, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLiveConfig:Z

    iget-boolean v12, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mUseSystemPlayer:Z

    if-nez v12, :cond_b

    if-eqz p1, :cond_a

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v12, :cond_9

    invoke-virtual {v12}, Lcom/hunantv/media/player/MgtvRenderView;->getRenderViewType()I

    move-result v12

    if-nez v12, :cond_9

    iput-boolean v4, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

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

    move-object v2, v0

    goto/16 :goto_a

    :catch_3
    move-exception v0

    move-object v5, v0

    goto/16 :goto_b

    :catch_4
    move-exception v0

    move-object v2, v0

    goto/16 :goto_c

    :catch_5
    move-exception v0

    move-object v2, v0

    goto/16 :goto_d

    :catch_6
    move-exception v0

    move-object v3, v0

    goto/16 :goto_e

    :catch_7
    move-exception v0

    move-object v5, v0

    goto/16 :goto_f

    :catch_8
    move-exception v0

    move-object v3, v0

    goto/16 :goto_10

    :catch_9
    move-exception v0

    move-object v3, v0

    goto/16 :goto_11

    :cond_9
    :goto_1
    new-instance v13, Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    iget-boolean v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    const/16 v16, 0x2

    move-object/from16 v17, v12

    move-object v12, v13

    move-object v8, v13

    move/from16 v13, v16

    move/from16 v16, v14

    move-object/from16 v14, v17

    move-object/from16 p1, v15

    move v15, v7

    move-object/from16 v17, p1

    invoke-direct/range {v12 .. v17}, Lcom/hunantv/media/player/MgtvMediaPlayer;-><init>(ILandroid/content/Context;ZILandroid/os/Bundle;)V

    iput-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    goto :goto_3

    :cond_a
    move/from16 v16, v14

    move-object/from16 p1, v15

    iput-boolean v4, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    new-instance v7, Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v14, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    iget-boolean v15, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    const/4 v13, 0x1

    move-object v12, v7

    move-object/from16 v17, p1

    invoke-direct/range {v12 .. v17}, Lcom/hunantv/media/player/MgtvMediaPlayer;-><init>(ILandroid/content/Context;ZILandroid/os/Bundle;)V

    :goto_2
    iput-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    goto :goto_3

    :cond_b
    move-object/from16 p1, v15

    iput-boolean v5, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mMgtvMediaPlayerHardwareMode:Z

    new-instance v7, Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mContext:Landroid/content/Context;

    move-object/from16 v12, p1

    invoke-direct {v7, v4, v8, v4, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;-><init>(ILandroid/content/Context;ZLandroid/os/Bundle;)V

    goto :goto_2

    :goto_3
    invoke-virtual {v1, v4}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setLastMediaMode(I)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setFlowDataStatistic(Lcom/hunantv/media/player/statistic/FlowDataStatistic;)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    if-eqz v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->setLogTag(Ljava/lang/String;)V

    :cond_c
    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReportParams(Lcom/hunantv/media/report/ReportParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->configImgoPlayer()V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-super {v1, v7}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->initListener(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnPreparedListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnStartListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnPauseListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mSizeChangedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnVideoSizeChangedListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnCompletionListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnInfoListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnErrorListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferingUpdateListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnBufferingUpdateListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mSeekCompleteListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnSeekCompleteListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferingTimeoutListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnBufferingTimeoutListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mSwitchSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnSwitchSourceListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mPlayerWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnWarningListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnRecordVideoListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnLoadDataListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;)V

    iput-boolean v4, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyToPlay:Z

    iput-boolean v4, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mHasSurfaceHolderDestroy:Z

    iget v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReadDataSourceTypeConfig:I

    if-ne v7, v10, :cond_d

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSource:Lcom/hunantv/media/player/MgtvPlayerDataSource;

    if-eqz v7, :cond_d

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v7, v10}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReadDataSourceType(I)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSource:Lcom/hunantv/media/player/MgtvPlayerDataSource;

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSource(Lcom/hunantv/media/player/MgtvPlayerDataSource;)V

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "setDataSource READ_DATASOURCE_TYPE_DATA_SOURCE"

    invoke-static {v7, v8}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    if-nez v7, :cond_f

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    if-eqz v7, :cond_e

    goto :goto_4

    :cond_e
    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v7, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReadDataSourceType(I)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    :goto_4
    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v12, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    iget-object v13, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    if-eqz v13, :cond_10

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_10
    const/4 v13, 0x0

    :goto_5
    iget v14, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mStreamKey:I

    invoke-virtual {v7, v8, v12, v13, v14}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setP2pDataSource(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;I)V

    :goto_6
    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSurfaceHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v7, v10}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setAudioStreamType(I)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v8, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mIsScreenOnWhilePlaying:Z

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->prepareAsync()V

    invoke-direct {v1, v5}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "openVideo is over"

    invoke-static {v7, v8}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/hunantv/media/player/loader/c; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

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

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    invoke-interface {v1, v9, v5}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutOfMemoryError: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v2, 0x6acfc6

    invoke-interface {v1, v2, v4}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UnsatisfiedLinkError: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    invoke-interface {v1, v6, v4}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LibLoaderError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "details:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",extra:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/hunantv/media/player/loader/c;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    invoke-virtual {v2}, Lcom/hunantv/media/player/loader/c;->a()I

    move-result v2

    invoke-interface {v1, v6, v2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    invoke-interface {v1, v9, v4}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NullPointerException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v2, 0x6acfc5

    invoke-interface {v1, v2, v4}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecurityException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v2, 0x6acfc4

    invoke-interface {v1, v2, v4}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v2, 0x6acfc2

    invoke-interface {v1, v2, v4}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v2, 0x6acfc1

    invoke-interface {v1, v2, v4}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v2, 0x6ad3ac

    invoke-interface {v1, v2, v4}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

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

    iput-object v2, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v11, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v2, 0x6acfc9

    invoke-interface {v1, v2, v10}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :cond_11
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

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

    iput-wide v2, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mNonSurfaceHolderPVTimestamp:J

    iput-boolean v5, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mOpenVideoWhenSurfaceCreate:Z

    :cond_12
    return-void
.end method

.method private pauseInner()V
    .locals 2

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pause play"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableCoreStartPauseListen:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->callbackOnPause()V

    :cond_0
    return-void
.end method

.method private release(ZLcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

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

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stop()V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/hunantv/media/widget/MgtvVideoView;->resetDataBefore(Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->releaseNoStatus()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setLastMediaMode(I)V

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    if-eqz p1, :cond_1

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    :cond_1
    invoke-virtual {p0, p2}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->resetDataAfter(Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;)V

    :cond_2
    sget-object p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->OUT:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    if-ne p2, p1, :cond_3

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->abandonAudioFocus()V

    :cond_3
    return-void
.end method

.method private release(ZZ)V
    .locals 0

    .line 3
    if-eqz p2, :cond_0

    sget-object p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->DEFAULT_INNER:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->OUT:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/widget/MgtvVideoView;->release(ZLcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;)V

    return-void
.end method

.method private resetImpl(Z)Lcom/hunantv/media/widget/MgtvVideoView$ResetResult;
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    sget-object v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->DEFAULT_INNER:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->OUT:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->resetDataBefore(Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->reset()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->DEFAULT_INNER:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->OUT:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->resetDataAfter(Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;)V

    if-eqz v0, :cond_3

    sget-object p0, Lcom/hunantv/media/widget/MgtvVideoView$ResetResult;->RESET_OK:Lcom/hunantv/media/widget/MgtvVideoView$ResetResult;

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/hunantv/media/widget/MgtvVideoView$ResetResult;->RESET_ERR:Lcom/hunantv/media/widget/MgtvVideoView$ResetResult;

    :goto_2
    return-object p0

    :cond_4
    sget-object p0, Lcom/hunantv/media/widget/MgtvVideoView$ResetResult;->NONE:Lcom/hunantv/media/widget/MgtvVideoView$ResetResult;

    return-object p0
.end method

.method private setAudioURI(Landroid/net/Uri;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNonSurfaceHolderPVTimestamp:J

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSeekWhenPrepared:I

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->openAudio()V

    return-void
.end method

.method private setRender(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

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
    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvVideoView;->setRenderView(I)V

    goto :goto_1

    :cond_1
    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSurfaceHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v0, :cond_0

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
    .locals 9

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSurfaceHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v3, "setRenderView removeRenderView"

    invoke-static {v1, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->removeDecorateLayout()V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSHCallback:Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    invoke-virtual {v0, v3}, Lcom/hunantv/media/player/MgtvRenderView;->removeRenderCallback(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvRenderView;->release()V

    iput-object v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderType:I

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnhanceQualityType:I

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Lcom/hunantv/media/report/ReportParams;->setRenderType(I)Lcom/hunantv/media/report/ReportParams;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v2, v0}, Lcom/hunantv/media/report/ReportParams;->setEnhanceQualityType(I)Lcom/hunantv/media/report/ReportParams;

    :cond_3
    new-instance v0, Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v6, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableOpengl:Z

    iget-object v7, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderWarning:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFilterCallback:Lcom/hunantv/media/player/d/f$a;

    move-object v3, v0

    move v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/hunantv/media/player/MgtvRenderView;-><init>(Landroid/content/Context;IZLcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;Lcom/hunantv/media/player/d/f$a;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvRenderView;->getRenderView()Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->bindRenderView(Lcom/hunantv/media/player/IMgtvRenderView;)V

    :cond_4
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1, p0}, Lcom/hunantv/media/player/MgtvRenderView;->bind(Lcom/hunantv/media/widget/IVideoView;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDisplayFloatRect:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvRenderView;->setDisplayFloatRect(Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/widget/MgtvVideoView;->setRenderFilter(Lcom/hunantv/media/widget/IVideoView$RenderFilter;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSHCallback:Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvRenderView;->addRenderCallback(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    iget v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoRotationDegree:I

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvRenderView;->setVideoRotation(I)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAntiViewShake:Z

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvRenderView;->setAntiShake(Z)V

    iget p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAspectRatio:I

    if-lez p1, :cond_6

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/MgtvRenderView;->setAspectRatio(I)V

    :cond_6
    iget p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoWidth:I

    if-lez p1, :cond_7

    iget v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoHeight:I

    if-lez v0, :cond_7

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {v2, p1, v0}, Lcom/hunantv/media/player/MgtvRenderView;->setVideoSize(II)V

    :cond_7
    iget p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoSarNum:I

    if-lez p1, :cond_8

    iget v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoSarDen:I

    if-lez v0, :cond_8

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {v2, p1, v0}, Lcom/hunantv/media/player/MgtvRenderView;->setVideoSampleAspectRatio(II)V

    :cond_8
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsSecure:Z

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setSecureImpl(Z)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "setRenderView addRenderView"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v1, :cond_9

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->addDecorateLayout()V

    :cond_a
    return-void
.end method

.method private setSecureImpl(Z)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

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

    iput-wide v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNonSurfaceHolderPVTimestamp:J

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSeekWhenPrepared:I

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->openVideo()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateDataCacheSizeKB()V
    .locals 1

    iget v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mDataCacheSizeKB:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->configDSMemoryKeepSize(II)V

    :cond_0
    return-void
.end method

.method private updateSkipLoopFilter()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSkipLoopFilter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    invoke-virtual {v0, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSkipLoopFilter(Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;)V

    :cond_0
    return-void
.end method

.method private updateVodDefaultDnsType()V
    .locals 2

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOpenAddrDefaultConfig:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_DNS_CACHE:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBackJavaDns:Z

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_LOADDATA:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    :cond_0
    return-void
.end method

.method private videoSurfaceDestroyed()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSurfaceHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->isPrepared()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isBackground()Z

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->pauseLoadData()V

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLive:Z

    const-string v2, "-----------surface destroy to pause"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->pauseInner()V

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHasSurfaceHolderDestroy:Z

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvRenderView;->getRenderViewType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isSupportAMCKeyFrameBackup()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyToPlay:Z

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyPlayPosition:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvRenderView;->getRenderViewType()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHasSurfaceHolderDestroy:Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isSupportAMCKeyFrameBackup()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->pauseInner()V

    goto :goto_2

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getEnd()Lcom/hunantv/media/report/ReportParams$End;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hunantv/media/report/ReportParams$End;->setInnerRetry(Z)Lcom/hunantv/media/report/ReportParams$End;

    :cond_5
    invoke-direct {p0, v1, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->release(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public changeSourceAsync(Lcom/hunantv/media/widget/IVideoView$MediaSource;III)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    const v13, 0x6acfc1

    const/4 v14, 0x0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mOnChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

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

    if-eqz v2, :cond_6

    if-eqz v3, :cond_2

    if-nez v9, :cond_3

    :try_start_0
    invoke-static {v8}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v2, v8

    move-object/from16 v16, v9

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_3
    iget-object v2, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    move-object v4, v15

    move-object v5, v9

    move-object v6, v8

    move/from16 v7, p2

    move-object v0, v8

    move/from16 v8, p3

    move-object/from16 v16, v9

    move/from16 v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->switchP2pVideoSource(ILjava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;III)V

    move-object v2, v0

    goto :goto_1

    :goto_0
    iput v14, v0, Lcom/hunantv/media/widget/IVideoView$MediaSource;->readType:I

    invoke-static {v15}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mOnChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

    if-eqz v0, :cond_4

    invoke-interface {v0, v15, v13, v14}, Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;->onChangeSourceFailed(Ljava/lang/String;II)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0, v15, v10, v11, v12}, Lcom/hunantv/media/player/MgtvMediaPlayer;->switchVideoSource(Ljava/lang/String;III)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeSourceAsync url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeSourceAsync p2pTask:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeSourceAsync proxyUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

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

    goto :goto_3

    :catch_1
    iget-object v0, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mOnChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

    if-eqz v0, :cond_6

    const v1, 0x6acfc3

    invoke-interface {v0, v15, v1, v14}, Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;->onChangeSourceFailed(Ljava/lang/String;II)V

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, v1, Lcom/hunantv/media/widget/MgtvVideoView;->mOnChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

    if-eqz v0, :cond_6

    invoke-interface {v0, v15, v13, v14}, Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;->onChangeSourceFailed(Ljava/lang/String;II)V

    :cond_6
    :goto_3
    return-void
.end method

.method public changeSourceAsync(Ljava/lang/String;III)V
    .locals 2

    .line 2
    new-instance v0, Lcom/hunantv/media/widget/IVideoView$MediaSource;

    invoke-direct {v0}, Lcom/hunantv/media/widget/IVideoView$MediaSource;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hunantv/media/widget/IVideoView$MediaSource;->setReadType(I)Lcom/hunantv/media/widget/IVideoView$MediaSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hunantv/media/widget/IVideoView$MediaSource;->setUrl(Ljava/lang/String;)Lcom/hunantv/media/widget/IVideoView$MediaSource;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hunantv/media/widget/MgtvVideoView;->changeSourceAsync(Lcom/hunantv/media/widget/IVideoView$MediaSource;III)V

    return-void
.end method

.method public cleanUri()V
    .locals 2

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cleanUri"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSource:Lcom/hunantv/media/player/MgtvPlayerDataSource;

    return-void
.end method

.method public configAudioImgoPlayer()V
    .locals 10

    invoke-super {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->configAudioImgoPlayer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOpenVideoWhenSurfaceCreate:Z

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoTypeInt:I

    invoke-virtual {v1, v2}, Lcom/hunantv/media/report/ReportParams;->setAddrInfoInt(I)Lcom/hunantv/media/report/ReportParams;

    :cond_0
    iget v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDnsFamilyType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->updateVodDefaultDnsType()V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->setNetAddrinfo(II)V

    :goto_0
    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v1, :cond_b

    iget v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mConnectTimeOut:I

    iget v4, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReciveDataTimeOut:I

    iget v5, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferTimeoutMs:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setTimeout(III)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSourceType(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setAccurateSeekEnable(Z)V

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v4, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iget v5, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAddrInfoTimeoutMs:I

    iget-boolean v6, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mJavaDnsEnable:Z

    iget-object v7, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iget-boolean v8, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNativeDnsAsyncEnable:Z

    iget-boolean v9, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBackJavaDns:Z

    invoke-virtual/range {v3 .. v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setNetAddrinfo(Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;IZLcom/hunantv/media/player/a/a$b;ZZ)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTsNotSkip:Z

    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->configTsNotSkip(Z)V

    iget v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLoadMaxRetryTime:I

    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->configLoadMaxRetryTime(I)V

    :cond_2
    iget v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakNetSpeed:I

    if-lez v1, :cond_3

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->configWeakBufferSpeed(I)V

    :cond_3
    iget v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakBufferTimeoutMs:I

    if-lez v1, :cond_4

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->configWeakBufferTimeout(I)V

    :cond_4
    iget v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mLeftVolume:F

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-ltz v4, :cond_5

    iget v4, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRightVolume:F

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_5

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3, v1, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setVolume(FF)V

    :cond_5
    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isMgtvCore()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mUserEnableCoreStartPauseListen:Z

    if-eqz v1, :cond_6

    iput-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableCoreStartPauseListen:Z

    goto :goto_1

    :cond_6
    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableCoreStartPauseListen:Z

    :goto_1
    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlaySpeed:F

    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlaybackSpeed(F)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLiveStartIndex:I

    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setLiveStartIndex(I)V

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableLiveMode:Z

    if-eqz v1, :cond_7

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastFrameRecovery:Z

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;->TYPE_PLAYER_MODE_LIVE:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    :goto_2
    invoke-virtual {v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setEnablePlayerMode(Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;)V

    goto :goto_3

    :cond_7
    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSmoothModeSwitch:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    sget-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;->TYPE_PLAYER_MODE_SMOOTH:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setEnablePlayerMode(Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;)V

    iput-boolean v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSmoothModeOpen:Z

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;->TYPE_PLAYER_MODE_NORMAL:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    goto :goto_2

    :goto_3
    iget v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartPosMs:I

    if-lez v1, :cond_9

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlayerSeekAtStartPosMs(I)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configImgoPlayer mStartPosMs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartPosMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableTsSkipError:Z

    invoke-virtual {v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->enableTsSkipError(Z)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableHttpDnsRetry:Z

    invoke-virtual {v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setHttpDnsNeedRetry(Z)Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableP2pHttpDns:Z

    invoke-virtual {v1, v2, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setP2pHttpDns(ZZ)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableDnsNoNetStrategy:Z

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setEnableDnsNoNetStrategy(Z)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configImgoPlayer 1 mConnectTimeOut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mConnectTimeOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mReciveDataTimeOut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReciveDataTimeOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mBufferTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferTimeoutMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mDataSourceType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mAccurateSeekEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAccurateSeekEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mAddrInfoType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

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

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mPlaySpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlaySpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mLiveStartIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLiveStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mEnableLiveMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableLiveMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configImgoPlayer mReadDataSourceTypeConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReadDataSourceTypeConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mNativeDnsAsyncEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNativeDnsAsyncEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mEnableTsSkipError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableTsSkipError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mHlsMD5CheckValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHlsMD5CheckValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mEnableMgtvMediaCodec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableMgtvMediaCodec:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mEnableHttpDnsRetry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableHttpDnsRetry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mEnableP2pHttpDns:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableP2pHttpDns:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mEnableDnsNoNetStrategy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableDnsNoNetStrategy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNonSurfaceHolderPVTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNonSurfaceHolderPVTimestamp:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setNetdSVCTimeMs(J)V

    goto :goto_4

    :cond_a
    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p0, v2, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setNetdSVCTimeMs(J)V

    :cond_b
    :goto_4
    return-void
.end method

.method public configDataCacheSizeKB(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mDataCacheSizeKB:I

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->updateDataCacheSizeKB()V

    return-void
.end method

.method public configImgoPlayer()V
    .locals 11

    invoke-super {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->configImgoPlayer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOpenVideoWhenSurfaceCreate:Z

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoTypeInt:I

    invoke-virtual {v1, v2}, Lcom/hunantv/media/report/ReportParams;->setAddrInfoInt(I)Lcom/hunantv/media/report/ReportParams;

    :cond_0
    iget v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDnsFamilyType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->updateVodDefaultDnsType()V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->setNetAddrinfo(II)V

    :goto_0
    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v1, :cond_c

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

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

    iget v5, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferTimeoutMs:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setTimeout(III)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSourceType(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAccurateSeekEnable:Z

    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setAccurateSeekEnable(Z)V

    iget-object v4, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v5, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iget v6, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAddrInfoTimeoutMs:I

    iget-boolean v7, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mJavaDnsEnable:Z

    iget-object v8, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iget-boolean v9, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNativeDnsAsyncEnable:Z

    iget-boolean v10, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBackJavaDns:Z

    invoke-virtual/range {v4 .. v10}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setNetAddrinfo(Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;IZLcom/hunantv/media/player/a/a$b;ZZ)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTsNotSkip:Z

    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->configTsNotSkip(Z)V

    iget v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLoadMaxRetryTime:I

    if-lez v1, :cond_3

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->configLoadMaxRetryTime(I)V

    :cond_3
    iget v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakNetSpeed:I

    if-lez v1, :cond_4

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->configWeakBufferSpeed(I)V

    :cond_4
    iget v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakBufferTimeoutMs:I

    if-lez v1, :cond_5

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->configWeakBufferTimeout(I)V

    :cond_5
    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCacheEnable:Z

    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->enableM3u8Cache(Z)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCacheM3u8Path:Ljava/lang/String;

    iget-object v4, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCacheTsPaths:[Ljava/lang/String;

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

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mUserEnableCoreStartPauseListen:Z

    if-eqz v1, :cond_7

    iput-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableCoreStartPauseListen:Z

    goto :goto_2

    :cond_7
    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableCoreStartPauseListen:Z

    :goto_2
    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mForceDecodeMode:Z

    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->configForceHW(Z)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->bindGifRecorder(Lcom/hunantv/media/recoder/GifRecorder;)Lcom/hunantv/media/recoder/GifRecorder;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlaySpeed:F

    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlaybackSpeed(F)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLiveStartIndex:I

    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setLiveStartIndex(I)V

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableLiveMode:Z

    if-eqz v1, :cond_8

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastFrameRecovery:Z

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;->TYPE_PLAYER_MODE_LIVE:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    :goto_3
    invoke-virtual {v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setEnablePlayerMode(Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;)V

    goto :goto_4

    :cond_8
    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSmoothModeSwitch:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    sget-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;->TYPE_PLAYER_MODE_SMOOTH:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setEnablePlayerMode(Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;)V

    iput-boolean v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSmoothModeOpen:Z

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;->TYPE_PLAYER_MODE_NORMAL:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    goto :goto_3

    :goto_4
    iget v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartPosMs:I

    if-lez v1, :cond_a

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlayerSeekAtStartPosMs(I)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configImgoPlayer mStartPosMs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartPosMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReadDataSourceTypeConfig:I

    invoke-virtual {v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReadDataSourceType(I)V

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->updateDataCacheSizeKB()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->updateSkipLoopFilter()V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableJavaIPCache:Z

    invoke-virtual {v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->enableJAVAIPCacheMap(Z)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableTsSkipError:Z

    invoke-virtual {v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->enableTsSkipError(Z)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHlsMD5CheckValue:I

    invoke-virtual {v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setHlsCheckMD5(I)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableMgtvMediaCodec:Z

    invoke-virtual {v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->enableMgtvMediaCodec(Z)V

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableHttpDnsRetry:Z

    invoke-virtual {v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setHttpDnsNeedRetry(Z)Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableP2pHttpDns:Z

    invoke-virtual {v1, v2, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setP2pHttpDns(ZZ)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableDnsNoNetStrategy:Z

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setEnableDnsNoNetStrategy(Z)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configImgoPlayer 1 mConnectTimeOut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mConnectTimeOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mReciveDataTimeOut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReciveDataTimeOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mBufferTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferTimeoutMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mDataSourceType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mAccurateSeekEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAccurateSeekEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mAddrInfoType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

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

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mPlaySpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlaySpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mLiveStartIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLiveStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mEnableLiveMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableLiveMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configImgoPlayer mReadDataSourceTypeConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReadDataSourceTypeConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mNativeDnsAsyncEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNativeDnsAsyncEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mEnableTsSkipError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableTsSkipError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mHlsMD5CheckValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHlsMD5CheckValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mEnableMgtvMediaCodec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableMgtvMediaCodec:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mEnableHttpDnsRetry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableHttpDnsRetry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mEnableP2pHttpDns:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableP2pHttpDns:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mEnableDnsNoNetStrategy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableDnsNoNetStrategy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNonSurfaceHolderPVTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNonSurfaceHolderPVTimestamp:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setNetdSVCTimeMs(J)V

    goto :goto_5

    :cond_b
    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p0, v2, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setNetdSVCTimeMs(J)V

    :cond_c
    :goto_5
    return-void
.end method

.method public configLoadMaxRetryTime(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLoadMaxRetryTime:I

    return-void
.end method

.method public configTsNotSkip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTsNotSkip:Z

    return-void
.end method

.method public configWeakBufferTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakBufferTimeoutMs:I

    return-void
.end method

.method public configWeakNetSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mWeakNetSpeed:I

    return-void
.end method

.method public convertRender(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

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
    invoke-direct {p0, v0, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->release(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mInitRenderViewType:I

    invoke-virtual {p0, p1}, Lcom/hunantv/media/widget/MgtvVideoView;->toggleRenders(I)V

    return-void
.end method

.method public defaultNetAddr()V
    .locals 2

    invoke-super {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->defaultNetAddr()V

    iget v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDnsFamilyType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOpenAddrDefaultConfig:Z

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->updateVodDefaultDnsType()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    :goto_0
    return-void
.end method

.method public enableCoreStartPauseListen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mUserEnableCoreStartPauseListen:Z

    return-void
.end method

.method public enableM3u8Cache(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCacheEnable:Z

    return-void
.end method

.method public enableTsSkipError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableTsSkipError:Z

    return-void
.end method

.method public getAddrInfoTypeInt()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoTypeInt:I

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

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->isInPlaybackState()Z

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

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCurrentState:I

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPositionUnsafe()I
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCurrentState:I

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

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCurrentState:I

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

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->isInPlaybackState()Z

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

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    return-object p0
.end method

.method public getGifRecorder()Lcom/hunantv/media/recoder/GifRecorder;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

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

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTagKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

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

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getRenderViewName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackSpeed()F
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlaySpeed:F

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

    invoke-static {}, Lcom/hunantv/media/widget/MgtvVideoView;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRenderFilter()Lcom/hunantv/media/widget/IVideoView$RenderFilter;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    return-object p0
.end method

.method public getRenderView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

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

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAccurateSeekEnable:Z

    return p0
.end method

.method public isCompletion()Z
    .locals 1

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCurrentState:I

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

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isLoadDataPaused()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

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

.method public isPlaying()Z
    .locals 1

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->isInPlaybackState()Z

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

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->isInPlaybackState()Z

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

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->isStretchScreen:Z

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

.method public isTsSkipErrorEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableTsSkipError:Z

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

.method public openImgoDSModule(Z)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

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

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_IMGO:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    :goto_0
    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public pause()V
    .locals 1

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->pauseInner()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    return-void
.end method

.method public pauseLoadData()V
    .locals 2

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "call pauseLoadData. waiting call native pauseLoadData"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->pauseLoadData()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "called pauseLoadData before preapred. release player"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getEnd()Lcom/hunantv/media/report/ReportParams$End;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hunantv/media/report/ReportParams$End;->setInnerRetry(Z)Lcom/hunantv/media/report/ReportParams$End;

    :cond_1
    sget-object v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->PAUSE_DATA_BEFORE_PREPEAD:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    invoke-direct {p0, v1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->release(ZLcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
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

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->release(ZZ)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->afterRelease()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->resetImpl(Z)Lcom/hunantv/media/widget/MgtvVideoView$ResetResult;

    return-void
.end method

.method public resetDataBefore(Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->resetDataBefore(Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLive:Z

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvRenderView;->reset()V

    :cond_0
    sget-object v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->OUT:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    if-ne p1, v1, :cond_2

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartLeaveTimestamp:J

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCacheM3u8Path:Ljava/lang/String;

    iput-object v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCacheTsPaths:[Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartPosMs:I

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->isBindPlayerLifecycle()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-virtual {v3}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->reset()V

    :cond_1
    iput-wide v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNonSurfaceHolderPVTimestamp:J

    :cond_2
    sget-object v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;->PAUSE_DATA_BEFORE_PREPEAD:Lcom/hunantv/media/widget/MgtvAbstractVideoView$ReleaseReason;

    if-ne p1, v1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mReleasedByPauseLoadData:Z

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mReleasedByPauseLoadData:Z

    :goto_0
    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOpenVideoWhenSurfaceCreate:Z

    return-void
.end method

.method public resetRender()V
    .locals 1

    sget-boolean v0, Lcom/hunantv/media/global/Constants;->FOR_OTT:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHasSurfaceHolderDestroy:Z

    :cond_0
    return-void
.end method

.method public resetVideoPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->resetVideoPath(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V

    return-void
.end method

.method public resetVideoPath(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isOnlyAudioMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/widget/MgtvVideoView;->setVideoPath(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resetVideoPath in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",task:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",proxyPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->beforeOpenVideo()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNonSurfaceHolderPVTimestamp:J

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const v1, 0x6acfcb

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    :goto_0
    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    invoke-static {p3}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    :goto_1
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->backPlayStartEnable:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isBackground:Z

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "resetVideoPath: not ready for playback just yet, will try again later, mCurrentUri:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", mSurfaceHolder:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNonSurfaceHolderPVTimestamp:J

    iput-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOpenVideoWhenSurfaceCreate:Z

    return-void

    :cond_4
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isOnlyAudioMode()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->backPlayStartEnable:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isBackground:Z

    if-nez v0, :cond_d

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRebindTexture:Z

    iget-boolean v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHasSurfaceHolderDestroy:Z

    if-eqz v3, :cond_6

    iget p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderViewType:I

    invoke-virtual {p0, p1}, Lcom/hunantv/media/widget/MgtvVideoView;->convertRender(I)V

    goto/16 :goto_7

    :cond_6
    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSurfaceHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V

    invoke-direct {p0, v2}, Lcom/hunantv/media/widget/MgtvVideoView;->resetImpl(Z)Lcom/hunantv/media/widget/MgtvVideoView$ResetResult;

    move-result-object v3

    sget-object v4, Lcom/hunantv/media/widget/MgtvVideoView$ResetResult;->NONE:Lcom/hunantv/media/widget/MgtvVideoView$ResetResult;

    if-ne v3, v4, :cond_7

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/widget/MgtvVideoView;->setVideoPath(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V

    return-void

    :cond_7
    sget-object p1, Lcom/hunantv/media/widget/MgtvVideoView$ResetResult;->RESET_ERR:Lcom/hunantv/media/widget/MgtvVideoView$ResetResult;

    if-ne v3, p1, :cond_8

    return-void

    :cond_8
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    if-eqz p1, :cond_c

    :try_start_0
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "------chodison----reprepare MgtvMediaPlayer mMgtvMediaPlayerHardwareMode:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mMgtvMediaPlayerHardwareMode:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " url:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReportParams(Lcom/hunantv/media/report/ReportParams;)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->configImgoPlayer()V

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyToPlay:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHasSurfaceHolderDestroy:Z

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "resetVideoPath streamKey:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStreamKey:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReadDataSourceType(I)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_6

    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_b
    iget v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStreamKey:I

    invoke-virtual {p1, p2, p3, v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setP2pDataSource(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;I)V

    :goto_3
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    invoke-virtual {p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSurfaceHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->prepareAsync()V

    invoke-direct {p0, v2}, Lcom/hunantv/media/widget/MgtvVideoView;->changeCurrentState(I)V
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const p2, 0x6acfcc

    invoke-interface {p0, p2, v0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorMsg:Ljava/lang/String;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const p2, 0x6acfc9

    const/4 p3, 0x2

    invoke-interface {p0, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    goto :goto_5

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNonSurfaceHolderPVTimestamp:J

    iput-boolean v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOpenVideoWhenSurfaceCreate:Z

    goto :goto_7

    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/widget/MgtvVideoView;->setVideoPath(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method public resume()V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->openVideo()V

    return-void
.end method

.method public resumeLoadData()V
    .locals 2

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "call resumeLoadData. waiting call native resumeLoadData"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mReleasedByPauseLoadData:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mReleasedByPauseLoadData:Z

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "call resumeLoadData. player release by call pauseLoadData.reopen it"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->resume()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "call resumeLoadData. mCurrentUri == null waiting setVideoPath"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->resumeLoadData()V

    :cond_2
    :goto_0
    return-void
.end method

.method public seekTo(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyToPlay:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyPlayPosition:I

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->seekTo(I)V

    iget-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSeekAutoStartAfterCompleteEnable:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCurrentState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->callbackOnStart()V

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSeekWhenPrepared:I

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSeekWhenPrepared:I

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekto before prepared record pos= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSeekWhenPrepared:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public seekTo(IZ)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->seekTo(IZZ)V

    return-void
.end method

.method public seekTo(IZZ)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_2

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyToPlay:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFromSurfaceDestroyPlayPosition:I

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "seekTo resumeLoadData"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->resumeLoadData()V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->seekTo(IZZ)V

    iget-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSeekAutoStartAfterCompleteEnable:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCurrentState:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->callbackOnStart()V

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSeekWhenPrepared:I

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSeekWhenPrepared:I

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "seekto before prepared record pos= "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSeekWhenPrepared:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setAccurateSeekEnable(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAccurateSeekEnable:Z

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 3

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAspectRatio:I

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAspectRatio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvRenderView;->setAspectRatio(I)V

    :cond_0
    return-void
.end method

.method public setAudioPath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const p1, 0x6acfcb

    const/16 v0, 0xb

    invoke-interface {p0, p1, v0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvVideoView;->setAudioURI(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public setBufferTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBufferTimeoutMs:I

    return-void
.end method

.method public setDisplayFloatRect(Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;)V
    .locals 0

    return-void
.end method

.method public setFlowDataStatistic(Lcom/hunantv/media/player/statistic/FlowDataStatistic;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    return-void
.end method

.method public setForceDecodeMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mForceDecodeMode:Z

    return-void
.end method

.method public setIsInScaleAnim(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvRenderView;->setIsInScaleAnim(Z)V

    :cond_0
    return-void
.end method

.method public setLastFrameRecovery(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLastFrameRecovery:Z

    return-void
.end method

.method public setLiveMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsLiveConfig:Z

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableLiveMode:Z

    return-void
.end method

.method public setLiveReopen()V
    .locals 1

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableLiveMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setLiveReopen()V

    :cond_0
    return-void
.end method

.method public setLiveStartIndex(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mLiveStartIndex:I

    return-void
.end method

.method public setM3u8Caches(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCacheM3u8Path:Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCacheTsPaths:[Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setNetAddrinfo(IIZ)V

    return-void
.end method

.method public setNetAddrinfo(IIZ)V
    .locals 5

    .line 2
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNativeDnsAsyncEnable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mBackJavaDns:Z

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v1

    sget-object v3, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_PRE:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v1

    sget-object v3, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_MID:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v1

    sget-object v3, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_BOOT:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne v1, v3, :cond_1

    :cond_0
    if-le p1, v2, :cond_1

    move p1, v2

    :cond_1
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNetAddrinfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",timeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",enablePreDns:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoTypeInt:I

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHlsMD5CheckValue:I

    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableMgtvMediaCodec:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableHttpDnsRetry:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableP2pHttpDns:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableDnsNoNetStrategy:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOpenAddrDefaultConfig:Z

    iget v1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mDnsFamilyType:I

    if-ne v1, p3, :cond_2

    if-eq p1, p3, :cond_c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_b

    if-eq p1, v2, :cond_a

    const/4 v2, 0x4

    if-eq p1, v2, :cond_8

    const/4 v2, 0x5

    if-eq p1, v2, :cond_9

    const/16 v2, 0x9

    if-eq p1, v2, :cond_7

    const/16 v2, 0x17

    if-eq p1, v2, :cond_a

    const/16 v2, 0x3e7

    if-eq p1, v2, :cond_d

    const/16 v2, 0xb

    if-eq p1, v2, :cond_6

    const/16 v2, 0xc

    if-eq p1, v2, :cond_5

    const/16 p3, 0x27

    if-eq p1, p3, :cond_4

    const/16 p3, 0x28

    if-eq p1, p3, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    rem-int/lit8 p1, p1, 0x1e

    invoke-virtual {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setMgtvFastMode(I)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setMgtvFastMode(I)V

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableDefaultFileStartTime:Z

    goto :goto_2

    :pswitch_2
    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableMgtvMediaCodec:Z

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->defaultNetAddr()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setMgtvFastMode(I)V

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableDefaultFileStartTime:Z

    :cond_4
    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mKeyInfoSetEnable:Z

    goto :goto_2

    :cond_5
    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableJavaIPCache:Z

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHlsMD5CheckValue:I

    goto :goto_2

    :cond_6
    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableJavaIPCache:Z

    iput p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mHlsMD5CheckValue:I

    goto :goto_2

    :cond_7
    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mNativeDnsAsyncEnable:Z

    goto :goto_2

    :cond_8
    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableP2pHttpDns:Z

    :cond_9
    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableHttpDnsRetry:Z

    goto :goto_0

    :cond_a
    iput-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableDnsNoNetStrategy:Z

    goto :goto_0

    :cond_b
    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_ONE_BY_ONE:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    :goto_1
    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mAddrInfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    goto :goto_2

    :cond_c
    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_THREAD:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    goto :goto_1

    :cond_d
    :goto_2
    if-lez p2, :cond_e

    mul-int/lit16 p2, p2, 0x3e8

    iput p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mAddrInfoTimeoutMs:I

    :cond_e
    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mJavaDnsEnable:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setNetAddrinfo(Ljava/lang/String;IZ)V
    .locals 1

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setNetAddrinfo(Ljava/lang/String;IZ)V

    sget p1, Lcom/hunantv/media/config/NetPlayConfig;->sConfigFastMode:I

    const/4 p2, 0x0

    const/16 p3, 0x9

    if-eqz p1, :cond_1

    if-ne p1, p3, :cond_0

    move p1, p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setMgtvFastMode(I)V

    :cond_1
    sget p1, Lcom/hunantv/media/config/NetPlayConfig;->sConfigP2pHttpDns:I

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-ne p1, p3, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableP2pHttpDns:Z

    :cond_3
    sget p1, Lcom/hunantv/media/config/NetPlayConfig;->sConfigMgtvMediaCodec:I

    if-eqz p1, :cond_5

    if-ne p1, p3, :cond_4

    goto :goto_1

    :cond_4
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableMgtvMediaCodec:Z

    :cond_5
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setNetAddrinfo mMgtvFastMode:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMgtvFastMode:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",mEnableP2pHttpDns:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableP2pHttpDns:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",mEnableMgtvMediaCodec:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableMgtvMediaCodec:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/hunantv/media/widget/IVideoView$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnBufferringUpdateListener:Lcom/hunantv/media/widget/IVideoView$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnChangeSourceListener(Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnCompletionListener:Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/hunantv/media/widget/IVideoView$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnErrorListener:Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/hunantv/media/widget/IVideoView$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnInfoListener:Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

    return-void
.end method

.method public setOnLoadDataListener(Lcom/hunantv/media/widget/IVideoView$OnLoadDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnLoadDataListener:Lcom/hunantv/media/widget/IVideoView$OnLoadDataListener;

    return-void
.end method

.method public setOnPauseListener(Lcom/hunantv/media/widget/IVideoView$OnPauseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnPauseListener:Lcom/hunantv/media/widget/IVideoView$OnPauseListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnPreparedListener:Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

    return-void
.end method

.method public setOnRecordListener(Lcom/hunantv/media/widget/IVideoView$OnRecordListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnRecordListener:Lcom/hunantv/media/widget/IVideoView$OnRecordListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnSeekCompleteListener:Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;

    return-void
.end method

.method public setOnStartListener(Lcom/hunantv/media/widget/IVideoView$OnStartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnStartListener:Lcom/hunantv/media/widget/IVideoView$OnStartListener;

    return-void
.end method

.method public setOnUpdateStatusListener(Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnUpdateStatusListener:Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnVideoSizeChangedListener:Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;

    return-void
.end method

.method public setOnWarningListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mPlaySpeed:F

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
    .locals 3

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayerHardwareMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mMgtvMediaPlayerHardwareMode:Z

    return-void
.end method

.method public setRenderFilter(Lcom/hunantv/media/widget/IVideoView$RenderFilter;)V
    .locals 1

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    sget-object v0, Lcom/hunantv/media/widget/MgtvVideoView$18;->$SwitchMap$com$hunantv$media$widget$IVideoView$RenderFilter:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/MgtvRenderView;->setRenderFilter(I)V

    :cond_1
    return-void
.end method

.method public setRenderViewVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

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

    iget v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderType:I

    invoke-virtual {p1, v0}, Lcom/hunantv/media/report/ReportParams;->setRenderType(I)Lcom/hunantv/media/report/ReportParams;

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    iget v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnhanceQualityType:I

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

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsScreenOnWhilePlaying:Z

    return-void
.end method

.method public setSecure(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mIsSecure:Z

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvVideoView;->setSecureImpl(Z)V

    return-void
.end method

.method public setSkipLoopFilter(Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->updateSkipLoopFilter()V

    return-void
.end method

.method public setSmoothSwitchMode(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setSmoothSwitchMode(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSmoothModeSwitch:Z

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setStartPosMs(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStartPosMs:I

    return-void
.end method

.method public setStreamKey(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mStreamKey:I

    return-void
.end method

.method public setStretchScreen()V
    .locals 5

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->shouldGetVideoParams:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "@@@"

    const-string v2, "getFullScreenVideoParams"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getFullScreenVideoParams()V

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->shouldGetVideoParams:Z

    :cond_0
    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->isStretchScreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1, v1, v2, v0}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoWidth:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->isStretchScreen:Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->originalVideoWidth:I

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoWidth:I

    iget v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->originalVideoHeight:I

    iput v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoHeight:I

    iget v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->fromLeft:I

    iget v2, p0, Lcom/hunantv/media/widget/MgtvVideoView;->fromTop:I

    iget v3, p0, Lcom/hunantv/media/widget/MgtvVideoView;->fromRight:I

    iget v4, p0, Lcom/hunantv/media/widget/MgtvVideoView;->fromBottom:I

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->isStretchScreen:Z

    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoWidth:I

    iget p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mVideoHeight:I

    invoke-virtual {v0, v1, p0}, Lcom/hunantv/media/player/MgtvRenderView;->setVideoSize(II)V

    :cond_2
    return-void
.end method

.method public setSurfaceHolderListener(Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mSurfaceHolderListener:Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    return-void
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

    invoke-virtual {p0, p1, v0, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setVideoPath(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setVideoPath in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->beforeOpenVideo()V

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRebindTexture:Z

    iput-object p2, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

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

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const p1, 0x6acfcb

    const/16 p2, 0xb

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvVideoView;->setVideoURI(Landroid/net/Uri;)V

    :goto_2
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isRequestAudioFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->requestAudioFocus()V

    :cond_0
    iget v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mCurrentState:I

    if-eq v0, v1, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "play video direct after complete"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->resumeLoadData()V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->start()V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "start play"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mEnableCoreStartPauseListen:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->callbackOnStart()V

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isLoadDataPaused()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->resumeLoadData()V

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "start:resumeLoadData"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iput v1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mTargetState:I

    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mRecordFilePath:Ljava/lang/String;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->startRecVideo(Ljava/lang/String;)V

    :cond_0
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
    .locals 1

    invoke-super {p0, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->toggleRenders(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvVideoView;->setRender(I)V

    return-void
.end method

.method public useSystemPlayer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/MgtvVideoView;->mUseSystemPlayer:Z

    return-void
.end method
