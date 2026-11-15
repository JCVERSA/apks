.class public interface abstract Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract backToFront()V
.end method

.method public abstract changeAreaLanguage(IZ)V
.end method

.method public abstract getBufferedPercentage()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getCurrentPositionInMainThread()J
.end method

.method public abstract getCurrentSpeed()F
.end method

.method public abstract getDuration()J
.end method

.method public abstract getIsPausedByUser()Z
.end method

.method public abstract getMediaPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;
.end method

.method public abstract getNetSpeed()J
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

.method public abstract initVideoPlayer(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;)V
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
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isSurfaceSupportLockCanvas()Z
.end method

.method public abstract noticePlayViewMode(I)V
.end method

.method public abstract onActivityStart(Z)V
.end method

.method public abstract onActivityStop()V
.end method

.method public abstract pause()V
.end method

.method public abstract release()V
.end method

.method public abstract releaseSurface()V
.end method

.method public abstract replay()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setAspectRatio(I)V
.end method

.method public abstract setBookMark(I)V
.end method

.method public abstract setCustomRenderer(Landroid/os/Message;)V
.end method

.method public abstract setFullScreen(Z)V
.end method

.method public abstract setNeedMute(Z)V
.end method

.method public abstract setPlayerManagerListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;)V
.end method

.method public abstract setSpeed(FZ)V
.end method

.method public abstract setSpeedPlaying(FZ)V
.end method

.method public abstract setSubtitleBottomRatio(F)V
.end method

.method public abstract setSubtitleSizeRatio(F)V
.end method

.method public abstract setUserAccountInfo(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;)V
.end method

.method public abstract showDisplay(Landroid/os/Message;)V
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
