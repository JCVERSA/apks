.class Lcom/mgtv/ssp/play/PlayerCore$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/play/PlayerCore;->init(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/ssp/play/PlayerCore;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/play/PlayerCore;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnVideoFirstFrame()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$1900(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoFirstFrameListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$1900(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoFirstFrameListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoFirstFrameListener;->onVideoFirstFrame()V

    :cond_0
    new-instance v0, Lcom/mgtv/ssp/play/PlayerCore$7$1;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/play/PlayerCore$7$1;-><init>(Lcom/mgtv/ssp/play/PlayerCore$7;)V

    invoke-static {v0}, Lcom/hunantv/imgo/util/ThreadManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isFullScreen()I
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2700(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/PlayerCore$ScreenStatusFetcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2700(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/PlayerCore$ScreenStatusFetcher;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/ssp/play/PlayerCore$ScreenStatusFetcher;->isFull()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public onBuffering(I)V
    .locals 0

    return-void
.end method

.method public onSubtitlesError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2800(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnSubtitlesListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2800(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnSubtitlesListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnSubtitlesListener;->onSubtitlesError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSubtitlesSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2800(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnSubtitlesListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2800(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnSubtitlesListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnSubtitlesListener;->onSubtitlesSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVideoComplete()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$1600(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$1600(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoCompleteListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoCompleteListener;->onVideoComplete()V

    :cond_0
    return-void
.end method

.method public onVideoDefinitionChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$1700(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoResolutionChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$1700(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoResolutionChangedListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoResolutionChangedListener;->onVideoResolutionChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVideoDefinitionChanging()V
    .locals 1

    const-string p0, "onVideo"

    const-string v0, "onVideoDefinitionChanging276"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVideoLoading(I)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$1800(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoLoadingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$1800(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoLoadingListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoLoadingListener;->onVideoLoading(I)V

    :cond_0
    return-void
.end method

.method public onVideoPaused()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPausedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPausedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPausedListener;->OnVideoPaused()V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2100(Lcom/mgtv/ssp/play/PlayerCore;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2200(Lcom/mgtv/ssp/play/PlayerCore;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-virtual {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->pauseByUser()V

    :cond_1
    return-void
.end method

.method public onVideoPrepare()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$1200(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$1200(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparedListener;->onVideoPrepared()V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->ah:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$1300(Lcom/mgtv/ssp/play/PlayerCore;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$1300(Lcom/mgtv/ssp/play/PlayerCore;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->ae:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->U:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onVideoPreparing()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2500(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2500(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparingListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparingListener;->OnVideoPreparing()V

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2600(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2600(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoSizeChangedListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoSizeChangedListener;->onVideoSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public onVideoStartPlayering(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$1400(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$1400(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartPlayingListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartPlayingListener;->onVideoStartPlaying(Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/ssp/e;->b(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$1500(Lcom/mgtv/ssp/play/PlayerCore;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->pause()V

    :cond_2
    return-void
.end method

.method public onVideoStarted()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2300(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2300(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartedListener;->OnVideoStarted()V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->access$2202(Lcom/mgtv/ssp/play/PlayerCore;Z)Z

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2100(Lcom/mgtv/ssp/play/PlayerCore;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-virtual {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->resumeByUser()V

    :cond_1
    return-void
.end method

.method public onVideoStopped()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2400(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStoppedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2400(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStoppedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStoppedListener;->OnVideoStopped()V

    :cond_0
    return-void
.end method

.method public ontSubtitleList(Ljava/util/ArrayList;Lcom/mgtv/ssp/play/bean/SubTitleData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mgtv/ssp/play/bean/SubTitleData;",
            ">;",
            "Lcom/mgtv/ssp/play/bean/SubTitleData;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2800(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnSubtitlesListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$2800(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnSubtitlesListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnSubtitlesListener;->ontSubtitleList(Ljava/util/ArrayList;Lcom/mgtv/ssp/play/bean/SubTitleData;)V

    :cond_0
    return-void
.end method
