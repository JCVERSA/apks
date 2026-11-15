.class public abstract Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnPreparedListener;
.implements Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnCompletionListener;
.implements Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnBufferingUpdateListener;
.implements Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSeekCompleteListener;
.implements Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnErrorListener;
.implements Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnVideoSizeChangedListener;
.implements Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnInfoListener;
.implements Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;
.implements Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager$ICacheAvailableListener;
.implements Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;
.implements Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnVideoFirstFrameShowListener;
.implements Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$MediaHandler;
    }
.end annotation


# static fields
.field protected static final BUFFER_TIME_OUT_ERROR:I = -0xc0

.field protected static final HANDLER_PREPARE:I = 0x0

.field protected static final HANDLER_RELEASE:I = 0x2

.field protected static final HANDLER_RELEASE_SURFACE:I = 0x3

.field protected static final HANDLER_SETDISPLAY:I = 0x1

.field public static TAG:Ljava/lang/String; = "GSYVideoBaseManager"

.field protected static final TIME_OUT:I = 0x1f40


# instance fields
.field protected mAudioFocusManager:Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;

.field protected mBufferPoint:I

.field protected mCacheManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentVideoHeight:I

.field protected mCurrentVideoWidth:I

.field protected volatile mHasUserMuteIntent:Z

.field protected mLastListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastState:I

.field protected mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mMainThreadHandler:Landroid/os/Handler;

.field protected mMediaHandler:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$MediaHandler;

.field protected volatile mNeedMute:Z

.field protected mNeedTimeOutOther:Z

.field protected final mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field protected mOptionModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile mPageDefaultMute:Z

.field protected volatile mPauseOnAudioFocusLoss:Z

.field protected mPlayPosition:I

.field protected mPlayTag:Ljava/lang/String;

.field protected mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

.field protected volatile mSystemTemporarilyMuted:Z

.field private final mTimeOutRunnable:Ljava/lang/Runnable;

.field protected volatile mUserWantsMute:Z

.field protected mVideoDefinitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayTag:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mCurrentVideoWidth:I

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mCurrentVideoHeight:I

    const/16 v1, -0x16

    iput v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayPosition:I

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mNeedMute:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mHasUserMuteIntent:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mUserWantsMute:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mSystemTemporarilyMuted:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPageDefaultMute:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPauseOnAudioFocusLoss:Z

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mTimeOutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lpb4;

    invoke-direct {v0, p0}, Lpb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lambda$onVideoSizeChanged$6()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lambda$onAdPrepared$13(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lambda$onSetSubtitlesSuccess$8(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lambda$onAdStartPlaying$12(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lambda$onAuthorizeResult$10(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lambda$onPlayerInitResult$11(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lambda$onAdComplete$15(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lambda$onSetSubtitlesFailed$9(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lambda$onInfo$5(II)V

    return-void
.end method

.method private initVideo(Landroid/os/Message;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mCurrentVideoWidth:I

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mCurrentVideoHeight:I

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->release()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getPlayManager()Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getCacheManager()Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mCacheManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;->setCacheAvailableListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager$ICacheAvailableListener;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    instance-of v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;

    if-eqz v1, :cond_2

    invoke-interface {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->setPlayerManagerListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mOptionModelList:Ljava/util/List;

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mCacheManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->initVideoPlayer(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->refreshMuteOutput()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->getMediaPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;->setOnCompletionListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnCompletionListener;)V

    invoke-interface {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;->setOnBufferingUpdateListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnBufferingUpdateListener;)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    invoke-interface {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;->setOnPreparedListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnPreparedListener;)V

    invoke-interface {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;->setOnSeekCompleteListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSeekCompleteListener;)V

    invoke-interface {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;->setOnErrorListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnErrorListener;)V

    invoke-interface {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;->setOnInfoListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnInfoListener;)V

    invoke-interface {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;->setOnVideoSizeChangedListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnVideoSizeChangedListener;)V

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;->prepareAsync()V

    invoke-interface {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;->setOnSubtitlesListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;)V

    invoke-interface {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;->setOnVideoFirstFrameListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnVideoFirstFrameShowListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static synthetic j(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lambda$onAdCountdown$14(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;I)V

    return-void
.end method

.method public static synthetic k(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lambda$onSeekComplete$3()V

    return-void
.end method

.method public static synthetic l(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lambda$onPrepared$0()V

    return-void
.end method

.method private synthetic lambda$new$16(I)V
    .locals 2

    const/4 v0, -0x3

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    if-eq p1, v0, :cond_3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->setSystemTemporarilyMuted(Z)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->onGankAudio()V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPauseOnAudioFocusLoss:Z

    if-nez p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->setSystemTemporarilyMuted(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->onLossAudio()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->onLossTransientAudio()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->onLossTransientCanDuck()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$17(I)V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljb4;

    invoke-direct {v0, p0, p1}, Ljb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;I)V

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onAdComplete$15(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onAdComplete(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAdCountdown$14(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onAdCountdown(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAdPrepared$13(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onAdPrepared(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAdStartPlaying$12(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onAdStartPlaying(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAuthorizeResult$10(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onAuthorizeResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBufferingUpdate$2(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mBufferPoint:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onBufferingUpdate(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCompletion$1()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->cancelTimeOutBuffer()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onAutoCompletion()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onError$4(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->cancelTimeOutBuffer()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onError(II)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onInfo$5(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mNeedTimeOutOther:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x2bd

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->startTimeOutBuffer()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2be

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->cancelTimeOutBuffer()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onInfo(II)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onPlayerInitResult$11(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onPlayerInitResult(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onPrepared$0()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->cancelTimeOutBuffer()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onPrepared()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSeekComplete$3()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->cancelTimeOutBuffer()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onSeekComplete()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSetSubtitlesFailed$9(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onSetSubtitlesFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSetSubtitlesSuccess$8(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onSetSubtitlesSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSubtitlesAvailable$7(Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onSubtitlesAvailable(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onVideoSizeChanged$6()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onVideoSizeChanged()V

    :cond_0
    return-void
.end method

.method public static synthetic m(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lambda$new$16(I)V

    return-void
.end method

.method public static synthetic n(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lambda$onError$4(II)V

    return-void
.end method

.method public static synthetic o(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lambda$new$17(I)V

    return-void
.end method

.method public static synthetic p(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lambda$onBufferingUpdate$2(I)V

    return-void
.end method

.method public static synthetic q(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lambda$onSubtitlesAvailable$7(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic r(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lambda$onCompletion$1()V

    return-void
.end method

.method private releaseSurface(Landroid/os/Message;)V
    .locals 0

    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    .line 7
    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->releaseSurface()V

    :cond_0
    return-void
.end method

.method private runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static bridge synthetic s(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->initVideo(Landroid/os/Message;)V

    return-void
.end method

.method private showCustomDisplay(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showCustomDisplay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GSYVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->setCustomRenderer(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private showDisplay(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->showDisplay(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic t(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->releaseSurface(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public backToFront()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->backToFront()V

    :cond_0
    return-void
.end method

.method public cancelTimeOutBuffer()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mNeedTimeOutOther:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public changeAreaLanguage(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->changeAreaLanguage(IZ)V

    :cond_0
    return-void
.end method

.method public clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->clearDefaultCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public clearDefaultCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mCacheManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;->clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getCacheManager()Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getCacheManager()Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;->clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearUserMuteIntent()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mHasUserMuteIntent:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mUserWantsMute:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->refreshMuteOutput()V

    return-void
.end method

.method public getBufferedPercentage()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->getBufferedPercentage()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCacheManager()Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentPositionInMainThread()J
    .locals 2

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->getCurrentPositionInMainThread()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentSpeed()F
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->getCurrentSpeed()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentVideoHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mCurrentVideoHeight:I

    return p0
.end method

.method public getCurrentVideoWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mCurrentVideoWidth:I

    return p0
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getIsPausedByUser()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->getIsPausedByUser()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getLastState()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mLastState:I

    return p0
.end method

.method public getNetSpeed()J
    .locals 2

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->getNetSpeed()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPlayManager()Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;
    .locals 0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/base/PlayerFactory;->getPlayManager()Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    move-result-object p0

    return-object p0
.end method

.method public getPlayPosition()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayPosition:I

    return p0
.end method

.method public getPlayTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayTag:Ljava/lang/String;

    return-object p0
.end method

.method public getPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    return-object p0
.end method

.method public getRotateInfoFlag()I
    .locals 0

    const/16 p0, 0x2711

    return p0
.end method

.method public getVideoDefinitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mVideoDefinitions:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mVideoDefinitions:Ljava/util/List;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->getVideoDefinitions()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->getVideoHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoSarDen()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->getVideoSarDen()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoSarNum()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->getVideoSarNum()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->getVideoWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public gotoBackground()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->gotoBackground()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$MediaHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$MediaHandler;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMediaHandler:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$MediaHandler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-direct {v0, v1, v2}, Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;-><init>(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mAudioFocusManager:Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;

    return-void
.end method

.method public initContext(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isCacheFile()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mCacheManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;->hadCached()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedMute()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mNeedMute:Z

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->isPlaying()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSurfaceSupportLockCanvas()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->isSurfaceSupportLockCanvas()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public lastListener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mLastListener:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    return-object p0
.end method

.method public listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mListener:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    return-object p0
.end method

.method public noticePlayViewMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->noticePlayViewMode(I)V

    :cond_0
    return-void
.end method

.method public onActivityStart(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->onActivityStart(Z)V

    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->onActivityStop()V

    :cond_0
    return-void
.end method

.method public onAdComplete(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcb4;

    invoke-direct {v1, p0, p1}, Lcb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdCountdown(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lob4;

    invoke-direct {v1, p0, p1, p2}, Lob4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdPrepared(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Leb4;

    invoke-direct {v1, p0, p1}, Leb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdStartPlaying(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lfb4;

    invoke-direct {v1, p0, p1}, Lfb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthorizeResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Ldb4;

    invoke-direct {v1, p0, p1, p2, p3}, Ldb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBufferingUpdate(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lbb4;

    invoke-direct {v0, p0, p2}, Lbb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mBufferPoint:I

    return-void
.end method

.method public onCompletion(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lgb4;

    invoke-direct {v0, p0}, Lgb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;II)Z
    .locals 1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Llb4;

    invoke-direct {v0, p0, p2, p3}, Llb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onGankAudio()V
    .locals 0

    return-void
.end method

.method public onInfo(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;II)Z
    .locals 1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lrb4;

    invoke-direct {v0, p0, p2, p3}, Lrb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public onLossAudio()V
    .locals 0

    return-void
.end method

.method public onLossTransientAudio()V
    .locals 0

    return-void
.end method

.method public onLossTransientCanDuck()V
    .locals 0

    return-void
.end method

.method public onPlayerInitResult(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lib4;

    invoke-direct {v1, p0, p1, p2}, Lib4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPrepared(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 1

    const-string p1, "onPrepared"

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->requestAudioFocusIfUnmuted(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lkb4;

    invoke-direct {v0, p0}, Lkb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lxz5;->b()V

    return-void
.end method

.method public onSeekComplete(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lqb4;

    invoke-direct {v0, p0}, Lqb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSetSubtitlesFailed(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lsb4;

    invoke-direct {v0, p0, p2}, Lsb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSetSubtitlesSuccess(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lhb4;

    invoke-direct {v0, p0, p2}, Lhb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSubtitlesAvailable(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lmb4;

    invoke-direct {v0, p0, p2}, Lmb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoSizeChanged(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;IIII)V
    .locals 0

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mCurrentVideoWidth:I

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mCurrentVideoHeight:I

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance p2, Lnb4;

    invoke-direct {p2, p0}, Lnb4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->pause()V

    :cond_0
    invoke-static {}, Lxz5;->d()V

    return-void
.end method

.method public prepare(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;Ljava/lang/String;IZLcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZFZ",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;-><init>(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;Ljava/lang/String;I)V

    move/from16 v3, p9

    invoke-virtual {v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->setHardwareAccelerated(Z)V

    move-object/from16 v3, p10

    invoke-virtual {v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->setInitConfig(Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->sendMessage(Landroid/os/Message;)V

    iget-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mNeedTimeOutOther:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->startTimeOutBuffer()V

    :cond_1
    return-void
.end method

.method public refreshMuteOutput()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mHasUserMuteIntent:Z

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mUserWantsMute:Z

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mSystemTemporarilyMuted:Z

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPageDefaultMute:Z

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver;->resolveMute(ZZZZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mNeedMute:Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mNeedMute:Z

    invoke-interface {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->setNeedMute(Z)V

    :cond_0
    return-void
.end method

.method public releaseMediaPlayer()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->sendMessage(Landroid/os/Message;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayTag:Ljava/lang/String;

    const/16 v0, -0x16

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayPosition:I

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mVideoDefinitions:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mVideoDefinitions:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public releaseSurface(Landroid/view/Surface;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public replay()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->replay()V

    :cond_0
    return-void
.end method

.method public requestAudioFocusIfUnmuted(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mAudioFocusManager:Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->isNeedMute()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requestAudioFocus"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mAudioFocusManager:Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;->requestAudioFocus()I

    :cond_1
    :goto_0
    return-void
.end method

.method public resetMuteState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mHasUserMuteIntent:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mUserWantsMute:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mSystemTemporarilyMuted:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPageDefaultMute:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPauseOnAudioFocusLoss:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->refreshMuteOutput()V

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMediaHandler:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$MediaHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->setAspectRatio(I)V

    :cond_0
    return-void
.end method

.method public setCurrentVideoHeight(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mCurrentVideoHeight:I

    return-void
.end method

.method public setCurrentVideoWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mCurrentVideoWidth:I

    return-void
.end method

.method public setCustomRenderer(Landroid/view/ViewGroup;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->showCustomDisplay(Landroid/os/Message;)V

    return-void
.end method

.method public setDisplay(Landroid/view/Surface;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->showDisplay(Landroid/os/Message;)V

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->setFullScreen(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalStateException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setLastListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mLastListener:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mLastListener:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method

.method public setLastState(I)V
    .locals 3

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mLastState:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mLastState:I

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x434

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "setLastState"

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->requestAudioFocusIfUnmuted(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mListener:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mListener:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method

.method public setNeedMute(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mHasUserMuteIntent:Z

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mUserWantsMute:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->refreshMuteOutput()V

    return-void
.end method

.method public setPageDefaultMute(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPageDefaultMute:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->refreshMuteOutput()V

    return-void
.end method

.method public setPauseOnAudioFocusLoss(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPauseOnAudioFocusLoss:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->setSystemTemporarilyMuted(Z)V

    :cond_0
    return-void
.end method

.method public setPlayPosition(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayPosition:I

    return-void
.end method

.method public setPlayTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayTag:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(FZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->setSpeed(FZ)V

    :cond_0
    return-void
.end method

.method public setSubtitleBottomRatio(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->setSubtitleBottomRatio(F)V

    :cond_0
    return-void
.end method

.method public setSubtitleSizeRatio(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->setSubtitleSizeRatio(F)V

    :cond_0
    return-void
.end method

.method public setSystemTemporarilyMuted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mSystemTemporarilyMuted:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->refreshMuteOutput()V

    return-void
.end method

.method public setUserAccountInfo(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->setUserAccountInfo(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->start()V

    :cond_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->requestAudioFocusIfUnmuted(Ljava/lang/String;)V

    invoke-static {}, Lxz5;->e()V

    return-void
.end method

.method public startTimeOutBuffer()V
    .locals 3

    const-string v0, "startTimeOutBuffer"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->stop()V

    :cond_0
    return-void
.end method

.method public switchResolution(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->switchResolution(I)V

    :cond_0
    return-void
.end method

.method public switchSubtitleSource(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->switchSubtitleSource(I)V

    :cond_0
    return-void
.end method

.method public togglePlay()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->togglePlay()V

    :cond_0
    return-void
.end method
