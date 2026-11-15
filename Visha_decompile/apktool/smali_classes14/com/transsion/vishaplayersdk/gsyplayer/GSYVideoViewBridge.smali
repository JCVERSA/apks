.class public interface abstract Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract backToFront()V
.end method

.method public abstract changeAreaLanguage(IZ)V
.end method

.method public abstract clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
.end method

.method public abstract getBufferedPercentage()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getCurrentPositionInMainThread()J
.end method

.method public abstract getCurrentSpeed()F
.end method

.method public abstract getCurrentVideoHeight()I
.end method

.method public abstract getCurrentVideoWidth()I
.end method

.method public abstract getDuration()J
.end method

.method public abstract getIsPausedByUser()Z
.end method

.method public abstract getLastState()I
.end method

.method public abstract getNetSpeed()J
.end method

.method public abstract getPlayPosition()I
.end method

.method public abstract getPlayTag()Ljava/lang/String;
.end method

.method public abstract getPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;
.end method

.method public abstract getRotateInfoFlag()I
.end method

.method public abstract getVideoDefinitions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoSarDen()I
.end method

.method public abstract getVideoSarNum()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract gotoBackground()V
.end method

.method public abstract isCacheFile()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isSurfaceSupportLockCanvas()Z
.end method

.method public abstract lastListener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;
.end method

.method public abstract listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;
.end method

.method public abstract noticePlayViewMode(I)V
.end method

.method public abstract onActivityStart(Z)V
.end method

.method public abstract onActivityStop()V
.end method

.method public abstract pause()V
.end method

.method public abstract prepare(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;Ljava/lang/String;IZLcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;)V
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
.end method

.method public abstract releaseMediaPlayer()V
.end method

.method public abstract releaseSurface(Landroid/view/Surface;)V
.end method

.method public abstract replay()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setAspectRatio(I)V
.end method

.method public abstract setCurrentVideoHeight(I)V
.end method

.method public abstract setCurrentVideoWidth(I)V
.end method

.method public abstract setCustomRenderer(Landroid/view/ViewGroup;)V
.end method

.method public abstract setDisplay(Landroid/view/Surface;)V
.end method

.method public abstract setFullScreen(Z)V
.end method

.method public abstract setLastListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;)V
.end method

.method public abstract setLastState(I)V
.end method

.method public abstract setListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;)V
.end method

.method public abstract setPlayPosition(I)V
.end method

.method public abstract setPlayTag(Ljava/lang/String;)V
.end method

.method public abstract setSpeed(FZ)V
.end method

.method public abstract setSubtitleBottomRatio(F)V
.end method

.method public abstract setSubtitleSizeRatio(F)V
.end method

.method public abstract setUserAccountInfo(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;)V
.end method

.method public abstract setVideoDefinitions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract switchResolution(I)V
.end method

.method public abstract switchSubtitleSource(I)V
.end method

.method public abstract togglePlay()V
.end method
