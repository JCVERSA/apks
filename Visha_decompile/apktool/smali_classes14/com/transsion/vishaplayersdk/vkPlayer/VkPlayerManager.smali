.class public Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;
.super Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VkPlayerManager"


# instance fields
.field private vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;-><init>()V

    return-void
.end method


# virtual methods
.method public backToFront()V
    .locals 0

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

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentPosition()"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCurrentPositionInMainThread()J
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentPositionInMainThread()"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentSpeed()F
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentSpeed()"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDuration()J
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    const-string v1, "getDuration()"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getIsPausedByUser()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMediaPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    return-object p0
.end method

.method public getNetSpeed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
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

    sget-object p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    const-string v0, "getVideoDefinitions()"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    const-string v1, "getVideoHeight()"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->getVideoHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoSarDen()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVideoSarNum()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVideoWidth()I
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    const-string v1, "getVideoWidth()"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->getVideoWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public gotoBackground()V
    .locals 0

    return-void
.end method

.method public initVideoPlayer(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;)V
    .locals 1
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

    new-instance p3, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-direct {p3}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;-><init>()V

    iput-object p3, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-virtual {p3, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->setPlayerManager(Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;)V

    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;

    sget-object p3, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initVideoPlayer:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->initPlayer(Landroid/content/Context;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlaying(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->isPlaying()Z

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
    .locals 2

    sget-object p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noticePlayViewMode(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityStart(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->onActivityResume()V

    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->onActivityPause()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    const-string v1, "pause()"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->pause()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    const-string v1, "release"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->release()V

    :cond_0
    return-void
.end method

.method public releaseSurface()V
    .locals 0

    return-void
.end method

.method public replay()V
    .locals 0

    return-void
.end method

.method public seekTo(J)V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 2

    sget-object p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAspectRatio(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setBookMark(I)V
    .locals 0

    return-void
.end method

.method public setCustomRenderer(Landroid/os/Message;)V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomRenderer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {}, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;->aControllerLayoutConfig()Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;->withParentContainer(Landroid/view/ViewGroup;)Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;->build()Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->layoutPlayController(Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;)V

    :cond_0
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 2

    sget-object p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFullScreen(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setNeedMute(Z)V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNeedMute:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public setSpeed(FZ)V
    .locals 0

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
    .locals 0

    return-void
.end method

.method public start()V
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    const-string v1, "start()"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    const-string v1, "stop()"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->stop()V

    :cond_0
    return-void
.end method

.method public switchResolution(I)V
    .locals 2

    sget-object p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchResolution(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public switchSubtitleSource(I)V
    .locals 2

    sget-object p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchSubtitleSource(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public togglePlay()V
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->TAG:Ljava/lang/String;

    const-string v1, "togglePlay()"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerManager;->vkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->togglePlay()V

    :cond_0
    return-void
.end method
