.class public Lcom/aliyun/player/externalplayer/MediaPlayer;
.super Lcom/aliyun/player/ApasaraExternalPlayer;
.source "source.java"


# static fields
.field private static final PLAYER_NAME:Ljava/lang/String; = "MediaPlayer"

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"


# instance fields
.field private final TIMER_WHAT_HALF_SECOND:I

.field private isMute:Z

.field private lastVolume:F

.field private mAutoPlay:Z

.field private mBufferPosition:J

.field private mContext:Landroid/content/Context;

.field private mCustomHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field private mLoop:Z

.field private mOutOnAutoPlayStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;

.field private mOutOnBufferPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;

.field private mOutOnCaptureScreenListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;

.field private mOutOnCompletionListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

.field private mOutOnDRMCallback:Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;

.field private mOutOnErrorListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

.field private mOutOnEventListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;

.field private mOutOnFirstFrameRenderListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

.field private mOutOnLoadStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

.field private mOutOnLoopingStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;

.field private mOutOnPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;

.field private mOutOnPreparedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;

.field private mOutOnSeekStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

.field private mOutOnStatusChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;

.field private mOutOnStreamInfoGetListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;

.field private mOutOnStreamSwitchSucListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;

.field private mOutOnSubtitleListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;

.field private mOutOnVideoRenderedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;

.field private mOutOnVideoSizeChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;

.field private mRefer:Ljava/lang/String;

.field private mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

.field private mSeekAccurate:Z

.field private mSeekPos:J

.field private mSpeed:F

.field private mSystemMediaPlayer:Landroid/media/MediaPlayer;

.field private mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field private timer:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/aliyun/player/ApasaraExternalPlayer;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->TIMER_WHAT_HALF_SECOND:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mContext:Landroid/content/Context;

    .line 4
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 5
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    .line 6
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->timer:Landroid/os/Handler;

    .line 7
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    iput-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 8
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUrl:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mBufferPosition:J

    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    iput v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->lastVolume:F

    .line 11
    sget-object v2, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    iput-object v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    const/4 v2, 0x0

    .line 12
    iput-boolean v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->isMute:Z

    .line 13
    iput-boolean v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLoop:Z

    .line 14
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mRefer:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUserAgent:Ljava/lang/String;

    .line 16
    iput v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSpeed:F

    .line 17
    iput-boolean v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mAutoPlay:Z

    .line 18
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPreparedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;

    .line 19
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoopingStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;

    .line 20
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCompletionListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

    .line 21
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnFirstFrameRenderListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

    .line 22
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoadStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    .line 23
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnAutoPlayStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;

    .line 24
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSeekStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

    .line 25
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;

    .line 26
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnBufferPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;

    .line 27
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;

    .line 28
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStatusChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;

    .line 29
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoRenderedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;

    .line 30
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnErrorListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    .line 31
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnEventListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;

    .line 32
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamInfoGetListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;

    .line 33
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamSwitchSucListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;

    .line 34
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCaptureScreenListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;

    .line 35
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSubtitleListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;

    .line 36
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnDRMCallback:Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;

    const-wide/16 v0, -0x1

    .line 37
    iput-wide v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekPos:J

    .line 38
    iput-boolean v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekAccurate:Z

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mCustomHeaders:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/aliyun/player/nativeclass/Options;)V
    .locals 4

    .line 40
    invoke-direct {p0}, Lcom/aliyun/player/ApasaraExternalPlayer;-><init>()V

    const/16 p2, 0x3e8

    .line 41
    iput p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->TIMER_WHAT_HALF_SECOND:I

    const/4 p2, 0x0

    .line 42
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 44
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    .line 45
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->timer:Landroid/os/Handler;

    .line 46
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 47
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUrl:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mBufferPosition:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    iput v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->lastVolume:F

    .line 50
    sget-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    iput-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    const/4 v1, 0x0

    .line 51
    iput-boolean v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->isMute:Z

    .line 52
    iput-boolean v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLoop:Z

    .line 53
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mRefer:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUserAgent:Ljava/lang/String;

    .line 55
    iput v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSpeed:F

    .line 56
    iput-boolean v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mAutoPlay:Z

    .line 57
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPreparedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;

    .line 58
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoopingStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;

    .line 59
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCompletionListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

    .line 60
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnFirstFrameRenderListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

    .line 61
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoadStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    .line 62
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnAutoPlayStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;

    .line 63
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSeekStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

    .line 64
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;

    .line 65
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnBufferPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;

    .line 66
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;

    .line 67
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStatusChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;

    .line 68
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoRenderedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;

    .line 69
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnErrorListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    .line 70
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnEventListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;

    .line 71
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamInfoGetListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;

    .line 72
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamSwitchSucListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;

    .line 73
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCaptureScreenListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;

    .line 74
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSubtitleListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;

    .line 75
    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnDRMCallback:Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;

    const-wide/16 v2, -0x1

    .line 76
    iput-wide v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekPos:J

    .line 77
    iput-boolean v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekAccurate:Z

    .line 78
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mCustomHeaders:Ljava/util/Map;

    .line 79
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    .line 81
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    .line 82
    :cond_0
    new-instance p2, Lcom/aliyun/player/externalplayer/MediaPlayer$1;

    invoke-direct {p2, p0, p1}, Lcom/aliyun/player/externalplayer/MediaPlayer$1;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->timer:Landroid/os/Handler;

    .line 83
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 84
    new-instance p2, Lcom/aliyun/player/externalplayer/MediaPlayer$2;

    invoke-direct {p2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$2;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 85
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/aliyun/player/externalplayer/MediaPlayer$3;

    invoke-direct {p2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$3;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 86
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/aliyun/player/externalplayer/MediaPlayer$4;

    invoke-direct {p2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$4;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 87
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/aliyun/player/externalplayer/MediaPlayer$5;

    invoke-direct {p2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$5;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 88
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/aliyun/player/externalplayer/MediaPlayer$6;

    invoke-direct {p2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$6;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 89
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/aliyun/player/externalplayer/MediaPlayer$7;

    invoke-direct {p2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$7;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 90
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/aliyun/player/externalplayer/MediaPlayer$8;

    invoke-direct {p2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$8;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V

    .line 91
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/aliyun/player/externalplayer/MediaPlayer$9;

    invoke-direct {p2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$9;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnBufferPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1002(Lcom/aliyun/player/externalplayer/MediaPlayer;[Landroid/media/MediaPlayer$TrackInfo;)[Landroid/media/MediaPlayer$TrackInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1100(Lcom/aliyun/player/externalplayer/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1200(Lcom/aliyun/player/externalplayer/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->notifyStreamGet()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1300(Lcom/aliyun/player/externalplayer/MediaPlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mAutoPlay:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1400(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnAutoPlayStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1500(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPreparedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1600(Lcom/aliyun/player/externalplayer/MediaPlayer;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekPos:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$1602(Lcom/aliyun/player/externalplayer/MediaPlayer;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekPos:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$1700(Lcom/aliyun/player/externalplayer/MediaPlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekAccurate:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSeekStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1900(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/aliyun/player/externalplayer/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->sendHalfSecondTimer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$402(Lcom/aliyun/player/externalplayer/MediaPlayer;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mBufferPosition:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$500(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCompletionListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/aliyun/player/externalplayer/MediaPlayer;Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnErrorListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoadStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnFirstFrameRenderListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStatusChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-interface {p2, v0, p1}, Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;->onStatusChanged(II)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->sendHalfSecondTimer()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private convert(Landroid/media/MediaPlayer$TrackInfo;I)Lcom/aliyun/player/nativeclass/TrackInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/aliyun/player/nativeclass/TrackInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/aliyun/player/nativeclass/TrackInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, v0, Lcom/aliyun/player/nativeclass/TrackInfo;->index:I

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne p2, v1, :cond_0

    .line 14
    .line 15
    sget-object p2, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_AUDIO:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 16
    .line 17
    iput-object p2, v0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x1

    .line 21
    if-ne p2, v1, :cond_1

    .line 22
    .line 23
    sget-object p2, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_VIDEO:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 24
    .line 25
    iput-object p2, v0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x4

    .line 29
    if-ne p2, v1, :cond_2

    .line 30
    .line 31
    sget-object p2, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_SUBTITLE:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 32
    .line 33
    iput-object p2, v0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    sget-object p2, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_VOD:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 37
    .line 38
    iput-object p2, v0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, v0, Lcom/aliyun/player/nativeclass/TrackInfo;->description:Ljava/lang/String;

    .line 45
    .line 46
    return-object v0
.end method

.method private notifyStreamGet()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamInfoGetListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/aliyun/player/nativeclass/MediaInfo;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    .line 15
    .line 16
    array-length v1, v1

    .line 17
    new-array v1, v1, [Lcom/aliyun/player/nativeclass/TrackInfo;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    iget-object v3, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    .line 21
    .line 22
    array-length v4, v3

    .line 23
    if-ge v2, v4, :cond_0

    .line 24
    .line 25
    aget-object v3, v3, v2

    .line 26
    .line 27
    invoke-direct {p0, v3, v2}, Lcom/aliyun/player/externalplayer/MediaPlayer;->convert(Landroid/media/MediaPlayer$TrackInfo;I)Lcom/aliyun/player/nativeclass/TrackInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    aput-object v3, v1, v2

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/MediaInfo;->setTrackInfos([Lcom/aliyun/player/nativeclass/TrackInfo;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->getDuration()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    long-to-int v1, v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/MediaInfo;->setDuration(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamInfoGetListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;

    .line 48
    .line 49
    invoke-interface {v1, v0}, Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;->OnStreamInfoGet(Lcom/aliyun/player/nativeclass/MediaInfo;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method private sendHalfSecondTimer()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->timer:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sget-object v2, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-lt v0, v2, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sget-object v2, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-gt v0, v2, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->timer:Landroid/os/Handler;

    .line 37
    .line 38
    const-wide/16 v2, 0x1f4

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method private updateDataSource()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mRefer:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const-string v2, "Referer"

    .line 16
    .line 17
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUserAgent:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    const-string v2, "User-Agent"

    .line 25
    .line 26
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mCustomHeaders:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUrl:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v2, v3, v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnErrorListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    sget-object v2, Lcom/aliyun/player/bean/ErrorCode;->ERROR_GENERAL_EIO:Lcom/aliyun/player/bean/ErrorCode;

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v4, "set dataSource error :"

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v1, v2, v0}, Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;->onError(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public addCustomHttpHeader(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "addCustomHttpHeader() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v1, ":"

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mCustomHeaders:Ljava/util/Map;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    aget-object v1, p1, v1

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    aget-object p1, p1, v2

    .line 49
    .line 50
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public addExtSubtitle(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "addExtSubtitle() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public captureScreen()V
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "captureScreen() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public create(Landroid/content/Context;Lcom/aliyun/player/nativeclass/Options;)Lcom/aliyun/player/ApasaraExternalPlayer;
    .locals 1

    .line 1
    new-instance v0, Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/aliyun/player/externalplayer/MediaPlayer;-><init>(Landroid/content/Context;Lcom/aliyun/player/nativeclass/Options;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public enterBackGround(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "enterBackGround() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public getBufferPosition()J
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "getBufferPosition() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mBufferPosition:J

    .line 9
    .line 10
    return-wide v0
.end method

.method public getCurrentStreamIndex(Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;)I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getCurrentStreamIndex() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 24
    .line 25
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 26
    .line 27
    const/4 v2, -0x1

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 31
    .line 32
    if-eq v0, v1, :cond_1

    .line 33
    .line 34
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 35
    .line 36
    if-eq v0, v1, :cond_1

    .line 37
    .line 38
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 39
    .line 40
    if-eq v0, v1, :cond_1

    .line 41
    .line 42
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 43
    .line 44
    if-ne v0, v1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return v2

    .line 48
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_AUDIO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 53
    .line 54
    if-ne p1, v1, :cond_2

    .line 55
    .line 56
    const/4 p1, 0x2

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_VIDEO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 59
    .line 60
    if-ne p1, v1, :cond_3

    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_SUB:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 65
    .line 66
    if-ne p1, v1, :cond_4

    .line 67
    .line 68
    const/4 p1, 0x4

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    const/4 p1, 0x0

    .line 71
    :goto_1
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    return p1

    .line 76
    :cond_5
    return v2
.end method

.method public getCurrentStreamInfo(Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;)Lcom/aliyun/player/nativeclass/TrackInfo;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getCurrentStreamInfo() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->getCurrentStreamIndex(Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-ltz p1, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    array-length v1, v0

    .line 34
    if-ge p1, v1, :cond_0

    .line 35
    .line 36
    aget-object v0, v0, p1

    .line 37
    .line 38
    invoke-direct {p0, v0, p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->convert(Landroid/media/MediaPlayer$TrackInfo;I)Lcom/aliyun/player/nativeclass/TrackInfo;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method

.method public getDecoderType()Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "getDecoderType() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;->DT_HARDWARE:Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    .line 9
    .line 10
    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "getDuration() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 9
    .line 10
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 29
    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-wide v2

    .line 34
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    sget-object v2, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    if-eq v0, v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v0, v3

    .line 49
    :goto_1
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    int-to-long v0, v0

    .line 54
    return-wide v0

    .line 55
    :cond_3
    return-wide v2
.end method

.method public getMasterClockPts()J
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "getMasterClockPts() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    return-wide v0
.end method

.method public getMirrorMode()Lcom/aliyun/player/IPlayer$MirrorMode;
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "getMirrorMode() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_NONE:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 9
    .line 10
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    return-object v0
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getOption() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public getPlayerStatus()Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "getPlayerStatus() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 9
    .line 10
    return-object v0
.end method

.method public getPlayingPosition()J
    .locals 5

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "getPlayingPosition() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekPos:J

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-ltz v4, :cond_0

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 18
    .line 19
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 20
    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 24
    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 28
    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 32
    .line 33
    if-eq v0, v1, :cond_2

    .line 34
    .line 35
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 36
    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 40
    .line 41
    if-eq v0, v1, :cond_2

    .line 42
    .line 43
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_INITIALZED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 44
    .line 45
    if-ne v0, v1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-wide v2

    .line 49
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    int-to-long v0, v0

    .line 58
    return-wide v0

    .line 59
    :cond_3
    return-wide v2
.end method

.method public getPropertyInt(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)J
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getPropertyInt() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    return-wide v0
.end method

.method public getPropertyLong(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)J
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getPropertyLong() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    return-wide v0
.end method

.method public getPropertyString(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getPropertyString() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public getRotateMode()Lcom/aliyun/player/IPlayer$RotateMode;
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "getRotateMode() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_0:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 9
    .line 10
    return-object v0
.end method

.method public getScaleMode()Lcom/aliyun/player/IPlayer$ScaleMode;
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "getScaleMode() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 9
    .line 10
    return-object v0
.end method

.method public getSpeed()F
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "getSpeed() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSpeed:F

    .line 9
    .line 10
    return v0
.end method

.method public getVideoDecodeFps()F
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "getVideoDecodeFps() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getVideoHeight()I
    .locals 3

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "getVideoHeight() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 9
    .line 10
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    return v2
.end method

.method public getVideoRenderFps()F
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "getVideoRenderFps() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getVideoRotation()I
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "getVideoRotation() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getVideoWidth()I
    .locals 3

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "getVideoWidth() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 9
    .line 10
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    return v2
.end method

.method public getVolume()F
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "getVolume() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->lastVolume:F

    .line 9
    .line 10
    return v0
.end method

.method public invokeComponent(Ljava/lang/String;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "invokeComponent() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public isAutoPlay()Z
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "isAutoPlay() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mAutoPlay:Z

    .line 9
    .line 10
    return v0
.end method

.method public isLooping()Z
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "isLooping() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public isMute()Z
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "isMute() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->isMute:Z

    .line 9
    .line 10
    return v0
.end method

.method public isSupport(Lcom/aliyun/player/nativeclass/Options;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "name"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Lcom/aliyun/player/nativeclass/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "MediaPlayer"

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_1
    return v0
.end method

.method public mute(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mute() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->isMute:Z

    .line 24
    .line 25
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 26
    .line 27
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 28
    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->lastVolume:F

    .line 43
    .line 44
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "pause() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 9
    .line 10
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void

    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0, v0, v1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public prepare()V
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "prepare() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->updateDataSource()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSpeed:F

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->setSpeed(F)V

    .line 26
    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLoop:Z

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->setLooping(Z)V

    .line 31
    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->isMute:Z

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->mute(Z)V

    .line 36
    .line 37
    .line 38
    iget v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->lastVolume:F

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->setVolume(F)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0, v0, v1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public reLoad()V
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "reLoad() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "release() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0, v0, v1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 23
    .line 24
    return-void
.end method

.method public removeAllCustomHttpHeader()V
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "removeAllCustomHttpHeader() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mCustomHeaders:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public seekTo(JZ)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "seekTo() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " , accurate = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "MediaPlayer"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 32
    .line 33
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 34
    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 38
    .line 39
    if-eq v0, v1, :cond_1

    .line 40
    .line 41
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 42
    .line 43
    if-eq v0, v1, :cond_1

    .line 44
    .line 45
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 46
    .line 47
    if-ne v0, v1, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iput-wide p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekPos:J

    .line 51
    .line 52
    iput-boolean p3, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekAccurate:Z

    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 60
    .line 61
    const/16 v2, 0x1a

    .line 62
    .line 63
    if-lt v1, v2, :cond_2

    .line 64
    .line 65
    if-eqz p3, :cond_2

    .line 66
    .line 67
    const/4 p3, 0x3

    .line 68
    invoke-static {v0, p1, p2, p3}, Lcom/aliyun/player/externalplayer/a;->a(Landroid/media/MediaPlayer;JI)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    long-to-int p1, p1

    .line 73
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 74
    .line 75
    .line 76
    :goto_1
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSeekStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    const/4 p2, 0x0

    .line 81
    invoke-interface {p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;->onSeekStart(Z)V

    .line 82
    .line 83
    .line 84
    :cond_3
    return-void
.end method

.method public selectExtSubtitle(IZ)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "selectExtSubtitle() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, " , bSelect = "

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "MediaPlayer"

    .line 27
    .line 28
    invoke-static {p2, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method public setAutoPlay(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setAutoPlay() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mAutoPlay:Z

    .line 24
    .line 25
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setDataSource() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUrl:Ljava/lang/String;

    .line 24
    .line 25
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    sget-object p1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_INITIALZED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public setDecoderType(Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setDecoderType() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setDrmCallback(Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnDRMCallback:Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setDropBufferThreshold(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setDropBufferThreshold() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setLooping(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setLooping() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLoop:Z

    .line 24
    .line 25
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 26
    .line 27
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 28
    .line 29
    if-eq v0, v1, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setMirrorMode() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setOnAutoPlayStartListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnAutoPlayStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnBufferPositionUpdateListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnBufferPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnCaptureScreenListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCaptureScreenListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnCompletionListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCompletionListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnErrorListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnErrorListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnEventListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnEventListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnFirstFrameRenderListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnFirstFrameRenderListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnLoadStatusListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoadStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnLoopingStartListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoopingStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnPositionUpdateListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnPreparedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPreparedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnSeekStatusListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSeekStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnStatusChangedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStatusChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnStreamInfoGetListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamInfoGetListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnStreamSwitchSucListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamSwitchSucListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnSubtitleListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSubtitleListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnVideoRenderedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoRenderedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setOption() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, " : "

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "MediaPlayer"

    .line 27
    .line 28
    invoke-static {p2, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setRefer() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mRefer:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setRotateMode() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setScaleMode() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 26
    .line 27
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 28
    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 32
    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    sget-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 40
    .line 41
    if-ne p1, v1, :cond_0

    .line 42
    .line 43
    const/4 p1, 0x2

    .line 44
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p1, 0x1

    .line 49
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setSpeed() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSpeed:F

    .line 24
    .line 25
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 26
    .line 27
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 28
    .line 29
    if-eq v0, v1, :cond_0

    .line 30
    .line 31
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 32
    .line 33
    if-eq v0, v1, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    new-instance v0, Landroid/media/PlaybackParams;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setSurface() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public setTimeout(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setTimeout() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setUserAgent() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUserAgent:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public setVideoBackgroundColor(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setVideoBackgroundColor() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {p2, p1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setVolume() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->lastVolume:F

    .line 24
    .line 25
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 26
    .line 27
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 28
    .line 29
    if-eq v0, v1, :cond_0

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->isMute:Z

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "start() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 9
    .line 10
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 19
    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-direct {p0, v0, v1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    const-string v0, "MediaPlayer"

    .line 2
    .line 3
    const-string v1, "stop() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 9
    .line 10
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 19
    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 27
    .line 28
    if-ne v0, v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void

    .line 32
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    sget-object v2, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 37
    .line 38
    if-eq v0, v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, v2, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public switchStream(I)Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "switchStream() "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MediaPlayer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 24
    .line 25
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 26
    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 30
    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    .line 33
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 34
    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 38
    .line 39
    if-eq v0, v1, :cond_1

    .line 40
    .line 41
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 42
    .line 43
    if-ne v0, v1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    sget-object p1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 50
    .line 51
    if-eqz v0, :cond_7

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->selectTrack(I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    sget-object p1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_2
    aget-object p1, v0, p1

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    const/4 v0, 0x2

    .line 70
    if-ne p1, v0, :cond_3

    .line 71
    .line 72
    sget-object p1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_AUDIO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_3
    const/4 v0, 0x4

    .line 76
    if-ne p1, v0, :cond_4

    .line 77
    .line 78
    sget-object p1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_SUB:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_4
    const/4 v0, 0x1

    .line 82
    if-ne p1, v0, :cond_5

    .line 83
    .line 84
    sget-object p1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_VIDEO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 85
    .line 86
    return-object p1

    .line 87
    :cond_5
    if-nez p1, :cond_6

    .line 88
    .line 89
    sget-object p1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 90
    .line 91
    return-object p1

    .line 92
    :cond_6
    sget-object p1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 93
    .line 94
    return-object p1

    .line 95
    :cond_7
    sget-object p1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 96
    .line 97
    return-object p1
.end method
