.class public Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$OnBufferingListener;,
        Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$InternalHandler;,
        Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$SeekingInfo;,
        Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferingInfo;,
        Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$TimeCostInfo;,
        Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$PerformanceInfo;,
        Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$StreamInfo;,
        Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;
    }
.end annotation


# static fields
.field public static final DISMISS_BUFFERING_LAYOUT:I = 0xe

.field public static final DISPLAY_TYPE_DEFAULT:I = 0x0

.field public static final DISPLAY_TYPE_FULL_SCREEN:I = 0x1

.field public static final DISPLAY_TYPE_FULL_VIDEO:I = 0x0

.field public static final EXTRA_NORMAL_BUFFER:I = 0x1

.field public static final EXTRA_SEEK_BUFFER:I = 0x2

.field public static final GET_BUFFER_NETSPEED:I = 0xf

.field public static final INFO_EXTRA_BUFFER_FIRST_LOAD:I = 0x0

.field public static final LOGMSG_PLAYER_CALLBACK:Ljava/lang/String; = "PlayerCallBack"

.field public static final MAX_LIST_SIZE:I = 0x14

.field public static final RENDER_TYPE_SURFACE:I = 0x0

.field public static final RENDER_TYPE_TEXTURE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "[ImgoPlayerView]"

.field public static final TAG_PLAYER_ADSDK:Ljava/lang/String; = "adsdk"


# instance fields
.field public breakPoint:Lcom/mgtv/thirdsdk/playcore/a/a;

.field public breakPointDao:Lcom/mgtv/thirdsdk/playcore/a/b;

.field private changeDefinition:Z

.field public context:Landroid/content/Context;

.field public handler:Landroid/os/Handler;

.field public isBufferStart:Z

.field private isEnableQualityEnhance:Z

.field public isFirstPlay:Z

.field public isLive:Z

.field public isPlayOK:Z

.field public isPosPlay:Z

.field public mAccurateSeekEnable:Z

.field public mBeforeFirstFrame:Z

.field public mBufferListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnBufferListener;

.field public mBufferTimeoutMs:I

.field public mBuffering:Z

.field public mBufferingNum:I

.field public mBufferingTime:J

.field public mBufferingView:Landroid/view/View;

.field public mChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

.field public mCompletionListener:Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;

.field public mCpuMonitor:Lcom/mgtv/thirdsdk/playcore/utils/a;

.field public mCurrentDisplayType:I

.field public mDataReceiveMillis:I

.field public mDataSourceType:I

.field public mDownloadSpeedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mErrorCostMs:J

.field public mErrorListener:Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

.field public mErrorMsg:Ljava/lang/String;

.field public mEventInfoListener:Lcom/hunantv/media/widget/IVideoView$OnEventInfoListener;

.field public mFirstFrameCostMs:J

.field public mFirstPlay:Z

.field public mGestureView:Landroid/view/View;

.field public mHandPause:Z

.field public mInfoListener:Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

.field public mJustLookDuration:I

.field public mLastBufferTime:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;

.field public mNetStatusMonitor:Lcom/mgtv/thirdsdk/playcore/b/b;

.field public mNetworkConnectMillis:I

.field public mOnBufferingListener:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$OnBufferingListener;

.field public mOnChangeSourceListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnChangeSourceListener;

.field public mOnCompletionListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnCompletionListener;

.field public mOnErrorListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnErrorListener;

.field public mOnEventInfoListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$onEventInfoListener;

.field public mOnInfoListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnInfoListener;

.field public mOnPauseListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnPauseListener;

.field public mOnPreparedListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnPreparedListener;

.field public mOnSeekCompleteListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnSeekCompleteListener;

.field public mOnStartListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnStartListener;

.field public mOnSubtitlesCallback:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnSubtitleCallback;

.field public mOnTickListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnTickListener;

.field public mOnUpdateStatusListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnUpdateStatusListener;

.field public mOnVideoSizeChangedListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnVideoSizeChangedListener;

.field public mOnWarningListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnWarningListener;

.field public mPauseListener:Lcom/hunantv/media/widget/IVideoView$OnPauseListener;

.field public mPerformanceTimes:I

.field public mPlayBreakPoint:Z

.field public mPlayerTick:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;

.field public mPreparedListener:Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

.field public mRenderType:I

.field public mReportParams:Lcom/hunantv/media/report/ReportParams;

.field public mSeekCompleteListener:Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;

.field public mSeekingNum:I

.field public mSeekingTime:J

.field public mStartBufferingTime:J

.field public mStartListener:Lcom/hunantv/media/widget/IVideoView$OnStartListener;

.field public mStartPlayTime:J

.field public mSubTitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

.field public mSurfaceHolderListener:Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

.field public mTargetDisplayType:I

.field public mTotalCPUAdd:I

.field public mTotalRSSAdd:I

.field public mUpdateStatusListener:Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;

.field public mVideoSizeChangedListener:Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;

.field public mVideoView:Lcom/hunantv/media/widget/IVideoView;

.field public mWaringListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

.field public playerTag:Ljava/lang/String;

.field public showBufferingView:Z

.field public videoId:Ljava/lang/String;

.field public videoPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$1;

    invoke-direct {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$1;-><init>()V

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvPlayerLogger;->setLogCallback(Lcom/hunantv/media/player/MgtvPlayerLogger$OnLogCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->showBufferingView:Z

    .line 3
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$InternalHandler;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$InternalHandler;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->handler:Landroid/os/Handler;

    .line 4
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBeforeFirstFrame:Z

    .line 5
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;

    invoke-direct {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;-><init>()V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mLastBufferTime:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;

    .line 6
    const-string v1, ""

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mErrorMsg:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isBufferStart:Z

    .line 8
    iput v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCurrentDisplayType:I

    .line 9
    iput v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mTargetDisplayType:I

    .line 10
    new-instance v2, Lcom/mgtv/thirdsdk/playcore/utils/a;

    invoke-direct {v2}, Lcom/mgtv/thirdsdk/playcore/utils/a;-><init>()V

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCpuMonitor:Lcom/mgtv/thirdsdk/playcore/utils/a;

    .line 11
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mFirstPlay:Z

    .line 12
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayBreakPoint:Z

    .line 13
    new-instance v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$2;

    invoke-direct {v2, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$2;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoSizeChangedListener:Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;

    .line 14
    new-instance v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$3;

    invoke-direct {v2, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$3;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mUpdateStatusListener:Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;

    .line 15
    new-instance v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;

    invoke-direct {v2, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPreparedListener:Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

    .line 16
    new-instance v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$6;

    invoke-direct {v2, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$6;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mEventInfoListener:Lcom/hunantv/media/widget/IVideoView$OnEventInfoListener;

    .line 17
    new-instance v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$7;

    invoke-direct {v2, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$7;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mStartListener:Lcom/hunantv/media/widget/IVideoView$OnStartListener;

    .line 18
    new-instance v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$8;

    invoke-direct {v2, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$8;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPauseListener:Lcom/hunantv/media/widget/IVideoView$OnPauseListener;

    .line 19
    new-instance v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$9;

    invoke-direct {v2, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$9;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCompletionListener:Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;

    .line 20
    new-instance v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;

    invoke-direct {v2, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mErrorListener:Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

    .line 21
    new-instance v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$11;

    invoke-direct {v2, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$11;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSeekCompleteListener:Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;

    .line 22
    new-instance v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;

    invoke-direct {v2, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mInfoListener:Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

    .line 23
    new-instance v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$13;

    invoke-direct {v2, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$13;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mWaringListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    .line 24
    new-instance v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$14;

    invoke-direct {v2, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$14;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSurfaceHolderListener:Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    .line 25
    new-instance v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$15;

    invoke-direct {v2, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$15;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

    .line 26
    const-string v2, "default"

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->playerTag:Ljava/lang/String;

    .line 27
    new-instance v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$17;

    invoke-direct {v2, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$17;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSubTitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    .line 28
    invoke-virtual {p0, p1, v1, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->initContent(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->showBufferingView:Z

    .line 31
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$InternalHandler;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$InternalHandler;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->handler:Landroid/os/Handler;

    .line 32
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBeforeFirstFrame:Z

    .line 33
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;

    invoke-direct {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;-><init>()V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mLastBufferTime:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;

    .line 34
    const-string v1, ""

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mErrorMsg:Ljava/lang/String;

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isBufferStart:Z

    .line 36
    iput v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCurrentDisplayType:I

    .line 37
    iput v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mTargetDisplayType:I

    .line 38
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/utils/a;

    invoke-direct {v1}, Lcom/mgtv/thirdsdk/playcore/utils/a;-><init>()V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCpuMonitor:Lcom/mgtv/thirdsdk/playcore/utils/a;

    .line 39
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mFirstPlay:Z

    .line 40
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayBreakPoint:Z

    .line 41
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$2;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$2;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoSizeChangedListener:Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;

    .line 42
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$3;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$3;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mUpdateStatusListener:Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;

    .line 43
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPreparedListener:Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

    .line 44
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$6;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$6;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mEventInfoListener:Lcom/hunantv/media/widget/IVideoView$OnEventInfoListener;

    .line 45
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$7;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$7;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mStartListener:Lcom/hunantv/media/widget/IVideoView$OnStartListener;

    .line 46
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$8;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$8;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPauseListener:Lcom/hunantv/media/widget/IVideoView$OnPauseListener;

    .line 47
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$9;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$9;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCompletionListener:Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;

    .line 48
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mErrorListener:Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

    .line 49
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$11;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$11;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSeekCompleteListener:Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;

    .line 50
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mInfoListener:Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

    .line 51
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$13;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$13;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mWaringListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    .line 52
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$14;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$14;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSurfaceHolderListener:Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    .line 53
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$15;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$15;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

    .line 54
    const-string v1, "default"

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->playerTag:Ljava/lang/String;

    .line 55
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$17;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$17;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSubTitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    .line 56
    invoke-virtual {p0, p1, p2, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->initContent(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->showBufferingView:Z

    .line 59
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$InternalHandler;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$InternalHandler;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->handler:Landroid/os/Handler;

    .line 60
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBeforeFirstFrame:Z

    .line 61
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;

    invoke-direct {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;-><init>()V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mLastBufferTime:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;

    .line 62
    const-string v1, ""

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mErrorMsg:Ljava/lang/String;

    const/4 v1, 0x0

    .line 63
    iput-boolean v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isBufferStart:Z

    .line 64
    iput v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCurrentDisplayType:I

    .line 65
    iput v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mTargetDisplayType:I

    .line 66
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/utils/a;

    invoke-direct {v1}, Lcom/mgtv/thirdsdk/playcore/utils/a;-><init>()V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCpuMonitor:Lcom/mgtv/thirdsdk/playcore/utils/a;

    .line 67
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mFirstPlay:Z

    .line 68
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayBreakPoint:Z

    .line 69
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$2;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$2;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoSizeChangedListener:Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;

    .line 70
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$3;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$3;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mUpdateStatusListener:Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;

    .line 71
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPreparedListener:Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

    .line 72
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$6;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$6;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mEventInfoListener:Lcom/hunantv/media/widget/IVideoView$OnEventInfoListener;

    .line 73
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$7;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$7;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mStartListener:Lcom/hunantv/media/widget/IVideoView$OnStartListener;

    .line 74
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$8;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$8;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPauseListener:Lcom/hunantv/media/widget/IVideoView$OnPauseListener;

    .line 75
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$9;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$9;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCompletionListener:Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;

    .line 76
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mErrorListener:Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

    .line 77
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$11;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$11;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSeekCompleteListener:Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;

    .line 78
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mInfoListener:Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

    .line 79
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$13;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$13;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mWaringListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    .line 80
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$14;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$14;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSurfaceHolderListener:Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    .line 81
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$15;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$15;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

    .line 82
    const-string v1, "default"

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->playerTag:Ljava/lang/String;

    .line 83
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$17;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$17;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSubTitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    .line 84
    iput-boolean p3, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isEnableQualityEnhance:Z

    .line 85
    invoke-virtual {p0, p1, p2, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->initContent(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 87
    iput-boolean p2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->showBufferingView:Z

    .line 88
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$InternalHandler;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$InternalHandler;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->handler:Landroid/os/Handler;

    .line 89
    iput-boolean p2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBeforeFirstFrame:Z

    .line 90
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;

    invoke-direct {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;-><init>()V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mLastBufferTime:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mErrorMsg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isBufferStart:Z

    .line 93
    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCurrentDisplayType:I

    .line 94
    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mTargetDisplayType:I

    .line 95
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/utils/a;

    invoke-direct {v1}, Lcom/mgtv/thirdsdk/playcore/utils/a;-><init>()V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCpuMonitor:Lcom/mgtv/thirdsdk/playcore/utils/a;

    .line 96
    iput-boolean p2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mFirstPlay:Z

    .line 97
    iput-boolean p2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayBreakPoint:Z

    .line 98
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$2;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$2;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoSizeChangedListener:Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;

    .line 99
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$3;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$3;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mUpdateStatusListener:Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;

    .line 100
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPreparedListener:Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

    .line 101
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$6;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$6;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mEventInfoListener:Lcom/hunantv/media/widget/IVideoView$OnEventInfoListener;

    .line 102
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$7;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$7;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mStartListener:Lcom/hunantv/media/widget/IVideoView$OnStartListener;

    .line 103
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$8;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$8;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPauseListener:Lcom/hunantv/media/widget/IVideoView$OnPauseListener;

    .line 104
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$9;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$9;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCompletionListener:Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;

    .line 105
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mErrorListener:Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

    .line 106
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$11;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$11;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSeekCompleteListener:Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;

    .line 107
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mInfoListener:Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

    .line 108
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$13;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$13;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mWaringListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    .line 109
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$14;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$14;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSurfaceHolderListener:Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    .line 110
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$15;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$15;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

    .line 111
    const-string v1, "default"

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->playerTag:Ljava/lang/String;

    .line 112
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$17;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$17;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSubTitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    .line 113
    invoke-virtual {p0, p1, v0, p2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->initContent(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 115
    iput-boolean p2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->showBufferingView:Z

    .line 116
    new-instance p3, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$InternalHandler;

    invoke-direct {p3, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$InternalHandler;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object p3, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->handler:Landroid/os/Handler;

    .line 117
    iput-boolean p2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBeforeFirstFrame:Z

    .line 118
    new-instance p3, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;

    invoke-direct {p3}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;-><init>()V

    iput-object p3, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mLastBufferTime:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;

    .line 119
    const-string p3, ""

    iput-object p3, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mErrorMsg:Ljava/lang/String;

    const/4 p3, 0x0

    .line 120
    iput-boolean p3, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isBufferStart:Z

    .line 121
    iput p3, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCurrentDisplayType:I

    .line 122
    iput p3, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mTargetDisplayType:I

    .line 123
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/utils/a;

    invoke-direct {v0}, Lcom/mgtv/thirdsdk/playcore/utils/a;-><init>()V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCpuMonitor:Lcom/mgtv/thirdsdk/playcore/utils/a;

    .line 124
    iput-boolean p2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mFirstPlay:Z

    .line 125
    iput-boolean p2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayBreakPoint:Z

    .line 126
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$2;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$2;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoSizeChangedListener:Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;

    .line 127
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$3;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$3;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mUpdateStatusListener:Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;

    .line 128
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPreparedListener:Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

    .line 129
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$6;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$6;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mEventInfoListener:Lcom/hunantv/media/widget/IVideoView$OnEventInfoListener;

    .line 130
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$7;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$7;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mStartListener:Lcom/hunantv/media/widget/IVideoView$OnStartListener;

    .line 131
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$8;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$8;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPauseListener:Lcom/hunantv/media/widget/IVideoView$OnPauseListener;

    .line 132
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$9;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$9;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCompletionListener:Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;

    .line 133
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mErrorListener:Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

    .line 134
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$11;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$11;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSeekCompleteListener:Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;

    .line 135
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mInfoListener:Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

    .line 136
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$13;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$13;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mWaringListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    .line 137
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$14;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$14;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSurfaceHolderListener:Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    .line 138
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$15;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$15;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

    .line 139
    const-string v0, "default"

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->playerTag:Ljava/lang/String;

    .line 140
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$17;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$17;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSubTitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    .line 141
    invoke-virtual {p0, p1, p3, p2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->initContent(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static synthetic access$000(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->changeDefinition:Z

    return p0
.end method

.method public static getH264Decoder()Ljava/lang/String;
    .locals 2

    const-string v0, "unknown"

    :try_start_0
    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->isApi16_JellyBeanOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getH264Decoder()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hunantv/media/widget/MgtvVideoView;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setSubtitlesConfig()V
    .locals 2

    new-instance v0, Lcom/hunantv/media/player/subtitle/SubtitleConfig;

    invoke-direct {v0}, Lcom/hunantv/media/player/subtitle/SubtitleConfig;-><init>()V

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->setBackgroundColor(I)Lcom/hunantv/media/player/subtitle/SubtitleConfig;

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/utils/c;->m()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->setPaddingBottomRatio(F)Lcom/hunantv/media/player/subtitle/SubtitleConfig;

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/utils/c;->n()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->setTextSizeRatio(F)Lcom/hunantv/media/player/subtitle/SubtitleConfig;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/hunantv/media/widget/ISubtitle;->setSubtitleConfig(Lcom/hunantv/media/player/subtitle/SubtitleConfig;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attachVideoView(I)V
    .locals 4

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-static {p0, v0}, Lcom/mgtv/thirdsdk/playcore/utils/d;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isTextureViewValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move p1, v1

    :cond_1
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isEnableQualityEnhance:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->context:Landroid/content/Context;

    invoke-direct {v0, v3, p1, v2, v2}, Lcom/hunantv/media/widget/MgtvVideoView;-><init>(Landroid/content/Context;IZZ)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->context:Landroid/content/Context;

    invoke-direct {v0, v3, p1}, Lcom/hunantv/media/widget/MgtvVideoView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    :goto_0
    iput p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mRenderType:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mRenderType:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mRenderType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[ImgoPlayerView]"

    invoke-static {v0, p1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/utils/c;->i()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(Landroid/content/Context;)Lcom/mgtv/thirdsdk/playcore/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->breakPointDao:Lcom/mgtv/thirdsdk/playcore/a/b;

    :cond_3
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCompletionListener:Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;

    invoke-interface {p1, v0}, Lcom/hunantv/media/widget/IVideoView;->setOnCompletionListener(Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPreparedListener:Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

    invoke-interface {p1, v0}, Lcom/hunantv/media/widget/IVideoView;->setOnPreparedListener(Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mStartListener:Lcom/hunantv/media/widget/IVideoView$OnStartListener;

    invoke-interface {p1, v0}, Lcom/hunantv/media/widget/IVideoView;->setOnStartListener(Lcom/hunantv/media/widget/IVideoView$OnStartListener;)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPauseListener:Lcom/hunantv/media/widget/IVideoView$OnPauseListener;

    invoke-interface {p1, v0}, Lcom/hunantv/media/widget/IVideoView;->setOnPauseListener(Lcom/hunantv/media/widget/IVideoView$OnPauseListener;)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSeekCompleteListener:Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;

    invoke-interface {p1, v0}, Lcom/hunantv/media/widget/IVideoView;->setOnSeekCompleteListener(Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSurfaceHolderListener:Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    invoke-interface {p1, v0}, Lcom/hunantv/media/widget/IVideoView;->setSurfaceHolderListener(Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mInfoListener:Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

    invoke-interface {p1, v0}, Lcom/hunantv/media/widget/IVideoView;->setOnInfoListener(Lcom/hunantv/media/widget/IVideoView$OnInfoListener;)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mErrorListener:Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

    invoke-interface {p1, v0}, Lcom/hunantv/media/widget/IVideoView;->setOnErrorListener(Lcom/hunantv/media/widget/IVideoView$OnErrorListener;)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mWaringListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    invoke-interface {p1, v0}, Lcom/hunantv/media/widget/IVideoView;->setOnWarningListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mChangeSourceListener:Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;

    invoke-interface {p1, v0}, Lcom/hunantv/media/widget/IVideoView;->setOnChangeSourceListener(Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mUpdateStatusListener:Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;

    invoke-interface {p1, v0}, Lcom/hunantv/media/widget/IVideoView;->setOnUpdateStatusListener(Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mEventInfoListener:Lcom/hunantv/media/widget/IVideoView$OnEventInfoListener;

    invoke-interface {p1, v0}, Lcom/hunantv/media/widget/IVideoView;->setOnEventInfoListener(Lcom/hunantv/media/widget/IVideoView$OnEventInfoListener;)V

    invoke-virtual {p0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setLastFrameRecovery(Z)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoSizeChangedListener:Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;

    invoke-interface {p1, v0}, Lcom/hunantv/media/widget/IVideoView;->setOnVideoSizeChangedListener(Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p1, v2}, Lcom/hunantv/media/widget/IVideoView;->setDisableAudioFocus(Z)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    check-cast v0, Landroid/view/View;

    invoke-static {p0, v0, p1}, Lcom/mgtv/thirdsdk/playcore/utils/d;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public callbackError(II)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mStartPlayTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mErrorCostMs:J

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnErrorListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnErrorListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnErrorListener;->onError(II)Z

    :cond_0
    return-void
.end method

.method public changeSourceAsync(Ljava/lang/String;III)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isMgtvPlayer()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->supportChangeSourceAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/utils/c;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/hunantv/media/widget/IVideoView;->changeSourceAsync(Ljava/lang/String;III)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnChangeSourceListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnChangeSourceListener;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    const p4, 0x6acfcd

    invoke-interface {p2, p1, p4, p3}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnChangeSourceListener;->onChangeSourceFailed(Ljava/lang/String;II)V

    :cond_1
    invoke-virtual {p0, p3}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->openImgoSourceModule(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public cleanUp()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCpuMonitor:Lcom/mgtv/thirdsdk/playcore/utils/a;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/utils/a;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mFirstPlay:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isBufferStart:Z

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cleanup"

    invoke-static {v1, v2, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->endBuffering(I)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayerTick:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->d()V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferingView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mDownloadSpeedList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mDownloadSpeedList:Ljava/util/List;

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->release()V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->reset()V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->breakPointDao:Lcom/mgtv/thirdsdk/playcore/a/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/a/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mNetStatusMonitor:Lcom/mgtv/thirdsdk/playcore/b/b;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/mgtv/thirdsdk/playcore/b/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method public configLoadMaxRetryTime(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->configLoadMaxRetryTime(I)V

    :cond_0
    return-void
.end method

.method public configTsNotSkip(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->configTsNotSkip(Z)V

    :cond_0
    return-void
.end method

.method public configWeakNetSpeed(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->configWeakNetSpeed(I)V

    :cond_0
    return-void
.end method

.method public doubleClick()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "[ImgoPlayerView]"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->pause()V

    const-string p0, "doubleClick():pause"

    invoke-static {v2, p0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->play()V

    const-string p0, "doubleClick():play"

    invoke-static {v2, p0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public endBuffering(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBuffering:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnBufferListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnBufferListener;->onEndBuffer(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->hideBufferingView()V

    return-void
.end method

.method public exPause()V
    .locals 3

    const-string v0, "exPause"

    const/4 v1, 0x1

    const-string v2, "[ImgoPlayerView]"

    invoke-static {v2, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->pause()V

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isMgtvPlayer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->pauseLoadData()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->release()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getBufferingInfo()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferingInfo;
    .locals 3

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferingInfo;

    invoke-direct {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferingInfo;-><init>()V

    iget v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferingNum:I

    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferingInfo;->buffering_num:I

    iget-wide v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferingTime:J

    iput-wide v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferingInfo;->buffering_time:J

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDataSourceType()I
    .locals 0

    iget p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mDataSourceType:I

    return p0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mJustLookDuration:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getDuration()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mErrorMsg:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getGifRecorder()Lcom/hunantv/media/recoder/GifRecorder;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getGifRecorder()Lcom/hunantv/media/recoder/GifRecorder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIsChangeDefinition()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->changeDefinition:Z

    return p0
.end method

.method public getLastBufferTime()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mLastBufferTime:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;

    return-object p0
.end method

.method public getLoadingSpeed()J
    .locals 2

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getDLSpeedB()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    const-string v1, "[ImgoPlayerView]"

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getLogTagKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getMemoryPlayType()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getMemoryPlayType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPerformanceInfo()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$PerformanceInfo;
    .locals 3

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$PerformanceInfo;

    invoke-direct {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$PerformanceInfo;-><init>()V

    iget v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPerformanceTimes:I

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mTotalCPUAdd:I

    div-int/2addr v2, v1

    iput v2, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$PerformanceInfo;->cpuRatio:I

    iget v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mTotalRSSAdd:I

    div-int/2addr v2, v1

    iput v2, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$PerformanceInfo;->RSS:I

    :cond_0
    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isPosPlay:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    iput p0, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$PerformanceInfo;->pos_play:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    iput p0, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$PerformanceInfo;->pos_play:I

    :goto_0
    return-object v0
.end method

.method public getPlayerExtraInfo()Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getPlayerExtraInfo()Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlayerVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getPlayerVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "default"

    return-object p0
.end method

.method public getRealDuration()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getDuration()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getRecentDownloadSpeed()F
    .locals 6

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mDownloadSpeedList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mDownloadSpeedList:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_1
    long-to-float p0, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0

    :catch_0
    :cond_2
    :goto_1
    return v1
.end method

.method public getRenderType()I
    .locals 1

    iget p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mRenderType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public getReportParams()Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    return-object p0
.end method

.method public getSeekingInfo()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$SeekingInfo;
    .locals 3

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$SeekingInfo;

    invoke-direct {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$SeekingInfo;-><init>()V

    iget v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSeekingNum:I

    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$SeekingInfo;->seeking_num:I

    iget-wide v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSeekingTime:J

    iput-wide v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$SeekingInfo;->seeking_time:J

    return-object v0
.end method

.method public getSnapshot(II)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->isSupportedSnapshot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/widget/IVideoView;->getSnapshot(II)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getStreamInfo()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$StreamInfo;
    .locals 2

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$StreamInfo;

    invoke-direct {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$StreamInfo;-><init>()V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Lcom/hunantv/media/widget/IVideoView;->getVideoWidth()I

    move-result v1

    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$StreamInfo;->videoW:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {v1}, Lcom/hunantv/media/widget/IVideoView;->getVideoHeight()I

    move-result v1

    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$StreamInfo;->videoH:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {v1}, Lcom/hunantv/media/widget/IVideoView;->getBitRate()I

    move-result v1

    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$StreamInfo;->bitRate:I

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getFPS()I

    move-result p0

    iput p0, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$StreamInfo;->fps:I

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->playerTag:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeCostInfo()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$TimeCostInfo;
    .locals 3

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$TimeCostInfo;

    invoke-direct {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$TimeCostInfo;-><init>()V

    iget-wide v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mFirstFrameCostMs:J

    iput-wide v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$TimeCostInfo;->first_frame_cost_ms:J

    iget-wide v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mErrorCostMs:J

    iput-wide v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$TimeCostInfo;->error_cost_ms:J

    return-object v0
.end method

.method public getTotalBuffering()I
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->getTotalBuffering()I

    move-result v0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getDuration()I

    move-result p0

    mul-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x64

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->getRenderView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getRenderView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getVideoHeight()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->videoId:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->getRenderView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getRenderView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getVideoWidth()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hideBufferingView()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->handler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferingView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBuffering:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferingView:Landroid/view/View;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->context:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferingView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBuffering:Z

    return-void
.end method

.method public initContent(Landroid/content/Context;IZ)V
    .locals 0

    instance-of p3, p1, Landroid/app/Activity;

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    move-object p3, p1

    check-cast p3, Landroid/app/Activity;

    invoke-static {p3}, Lcom/hunantv/imgo/util/t;->a(Landroid/app/Activity;)V

    :cond_0
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->attachVideoView(I)V

    new-instance p1, Lcom/mgtv/thirdsdk/playcore/b/b;

    invoke-direct {p1}, Lcom/mgtv/thirdsdk/playcore/b/b;-><init>()V

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mNetStatusMonitor:Lcom/mgtv/thirdsdk/playcore/b/b;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->initGlobalLayoutListener()V

    return-void
.end method

.method public initGlobalLayoutListener()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$4;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$4;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public isAccurateSeekEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mAccurateSeekEnable:Z

    return p0
.end method

.method public isBeforeFirstFrame()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBeforeFirstFrame:Z

    return p0
.end method

.method public isCompletion()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->isCompletion()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isDataLoaderPaused()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->isDataLoadPaused()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHardware()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->isHardware()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public isImgoSourceModuleOpen()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->isImgoSourceModuleOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMgtvPlayer()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->isPlaying()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupport3X()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->support3X()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedSnapshot()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->isSupportedSnapshot()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTextureViewValid()Z
    .locals 1

    const-string p0, "pref_player_hardware_render_open"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public netMonitorNotPause()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mNetStatusMonitor:Lcom/mgtv/thirdsdk/playcore/b/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/b/b;->b()V

    :cond_0
    return-void
.end method

.method public onInnerCompletion(II)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->removeRecordPoint()V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayerTick:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->d()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->breakPoint:Lcom/mgtv/thirdsdk/playcore/a/a;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnCompletionListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnCompletionListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnCompletionListener;->onCompletion(II)V

    :cond_2
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mNetStatusMonitor:Lcom/mgtv/thirdsdk/playcore/b/b;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/mgtv/thirdsdk/playcore/b/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x18

    if-eq p1, v0, :cond_3

    const/16 v0, 0x19

    if-eq p1, v0, :cond_3

    const/16 v0, 0x52

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x55

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x56

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->pause()V

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isPlaying()Z

    move-result p1

    const-string p2, "[ImgoPlayerView]"

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->pause()V

    const-string p0, "onKeyDown():pause"

    invoke-static {p2, p0, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->play()V

    const-string p0, "onKeyDown():play"

    invoke-static {p2, p0, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_1
    return v0

    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public openImgoSourceModule(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mDataSourceType:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mDataSourceType:I

    :goto_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->openImgoDSModule(Z)V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mHandPause:Z

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "mPlayerControl pause2  "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->pauseInner()V

    const-string p0, "[ImgoPlayerView]"

    const-string v1, "pause()"

    invoke-static {p0, v1, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public pauseInner()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlayerControl pauseInner  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->pause()V

    :cond_0
    const-string p0, "pauseInner()"

    const/4 v0, 0x1

    const-string v1, "[ImgoPlayerView]"

    invoke-static {v1, p0, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public pauseLoadData()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isMgtvPlayer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->pauseLoadData()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->release()V

    :cond_1
    :goto_0
    return-void
.end method

.method public play()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->start()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mHandPause:Z

    const-string p0, "play()"

    const/4 v0, 0x1

    const-string v1, "[ImgoPlayerView]"

    invoke-static {v1, p0, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public reBindTexture()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->reBindTexture()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->release()V

    :cond_0
    return-void
.end method

.method public removeRecordPoint()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->breakPointDao:Lcom/mgtv/thirdsdk/playcore/a/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->videoId:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveRecordPoint videoId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->videoId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public removeSubtitle()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hunantv/media/widget/ISubtitle;->removeSubtitleSource()V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/hunantv/media/widget/ISubtitle;->enableSubtitle(Z)V

    :cond_0
    return-void
.end method

.method public reset(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->reset(ZZ)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reset("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    const-string v0, "[ImgoPlayerView]"

    invoke-static {v0, p0, p1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public reset(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->saveBreakPoint()V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBeforeFirstFrame:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isBufferStart:Z

    .line 6
    iput-boolean v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isLive:Z

    .line 7
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayerTick:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->d()V

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v1, :cond_2

    .line 10
    invoke-interface {v1}, Lcom/hunantv/media/widget/IVideoView;->cleanUri()V

    .line 11
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {v1}, Lcom/hunantv/media/widget/IVideoView;->reset()V

    if-eqz p2, :cond_2

    .line 12
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->resetRender()V

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[ImgoPlayerView]"

    invoke-static {p1, p0, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public saveBreakPoint()V
    .locals 4

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getCurrentPosition()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayBreakPoint:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->videoId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->isCompletion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveBreakPoint videoId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->breakPointDao:Lcom/mgtv/thirdsdk/playcore/a/b;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->videoId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->videoPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getCurrentPosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getDuration()I

    move-result p0

    invoke-static {v0, v1, v2, v3, p0}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(Lcom/mgtv/thirdsdk/playcore/a/b;Ljava/lang/String;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 3

    if-gez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mJustLookDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mJustLookDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   realDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getRealDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "[ImgoPlayerView]"

    invoke-static {v2, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mJustLookDuration:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getRealDuration()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->stop()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->onInnerCompletion(II)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->seekTo(I)V

    :cond_2
    return-void
.end method

.method public setAccurateSeekEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mAccurateSeekEnable:Z

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setAccurateSeekEnable(Z)V

    :cond_0
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setAspectRatio(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundStatus(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setBackground(Z)V

    :cond_0
    return-void
.end method

.method public setBufferStatus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isMgtvPlayer()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p1}, Lcom/hunantv/media/widget/IVideoView;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->resumeLoadData()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isMgtvPlayer()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p1}, Lcom/hunantv/media/widget/IVideoView;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->pauseLoadData()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBufferTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferTimeoutMs:I

    return-void
.end method

.method public setDataReceiveTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mDataReceiveMillis:I

    return-void
.end method

.method public setDataSourceInfo(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setDataSourceInfo(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)V

    :cond_0
    return-void
.end method

.method public setDisplayType(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCurrentDisplayType:I

    if-ne v1, p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    iput p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mTargetDisplayType:I

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->getVideoWidth()I

    move-result p1

    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p2}, Lcom/hunantv/media/widget/IVideoView;->getVideoHeight()I

    move-result p2

    if-lez p1, :cond_5

    if-gtz p2, :cond_1

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mTargetDisplayType:I

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-eq v0, v1, :cond_3

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, -0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    mul-int/lit8 p1, p1, 0x10

    div-int/lit8 p1, p1, 0x9

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p1, 0x780

    invoke-direct {v0, p1, p2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    :goto_0
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/hunantv/imgo/util/t;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr p2, v0

    div-int/2addr p2, p1

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v0, p2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mTargetDisplayType:I

    iput p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCurrentDisplayType:I

    :cond_5
    :goto_2
    return-void
.end method

.method public setFileStartTimeMs(F)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setFileStartTimeFloatS(F)V

    :cond_0
    return-void
.end method

.method public setForceDecodeMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setForceDecodeMode(Z)V

    :cond_0
    return-void
.end method

.method public setImgoPlayerDebug(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setPlayerDebug(Z)V

    :cond_0
    return-void
.end method

.method public setIsChangeDefinition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->changeDefinition:Z

    return-void
.end method

.method public setIsLive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isLive:Z

    return-void
.end method

.method public setJustLookDuration(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mJustLookDuration:I

    return-void
.end method

.method public setLastFrameRecovery(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setLastFrameRecovery(Z)V

    :cond_0
    return-void
.end method

.method public setLiveMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setLiveMode(Z)V

    :cond_0
    return-void
.end method

.method public setNetAddrinfo(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/widget/IVideoView;->setNetAddrinfo(II)V

    :cond_0
    return-void
.end method

.method public setNetAddrinfo(IIZ)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1, p2, p3}, Lcom/hunantv/media/widget/IVideoView;->setNetAddrinfo(IIZ)V

    :cond_0
    return-void
.end method

.method public setNetConfig(Lcom/hunantv/media/config/NetPlayConfig;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setNetPlayConfig(Lcom/hunantv/media/config/NetPlayConfig;)V

    :cond_0
    return-void
.end method

.method public setNetWorkConnectTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mNetworkConnectMillis:I

    return-void
.end method

.method public setOnBufferListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnBufferListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnBufferListener;

    return-void
.end method

.method public setOnChangeSourceListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnChangeSourceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnChangeSourceListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnChangeSourceListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnCompletionListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnErrorListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnErrorListener;

    return-void
.end method

.method public setOnEventInfoListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$onEventInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnEventInfoListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$onEventInfoListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnInfoListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnInfoListener;

    return-void
.end method

.method public setOnNetStatusChangedListener(Lcom/mgtv/thirdsdk/playcore/b/c;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mNetStatusMonitor:Lcom/mgtv/thirdsdk/playcore/b/b;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b/b;->a(Lcom/mgtv/thirdsdk/playcore/b/c;)V

    return-void
.end method

.method public setOnPauseListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnPauseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnPauseListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnPauseListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnPreparedListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnSeekCompleteListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnSeekCompleteListener;

    return-void
.end method

.method public setOnStartListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnStartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnStartListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnStartListener;

    return-void
.end method

.method public setOnSubtitlesCallback(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnSubtitleCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnSubtitlesCallback:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnSubtitleCallback;

    return-void
.end method

.method public setOnTickListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnTickListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnTickListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnTickListener;

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayerTick:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->d()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayerTick:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;

    :cond_0
    new-instance p1, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;

    invoke-direct {p1, p2}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;-><init>(I)V

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayerTick:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;

    new-instance p2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$16;

    invoke-direct {p2, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$16;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    invoke-virtual {p1, p2}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->a(Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$b;)V

    return-void
.end method

.method public setOnUpdateStatusListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnUpdateStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnUpdateStatusListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnUpdateStatusListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnVideoSizeChangedListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnVideoSizeChangedListener;

    return-void
.end method

.method public setOnWarningListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnWarningListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnWarningListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnWarningListener;

    return-void
.end method

.method public setPlayBackSpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isMgtvPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setPlaybackSpeed(F)V

    :cond_0
    return-void
.end method

.method public setPlayerHardwareMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setPlayerHardwareMode(Z)V

    :cond_0
    return-void
.end method

.method public setPrepareStartMode(Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setPrepared4StartMode(Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;)V

    :cond_0
    return-void
.end method

.method public setRenderFilter(Lcom/hunantv/media/widget/IVideoView$RenderFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setRenderFilter(Lcom/hunantv/media/widget/IVideoView$RenderFilter;)V

    :cond_0
    return-void
.end method

.method public setRenderViewVisible(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setRenderViewVisible(I)V

    :cond_0
    return-void
.end method

.method public setReportParams(Lcom/hunantv/media/report/ReportParams;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    return-void
.end method

.method public setSecure(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setSecure(Z)V

    :cond_0
    return-void
.end method

.method public setStartPosMs(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setStartPosMs(I)V

    :cond_0
    return-void
.end method

.method public setStreamKey(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setStreamKey(I)V

    :cond_0
    return-void
.end method

.method public setSubtitleSource([B)V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/hunantv/media/widget/ISubtitle;->enableSubtitle(Z)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {v0}, Lcom/hunantv/media/widget/ISubtitle;->removeSubtitleSource()V

    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setSubtitlesConfig()V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSubTitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    invoke-interface {v0, v1}, Lcom/hunantv/media/widget/ISubtitle;->setSubtitleCallback(Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;)V

    invoke-static {}, Lcom/mgtv/ssp/utils/language/c;->a()Lcom/mgtv/ssp/utils/language/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/utils/language/c;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    new-instance v1, Lcom/hunantv/media/player/subtitle/SubtitleSource;

    const-string v2, "application/x-subrip"

    invoke-static {v2, v0}, Lcom/hunantv/media/player/subtitle/MediaFormat;->createSubtitleFormat(Ljava/lang/String;Ljava/lang/String;)Lcom/hunantv/media/player/subtitle/MediaFormat;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;-><init>([BLcom/hunantv/media/player/subtitle/MediaFormat;)V

    invoke-interface {p0, v1}, Lcom/hunantv/media/widget/ISubtitle;->setSubtitleSource(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->playerTag:Ljava/lang/String;

    return-void
.end method

.method public setTsFlowTag(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setTsFlowTag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p1}, Lcom/hunantv/media/widget/IVideoView;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setZOrderMediaOverlay(Z)V

    :cond_0
    return-void
.end method

.method public showBufferingView()V
    .locals 4

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->hideBufferingView()V

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->showBufferingView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferingView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->handler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBuffering:Z

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->handler:Landroid/os/Handler;

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startBuffering(I)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnBufferListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnBufferListener;->onStartBuffer(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isDataLoaderPaused()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->showBufferingView()V

    :cond_1
    return-void
.end method

.method public startPlayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const p1, 0x1adb0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->callbackError(II)V

    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mErrorMsg:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->endBuffering(I)V

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayerTick:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->d()V

    :cond_1
    const v2, 0x6acfcb

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-static {p3}, Lcom/mgtv/thirdsdk/playcore/utils/b;->b(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_9

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p4}, Lcom/mgtv/thirdsdk/playcore/utils/b;->b(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mDownloadSpeedList:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mDownloadSpeedList:Ljava/util/List;

    :cond_4
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->saveBreakPoint()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mDownloadSpeedList:Ljava/util/List;

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isBufferStart:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isPlayOK:Z

    iput-boolean v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isFirstPlay:Z

    iput-object p5, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->videoId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBeforeFirstFrame:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mFirstFrameCostMs:J

    iput-wide v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mErrorCostMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mStartPlayTime:J

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isPosPlay:Z

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPerformanceTimes:I

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mTotalCPUAdd:I

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mTotalRSSAdd:I

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferingNum:I

    iput-wide v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferingTime:J

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSeekingNum:I

    iput-wide v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSeekingTime:J

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    iget p5, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mNetworkConnectMillis:I

    iget v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mDataReceiveMillis:I

    invoke-interface {p1, p5, v1}, Lcom/hunantv/media/widget/IVideoView;->setTimeout(II)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    iget p5, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferTimeoutMs:I

    invoke-interface {p1, p5}, Lcom/hunantv/media/widget/IVideoView;->setBufferTimeout(I)V

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->supportChangeSourceAsync()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p4}, Lcom/mgtv/thirdsdk/playcore/utils/c;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->openImgoSourceModule(Z)V

    :cond_6
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    iget-object p5, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-interface {p1, p5}, Lcom/hunantv/media/widget/IVideoView;->setReportParams(Lcom/hunantv/media/report/ReportParams;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isFirstPlay:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p1, p4}, Lcom/hunantv/media/widget/IVideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p1, p4}, Lcom/hunantv/media/widget/IVideoView;->resetVideoPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    new-instance p1, Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;-><init>([B)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p2, p1}, Lcom/hunantv/media/widget/IVideoView;->setVideoDataSource(Lcom/hunantv/media/player/MgtvPlayerDataSource;)V

    :goto_0
    iput-object p3, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->videoPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mNetStatusMonitor:Lcom/mgtv/thirdsdk/playcore/b/b;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/mgtv/thirdsdk/playcore/b/b;->a(Landroid/content/Context;)V

    return-void

    :cond_9
    :goto_1
    invoke-virtual {p0, v2, p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->callbackError(II)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mNetStatusMonitor:Lcom/mgtv/thirdsdk/playcore/b/b;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/mgtv/thirdsdk/playcore/b/b;->b(Landroid/content/Context;)V

    return-void

    :cond_a
    :goto_2
    invoke-virtual {p0, v2, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->callbackError(II)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mNetStatusMonitor:Lcom/mgtv/thirdsdk/playcore/b/b;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/mgtv/thirdsdk/playcore/b/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->stop()V

    :cond_0
    const-string p0, "stop()"

    const/4 v0, 0x1

    const-string v1, "[ImgoPlayerView]"

    invoke-static {v1, p0, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public supportChangeSourceAsync()Z
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->isImgoSourceModuleOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->supportX86()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mDataSourceType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->pause()V

    const-string p0, "toPause():"

    const/4 v0, 0x1

    const-string v1, "[ImgoPlayerView]"

    invoke-static {v1, p0, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public toPlay()V
    .locals 2

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->play()V

    const-string p0, "toPlay():"

    const/4 v0, 0x1

    const-string v1, "[ImgoPlayerView]"

    invoke-static {v1, p0, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method
