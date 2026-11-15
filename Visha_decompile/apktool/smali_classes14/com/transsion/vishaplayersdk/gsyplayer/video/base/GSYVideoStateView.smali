.class public abstract Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;
.super Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;
.implements Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;
.implements Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;


# static fields
.field public static final CHANGE_DELAY_TIME:I = 0x7d0

.field public static final CURRENT_STATE_AUTO_COMPLETE:I = 0x6

.field public static final CURRENT_STATE_ERROR:I = 0x7

.field public static final CURRENT_STATE_NORMAL:I = 0x0

.field public static final CURRENT_STATE_PAUSE:I = 0x5

.field public static final CURRENT_STATE_PLAYING:I = 0x2

.field public static final CURRENT_STATE_PLAYING_BUFFERING_START:I = 0x3

.field public static final CURRENT_STATE_PREPAREING:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mBackUpPlayingBufferState:I

.field protected mBufferPoint:I

.field protected mCache:Z

.field protected mCachePath:Ljava/io/File;

.field public mContext:Landroid/content/Context;

.field protected mCurrentPosition:J

.field protected mCurrentState:I

.field protected mHadPlay:Z

.field protected mHadPrepared:Z

.field protected mIfCurrentIsFullscreen:Z

.field private mInflated:Z

.field private mInitCompleted:Z

.field protected mLooping:Z

.field protected mMapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMapPlayState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mNetChanged:Z

.field protected mNetInfoModule:Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;

.field protected mNetSate:Ljava/lang/String;

.field protected mOriginUrl:Ljava/lang/String;

.field protected mOverrideExtension:Ljava/lang/String;

.field protected mPauseBeforePrepared:Z

.field protected mPlayPosition:I

.field protected mPlayTag:Ljava/lang/String;

.field protected mPlayType:Lcom/transsion/vishaplayersdk/base/config/PlayType;

.field protected mPlayerActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected mPlayerErrMsg:Ljava/lang/String;

.field protected mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

.field protected mPlayerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

.field protected mReleaseWhenLossAudio:Z

.field protected mSaveChangeViewTIme:J

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field protected mSeekOnStart:J

.field protected mSerialID:J

.field protected mShowPauseCover:Z

.field protected mSoundTouch:Z

.field protected mSpeed:F

.field protected mStartAfterPrepared:Z

.field protected mTitle:Ljava/lang/String;

.field protected mUrl:Ljava/lang/String;

.field protected mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

.field protected mVideoAuthManger:Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;

.field protected mVideoID:J

.field protected mVideoSourceType:I

.field protected mYoutubePlayData:Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;

.field protected mbBuffering:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_playersdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/16 v1, -0x16

    .line 3
    iput v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayPosition:I

    .line 4
    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mBackUpPlayingBufferState:I

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSeekOnStart:J

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSaveChangeViewTIme:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSpeed:F

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCache:Z

    .line 9
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    .line 10
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mLooping:Z

    .line 11
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPlay:Z

    .line 12
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetChanged:Z

    .line 13
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSoundTouch:Z

    .line 14
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mShowPauseCover:Z

    .line 15
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPauseBeforePrepared:Z

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mStartAfterPrepared:Z

    .line 17
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPrepared:Z

    .line 18
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mReleaseWhenLossAudio:Z

    .line 19
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayTag:Ljava/lang/String;

    .line 20
    const-string v2, "NORMAL"

    iput-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetSate:Ljava/lang/String;

    .line 21
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mMapHeadData:Ljava/util/Map;

    .line 22
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mbBuffering:Z

    .line 23
    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerErrMsg:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView$1;

    invoke-direct {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mMapPlayState:Ljava/util/Map;

    .line 25
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->performInit(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 27
    iput p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/16 v0, -0x16

    .line 28
    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayPosition:I

    .line 29
    iput p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mBackUpPlayingBufferState:I

    const-wide/16 v0, -0x1

    .line 30
    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSeekOnStart:J

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSaveChangeViewTIme:J

    const/high16 p2, 0x3f800000    # 1.0f

    .line 32
    iput p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSpeed:F

    const/4 p2, 0x0

    .line 33
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCache:Z

    .line 34
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    .line 35
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mLooping:Z

    .line 36
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPlay:Z

    .line 37
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetChanged:Z

    .line 38
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSoundTouch:Z

    .line 39
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mShowPauseCover:Z

    .line 40
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPauseBeforePrepared:Z

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mStartAfterPrepared:Z

    .line 42
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPrepared:Z

    .line 43
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mReleaseWhenLossAudio:Z

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayTag:Ljava/lang/String;

    .line 45
    const-string v1, "NORMAL"

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetSate:Ljava/lang/String;

    .line 46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mMapHeadData:Ljava/util/Map;

    .line 47
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mbBuffering:Z

    .line 48
    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerErrMsg:Ljava/lang/String;

    .line 49
    new-instance p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView$1;

    invoke-direct {p2, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;)V

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mMapPlayState:Ljava/util/Map;

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->performInit(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 52
    iput p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/16 p3, -0x16

    .line 53
    iput p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayPosition:I

    .line 54
    iput p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mBackUpPlayingBufferState:I

    const-wide/16 p2, -0x1

    .line 55
    iput-wide p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSeekOnStart:J

    const-wide/16 p2, 0x0

    .line 56
    iput-wide p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSaveChangeViewTIme:J

    const/high16 p2, 0x3f800000    # 1.0f

    .line 57
    iput p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSpeed:F

    const/4 p2, 0x0

    .line 58
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCache:Z

    .line 59
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    .line 60
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mLooping:Z

    .line 61
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPlay:Z

    .line 62
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetChanged:Z

    .line 63
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSoundTouch:Z

    .line 64
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mShowPauseCover:Z

    .line 65
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPauseBeforePrepared:Z

    const/4 p3, 0x1

    .line 66
    iput-boolean p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mStartAfterPrepared:Z

    .line 67
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPrepared:Z

    .line 68
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mReleaseWhenLossAudio:Z

    .line 69
    const-string p3, ""

    iput-object p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayTag:Ljava/lang/String;

    .line 70
    const-string v0, "NORMAL"

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetSate:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mMapHeadData:Ljava/util/Map;

    .line 72
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mbBuffering:Z

    .line 73
    iput-object p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerErrMsg:Ljava/lang/String;

    .line 74
    new-instance p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView$1;

    invoke-direct {p2, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;)V

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mMapPlayState:Ljava/util/Map;

    .line 75
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->performInit(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3

    .line 76
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/16 v1, -0x16

    .line 78
    iput v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayPosition:I

    .line 79
    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mBackUpPlayingBufferState:I

    const-wide/16 v0, -0x1

    .line 80
    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSeekOnStart:J

    const-wide/16 v0, 0x0

    .line 81
    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSaveChangeViewTIme:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSpeed:F

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCache:Z

    .line 84
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    .line 85
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mLooping:Z

    .line 86
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPlay:Z

    .line 87
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetChanged:Z

    .line 88
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSoundTouch:Z

    .line 89
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mShowPauseCover:Z

    .line 90
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPauseBeforePrepared:Z

    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mStartAfterPrepared:Z

    .line 92
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPrepared:Z

    .line 93
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mReleaseWhenLossAudio:Z

    .line 94
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayTag:Ljava/lang/String;

    .line 95
    const-string v2, "NORMAL"

    iput-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetSate:Ljava/lang/String;

    .line 96
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mMapHeadData:Ljava/util/Map;

    .line 97
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mbBuffering:Z

    .line 98
    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerErrMsg:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView$1;

    invoke-direct {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mMapPlayState:Ljava/util/Map;

    .line 100
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    .line 101
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->performInit(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->lambda$createNetWorkState$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->lambda$netWorkErrorLogic$0(J)V

    return-void
.end method

.method private cleanupLocalPlayerState()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->ensureInflated()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->releaseNetWorkState()V

    return-void
.end method

.method private getYoutubeStreamInfo()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayUtil;->getYoutubeStreamInfo(Ljava/lang/String;Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;)V

    return-void
.end method

.method private isOrphanBackendOwner(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;)Z
    .locals 2

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayTag:Ljava/lang/String;

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getPlayTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private synthetic lambda$createNetWorkState$1(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetSate:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "******* change network state ******* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetChanged:Z

    :cond_0
    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetSate:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetChanged:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onNetworkStateChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$netWorkErrorLogic$0(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setSeekOnStart(J)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->startPlay()V

    return-void
.end method

.method private performInit(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mInitCompleted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mInitCompleted:Z

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private playDispatch()V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDispatchPlay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->needVishaVideoAuth()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->videoAuth()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isYoutubeVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mYoutubePlayData:Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;->mVideoStream:Lorg/schabi/newpipe/extractor/stream/VideoStream;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDispatchPlay youtube switch resolution:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mYoutubePlayData:Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;

    iget-object v2, v1, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;->mStreamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    iget-object v1, v1, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;->mVideoStream:Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-static {v2, v1}, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayUtil;->getStreamsDefinition(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/VideoStream;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->setVideoDefinitions(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->preparePlayer()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDispatchPlay getYoutubeStreamInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getYoutubeStreamInfo()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->preparePlayer()V

    :goto_0
    return-void
.end method

.method private preparePlayer()V
    .locals 11

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mMapHeadData:Ljava/util/Map;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mLooping:Z

    iget v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSpeed:F

    iget-boolean v5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCache:Z

    iget-object v6, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCachePath:Ljava/io/File;

    iget-object v7, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOverrideExtension:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getSeekOnStart()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->isbHardwareAccelerated()Z

    move-result v9

    iget-object v10, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    invoke-interface/range {v0 .. v10}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->prepare(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;Ljava/lang/String;IZLcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;)V

    return-void
.end method

.method private videoAuth()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAuthManger:Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAuthManger:Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;

    :cond_0
    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAuthManger:Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;

    iget-wide v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoID:J

    iget-wide v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSerialID:J

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;->videoAuth(JJLcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;)V

    return-void
.end method


# virtual methods
.method public abstract backFromFull(Landroid/content/Context;)Z
.end method

.method public clearCurrentCache()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->isCacheFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCache:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Play Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCachePath:Ljava/io/File;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "127.0.0.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCachePath:Ljava/io/File;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public createNetWorkState()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetInfoModule:Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetInfoModule:Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;

    new-instance v0, Lic4;

    invoke-direct {v0, p0}, Lic4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;)V

    invoke-virtual {v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;->setNetChangeListener(Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule$NetChangeListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetInfoModule:Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;->getCurrentConnectionType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetSate:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public deleteCacheFileWhenError()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->clearCurrentCache()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Link Or mCache Error, Please Try Again "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCache:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCache Link "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public ensureInflated()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mInflated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->initInflate(Landroid/content/Context;)V

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->surface_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mInflated:Z

    return-void
.end method

.method public ensureInitCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->performInit(Landroid/content/Context;)V

    return-void
.end method

.method public getActivityContext()Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->getActivityContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public getBuffterPoint()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mBufferPoint:I

    return p0
.end method

.method public getCurrentPositionWhenPlaying()I
    .locals 5

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getCurrentPositionInMainThread()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v2, v0

    :cond_1
    if-nez v2, :cond_2

    iget-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentPosition:J

    const-wide/16 v3, 0x0

    cmp-long p0, v0, v3

    if-lez p0, :cond_2

    long-to-int p0, v0

    return p0

    :cond_2
    return v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v2
.end method

.method public getCurrentState()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    return p0
.end method

.method public getCurrentVideoHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getVideoHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentVideoWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getVideoWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDuration()I
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    sget-object v2, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->MGTV_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getDuration()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_1

    return v1

    :cond_1
    const-wide/32 v0, 0x7fffffff

    cmp-long p0, v2, v0

    if-lez p0, :cond_2

    const p0, 0x7fffffff

    return p0

    :cond_2
    long-to-int p0, v2

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public abstract getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;
.end method

.method public abstract getLayoutId()I
.end method

.method public getMapHeadData()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mMapHeadData:Ljava/util/Map;

    return-object p0
.end method

.method public getNetSpeed()J
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getNetSpeed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetSpeedText()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getNetSpeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->getTextSpeed(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOverrideExtension()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOverrideExtension:Ljava/lang/String;

    return-object p0
.end method

.method public getPlayPosition()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayPosition:I

    return p0
.end method

.method public getPlayTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayTag:Ljava/lang/String;

    return-object p0
.end method

.method public getPlayType()Lcom/transsion/vishaplayersdk/base/config/PlayType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayType:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    return-object p0
.end method

.method public getPlayerInitConfig()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    return-object p0
.end method

.method public getPlayerType()Lcom/transsion/vishaplayersdk/base/config/PlayerType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    return-object p0
.end method

.method public getSeekOnStart()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSeekOnStart:J

    return-wide v0
.end method

.method public getSpeed()F
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSpeed:F

    return p0
.end method

.method public getVideoSarDen()I
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getVideoSarDen()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoSarNum()I
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getVideoSarNum()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract hideLoadingView()V
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init context ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->ensureInflated()V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mScreenWidth:I

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mScreenHeight:I

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public initInflate(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getLayoutId()I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GSYImageCover"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    const-string p1, "********************\n*****   \u6ce8\u610f   *************************\n*\u8be5\u7248\u672c\u9700\u8981\u6e05\u9664\u5e03\u5c40\u6587\u4ef6\u4e2d\u7684GSYImageCover\n****  Attention  ***\n*Please remove GSYImageCover from Layout in this Version\n********************\n"

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Landroid/view/InflateException;

    const-string p1, "\u8be5\u7248\u672c\u9700\u8981\u6e05\u9664\u5e03\u5c40\u6587\u4ef6\u4e2d\u7684GSYImageCover\uff0cplease remove GSYImageCover from your layout"

    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isCurrentMediaListener()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIfCurrentIsFullscreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    return p0
.end method

.method public isInPlayingState()Z
    .locals 1

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    if-ltz p0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLive()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayType:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    sget-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_LIVE:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLiveFullscreen()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayType:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    sget-object v1, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_LIVE:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLooping()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mLooping:Z

    return p0
.end method

.method public isPlaying()Z
    .locals 1

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReleaseWhenLossAudio()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mReleaseWhenLossAudio:Z

    return p0
.end method

.method public isShortVideo()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayType:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    sget-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_SHORT_VIDEO:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowPauseCover()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mShowPauseCover:Z

    return p0
.end method

.method public isStartAfterPrepared()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mStartAfterPrepared:Z

    return p0
.end method

.method public isTtShortVideo()Z
    .locals 1

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoSourceType:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVkVideo()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    sget-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->VK_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isYoutubeVideo()Z
    .locals 1

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoSourceType:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public listenerNetWorkState()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetInfoModule:Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;->onHostResume()V

    :cond_0
    return-void
.end method

.method public needVishaVideoAuth()Z
    .locals 1

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoSourceType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public netWorkErrorLogic()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentPositionWhenPlaying()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->TAG:Ljava/lang/String;

    const-string v3, "Net State Changed. renew player to connect releaseMediaPlayer"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->releaseMediaPlayer()V

    new-instance v2, Lhc4;

    invoke-direct {v2, p0, v0, v1}, Lhc4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;J)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAdComplete(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onAdCountdown(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onAdPrepared(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onAdStartPlaying(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->ensureInitCompleted()V

    return-void
.end method

.method public onAuthFailure(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p2, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x40a

    invoke-virtual {p2, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onVideoAuthFailed(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onAuthSuccess()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->preparePlayer()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onVideoAuthSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onAuthVideoPreview(J)V
    .locals 0

    return-void
.end method

.method public onAuthorizeResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onAutoCompletion()V
    .locals 3

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setStateAndUi(I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSaveChangeViewTIme:J

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentPosition:J

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->releaseNetWorkState()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onAutoComplete"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onBackFullscreen()V
    .locals 0

    return-void
.end method

.method public onBufferingUpdate(I)V
    .locals 0

    return-void
.end method

.method public onCompletion()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setStateAndUi(I)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSaveChangeViewTIme:J

    iput-wide v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentPosition:J

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->ensureInflated()V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setLastListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setCurrentVideoHeight(I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setCurrentVideoWidth(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    :try_start_0
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->releaseNetWorkState()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->releaseNetWorkState()V

    return-void
.end method

.method public onError(II)V
    .locals 1

    iget-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetChanged:Z

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetChanged:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->netWorkErrorLogic()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onPlayError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/16 p2, 0x26

    if-eq p1, p2, :cond_2

    const/16 p2, -0x26

    if-eq p1, p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerErrMsg:Ljava/lang/String;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setStateAndUi(I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->deleteCacheFileWhenError()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onPlayError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onInfo(II)V
    .locals 2

    const/16 v0, 0x2bd

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mBackUpPlayingBufferState:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->showLoadingView(Z)V

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p2, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onBufferingUpdate(Z[Ljava/lang/Object;)V

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mbBuffering:Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x2be

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->hideLoadingView()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_2

    new-array p2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onBufferingUpdate(Z[Ljava/lang/Object;)V

    :cond_2
    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mbBuffering:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getRotateInfoFlag()I

    move-result v0

    if-ne p1, v0, :cond_4

    iput p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mRotate:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Video Rotate Info "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    if-eqz p1, :cond_4

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mRotate:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->setRotation(F)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onNetworkStateChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onParseFailure(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-wide/32 v0, 0x895453

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x40a

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onParseSuccess(Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 3

    new-instance v0, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mYoutubePlayData:Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;->mVideoId:Ljava/lang/String;

    iput-object p1, v0, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;->mVideoUrl:Ljava/lang/String;

    iput-object p2, v0, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;->mStreamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {p2}, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayUtil;->getHighResolutionVideoStream(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mYoutubePlayData:Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;

    iput-object p1, v0, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;->mVideoStream:Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Youtube] youtube onParseSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayUtil;->getStreamsDefinition(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/VideoStream;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->setVideoDefinitions(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->preparePlayer()V

    return-void
.end method

.method public onPlayPayVideoNormalUser()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onVideoAuthFailed(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v0, 0x416

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onPlayPayVideoNotLogin()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onVideoAuthFailed(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v0, 0x416

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onPlayerInitResult(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;)V
    .locals 0

    return-void
.end method

.method public onPrepared()V
    .locals 3

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPrepared:Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onPrepared"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mStartAfterPrepared:Z

    if-nez v0, :cond_2

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setStateAndUi(I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoPause()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->startAfterPrepared()V

    return-void
.end method

.method public onSeekComplete()V
    .locals 0

    const-string p0, "onSeekComplete"

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public onSetSubtitlesFailed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSetSubtitlesSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSubtitlesAvailable(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUserAuthFailed()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onVideoAuthFailed(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v0, 0x416

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoFirstFrameShow()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoSourceType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAction;->markPlayerFirstFrameShow(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoPause()V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->TAG:Ljava/lang/String;

    const-string v1, "onVideoPause"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPauseBeforePrepared:Z

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setStateAndUi(I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentPosition:J

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onVideoPause(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onVideoReset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setStateAndUi(I)V

    return-void
.end method

.method public onVideoResume()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoResume(Z)V

    return-void
.end method

.method public onVideoResume(Z)V
    .locals 4

    .line 2
    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->TAG:Ljava/lang/String;

    const-string v1, "onVideoResume"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPauseBeforePrepared:Z

    .line 4
    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 5
    :try_start_0
    iget-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentPosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 6
    iget-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentPosition:J

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->seekTo(J)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->start()V

    const/4 p1, 0x2

    .line 8
    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setStateAndUi(I)V

    .line 9
    iput-wide v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentPosition:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 10
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public onVideoSizeChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getCurrentVideoWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getCurrentVideoHeight()I

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onVideoStart()V
    .locals 0

    return-void
.end method

.method public prepareVideo()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->startPrepare()V

    return-void
.end method

.method public refreshBottomContainer()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSaveChangeViewTIme:J

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isCurrentMediaListener()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->releaseVideos()V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isOrphanBackendOwner(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->TAG:Ljava/lang/String;

    const-string v2, "Player: release orphan backend owner"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->releaseMediaPlayer()V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->cleanupLocalPlayerState()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public releaseNetWorkState()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetInfoModule:Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;->onHostPause()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetInfoModule:Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;->setNetChangeListener(Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule$NetChangeListener;)V

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetInfoModule:Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;

    :cond_0
    return-void
.end method

.method public releasePauseCover()V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mShowPauseCover:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public releaseSurface(Landroid/view/Surface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->releaseSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public abstract releaseVideos()V
.end method

.method public seekTo(J)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setCustomRender(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setCustomRenderer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setDisplay(Landroid/view/Surface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setDisplay(Landroid/view/Surface;)V

    return-void
.end method

.method public setIfCurrentIsFullscreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mLooping:Z

    return-void
.end method

.method public setMapHeadData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mMapHeadData:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public setOverrideExtension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOverrideExtension:Ljava/lang/String;

    return-void
.end method

.method public setPlayPosition(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayPosition:I

    return-void
.end method

.method public setPlayTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayTag:Ljava/lang/String;

    return-void
.end method

.method public setPlayType(Lcom/transsion/vishaplayersdk/base/config/PlayType;)V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayType: : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayType:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayType:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    sget-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_LIVE:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLiveShow:Z

    return-void
.end method

.method public setPlayerInitConfig(Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->initConfigParameter(Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;)V

    return-void
.end method

.method public setPlayerType(I)V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayerType: sourceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->NO_SUPPORT_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoSourceType:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const-string p1, "unsupported player type,please tell me you want use which player"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->VK_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    invoke-static {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GSYVideoType;->setRenderType(I)V

    const-class p1, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/PlayerFactory;->setPlayManager(Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->ANDROID_MEDIA_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GSYVideoType;->setRenderType(I)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GSYVideoType;->enableMediaCodecTexture()V

    const-class p1, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/PlayerFactory;->setPlayManager(Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->MGTV_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    invoke-static {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GSYVideoType;->setRenderType(I)V

    const-class p1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/PlayerFactory;->setPlayManager(Ljava/lang/Class;)V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->refreshBottomContainer()V

    return-void
.end method

.method public setReleaseWhenLossAudio(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mReleaseWhenLossAudio:Z

    return-void
.end method

.method public setSeekOnStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSeekOnStart:J

    return-void
.end method

.method public setShowPauseCover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mShowPauseCover:Z

    return-void
.end method

.method public setSmallVideoTextureView()V
    .locals 0

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setSpeed(FZ)V

    return-void
.end method

.method public setSpeed(FZ)V
    .locals 1

    .line 2
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSpeed:F

    .line 3
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSoundTouch:Z

    .line 4
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setSpeed(FZ)V

    :cond_0
    return-void
.end method

.method public setSpeedPlaying(FZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setSpeed(FZ)V

    return-void
.end method

.method public setStartAfterPrepared(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mStartAfterPrepared:Z

    sget-object p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStartAfterPrepared "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract setStateAndUi(I)V
.end method

.method public setUp(Ljava/lang/String;JJZLjava/lang/String;)Z
    .locals 0

    .line 2
    iput-wide p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoID:J

    .line 3
    iput-wide p4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSerialID:J

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mYoutubePlayData:Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;

    .line 5
    invoke-virtual {p0, p1, p6, p2, p7}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setUp(Ljava/lang/String;JJZLjava/lang/String;Z)Z
    .locals 6

    .line 6
    iput-wide p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoID:J

    .line 7
    iput-wide p4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSerialID:J

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p6

    move-object v4, p7

    move v5, p8

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;Z)Z
    .locals 0

    .line 15
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCache:Z

    .line 16
    iput-object p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCachePath:Ljava/io/File;

    .line 17
    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    const/4 p2, 0x0

    .line 18
    iput p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    .line 19
    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    if-eqz p5, :cond_0

    .line 21
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsTaskAutoPlay:Z

    if-nez p1, :cond_0

    .line 22
    invoke-virtual {p0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setStateAndUi(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 0
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

    .line 9
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mMapHeadData:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 11
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mMapHeadData:Ljava/util/Map;

    :goto_0
    if-eqz p4, :cond_1

    .line 13
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mMapHeadData:Ljava/util/Map;

    invoke-interface {p0, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public setUp(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setUserInfo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->setLoginState(Z)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    invoke-virtual {p1, p2}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->setUserToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    invoke-virtual {p1, p3}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->setTokenType(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    invoke-virtual {p1, p4}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->setPalmToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    invoke-virtual {p1, p5}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->setOpenid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    invoke-virtual {p1, p6}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->setVIP(Z)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->initConfigParameter(Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->TAG:Ljava/lang/String;

    const-string p1, "set user info before must init player config"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setVideoAllCallBack(Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    return-void
.end method

.method public abstract showLoadingView(Z)V
.end method

.method public showPauseCover()V
    .locals 6

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mShowPauseCover:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->isSurfaceSupportLockCanvas()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mSurface:Landroid/view/Surface;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    invoke-virtual {v3}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    invoke-virtual {v4}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public startAfterPrepared()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->ensureInitCompleted()V

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->TAG:Ljava/lang/String;

    const-string v1, "startAfterPrepared"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPrepared:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->prepareVideo()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->addTextureView()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->createNetWorkState()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->listenerNetWorkState()V

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->start()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setStateAndUi(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPlay:Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->onResume()V

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPauseBeforePrepared:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPauseBeforePrepared:Z

    :cond_3
    return-void
.end method

.method public startButtonLogic()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->ensureInitCompleted()V

    const-string v0, "play"

    invoke-static {v0}, Lwz5;->N(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    if-nez v1, :cond_0

    const-string v0, "onClickStartIcon"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onClickStartIcon(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "onClickStartError"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onClickStartError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->prepareVideo()V

    return-void
.end method

.method public abstract startPlay()V
.end method

.method public startPrepare()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->ensureInitCompleted()V

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->TAG:Ljava/lang/String;

    const-string v1, "Player: startPrepare"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onCompletion()V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "Player: startPrepare orphan backend release"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->releaseMediaPlayer()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_2

    const-string v0, "onStartPrepared"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setPlayTag(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayPosition:I

    invoke-interface {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setPlayPosition(I)V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mBackUpPlayingBufferState:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setStateAndUi(I)V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->playDispatch()V

    return-void
.end method

.method public abstract stopPlay()V
.end method

.method public unListenerNetWorkState()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetInfoModule:Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;->onHostPause()V

    :cond_0
    return-void
.end method

.method public updatePauseCover()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mShowPauseCover:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->initCover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method
