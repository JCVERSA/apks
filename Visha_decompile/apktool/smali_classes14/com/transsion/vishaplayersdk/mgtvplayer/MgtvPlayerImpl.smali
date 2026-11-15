.class public Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;
.super Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static bMgtvSDKInited:Z


# instance fields
.field adPlayDuration:I

.field private bBackground:Z

.field private bPlayAd:Z

.field private bPlayComplete:Z

.field private bPlayerPrepared:Z

.field private bPreviewVideo:Z

.field private final mDefinitionsVisha:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private mMgSspLoginStatusReceiver:Lcom/mgtv/ssp/MgSspLoginStatusReceiver;

.field private mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

.field private mPlayParam:Lcom/transsion/vishaplayersdk/base/config/PlayParams;

.field private mPlayerInitConfig:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_playersdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bBackground:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bPlayComplete:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mDefinitionsVisha:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->lambda$setMgtvPlayerListeners$17(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreSubtitlesListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreSubtitlesListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreSubtitlesListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreSubtitlesListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreSubtitlesListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreSubtitlesListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnSubtitlesListener;

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->lambda$setMgtvPlayerListeners$6()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->lambda$setMgtvPlayerListeners$3(Z)V

    return-void
.end method

.method private createMgtvPlayCore(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;)V
    .locals 6

    const/16 v0, 0x3e8

    const/16 v1, 0x40a

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->isValidConfig()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v2, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create mgtv player:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/mgtv/ssp/play/PlayerCore;

    invoke-direct {v3}, Lcom/mgtv/ssp/play/PlayerCore;-><init>()V

    iput-object v3, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getRenderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mgtv/ssp/play/PlayerCore;->setViewRendType(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->isbOpenRecommondContent()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mgtv/ssp/play/PlayerCore;->setRequestPauseAd(Z)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getContext()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mgtv/ssp/play/PlayerCore;->init(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create mgtv play core failed err code:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p1}, Lcom/mgtv/ssp/play/PlayerCore;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    const-wide/32 v4, 0x89544c

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bPlayComplete:Z

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->setMgtvPlayerListeners()V

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->setAccountInfo(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mVideoDefinition:Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current video definition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mVideoDefinition:Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mVideoDefinition:Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setProperties(ILjava/lang/Object;)Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;->aPlayParams()Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;

    move-result-object v0

    sget-object v1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvConstant;->comm_content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;->withContentid(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getVideoid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;->withVideoid(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getStartPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;->withStartPosition(I)Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;->build()Lcom/transsion/vishaplayersdk/base/config/PlayParams;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mPlayParam:Lcom/transsion/vishaplayersdk/base/config/PlayParams;

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->prepare()V

    return-void

    :cond_3
    :goto_0
    sget-object p1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v2, "mgtv_invalid_play_param"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/32 v2, 0x895450

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->lambda$initMgtvPlayerCoreSDK$0(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->lambda$setMgtvPlayerListeners$8(I)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->lambda$setMgtvPlayerListeners$9()V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->lambda$setMgtvPlayerListeners$11()V

    return-void
.end method

.method public static synthetic h(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->lambda$initMgtvPlayerCoreSDK$1(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->lambda$setMgtvPlayerListeners$10()V

    return-void
.end method

.method public static initMgtvPlayerCoreSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 13
    invoke-static {p3}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, ""

    .line 14
    :cond_0
    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/mgtv/ssp/MgSspSdk;->setOaid(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/mgtv/ssp/MgSspSdk;->setGaid(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/mgtv/ssp/MgSspSdk;->setIsOverSea(Z)V

    .line 17
    invoke-static {}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->setAreaLanguage()V

    .line 18
    invoke-static {}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->setSupportVip()V

    .line 19
    new-instance p3, Lcom/mgtv/ssp/InitArgs;

    invoke-direct {p3, p1, p2}, Lcom/mgtv/ssp/InitArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :try_start_0
    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object p1

    new-instance p2, Lep6;

    invoke-direct {p2}, Lep6;-><init>()V

    invoke-virtual {p1, p0, p3, p2}, Lcom/mgtv/ssp/MgSspSdk;->init(Landroid/content/Context;Lcom/mgtv/ssp/InitArgs;Lcom/mgtv/ssp/MgSspInitCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 21
    sget-object p1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mgtv sdk init failed,error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private initMgtvPlayerCoreSDK(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getGaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getGaid()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    .line 2
    :goto_1
    sget-object v1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " MgSspSdk init: gaid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getGaid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",mid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",adsid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getAdsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",playurl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getVideoid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getAdsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mgtv/ssp/MgSspSdk;->setAdsID(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mgtv/ssp/MgSspSdk;->setOaid(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mgtv/ssp/MgSspSdk;->setGaid(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/MgSspSdk;->setIsOverSea(Z)V

    .line 9
    invoke-static {}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->setAreaLanguage()V

    .line 10
    invoke-static {}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->setSupportVip()V

    .line 11
    new-instance v0, Lcom/mgtv/ssp/InitArgs;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mgtv/ssp/InitArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    new-instance v3, Ldp6;

    invoke-direct {v3, p0, p1}, Ldp6;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/mgtv/ssp/MgSspSdk;->init(Landroid/content/Context;Lcom/mgtv/ssp/InitArgs;Lcom/mgtv/ssp/MgSspInitCallback;)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;Lcom/mgtv/ssp/MgSspLoginStatusReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->lambda$setMgtvPlayerListeners$16(Lcom/mgtv/ssp/MgSspLoginStatusReceiver;)V

    return-void
.end method

.method public static synthetic k(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->lambda$setMgtvPlayerListeners$5(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->lambda$setMgtvPlayerListeners$4(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initMgtvPlayerCoreSDK$0(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;ILjava/lang/String;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v2

    iget-wide v2, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mInitStartTime:J

    sub-long/2addr v0, v2

    const/16 v2, 0x3fa

    if-nez p2, :cond_0

    sget-object p2, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string p3, "mgtv sdk init success"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->createMgtvPlayCore(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;)V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bMgtvSDKInited:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mgtv sdk init failed, code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    const-wide/32 v0, 0x89544a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0, p3}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p3, 0x40a

    invoke-virtual {p0, p3, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x3e8

    invoke-virtual {p0, p2, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$initMgtvPlayerCoreSDK$1(ILjava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string p1, "mgtv sdk init success"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bMgtvSDKInited:Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mgtv sdk init failed, code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " msg:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setMgtvPlayerListeners$10()V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onAdComplete"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bPlayAd:Z

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bPlayerPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->start()V

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3f5

    invoke-virtual {p0, v2, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3fe

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;->getPlayerManagerListener()Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;->onAdComplete(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    return-void
.end method

.method private synthetic lambda$setMgtvPlayerListeners$11()V
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "OnVideoPaused"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bPlayComplete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x3f7

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setMgtvPlayerListeners$12()V
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "OnVideoPreparing"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnPrepared()V

    return-void
.end method

.method private synthetic lambda$setMgtvPlayerListeners$13()V
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "OnVideoStopped"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x3f8

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setMgtvPlayerListeners$14()V
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "OnVideoStarted"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x44b

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setMgtvPlayerListeners$15(II)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreVideoSizeChangedListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnVideoSizeChangedListener;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;IIII)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setMgtvPlayerListeners$16(Lcom/mgtv/ssp/MgSspLoginStatusReceiver;)V
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "mangotv call vip callback"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgSspLoginStatusReceiver:Lcom/mgtv/ssp/MgSspLoginStatusReceiver;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x40e

    invoke-virtual {p0, v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setMgtvPlayerListeners$17(Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoResolutionChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "0104"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mPlayParam:Lcom/transsion/vishaplayersdk/base/config/PlayParams;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->getVideoid()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x44e

    invoke-virtual {p0, v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string v0, "0000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mDefinitionsVisha:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mDefinitionsVisha:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mDefinitionsVisha:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

    iget v5, v4, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->type:I

    iget-object v6, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v6}, Lcom/mgtv/ssp/play/PlayerCore;->getCurrentResolution()I

    move-result v6

    if-ne v5, v6, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->setCurrent(Z)V

    move-object v2, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->setCurrent(Z)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x419

    invoke-virtual {p0, v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$setMgtvPlayerListeners$2()V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onVideoComplete"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bPreviewVideo:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video preview complete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mPlayParam:Lcom/transsion/vishaplayersdk/base/config/PlayParams;

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->getVideoid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x40d

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bPlayComplete:Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreCompletionListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$setMgtvPlayerListeners$3(Z)V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoStartPlaying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bPlayComplete:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x3f6

    invoke-virtual {p0, v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setMgtvPlayerListeners$4(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreErrorListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->MGTV_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvConstant;->MGTV_ERROR_MESSAGE_300006:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v1, 0x493e6

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_1

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postErrorState([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mOnPlayerCoreErrorListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnErrorListener;

    invoke-interface {p1, p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer$OnErrorListener;->onError(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;II)Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$setMgtvPlayerListeners$5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnAuthorizeResultListener result code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "110100"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "110102"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->onAuthPreview()V

    goto :goto_1

    :cond_1
    const-string v0, "110108"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->onAuthNeedVip()V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->onAuthFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->onAuthSuccess(Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 p2, 0x3ff

    invoke-virtual {p0, p2, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setMgtvPlayerListeners$6()V
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onVideoPrepared"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bPlayerPrepared:Z

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bPlayAd:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bBackground:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->start()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setMgtvPlayerListeners$7()V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onAdStartPlaying"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3f5

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/16 v2, 0x3fd

    invoke-virtual {p0, v2, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;->getPlayerManagerListener()Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;->onAdStartPlaying(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    iput v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->adPlayDuration:I

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->getCurrentAdInfo()Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->getAdButtonName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->adButtonName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->getAdDuration()I

    move-result p0

    sput p0, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->adDuration:I

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->getAdTag()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->adTag:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->getAdVideoHeight()I

    move-result p0

    sput p0, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->adVideoHeight:I

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->getAdVideoWidth()I

    move-result p0

    sput p0, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->adVideoWidth:I

    iget-boolean p0, v0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->canPause:Z

    sput-boolean p0, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->canPause:Z

    iget-boolean p0, v0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->isTrueViewAd:Z

    sput-boolean p0, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->isTrueViewAd:Z

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->getUrl()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->url:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->getVipText()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->vipText:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->getTrueViewDuration()I

    move-result p0

    sput p0, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->trueViewDuration:I

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->markAdPlay()V

    return-void
.end method

.method private synthetic lambda$setMgtvPlayerListeners$8(I)V
    .locals 1

    sget-object p1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v0, "onAdCountdown"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->adPlayDuration:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->adPlayDuration:I

    return-void
.end method

.method private synthetic lambda$setMgtvPlayerListeners$9()V
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onAdPrepared"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bPlayAd:Z

    return-void
.end method

.method public static synthetic m(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->lambda$setMgtvPlayerListeners$14()V

    return-void
.end method

.method public static synthetic n(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->lambda$setMgtvPlayerListeners$13()V

    return-void
.end method

.method public static synthetic o(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->lambda$setMgtvPlayerListeners$15(II)V

    return-void
.end method

.method private onAuthFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnAuthorizeResultListener result code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p2

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    const-wide/32 v0, 0x895441

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x40a

    invoke-virtual {p0, p2, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    return-void
.end method

.method private onAuthNeedVip()V
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onAuthNeedVip"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mPlayParam:Lcom/transsion/vishaplayersdk/base/config/PlayParams;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->getVideoid()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x416

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    return-void
.end method

.method private onAuthPreview()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->getCurrentVideoInfo()Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mgtv authorize failed,but can just preview duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->previewDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bPreviewVideo:Z

    iget v0, v0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->previewDuration:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x40c

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private onAuthSuccess(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "mgtv authorize success"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;->getPlayerManagerListener()Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;->getPlayerManagerListener()Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v1}, Lcom/mgtv/ssp/play/PlayerCore;->getAuthData()Lcom/mgtv/ssp/a/a;

    move-result-object v1

    const-string v2, "0"

    const-string v3, "auth success"

    invoke-interface {v0, v2, v3, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;->onAuthorizeResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic p(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->lambda$setMgtvPlayerListeners$12()V

    return-void
.end method

.method private prepare()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mPlayParam:Lcom/transsion/vishaplayersdk/base/config/PlayParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->isVaild()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getPlayerInitConfig()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getPlayerInitConfig()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->getPlayerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mgtv_player_prepare_play_init_info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play_param:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mPlayParam:Lcom/transsion/vishaplayersdk/base/config/PlayParams;

    invoke-virtual {v3}, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mPlayParam:Lcom/transsion/vishaplayersdk/base/config/PlayParams;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->getStartPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->setBookMark(I)V

    new-instance v0, Lcom/mgtv/ssp/play/MediaInfo;

    invoke-direct {v0}, Lcom/mgtv/ssp/play/MediaInfo;-><init>()V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mgtv/ssp/play/MediaInfo;->token:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mPlayParam:Lcom/transsion/vishaplayersdk/base/config/PlayParams;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->getVideoid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mgtv/ssp/play/MediaInfo;->videoId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mPlayParam:Lcom/transsion/vishaplayersdk/base/config/PlayParams;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->getContentid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mgtv/ssp/play/MediaInfo;->contentId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getPlayerInitConfig()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->getPlayerActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, v0, p0}, Lcom/mgtv/ssp/play/PlayerCore;->prepare(Landroid/app/Activity;Lcom/mgtv/ssp/play/MediaInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "prepare_mgtv_failed"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/32 v0, 0x895451

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x40a

    invoke-virtual {p0, v3, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic q(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->lambda$setMgtvPlayerListeners$7()V

    return-void
.end method

.method public static synthetic r(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->lambda$setMgtvPlayerListeners$2()V

    return-void
.end method

.method public static bridge synthetic s(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)Lcom/mgtv/ssp/play/PlayerCore;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    return-object p0
.end method

.method private setAccountInfo(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getPlayerInitConfig()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getPlayerInitConfig()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getPlayerInitConfig()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->getOpenid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PalmToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getPlayerInitConfig()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->getPalmToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->getPlayerInitConfig()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object p0

    new-instance p1, Lcom/mgtv/ssp/authbase/AccountInfo;

    invoke-direct {p1}, Lcom/mgtv/ssp/authbase/AccountInfo;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->getUserToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgtv/ssp/authbase/AccountInfo;->setToken(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->getOpenid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mgtv/ssp/authbase/AccountInfo;->setOpenId(Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/MgSspSdk;->updateAccountInfo(Lcom/mgtv/ssp/authbase/AccountInfo;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/mgtv/ssp/authbase/AccountInfo;

    invoke-direct {p0}, Lcom/mgtv/ssp/authbase/AccountInfo;-><init>()V

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/authbase/AccountInfo;->setToken(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/authbase/AccountInfo;->setOpenId(Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mgtv/ssp/MgSspSdk;->updateAccountInfo(Lcom/mgtv/ssp/authbase/AccountInfo;)V

    :goto_0
    return-void
.end method

.method private static setAreaLanguage()V
    .locals 20

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "CN"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "TW"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "MY"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "ID"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "VN"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "TH"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sget-object v8, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "locale.country "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isZh is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isTw is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isMy is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isId is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isVi "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isTh "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "is English "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "system is "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    filled-new-array/range {v11 .. v19}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/mgtv/ssp/MgSspSdk;->changeLanguage(IZ)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/mgtv/ssp/MgSspSdk;->changeLanguage(IZ)V

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/mgtv/ssp/MgSspSdk;->changeLanguage(IZ)V

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Lcom/mgtv/ssp/MgSspSdk;->changeLanguage(IZ)V

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v0}, Lcom/mgtv/ssp/MgSspSdk;->changeLanguage(IZ)V

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_5

    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Lcom/mgtv/ssp/MgSspSdk;->changeLanguage(IZ)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/mgtv/ssp/MgSspSdk;->changeLanguage(IZ)V

    :goto_0
    return-void
.end method

.method private setMgtvPlayerListeners()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lwo6;

    invoke-direct {v1, p0}, Lwo6;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoCompleteListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoCompleteListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Llp6;

    invoke-direct {v1, p0}, Llp6;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoStartPlayingListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartPlayingListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lmp6;

    invoke-direct {v1, p0}, Lmp6;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnErrorListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnErrorListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lnp6;

    invoke-direct {v1, p0}, Lnp6;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnAuthorizeResultListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAuthorizeResultListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lxo6;

    invoke-direct {v1, p0}, Lxo6;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoPreparedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparedListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$1;

    invoke-direct {v1, p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$1;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoFirstFrameListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoFirstFrameListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$2;

    invoke-direct {v1, p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$2;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnPrePreparedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnPrePreparedListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lyo6;

    invoke-direct {v1, p0}, Lyo6;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnAdStartPlayingListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdStartPlayingListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lzo6;

    invoke-direct {v1, p0}, Lzo6;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnAdCountdownListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCountdownListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lap6;

    invoke-direct {v1, p0}, Lap6;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnAdPreparedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdPreparedListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lbp6;

    invoke-direct {v1, p0}, Lbp6;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnAdCompleteListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCompleteListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$3;

    invoke-direct {v1, p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$3;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoLoadingListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoLoadingListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcp6;

    invoke-direct {v1, p0}, Lcp6;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoPausedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPausedListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lfp6;

    invoke-direct {v1, p0}, Lfp6;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoPreparingListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparingListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lgp6;

    invoke-direct {v1, p0}, Lgp6;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoStoppedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStoppedListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lhp6;

    invoke-direct {v1, p0}, Lhp6;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoStartedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartedListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lip6;

    invoke-direct {v1, p0}, Lip6;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoSizeChangedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$4;

    invoke-direct {v1, p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$4;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnSubtitlesListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnSubtitlesListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Ljp6;

    invoke-direct {v1, p0}, Ljp6;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setSspVipCallback(Lcom/mgtv/ssp/authbase/c;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    new-instance v1, Lkp6;

    invoke-direct {v1, p0}, Lkp6;-><init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayerCore;->setOnVideoResolutionChangedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoResolutionChangedListener;)V

    return-void
.end method

.method private static setSupportVip()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvConstant;->B_SUPPORT_VIP:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSupportVip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mgtv/ssp/MgSspSdk;->setSupportVip(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic t()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public backToFront()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->backToFront()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bBackground:Z

    :cond_0
    return-void
.end method

.method public changeAreaLanguage(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string p1, "mgtv play core changeAreaLanguage unsupported"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->getCurrentPosition()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCurrentResolution()I
    .locals 3

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->getCurrentResolution()I

    move-result p0

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentResolution:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentSpeed()F
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->getCurrentPlaySpeed()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentVideoInfo()Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->getCurrentVideoInfo()Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->getVideoTotalTime()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getIsPausedByUser()Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->getIsPausedByUser()Z

    move-result p0

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMgTvPlayer.getIsPausedByUser():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getVideoDefinitions()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mDefinitionsVisha:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mDefinitionsVisha:Ljava/util/List;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->getCurrentVideoInfo()Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->getVideoDefinitionsList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v1}, Lcom/mgtv/ssp/play/PlayerCore;->getCurrentResolution()I

    move-result v1

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    new-instance v4, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

    invoke-direct {v4}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;

    if-nez v5, :cond_1

    goto/16 :goto_7

    :cond_1
    sget-object v6, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Definition:id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;->definition:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " needPay="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;->needPay:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v7, v5, Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;->definition:I

    const/4 v8, 0x1

    if-eqz v7, :cond_a

    if-eq v7, v8, :cond_8

    const/4 v9, 0x2

    if-eq v7, v9, :cond_6

    const/4 v9, 0x3

    if-eq v7, v9, :cond_4

    const/4 v9, 0x4

    if-eq v7, v9, :cond_2

    goto/16 :goto_6

    :cond_2
    iput v9, v4, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->type:I

    const-string v7, "1080P"

    iput-object v7, v4, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->name:Ljava/lang/String;

    iget v7, v5, Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;->needPay:I

    if-ne v7, v8, :cond_3

    move v7, v8

    goto :goto_1

    :cond_3
    move v7, v2

    :goto_1
    invoke-virtual {v4, v7}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->setNeedVip(Z)V

    iget-object v7, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mDefinitionsVisha:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_4
    iput v9, v4, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->type:I

    const-string v7, "720P"

    iput-object v7, v4, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->name:Ljava/lang/String;

    iget v7, v5, Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;->needPay:I

    if-ne v7, v8, :cond_5

    move v7, v8

    goto :goto_2

    :cond_5
    move v7, v2

    :goto_2
    invoke-virtual {v4, v7}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->setNeedVip(Z)V

    iget-object v7, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mDefinitionsVisha:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    iput v9, v4, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->type:I

    const-string v7, "480P"

    iput-object v7, v4, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->name:Ljava/lang/String;

    iget v7, v5, Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;->needPay:I

    if-ne v7, v8, :cond_7

    move v7, v8

    goto :goto_3

    :cond_7
    move v7, v2

    :goto_3
    invoke-virtual {v4, v7}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->setNeedVip(Z)V

    iget-object v7, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mDefinitionsVisha:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    iput v8, v4, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->type:I

    const-string v7, "360P"

    iput-object v7, v4, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->name:Ljava/lang/String;

    iget v7, v5, Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;->needPay:I

    if-ne v7, v8, :cond_9

    move v7, v8

    goto :goto_4

    :cond_9
    move v7, v2

    :goto_4
    invoke-virtual {v4, v7}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->setNeedVip(Z)V

    iget-object v7, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mDefinitionsVisha:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    iput v2, v4, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->type:I

    const-string v7, "270P"

    iput-object v7, v4, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->name:Ljava/lang/String;

    iget v7, v5, Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;->needPay:I

    if-ne v7, v8, :cond_b

    move v7, v8

    goto :goto_5

    :cond_b
    move v7, v2

    :goto_5
    invoke-virtual {v4, v7}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->setNeedVip(Z)V

    iget-object v7, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mDefinitionsVisha:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    iget v5, v5, Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;->definition:I

    if-ne v1, v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentDefinition:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v8}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->setCurrent(Z)V

    :cond_c
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_d
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mDefinitionsVisha:Ljava/util/List;

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->getVideoSize()[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->getVideoSize()[I

    move-result-object p0

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoWidth()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->getVideoSize()[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->getVideoSize()[I

    move-result-object p0

    aget p0, p0, v1

    return p0

    :cond_0
    return v1
.end method

.method public gotoBackground()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "gotoBackground"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->gotoBackground()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bBackground:Z

    :cond_0
    return-void
.end method

.method public initMgTVPlayer(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->isValidConfig()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mgtv player:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;

    sget-boolean v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bMgtvSDKInited:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mInitStartTime:J

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->initMgtvPlayerCoreSDK(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->createMgtvPlayCore(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    sget-object p1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v0, "init_mgtv_failed_invalid_param"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/32 v0, 0x89544b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v2, 0x40a

    invoke-virtual {p0, v2, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->isPlaying()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public layoutPlayController(Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-nez v0, :cond_0

    sget-object p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string p1, "layout_play_controller_failed: mgtv player not init"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->isValidConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->getDisplayView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    sget-object p1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v0, "layout_play_controller_failed: invalid layout config"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/32 v0, 0x895452

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v2, 0x40a

    invoke-virtual {p0, v2, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    return-void
.end method

.method public noticePlayViewMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noticePlayViewMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/play/PlayerCore;->noticePlayViewMode(I)V

    :cond_0
    return-void
.end method

.method public onActivityStart(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStart: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/play/PlayerCore;->onActivityStart(Z)V

    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onActivityStop"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->onActivityStop()V

    :cond_0
    return-void
.end method

.method public onUserLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->onUserLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    return-void
.end method

.method public onUserReLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->onUserReLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    return-void
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "pause:mMgTvPlayer.pause()"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->pause()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "release"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->release()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->reset()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mDefinitionsVisha:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method public replay()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bBackground:Z

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->prepare()V

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public seekTo(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/play/PlayerCore;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAspectRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/play/PlayerCore;->setAspectRatio(I)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setBookMark(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBookMark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/play/PlayerCore;->setBookmark(I)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFullScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/play/PlayerCore;->switchFullScreen(Z)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/play/PlayerCore;->setMute(Z)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlaySpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/play/PlayerCore;->setPlaySpeed(F)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0

    return-void
.end method

.method public setSubtitleBottomRatio(F)V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSubtitleBottomRatio bottomRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/play/PlayerCore;->setSubtitleBottomRatio(F)V

    :cond_0
    return-void
.end method

.method public setSubtitleSizeRatio(F)V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSubtitleSizeRatio sizeRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/play/PlayerCore;->setSubtitleSizeRatio(F)V

    :cond_0
    return-void
.end method

.method public setUserAccountInfo(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;)V
    .locals 4

    sget-boolean p0, Lpp3;->L:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-boolean p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bMgtvSDKInited:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;->getOpenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PalmToken"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;->getPalmToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcom/mgtv/ssp/authbase/AccountInfo;

    invoke-direct {p0}, Lcom/mgtv/ssp/authbase/AccountInfo;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;->getOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/authbase/AccountInfo;->setOpenId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/authbase/AccountInfo;->setToken(Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mgtv/ssp/MgSspSdk;->updateAccountInfo(Lcom/mgtv/ssp/authbase/AccountInfo;)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bPlayAd:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->bPlayerPrepared:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "start:mMgTvPlayer.togglePlay()"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->play()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->stop()V

    :cond_0
    return-void
.end method

.method public switchResolution(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchResolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/play/PlayerCore;->switchResolution(I)V

    :cond_0
    return-void
.end method

.method public switchSubtitleSource(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchSubtitleSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/play/PlayerCore;->switchSubtitleSource(I)V

    :cond_0
    return-void
.end method

.method public togglePlay()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "pause:mMgTvPlayer.togglePlay()"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->mMgTvPlayer:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->togglePlay()V

    :cond_0
    return-void
.end method

.method public userLogout()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->userLogout()V

    sget-boolean p0, Lpp3;->L:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/mgtv/ssp/authbase/AccountInfo;

    invoke-direct {p0}, Lcom/mgtv/ssp/authbase/AccountInfo;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/authbase/AccountInfo;->setOpenId(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/authbase/AccountInfo;->setToken(Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/ssp/MgSspSdk;->get()Lcom/mgtv/ssp/MgSspSdk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mgtv/ssp/MgSspSdk;->updateAccountInfo(Lcom/mgtv/ssp/authbase/AccountInfo;)V

    return-void
.end method
