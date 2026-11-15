.class public interface abstract Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract adClick()V
.end method

.method public abstract changeDefination(I)V
.end method

.method public abstract getAdTotalDuration()I
.end method

.method public abstract getBufferedPercentage()I
.end method

.method public abstract getBufferingPosition()I
.end method

.method public abstract getControlLayout()Landroid/view/ViewGroup;
.end method

.method public abstract getCurrentDefinition()I
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getCurrentSubtitleSource()Lcom/mgtv/ssp/play/bean/SubTitleData;
.end method

.method public abstract getDefaultDefinition()I
.end method

.method public abstract getDefinitionSizeMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDisPlayView()Landroid/view/View;
.end method

.method public abstract getLoadingSpeed()J
.end method

.method public abstract getPlaySpeed()F
.end method

.method public abstract getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;
.end method

.method public abstract getPlayerStatus()I
.end method

.method public abstract getRealDuration()I
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract getVideoDuration()I
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoPreDuration()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract isFullScreen()Z
.end method

.method public abstract isLocalPlay()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isPreview()Z
.end method

.method public abstract isSupport3X()Z
.end method

.method public abstract lockScreen(Z)V
.end method

.method public abstract noticeAdScreenChange(Z)V
.end method

.method public abstract noticePlayViewMode(I)V
.end method

.method public abstract onActivityStart(Z)V
.end method

.method public abstract onActivityStop()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playByUser()V
.end method

.method public abstract release()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setActivity(Landroid/app/Activity;)V
.end method

.method public abstract setAspectRatio(I)V
.end method

.method public abstract setBookmark(I)V
.end method

.method public abstract setBufferStatus(Z)V
.end method

.method public abstract setDefaultDefination(I)V
.end method

.method public abstract setFrom(Ljava/lang/String;)V
.end method

.method public abstract setJumpBeforeOrEnd(Z)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setOnAdListener(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;)V
.end method

.method public abstract setOnAuthResultListener(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AuthResultListener;)V
.end method

.method public abstract setOnErrorListener(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;)V
.end method

.method public abstract setOnSourcePrepareListener(Lcom/mgtv/ssp/c;)V
.end method

.method public abstract setOnStopAdListener(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdStopListener;)V
.end method

.method public abstract setOnVideoListener(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;)V
.end method

.method public abstract setPlaySpeed(F)V
.end method

.method public abstract setPlayStatusChangeListener(Lcom/mgtv/thirdsdk/playcore/d;)V
.end method

.method public abstract setRequestPauseAd(Z)V
.end method

.method public abstract setScreenOrientationChangeListener(Lcom/mgtv/thirdsdk/playcore/f;)V
.end method

.method public abstract setSspAccountCallback(Lcom/mgtv/ssp/authbase/MgSspAccountCallback;)V
.end method

.method public abstract setSspVipCallback(Lcom/mgtv/ssp/authbase/c;)V
.end method

.method public abstract setSupportChangeOrientation(Z)V
.end method

.method public abstract setSupportChangeScreenMode(Z)V
.end method

.method public abstract setVolumeProcess(Lcom/mgtv/thirdsdk/playcore/c$c;)V
.end method

.method public abstract start()V
.end method

.method public abstract startLivePlayer(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startLocalPlayer(Ljava/lang/String;)V
.end method

.method public abstract startPlayer(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract stop()V
.end method

.method public abstract switchFullScreen(Z)V
.end method

.method public abstract switchFullscreenByAd(Z)V
.end method

.method public abstract switchSubtitleSource(I)V
.end method
