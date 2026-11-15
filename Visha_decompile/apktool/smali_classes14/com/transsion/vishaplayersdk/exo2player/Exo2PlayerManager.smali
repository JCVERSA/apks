.class public Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;
.super Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Exo2PlayerManager"


# instance fields
.field private context:Landroid/content/Context;

.field private currentPosition:J

.field private dummySurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;
    .annotation build Landroidx/annotation/OptIn;
        markerClass = {
            Landroidx/media3/common/util/UnstableApi;
        }
    .end annotation
.end field

.field private isPlaying:Z

.field private lastTimeStamp:J

.field private lastTotalRxBytes:J

.field private mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->lastTotalRxBytes:J

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->lastTimeStamp:J

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->currentPosition:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->isPlaying:Z

    return-void
.end method

.method private getNetSpeed(Landroid/content/Context;)J
    .locals 10

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    move-wide v2, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    .line 4
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 5
    iget-wide v6, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->lastTimeStamp:J

    sub-long v6, v4, v6

    cmp-long p1, v6, v0

    if-nez p1, :cond_2

    return-wide v6

    .line 6
    :cond_2
    iget-wide v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->lastTotalRxBytes:J

    sub-long v0, v2, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v0, v8

    div-long/2addr v0, v6

    .line 7
    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->lastTimeStamp:J

    .line 8
    iput-wide v2, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->lastTotalRxBytes:J

    return-wide v0
.end method


# virtual methods
.method public backToFront()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->isPlaying:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public changeAreaLanguage(IZ)V
    .locals 0

    return-void
.end method

.method public getBufferedPercentage()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPosition()J
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-wide v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->currentPosition:J

    return-wide v0
.end method

.method public getCurrentPositionInMainThread()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->currentPosition:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentSpeed()F
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->getSpeed()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getIsPausedByUser()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMediaPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    return-object p0
.end method

.method public getNetSpeed()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->getNetSpeed(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoDefinitions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->getVideoHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoSarDen()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->getVideoSarDen()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getVideoSarNum()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->getVideoSarNum()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->getVideoWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public gotoBackground()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->isPlaying:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public initVideoPlayer(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;)V
    .locals 6
    .annotation build Landroidx/annotation/OptIn;
        markerClass = {
            Landroidx/media3/common/util/UnstableApi;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Message;",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;",
            ">;",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->context:Landroid/content/Context;

    new-instance p3, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    invoke-direct {p3, p1}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->setAudioStreamType(I)V

    iget-object p3, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->dummySurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->newInstanceV17(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->dummySurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    :cond_0
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init player: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v1, "Exo2PlayerManager"

    invoke-static {v1, p3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object p3, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->isLooping()Z

    move-result v1

    invoke-virtual {p3, v1}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->setLooping(Z)V

    iget-object p3, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p3, v0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->setPreview(Z)V

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->isCache()Z

    move-result p3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getCachePath()Ljava/io/File;

    move-result-object v5

    move-object v0, p4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;->doCacheLogic(Landroid/content/Context;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->isCache()Z

    move-result p4

    invoke-virtual {p3, p4}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->setCache(Z)V

    iget-object p3, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getCachePath()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->setCacheDir(Ljava/io/File;)V

    iget-object p3, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getOverrideExtension()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->setOverrideExtension(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getUrl()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3, p1, p4, v0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getSpeed()F

    move-result p1

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getSpeed()F

    move-result p1

    const/4 p4, 0x0

    cmpl-float p1, p1, p4

    if-lez p1, :cond_3

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getSpeed()F

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->setSpeed(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method public isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isPlaying()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSurfaceSupportLockCanvas()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public noticePlayViewMode(I)V
    .locals 0

    return-void
.end method

.method public onActivityStart(Z)V
    .locals 0

    return-void
.end method

.method public onActivityStop()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->pause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->isPlaying:Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2
    .annotation build Landroidx/annotation/OptIn;
        markerClass = {
            Landroidx/media3/common/util/UnstableApi;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->release()V

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->dummySurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->dummySurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->lastTotalRxBytes:J

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->lastTimeStamp:J

    return-void
.end method

.method public releaseSurface()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->surface:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method public replay()V
    .locals 0

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x41a

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public setBookMark(I)V
    .locals 0

    return-void
.end method

.method public setCustomRenderer(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 0

    return-void
.end method

.method public setNeedMute(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->setVolume(FF)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p1}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->setVolume(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSpeed(FZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    if-eqz p0, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->setSpeed(FF)V
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

.method public setSpeedPlaying(FZ)V
    .locals 0

    return-void
.end method

.method public setSubtitleBottomRatio(F)V
    .locals 0

    return-void
.end method

.method public setSubtitleSizeRatio(F)V
    .locals 0

    return-void
.end method

.method public setUserAccountInfo(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;)V
    .locals 0

    return-void
.end method

.method public showDisplay(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->dummySurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/view/Surface;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->surface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->isPlaying:Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->isPlaying:Z

    :cond_0
    return-void
.end method

.method public switchResolution(I)V
    .locals 0

    return-void
.end method

.method public switchSubtitleSource(I)V
    .locals 0

    return-void
.end method

.method public togglePlay()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->isPlaying:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->pause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->isPlaying:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2PlayerManager;->isPlaying:Z

    :goto_0
    return-void
.end method
