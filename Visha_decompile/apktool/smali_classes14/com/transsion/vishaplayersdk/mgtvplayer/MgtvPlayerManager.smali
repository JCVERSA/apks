.class public Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;
.super Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentPosition:J

.field private mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

.field private surface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_playersdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->currentPosition:J

    return-void
.end method

.method public static initMgtvPlayerCoreSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bMgtvSDKInited:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, ""

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->initMgtvPlayerCoreSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public backToFront()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->backToFront()V

    :cond_0
    return-void
.end method

.method public changeAreaLanguage(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->changeAreaLanguage(IZ)V

    :cond_0
    return-void
.end method

.method public getBufferedPercentage()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->currentPosition:J

    return-wide v0
.end method

.method public getCurrentPositionInMainThread()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->currentPosition:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentSpeed()F
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->getCurrentSpeed()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getIsPausedByUser()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->getIsPausedByUser()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMediaPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    return-object p0
.end method

.method public getNetSpeed()J
    .locals 2

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

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->getVideoDefinitions()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->getVideoHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoSarDen()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->getVideoSarDen()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getVideoSarNum()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->getVideoSarNum()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->getVideoWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public gotoBackground()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->gotoBackground()V

    :cond_0
    return-void
.end method

.method public initVideoPlayer(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;)V
    .locals 0
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

    new-instance p1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-direct {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-virtual {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->setPlayerManager(Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;)V

    iget-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;

    sget-object p2, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "init video player:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->aMgtvPlayerInitConfig()Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;

    move-result-object p2

    invoke-static {}, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->getInstance()Lcom/transsion/vishaplayersdk/VishaPlayerSDK;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->getDeviceId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->withGaid(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;

    move-result-object p2

    invoke-static {}, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->getInstance()Lcom/transsion/vishaplayersdk/VishaPlayerSDK;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->getDeviceId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->withOaid(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;

    move-result-object p2

    sget-object p3, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvConstant;->mid:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->withMid(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;

    move-result-object p2

    sget-object p3, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvConstant;->ch_token:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->withToken(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;

    move-result-object p2

    sget-object p3, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvConstant;->comm_content:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->withContentid(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->withOpenAdFlag(Z)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->withOpenContentFlag(Z)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->withVideoId(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;

    move-result-object p2

    invoke-static {}, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->getInstance()Lcom/transsion/vishaplayersdk/VishaPlayerSDK;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->getAPP()Landroid/app/Application;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->withContext(Landroid/app/Application;)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getStartPosition()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->withStartPosition(I)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->getInitConfig()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->withPlayerInitConfig(Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->isHardwareAccelerated()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "2"

    :goto_0
    invoke-virtual {p2, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->withRenderType(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->build()Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->initMgTVPlayer(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->isPlaying()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSurfaceSupportLockCanvas()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public noticePlayViewMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->noticePlayViewMode(I)V

    :cond_0
    return-void
.end method

.method public onActivityStart(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->onActivityStart(Z)V

    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->onActivityStop()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->pause()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->stop()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->release()V

    :cond_1
    return-void
.end method

.method public releaseSurface()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->surface:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method public replay()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->replay()V

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->setAspectRatio(I)V

    :cond_0
    return-void
.end method

.method public setBookMark(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->setBookMark(I)V

    :cond_0
    return-void
.end method

.method public setCustomRenderer(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;->aControllerLayoutConfig()Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;->withParentContainer(Landroid/view/ViewGroup;)Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;->build()Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->layoutPlayController(Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->setFullScreen(Z)V

    :cond_0
    return-void
.end method

.method public setNeedMute(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public setSpeed(FZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->setPlaySpeed(F)V

    :cond_0
    return-void
.end method

.method public setSpeedPlaying(FZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->setPlaySpeed(F)V

    :cond_0
    return-void
.end method

.method public setSubtitleBottomRatio(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->setSubtitleBottomRatio(F)V

    :cond_0
    return-void
.end method

.method public setSubtitleSizeRatio(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->setSubtitleSizeRatio(F)V

    :cond_0
    return-void
.end method

.method public setUserAccountInfo(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->setUserAccountInfo(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;)V

    :cond_0
    return-void
.end method

.method public showDisplay(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->stop()V

    :cond_0
    return-void
.end method

.method public switchResolution(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->switchResolution(I)V

    :cond_0
    return-void
.end method

.method public switchSubtitleSource(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->switchSubtitleSource(I)V

    :cond_0
    return-void
.end method

.method public togglePlay()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->mgtvPlayerProxy:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->togglePlay()V

    :cond_0
    return-void
.end method
