.class public Lcom/mgtv/ssp/play/PlayerCore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/control/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/play/PlayerCore$ScreenStatusFetcher;,
        Lcom/mgtv/ssp/play/PlayerCore$SimpleOnStateChangeListener;,
        Lcom/mgtv/ssp/play/PlayerCore$OnStateChangeListener;,
        Lcom/mgtv/ssp/play/PlayerCore$InternalHandler;
    }
.end annotation


# static fields
.field public static START_PLAY:I = 0x186f8


# instance fields
.field protected asscen_token:Ljava/lang/String;

.field private autoStart:Z

.field private curPlayIndex:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private hasClicked:Z

.field private isInBackgroud:Z

.field isLive:Z

.field isLocal:Z

.field private isPausedByUser:Z

.field protected liveId:Ljava/lang/String;

.field private lob:Ljava/lang/String;

.field private mAdControlListener:Lcom/mgtv/ssp/d;

.field private mAdEmptyListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdEmptyListener;

.field protected mContentid:Ljava/lang/String;

.field protected mCurrentPlayerState:I

.field private mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

.field private mOnAdClickListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdClickListener;

.field private mOnAdCompleteListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCompleteListener;

.field private mOnAdCountdownListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCountdownListener;

.field private mOnAdErrorListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdErrorListener;

.field private mOnAdPreparedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdPreparedListener;

.field private mOnAdSizeChangedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdSizeChangedListener;

.field private mOnAdStartPlayingListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdStartPlayingListener;

.field private mOnAuthorizeResultListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAuthorizeResultListener;

.field private mOnErrorListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnErrorListener;

.field private mOnPrePreparedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnPrePreparedListener;

.field protected mOnStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/play/PlayerCore$OnStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnStopAdListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnStopAdListener;

.field private mOnSubtitlesListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnSubtitlesListener;

.field private mOnVideoCompleteListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoCompleteListener;

.field private mOnVideoFirstFrameListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoFirstFrameListener;

.field private mOnVideoLoadingListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoLoadingListener;

.field private mOnVideoPausedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPausedListener;

.field private mOnVideoPreparedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparedListener;

.field private mOnVideoPreparingListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparingListener;

.field private mOnVideoSizeChangedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoSizeChangedListener;

.field private mOnVideoStartedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartedListener;

.field private mOnVideoStoppedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStoppedListener;

.field private mUIHandler:Landroid/os/Handler;

.field protected mVideoController:Lcom/mgtv/ssp/control/BaseVideoController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mVideoResolutionChangedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoResolutionChangedListener;

.field private mVideoStartPlayingListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartPlayingListener;

.field private position:Ljava/lang/String;

.field private requestPauseAd:Z

.field private screenStatus:Lcom/mgtv/ssp/play/PlayerCore$ScreenStatusFetcher;

.field protected videoId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "vod"

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->from:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->isPausedByUser:Z

    iput-boolean v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->requestPauseAd:Z

    iput-boolean v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->isInBackgroud:Z

    new-instance v0, Lcom/mgtv/ssp/play/PlayerCore$InternalHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/mgtv/ssp/play/PlayerCore$InternalHandler;-><init>(Landroid/os/Looper;Lcom/mgtv/ssp/play/PlayerCore;)V

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mUIHandler:Landroid/os/Handler;

    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->videoId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->asscen_token:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mgtv/ssp/play/PlayerCore;->autoStart:Z

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mContentid:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->liveId:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mCurrentPlayerState:I

    return-void
.end method

.method public static synthetic access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mAdControlListener:Lcom/mgtv/ssp/d;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnStopAdListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnStopAdListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnStopAdListener;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAuthorizeResultListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnAuthorizeResultListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAuthorizeResultListener;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnVideoPreparedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparedListener;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/mgtv/ssp/play/PlayerCore;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->isInBackgroud:Z

    return p0
.end method

.method public static synthetic access$1400(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartPlayingListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mVideoStartPlayingListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartPlayingListener;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/mgtv/ssp/play/PlayerCore;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->autoStart:Z

    return p0
.end method

.method public static synthetic access$1600(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnVideoCompleteListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoCompleteListener;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoResolutionChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mVideoResolutionChangedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoResolutionChangedListener;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoLoadingListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnVideoLoadingListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoLoadingListener;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoFirstFrameListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnVideoFirstFrameListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoFirstFrameListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnAdPreparedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdPreparedListener;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPausedListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnVideoPausedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPausedListener;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/mgtv/ssp/play/PlayerCore;)Z
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/ssp/play/PlayerCore;->canReqPauseAd()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2200(Lcom/mgtv/ssp/play/PlayerCore;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->isPausedByUser:Z

    return p0
.end method

.method public static synthetic access$2202(Lcom/mgtv/ssp/play/PlayerCore;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->isPausedByUser:Z

    return p1
.end method

.method public static synthetic access$2300(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartedListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnVideoStartedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartedListener;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStoppedListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnVideoStoppedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStoppedListener;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparingListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnVideoPreparingListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparingListener;

    return-object p0
.end method

.method public static synthetic access$2600(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnVideoSizeChangedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoSizeChangedListener;

    return-object p0
.end method

.method public static synthetic access$2700(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/PlayerCore$ScreenStatusFetcher;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->screenStatus:Lcom/mgtv/ssp/play/PlayerCore$ScreenStatusFetcher;

    return-object p0
.end method

.method public static synthetic access$2800(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnSubtitlesListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnSubtitlesListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnSubtitlesListener;

    return-object p0
.end method

.method public static synthetic access$2900(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnErrorListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnErrorListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdStartPlayingListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnAdStartPlayingListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdStartPlayingListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnAdCompleteListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCompleteListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCountdownListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnAdCountdownListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCountdownListener;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdClickListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnAdClickListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdClickListener;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdEmptyListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mAdEmptyListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdEmptyListener;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnAdErrorListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdErrorListener;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnAdSizeChangedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdSizeChangedListener;

    return-object p0
.end method

.method private canReqPauseAd()Z
    .locals 2

    const-string v0, "detail"

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vod"

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "card"

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->from:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private getAuthData(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)Lcom/mgtv/ssp/a/a;
    .locals 1

    .line 3
    new-instance p0, Lcom/mgtv/ssp/a/a;

    invoke-direct {p0}, Lcom/mgtv/ssp/a/a;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->clipId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/a/a;->e:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/a/a;->c:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/a/a;->d:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->fstlvlId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/a/a;->b:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->plId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/a/a;->f:Ljava/lang/String;

    .line 9
    iget v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->default_quality:I

    iput v0, p0, Lcom/mgtv/ssp/a/a;->g:I

    .line 10
    iget v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->time:I

    iput v0, p0, Lcom/mgtv/ssp/a/a;->a:I

    .line 11
    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->auth_info:Lcom/hunantv/imgo/net/entity/AuthInfo;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/AuthInfo;->pay_info:Lcom/hunantv/imgo/net/entity/AuthInfo$PayInfo;

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/AuthInfo$PayInfo;->preview_end:Lcom/hunantv/imgo/net/entity/AuthInfo$SceneData;

    iput-object p1, p0, Lcom/mgtv/ssp/a/a;->h:Lcom/hunantv/imgo/net/entity/AuthInfo$SceneData;

    :cond_0
    return-object p0
.end method

.method private hideSysBar(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x400

    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private setReportData()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore;->lob:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->aG:Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore;->lob:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore;->curPlayIndex:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->aH:Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore;->position:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->isLive:Z

    if-eqz v0, :cond_2

    const-string v0, "live"

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->from:Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->hasClicked:Z

    iput-boolean p0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aF:Z

    :cond_3
    return-void
.end method

.method private showSysBar(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, -0x1003

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x400

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method


# virtual methods
.method public adButtonClick()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->adClick()V

    :cond_0
    return-void
.end method

.method public addOnStateChangeListener(Lcom/mgtv/ssp/play/PlayerCore$OnStateChangeListener;)V
    .locals 1
    .param p1    # Lcom/mgtv/ssp/play/PlayerCore$OnStateChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnStateChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnStateChangeListeners:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnStateChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public backToFront()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerCore onResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgtv/ssp/play/PlayerCore;->isInBackgroud:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->isInBackgroud:Z

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->onResume()V

    :cond_0
    return-void
.end method

.method public clearOnStateChangeListeners()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnStateChangeListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mVideoController:Lcom/mgtv/ssp/control/BaseVideoController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/ssp/utils/c;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getDisPlayView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getDisPlayView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/ssp/utils/c;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getDisPlayView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getDisPlayView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/ssp/utils/c;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getAuthData()Lcom/mgtv/ssp/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    invoke-direct {p0, v0}, Lcom/mgtv/ssp/play/PlayerCore;->getAuthData(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)Lcom/mgtv/ssp/a/a;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBufferPosition()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getBufferingPosition()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBufferedPercentage()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getBufferedPercentage()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->getActivity()Landroid/app/Activity;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mVideoController:Lcom/mgtv/ssp/control/BaseVideoController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getDisPlayView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getDisPlayView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    move-object v0, p0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :catchall_1
    :cond_2
    :goto_0
    return-object v0
.end method

.method public getControlView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getControlLayout()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentAdInfo()Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;
    .locals 2

    new-instance v0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;

    invoke-direct {v0}, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;-><init>()V

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getVideoHeight()I

    move-result v1

    iput v1, v0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->adVideoHeight:I

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getVideoWidth()I

    move-result p0

    iput p0, v0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->adVideoWidth:I

    :cond_0
    return-object v0
.end method

.method public getCurrentPlaySpeed()F
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlaySpeed()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPosition()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentResolution()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getCurrentDefinition()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentSubtitleSource()Lcom/mgtv/ssp/play/bean/SubTitleData;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getCurrentSubtitleSource()Lcom/mgtv/ssp/play/bean/SubTitleData;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentVideoInfo()Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;
    .locals 10

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;

    invoke-direct {v1}, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->allDefinitions:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->dInfoList:Ljava/util/List;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->o:Ljava/util/List;

    invoke-static {v2}, Lcom/hunantv/imgo/util/l;->a(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->o:Ljava/util/List;

    new-instance v3, Lcom/mgtv/ssp/play/PlayerCore$10;

    invoke-direct {v3, p0}, Lcom/mgtv/ssp/play/PlayerCore$10;-><init>(Lcom/mgtv/ssp/play/PlayerCore;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    new-instance v6, Lcom/mgtv/ssp/play/playsdk/VDefinitionInfo;

    iget v7, v5, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    iget v8, v5, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->needPay:I

    iget-object v9, v5, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9}, Lcom/mgtv/ssp/play/playsdk/VDefinitionInfo;-><init>(IILjava/lang/String;)V

    iget-object v7, v1, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->dInfoList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->allDefinitions:Ljava/util/List;

    iget v5, v5, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/e;->p()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->mVDefinitionsList:Ljava/util/List;

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getVideoHeight()I

    move-result v0

    iput v0, v1, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->videoHeight:I

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getVideoWidth()I

    move-result v0

    iput v0, v1, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->videoWidth:I

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->isLocalPlay()Z

    move-result v0

    iput-boolean v0, v1, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->isOffLine:Z

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getVideoDuration()I

    move-result v0

    iput v0, v1, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->videoDuration:I

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->isPreview()Z

    move-result v0

    iput-boolean v0, v1, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->isPreview:Z

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getDefinitionSizeMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->mDefinitionSizeMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getCurrentDefinition()I

    move-result v0

    iput v0, v1, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->curDefinition:I

    iget-boolean v0, v1, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->isPreview:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getVideoPreDuration()I

    move-result p0

    iput p0, v1, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->previewDuration:I

    :cond_1
    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDecorView()Landroid/view/ViewGroup;
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getDisplayView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getDisPlayView()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIsPausedByUser()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->isPausedByUser:Z

    return p0
.end method

.method public getLoadingSpeed()J
    .locals 2

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getLoadingSpeed()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPlayBookmark()I
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    iget p0, p0, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->previewTime:I

    add-int/lit8 p0, p0, -0x1

    mul-int/lit16 p0, p0, 0x3e8

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPlaySpeedList()[F
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->isSupport3X()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    return-object p0

    :cond_0
    const/4 p0, 0x6

    new-array p0, p0, [F

    fill-array-data p0, :array_1

    return-object p0

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public getPlayerStatus()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerStatus()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoDuration()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getVideoDuration()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoPreTime()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getVideoPreDuration()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoSize()[I
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getVideoWidth()I

    move-result v0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getVideoHeight()I

    move-result p0

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getVideoTotalTime()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getRealDuration()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public gotoBackground()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerCore onPause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgtv/ssp/play/PlayerCore;->isInBackgroud:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->isInBackgroud:Z

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->onPause()V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "init -999"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p0, "-999"

    return-object p0

    :cond_0
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/auth/b;->b()I

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "110000"

    return-object p0

    :cond_1
    new-instance v0, Lcom/mgtv/thirdsdk/a;

    invoke-direct {v0, p1}, Lcom/mgtv/thirdsdk/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore;->from:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setFrom(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    iget-boolean v1, p0, Lcom/mgtv/ssp/play/PlayerCore;->requestPauseAd:Z

    invoke-interface {v0, v1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setRequestPauseAd(Z)V

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {v0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->init(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    new-instance v0, Lcom/mgtv/ssp/play/PlayerCore$1;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/play/PlayerCore$1;-><init>(Lcom/mgtv/ssp/play/PlayerCore;)V

    invoke-interface {p1, v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setVolumeProcess(Lcom/mgtv/thirdsdk/playcore/c$c;)V

    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    new-instance v0, Lcom/mgtv/ssp/play/PlayerCore$2;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/play/PlayerCore$2;-><init>(Lcom/mgtv/ssp/play/PlayerCore;)V

    invoke-interface {p1, v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setPlayStatusChangeListener(Lcom/mgtv/thirdsdk/playcore/d;)V

    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    new-instance v0, Lcom/mgtv/ssp/play/PlayerCore$3;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/play/PlayerCore$3;-><init>(Lcom/mgtv/ssp/play/PlayerCore;)V

    invoke-interface {p1, v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setScreenOrientationChangeListener(Lcom/mgtv/thirdsdk/playcore/f;)V

    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    new-instance v0, Lcom/mgtv/ssp/play/PlayerCore$4;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/play/PlayerCore$4;-><init>(Lcom/mgtv/ssp/play/PlayerCore;)V

    invoke-interface {p1, v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setOnAdListener(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;)V

    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    new-instance v0, Lcom/mgtv/ssp/play/PlayerCore$5;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/play/PlayerCore$5;-><init>(Lcom/mgtv/ssp/play/PlayerCore;)V

    invoke-interface {p1, v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setOnStopAdListener(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdStopListener;)V

    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    new-instance v0, Lcom/mgtv/ssp/play/PlayerCore$6;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/play/PlayerCore$6;-><init>(Lcom/mgtv/ssp/play/PlayerCore;)V

    invoke-interface {p1, v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setOnAuthResultListener(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AuthResultListener;)V

    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    new-instance v0, Lcom/mgtv/ssp/play/PlayerCore$7;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/play/PlayerCore$7;-><init>(Lcom/mgtv/ssp/play/PlayerCore;)V

    invoke-interface {p1, v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setOnVideoListener(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;)V

    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    new-instance v0, Lcom/mgtv/ssp/play/PlayerCore$8;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/play/PlayerCore$8;-><init>(Lcom/mgtv/ssp/play/PlayerCore;)V

    invoke-interface {p1, v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setOnErrorListener(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;)V

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->d()V

    const-string p0, "0"

    return-object p0
.end method

.method public isFullScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->isFullScreen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInterruptBeforeAd()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ab:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->isPlaying()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupx3()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->isSupport3X()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public lockScreen(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->lockScreen(Z)V

    :cond_0
    return-void
.end method

.method public noticePlayViewMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->noticePlayViewMode(I)V

    :cond_0
    return-void
.end method

.method public onActivityStart(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->onActivityStart(Z)V

    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Playercode onActivityStop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz v1, :cond_0

    const-string v1, "Playercode onActivityStop"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->onActivityStop()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->gotoBackground()V

    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->backToFront()V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mgtv/thirdsdk/playcore/e;->a(Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->onResume()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->onPause()V

    :cond_2
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->play()V

    :cond_0
    return-void
.end method

.method public playByUser()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->playByUser()V

    :cond_0
    return-void
.end method

.method public prepare(Landroid/app/Activity;Lcom/mgtv/ssp/play/MediaInfo;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mgtv/ssp/auth/b;->b()I

    move-result p3

    if-eqz p3, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "not init: -110000 "

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p3, ""

    iput-object p3, p0, Lcom/mgtv/ssp/play/PlayerCore;->videoId:Ljava/lang/String;

    iput-object p3, p0, Lcom/mgtv/ssp/play/PlayerCore;->asscen_token:Ljava/lang/String;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/mgtv/ssp/play/PlayerCore;->hasClicked:Z

    iget-object v0, p2, Lcom/mgtv/ssp/play/MediaInfo;->liveId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->liveId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/mgtv/ssp/play/PlayerCore;->isLocal:Z

    :try_start_0
    iget-object v0, p2, Lcom/mgtv/ssp/play/MediaInfo;->videoId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/mgtv/ssp/play/MediaInfo;->videoId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->videoId:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/util/b;->V()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->asscen_token:Ljava/lang/String;

    iget-object v0, p2, Lcom/mgtv/ssp/play/MediaInfo;->contentId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "start"

    if-nez v0, :cond_3

    :try_start_1
    const-string v0, "invalid"

    iget-object v2, p2, Lcom/mgtv/ssp/play/MediaInfo;->contentId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p2, Lcom/mgtv/ssp/play/MediaInfo;->contentId:Ljava/lang/String;

    iget-object v2, p2, Lcom/mgtv/ssp/play/MediaInfo;->from:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/hunantv/imgo/util/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5185\u5bb9id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/mgtv/ssp/play/MediaInfo;->contentId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    :goto_1
    const-string p2, "\u5185\u5bb9id \u4e3a\u7a7a"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    iget-object p2, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p2, :cond_7

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b()V

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i(I)V

    invoke-virtual {p0, p3}, Lcom/mgtv/ssp/play/PlayerCore;->setPlayState(I)V

    iget-object p2, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {p2, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setActivity(Landroid/app/Activity;)V

    invoke-static {}, Lcom/hunantv/imgo/util/e;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/hunantv/imgo/util/e;->a:J

    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->videoId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 p2, 0x11

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/ssp/auth/b;->e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getLoadingTime()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-lez p1, :cond_4

    invoke-virtual {p0, p2}, Lcom/mgtv/ssp/play/PlayerCore;->setPlayState(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mUIHandler:Landroid/os/Handler;

    sget p1, Lcom/mgtv/ssp/play/PlayerCore;->START_PLAY:I

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    iget-object p2, p0, Lcom/mgtv/ssp/play/PlayerCore;->videoId:Ljava/lang/String;

    iget-object p3, p0, Lcom/mgtv/ssp/play/PlayerCore;->asscen_token:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->startPlayer(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mgtv/ssp/play/PlayerCore;->setReportData()V

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->liveId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->isLive:Z

    const-string p1, "live"

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->from:Ljava/lang/String;

    iget-object p3, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {p3, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setFrom(Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    iget-object p3, p0, Lcom/mgtv/ssp/play/PlayerCore;->from:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/ssp/auth/b;->e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getLoadingTime()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-lez p1, :cond_6

    invoke-virtual {p0, p2}, Lcom/mgtv/ssp/play/PlayerCore;->setPlayState(I)V

    :cond_6
    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    iget-object p2, p0, Lcom/mgtv/ssp/play/PlayerCore;->videoId:Ljava/lang/String;

    iget-object p3, p0, Lcom/mgtv/ssp/play/PlayerCore;->asscen_token:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->startLivePlayer(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mgtv/ssp/play/PlayerCore;->setReportData()V

    :cond_7
    :goto_4
    return-void
.end method

.method public reStart()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore;->videoId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mgtv/ssp/play/PlayerCore;->asscen_token:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->startPlayer(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->hasClicked:Z

    invoke-direct {p0}, Lcom/mgtv/ssp/play/PlayerCore;->setReportData()V

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mAdControlListener:Lcom/mgtv/ssp/d;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/mgtv/ssp/d;->c()V

    :cond_1
    return-void
.end method

.method public reStartPlay(Landroid/app/Activity;Lcom/mgtv/ssp/play/MediaInfo;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/mgtv/ssp/play/PlayerCore$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mgtv/ssp/play/PlayerCore$9;-><init>(Lcom/mgtv/ssp/play/PlayerCore;Landroid/app/Activity;Lcom/mgtv/ssp/play/MediaInfo;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/mgtv/ssp/authbase/b;->a(Landroid/content/Context;Lcom/mgtv/ssp/authbase/b$a;)V

    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "vod"

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "live"

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->w()V

    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/ssp/e;->c(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->release()V

    :cond_2
    return-void
.end method

.method public removeOnStateChangeListener(Lcom/mgtv/ssp/play/PlayerCore$OnStateChangeListener;)V
    .locals 0
    .param p1    # Lcom/mgtv/ssp/play/PlayerCore$OnStateChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnStateChangeListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setAdControlListener(Lcom/mgtv/ssp/d;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mAdControlListener:Lcom/mgtv/ssp/d;

    return-void
.end method

.method public setAspectRatio(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_3

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setAspectRatio(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setAspectRatio(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_3

    invoke-interface {p0, v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setAspectRatio(I)V

    :cond_3
    :goto_0
    const-string p0, "0"

    return-object p0
.end method

.method public setAutoPlayClicked(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p0

    if-eqz p0, :cond_0

    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/e;->aE:Z

    :cond_0
    return-void
.end method

.method public setAutoStart(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->autoStart:Z

    return-void
.end method

.method public setBookmark(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setBookmark(I)V

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method public setBufferStatus(Z)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setBufferStatus(Z)V

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method public setCurPlayIndex(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->curPlayIndex:Ljava/lang/String;

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/mgtv/thirdsdk/playcore/e;->aH:Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->position:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->from:Ljava/lang/String;

    return-void
.end method

.method public setLob(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->lob:Ljava/lang/String;

    return-void
.end method

.method public setMute(Z)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setMute(Z)V

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method public setOnAdClickListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdClickListener;)V
    .locals 0

    return-void
.end method

.method public setOnAdCompleteListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnAdCompleteListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCompleteListener;

    return-void
.end method

.method public setOnAdCountdownListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCountdownListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnAdCountdownListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCountdownListener;

    return-void
.end method

.method public setOnAdEmptyListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdEmptyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mAdEmptyListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdEmptyListener;

    return-void
.end method

.method public setOnAdErrorListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnAdErrorListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdErrorListener;

    return-void
.end method

.method public setOnAdPreparedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnAdPreparedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdPreparedListener;

    return-void
.end method

.method public setOnAdStartPlayingListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdStartPlayingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnAdStartPlayingListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdStartPlayingListener;

    return-void
.end method

.method public setOnAuthorizeResultListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAuthorizeResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnAuthorizeResultListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAuthorizeResultListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnErrorListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnErrorListener;

    return-void
.end method

.method public setOnPrePreparedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnPrePreparedListener;)V
    .locals 0

    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnPrePreparedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnPrePreparedListener;

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnPrePreparedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnPrePreparedListener;

    return-void
.end method

.method public setOnStateChangeListener(Lcom/mgtv/ssp/play/PlayerCore$OnStateChangeListener;)V
    .locals 1
    .param p1    # Lcom/mgtv/ssp/play/PlayerCore$OnStateChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnStateChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnStateChangeListeners:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnStateChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOnSubtitlesListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnSubtitlesListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnSubtitlesListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnSubtitlesListener;

    return-void
.end method

.method public setOnVideoCompleteListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnVideoCompleteListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoCompleteListener;

    return-void
.end method

.method public setOnVideoFirstFrameListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoFirstFrameListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnVideoFirstFrameListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoFirstFrameListener;

    return-void
.end method

.method public setOnVideoLoadingListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoLoadingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnVideoLoadingListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoLoadingListener;

    return-void
.end method

.method public setOnVideoPausedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPausedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnVideoPausedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPausedListener;

    return-void
.end method

.method public setOnVideoPreparedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnVideoPreparedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparedListener;

    return-void
.end method

.method public setOnVideoPreparingListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnVideoPreparingListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparingListener;

    return-void
.end method

.method public setOnVideoResolutionChangedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoResolutionChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mVideoResolutionChangedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoResolutionChangedListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnVideoSizeChangedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoSizeChangedListener;

    return-void
.end method

.method public setOnVideoStartPlayingListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartPlayingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mVideoStartPlayingListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartPlayingListener;

    return-void
.end method

.method public setOnVideoStartedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnVideoStartedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartedListener;

    return-void
.end method

.method public setOnVideoStoppedListener(Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStoppedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnVideoStoppedListener:Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStoppedListener;

    return-void
.end method

.method public setPlayClicked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->hasClicked:Z

    return-void
.end method

.method public setPlaySpeed(F)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setPlaySpeed(F)V

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method public setPlayState(I)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mVideoController:Lcom/mgtv/ssp/control/BaseVideoController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mgtv/ssp/control/BaseVideoController;->setPlayState(I)V

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnStateChangeListeners:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/mgtv/ssp/utils/c;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/play/PlayerCore$OnStateChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/mgtv/ssp/play/PlayerCore$OnStateChangeListener;->onPlayStateChanged(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setPlayerState(I)V
    .locals 1

    :try_start_0
    iput p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mCurrentPlayerState:I

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mVideoController:Lcom/mgtv/ssp/control/BaseVideoController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mgtv/ssp/control/BaseVideoController;->setPlayerState(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mOnStateChangeListeners:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/mgtv/ssp/utils/c;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/play/PlayerCore$OnStateChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/mgtv/ssp/play/PlayerCore$OnStateChangeListener;->onPlayerStateChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->position:Ljava/lang/String;

    return-void
.end method

.method public setProperties(ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->switchFullScreen(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_2

    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setDefaultDefination(I)V

    :cond_2
    :goto_0
    const-string p0, "0"

    return-object p0
.end method

.method public setRequestPauseAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->requestPauseAd:Z

    return-void
.end method

.method public setScreenStatus(Lcom/mgtv/ssp/play/PlayerCore$ScreenStatusFetcher;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->screenStatus:Lcom/mgtv/ssp/play/PlayerCore$ScreenStatusFetcher;

    return-void
.end method

.method public setScreenStatusValue(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->noticeAdScreenChange(Z)V

    :cond_0
    return-void
.end method

.method public setSourcePrepareListener(Lcom/mgtv/ssp/c;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setOnSourcePrepareListener(Lcom/mgtv/ssp/c;)V

    :cond_0
    return-void
.end method

.method public setSspAccountCallback(Lcom/mgtv/ssp/authbase/MgSspAccountCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setSspAccountCallback(Lcom/mgtv/ssp/authbase/MgSspAccountCallback;)V

    :cond_0
    return-void
.end method

.method public setSspVipCallback(Lcom/mgtv/ssp/authbase/c;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setSspVipCallback(Lcom/mgtv/ssp/authbase/c;)V

    :cond_0
    return-void
.end method

.method public setSubtitleBottomRatio(F)V
    .locals 0

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(F)V

    return-void
.end method

.method public setSubtitleSizeRatio(F)V
    .locals 0

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/utils/c;->b(F)V

    return-void
.end method

.method public setSupportChangeOrientation(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setSupportChangeOrientation(Z)V

    :cond_0
    return-void
.end method

.method public setSupportChangeScreenMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setSupportChangeScreenMode(Z)V

    :cond_0
    return-void
.end method

.method public setVideoController(Lcom/mgtv/ssp/control/BaseVideoController;)V
    .locals 2
    .param p1    # Lcom/mgtv/ssp/control/BaseVideoController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->getControlView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mVideoController:Lcom/mgtv/ssp/control/BaseVideoController;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->mVideoController:Lcom/mgtv/ssp/control/BaseVideoController;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/mgtv/ssp/control/BaseVideoController;->setMediaPlayer(Lcom/mgtv/ssp/control/d;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mVideoController:Lcom/mgtv/ssp/control/BaseVideoController;

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setViewRendType(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/utils/c;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->start()V

    :cond_0
    return-void
.end method

.method public startLivePlayer(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->startLivePlayer(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mgtv/ssp/play/PlayerCore;->setReportData()V

    :cond_0
    return-void
.end method

.method public startLocalPlayer(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/play/PlayerCore;->setPlayState(I)V

    .line 3
    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {v0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->setActivity(Landroid/app/Activity;)V

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/mgtv/ssp/play/PlayerCore;->isLocal:Z

    .line 6
    iput-object p2, p0, Lcom/mgtv/ssp/play/PlayerCore;->mContentid:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b()V

    .line 8
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i(I)V

    .line 9
    invoke-static {}, Lcom/hunantv/imgo/util/e;->a()V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/hunantv/imgo/util/e;->a:J

    .line 11
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/ssp/auth/b;->e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getShowLoading()I

    move-result v0

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0, p2}, Lcom/mgtv/ssp/play/PlayerCore;->startLocalPlayer(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getLoadingTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/16 p2, 0x11

    .line 15
    invoke-virtual {p0, p2}, Lcom/mgtv/ssp/play/PlayerCore;->setPlayState(I)V

    .line 16
    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mUIHandler:Landroid/os/Handler;

    sget p2, Lcom/mgtv/ssp/play/PlayerCore;->START_PLAY:I

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getLoadingTime()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0, p2}, Lcom/mgtv/ssp/play/PlayerCore;->startLocalPlayer(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public startLocalPlayer(Ljava/lang/String;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->startLocalPlayer(Ljava/lang/String;)V

    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/mgtv/ssp/play/PlayerCore;->setReportData()V

    return-void
.end method

.method public startPlayer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    invoke-interface {v0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->startPlayer(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mgtv/ssp/play/PlayerCore;->setReportData()V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget v1, Lcom/mgtv/ssp/play/PlayerCore;->START_PLAY:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/ssp/e;->c(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->stop()V

    :cond_1
    return-void
.end method

.method public switchFullScreen(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->switchFullScreen(Z)V

    :cond_0
    return-void
.end method

.method public switchFullScreenV2(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->switchFullscreenByAd(Z)V

    :cond_0
    return-void
.end method

.method public switchResolution(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->changeDefination(I)V

    :cond_0
    return-void
.end method

.method public switchSubtitleSource(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mMgtvMediaPlayer:Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->switchSubtitleSource(I)V

    :cond_0
    return-void
.end method

.method public togglePlay()V
    .locals 1

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->isPausedByUser:Z

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->pause()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/ssp/play/PlayerCore;->isPausedByUser:Z

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->playByUser()V

    :goto_0
    return-void
.end method
