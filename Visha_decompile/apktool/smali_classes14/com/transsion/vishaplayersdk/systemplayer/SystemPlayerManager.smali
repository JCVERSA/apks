.class public Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;
.super Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private currentPosition:J

.field private isPlaying:Z

.field private lastTimeStamp:J

.field private lastTotalRxBytes:J

.field private mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

.field private release:Z

.field private surface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_playersdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->lastTotalRxBytes:J

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->lastTimeStamp:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->isPlaying:Z

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->currentPosition:J

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
    iget-wide v6, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->lastTimeStamp:J

    sub-long v6, v4, v6

    cmp-long p1, v6, v0

    if-nez p1, :cond_2

    return-wide v6

    .line 6
    :cond_2
    iget-wide v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->lastTotalRxBytes:J

    sub-long v0, v2, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v0, v8

    div-long/2addr v0, v6

    .line 7
    iput-wide v4, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->lastTimeStamp:J

    .line 8
    iput-wide v2, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->lastTotalRxBytes:J

    return-wide v0
.end method

.method private setSpeed(F)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->release:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->setSpeed(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public backToFront()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->isPlaying:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public changeAreaLanguage(IZ)V
    .locals 0

    return-void
.end method

.method public getBufferedPercentage()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->currentPosition:J

    return-wide v0
.end method

.method public getCurrentPositionInMainThread()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->currentPosition:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentSpeed()F
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->getSpeed()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->getDuration()J

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

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    return-object p0
.end method

.method public getNetSpeed()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->getNetSpeed(Landroid/content/Context;)J

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

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->getVideoHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoSarDen()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->getVideoSarDen()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getVideoSarNum()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->getVideoSarNum()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->getVideoWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public gotoBackground()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->isPlaying:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public initVideoPlayer(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;)V
    .locals 3
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

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->context:Landroid/content/Context;

    new-instance v0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->release:Z

    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;

    sget-object v0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initVideoPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->initSystemPlayer(Landroid/content/Context;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;Ljava/util/List;Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->isPlaying()Z

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

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->pause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->isPlaying:Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->TAG:Ljava/lang/String;

    const-string v1, "release system player"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->release:Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->stop()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->lastTotalRxBytes:J

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->lastTimeStamp:J

    return-void
.end method

.method public releaseSurface()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->surface:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method public replay()V
    .locals 1

    sget-object p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->TAG:Ljava/lang/String;

    const-string v0, "replay"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->seekTo(J)V

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
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->release:Z

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->setVolume(FF)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public setSpeed(FZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->setSpeed(F)V

    return-void
.end method

.method public setSpeedPlaying(FZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->setSpeed(FZ)V

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

.method public setVolume(FF)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public showDisplay(Landroid/os/Message;)V
    .locals 2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->release:Z

    if-nez v1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    check-cast p1, Landroid/view/Surface;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->surface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->release:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->isPlaying:Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->isPlaying:Z

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

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->isPlaying:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->pause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->isPlaying:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->mediaPlayer:Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/SystemPlayerManager;->isPlaying:Z

    :goto_0
    return-void
.end method
