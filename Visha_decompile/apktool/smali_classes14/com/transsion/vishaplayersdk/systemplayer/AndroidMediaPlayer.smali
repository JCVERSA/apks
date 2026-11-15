.class public Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;
.super Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;,
        Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$MediaDataSourceProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sMediaInfo:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/MediaInfo;


# instance fields
.field private bSetSurface:Z

.field private mDataSource:Ljava/lang/String;

.field private final mInitLock:Ljava/lang/Object;

.field private mInternalListenerAdapter:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

.field private final mInternalMediaPlayer:Landroid/media/MediaPlayer;

.field private mIsReleased:Z

.field private mMediaDataSource:Landroid/media/MediaDataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_playersdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInitLock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->bSetSurface:Z

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$000(Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;II)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnInfo(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;II)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnError(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnVideoSizeChanged(IIII)V

    return-void
.end method

.method public static synthetic access$300(Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnSeekComplete()V

    return-void
.end method

.method public static synthetic access$400(Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnCompletion()V

    return-void
.end method

.method public static synthetic access$500(Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkTimedText;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnTimedText(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkTimedText;)V

    return-void
.end method

.method private attachInternalListeners()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalListenerAdapter:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalListenerAdapter:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalListenerAdapter:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalListenerAdapter:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalListenerAdapter:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalListenerAdapter:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalListenerAdapter:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalListenerAdapter:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V

    return-void
.end method

.method private releaseMediaDataSource()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mMediaDataSource:Landroid/media/MediaDataSource;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mMediaDataSource:Landroid/media/MediaDataSource;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result p0

    return p0
.end method

.method public getCurrentPosition()J
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mDataSource:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getInternalMediaPlayer()Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public getIsPausedByUser()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMediaInfo()Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/MediaInfo;
    .locals 2

    sget-object p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->sMediaInfo:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/MediaInfo;

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/MediaInfo;

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/MediaInfo;-><init>()V

    const-string v0, "android"

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/MediaInfo;->mVideoDecoder:Ljava/lang/String;

    const-string v1, "HW"

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/MediaInfo;->mVideoDecoderImpl:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/MediaInfo;->mAudioDecoder:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/MediaInfo;->mAudioDecoderImpl:Ljava/lang/String;

    sput-object p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->sMediaInfo:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/MediaInfo;

    :cond_0
    sget-object p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->sMediaInfo:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/MediaInfo;

    return-object p0
.end method

.method public getSpeed()F
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->getInternalMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->getInternalMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSpeed = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public getTrackInfo()[Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/ITrackInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p0

    return p0
.end method

.method public getVideoSarDen()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getVideoSarNum()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p0

    return p0
.end method

.method public initSystemPlayer(Landroid/content/Context;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;Ljava/util/List;Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;",
            ">;",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;",
            ")V"
        }
    .end annotation

    const-string p3, ""

    :try_start_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    new-instance v0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-direct {v0, p0, p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;-><init>(Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalListenerAdapter:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->attachInternalListeners()V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->isPlaySourceValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->isCache()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getCachePath()Ljava/io/File;

    move-result-object v6

    move-object v1, p4

    move-object v2, p1

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;->doCacheLogic(Landroid/content/Context;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getUrl()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p4, v0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->isLooping()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->setLooping(Z)V

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getSpeed()F

    move-result p1

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p4

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getSpeed()F

    move-result p1

    const/4 p4, 0x0

    cmpl-float p1, p1, p4

    if-lez p1, :cond_3

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getSpeed()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->setSpeed(F)V

    goto :goto_3

    :cond_2
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postErrorState([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    sget-object p2, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initVideoPlayer failed"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postErrorState([Ljava/lang/Object;)V

    :cond_3
    :goto_3
    return-void
.end method

.method public isLooping()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result p0

    return p0
.end method

.method public isPlayable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "pause"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x3f7

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    return-void
.end method

.method public prepareAsync()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->release()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mIsReleased:Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->releaseMediaDataSource()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->resetListeners()V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->attachInternalListeners()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->bSetSurface:Z

    return-void
.end method

.method public reset()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->releaseMediaDataSource()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->resetListeners()V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->attachInternalListeners()V

    return-void
.end method

.method public seekTo(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaDataSource;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->releaseMediaDataSource()V

    .line 14
    new-instance v0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$MediaDataSourceProxy;

    invoke-direct {v0, p1}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$MediaDataSourceProxy;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaDataSource;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mMediaDataSource:Landroid/media/MediaDataSource;

    .line 15
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/media/MediaDataSource;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 5
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iput-object p1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mDataSource:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInitLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mIsReleased:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "setDisplay"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

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

.method public setKeepInBackground(Z)V
    .locals 0

    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setLooping(Z)V
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setLooping"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public setOnSubtitlesListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;)V
    .locals 0

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setScreenOnWhilePlaying"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->getInternalMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->getInternalMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->bSetSurface:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->bSetSurface:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->bSetSurface:Z

    :cond_1
    return-void
.end method

.method public setVolume(FF)V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " rightVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "start"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method

.method public togglePlay()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "togglePlay"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
