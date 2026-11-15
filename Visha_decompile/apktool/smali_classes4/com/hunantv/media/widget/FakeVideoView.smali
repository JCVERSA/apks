.class public Lcom/hunantv/media/widget/FakeVideoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView;


# static fields
.field private static final TAG:Ljava/lang/String; = "FakeVideoView"


# instance fields
.field duration:I

.field exTicker:Lcom/hunantv/media/player/utils/ExTicker;

.field isPlaying:Z

.field isPrepared:Z

.field isRendered:Z

.field private mCurrentState:I

.field onInfoListener:Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

.field onPauseListener:Lcom/hunantv/media/widget/IVideoView$OnPauseListener;

.field onPreparedListener:Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

.field onSeekCompleteListener:Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;

.field onStartListener:Lcom/hunantv/media/widget/IVideoView$OnStartListener;

.field onUpdateStatusListener:Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/hunantv/media/player/utils/ExTicker;

    const/16 v0, 0x3e8

    invoke-direct {p1, v0}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    iput-object p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->exTicker:Lcom/hunantv/media/player/utils/ExTicker;

    const p1, 0xa4cb80

    iput p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->duration:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->mCurrentState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/hunantv/media/player/utils/ExTicker;

    const/16 p2, 0x3e8

    invoke-direct {p1, p2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    iput-object p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->exTicker:Lcom/hunantv/media/player/utils/ExTicker;

    const p1, 0xa4cb80

    iput p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->duration:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->mCurrentState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/hunantv/media/player/utils/ExTicker;

    const/16 p2, 0x3e8

    invoke-direct {p1, p2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    iput-object p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->exTicker:Lcom/hunantv/media/player/utils/ExTicker;

    const p1, 0xa4cb80

    iput p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->duration:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->mCurrentState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/hunantv/media/player/utils/ExTicker;

    const/16 p2, 0x3e8

    invoke-direct {p1, p2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    iput-object p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->exTicker:Lcom/hunantv/media/player/utils/ExTicker;

    const p1, 0xa4cb80

    iput p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->duration:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->mCurrentState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/hunantv/media/player/utils/ExTicker;

    const/16 p2, 0x3e8

    invoke-direct {p1, p2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    iput-object p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->exTicker:Lcom/hunantv/media/player/utils/ExTicker;

    const p1, 0xa4cb80

    iput p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->duration:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->mCurrentState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/hunantv/media/player/utils/ExTicker;

    const/16 p2, 0x3e8

    invoke-direct {p1, p2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    iput-object p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->exTicker:Lcom/hunantv/media/player/utils/ExTicker;

    const p1, 0xa4cb80

    iput p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->duration:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->mCurrentState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hunantv/media/widget/IVideoView$Configuration;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/hunantv/media/player/utils/ExTicker;

    const/16 p2, 0x3e8

    invoke-direct {p1, p2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    iput-object p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->exTicker:Lcom/hunantv/media/player/utils/ExTicker;

    const p1, 0xa4cb80

    iput p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->duration:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->mCurrentState:I

    return-void
.end method

.method private resetData()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/FakeVideoView;->setCurrentState(I)V

    iput-boolean v0, p0, Lcom/hunantv/media/widget/FakeVideoView;->isPrepared:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/FakeVideoView;->isPlaying:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/FakeVideoView;->isRendered:Z

    iget-object p0, p0, Lcom/hunantv/media/widget/FakeVideoView;->exTicker:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {p0}, Lcom/hunantv/media/player/utils/ExTicker;->stop()V

    return-void
.end method

.method private sendPrepared()V
    .locals 2

    const-string v0, "sendPrepared in"

    const-string v1, "FakeVideoView"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/FakeVideoView;->setCurrentState(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/FakeVideoView;->isPrepared:Z

    iget-object v0, p0, Lcom/hunantv/media/widget/FakeVideoView;->onPreparedListener:Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

    if-eqz v0, :cond_0

    const-string v0, "sendPrepared"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/widget/FakeVideoView;->onPreparedListener:Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;->onPrepared()V

    :cond_0
    return-void
.end method

.method private sendRenderStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/FakeVideoView;->isRendered:Z

    new-instance v0, Lcom/hunantv/media/widget/FakeVideoView$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/FakeVideoView$1;-><init>(Lcom/hunantv/media/widget/FakeVideoView;)V

    invoke-static {v0}, Lcom/hunantv/media/player/utils/ThreadUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendUpdateStatus()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/FakeVideoView;->onUpdateStatusListener:Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;->onUpdateStatus()V

    :cond_0
    return-void
.end method

.method private setCurrentState(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->mCurrentState:I

    invoke-direct {p0}, Lcom/hunantv/media/widget/FakeVideoView;->sendUpdateStatus()V

    return-void
.end method


# virtual methods
.method public addVideoPTSListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;)V
    .locals 0

    return-void
.end method

.method public bindDrmSession(Lcom/hunantv/media/drm/IDrmSession;)V
    .locals 0

    return-void
.end method

.method public changeSourceAsync(Lcom/hunantv/media/widget/IVideoView$MediaSource;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public changeSourceAsync(Ljava/lang/String;III)V
    .locals 0

    .line 2
    return-void
.end method

.method public cleanUri()V
    .locals 0

    return-void
.end method

.method public configDataCacheSizeKB(I)V
    .locals 0

    return-void
.end method

.method public configLoadMaxRetryTime(I)V
    .locals 0

    return-void
.end method

.method public configTsNotSkip(Z)V
    .locals 0

    return-void
.end method

.method public configWeakBufferTimeout(I)V
    .locals 0

    return-void
.end method

.method public configWeakNetSpeed(I)V
    .locals 0

    return-void
.end method

.method public convertRender(I)V
    .locals 0

    return-void
.end method

.method public enableCoreStartPauseListen(Z)V
    .locals 0

    return-void
.end method

.method public enableFramePTSNotify(Z)V
    .locals 0

    return-void
.end method

.method public enableImgoAIQE(Z)V
    .locals 0

    return-void
.end method

.method public enableImgoVSR(Z)V
    .locals 0

    return-void
.end method

.method public enableLiveLowLatency(Z)V
    .locals 0

    return-void
.end method

.method public enableM3u8Cache(Z)V
    .locals 0

    return-void
.end method

.method public enableMediaCodecSW(Z)V
    .locals 0

    return-void
.end method

.method public enableOppoFunc(IZ)V
    .locals 0

    return-void
.end method

.method public enableSubtitle(Z)V
    .locals 0

    return-void
.end method

.method public enableTsSkipError(Z)V
    .locals 0

    return-void
.end method

.method public getABRegion()Lcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAMCKeyFrameBackMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAddrInfoTypeInt()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBindDrmSession()Lcom/hunantv/media/drm/IDrmSession;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBitRate()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBufferedPositionMs()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getBufferingPercentage()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPosition()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/FakeVideoView;->exTicker:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {p0}, Lcom/hunantv/media/player/utils/ExTicker;->getTickCount()I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public getCurrentPositionUnsafe()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/FakeVideoView;->exTicker:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {p0}, Lcom/hunantv/media/player/utils/ExTicker;->getTickCount()I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public getCurrentStatus()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/FakeVideoView;->mCurrentState:I

    return p0
.end method

.method public getCurrentUri()Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDLSpeedB()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDLSpeedFormat()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataSourceType()Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayFloatRect()Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;
    .locals 0

    new-instance p0, Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    invoke-direct {p0}, Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;-><init>()V

    return-object p0
.end method

.method public getDnsFamilyType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDuration()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/widget/FakeVideoView;->duration:I

    return p0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getErrorUrl()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getFPS()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFileStartTimeFloatS()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFlowDataStatistic()Lcom/hunantv/media/player/statistic/FlowDataStatistic;
    .locals 0

    new-instance p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {p0}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    return-object p0
.end method

.method public getGifRecorder()Lcom/hunantv/media/recoder/GifRecorder;
    .locals 0

    new-instance p0, Lcom/hunantv/media/recoder/GifRecorder;

    invoke-direct {p0}, Lcom/hunantv/media/recoder/GifRecorder;-><init>()V

    return-object p0
.end method

.method public getKeyInfoData()[B
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public getLastErrorTypeCode()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getLastIP()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLeftVolume()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/widget/FakeVideoView;->getLogTagKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLogTagKey()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMediaPlayer()Lcom/hunantv/media/player/MgtvMediaPlayer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMemoryPlayType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMgtvFastMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPlaybackSpeed()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPlayerExtraInfo()Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance p0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;-><init>()V

    return-object p0
.end method

.method public getPlayerVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "Fake1.0"

    return-object p0
.end method

.method public getPrepared4StartMode()Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;
    .locals 0

    sget-object p0, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_LOADDATA:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    return-object p0
.end method

.method public getPropertyLong(IJ)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getReadDataSourceType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRenderFilter()Lcom/hunantv/media/widget/IVideoView$RenderFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRenderView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRenderViewSize()Lcom/hunantv/media/widget/IVideoView$Size;
    .locals 0

    new-instance p0, Lcom/hunantv/media/widget/IVideoView$Size;

    invoke-direct {p0}, Lcom/hunantv/media/widget/IVideoView$Size;-><init>()V

    return-object p0
.end method

.method public getRenderViewType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getReportParams()Lcom/hunantv/media/report/ReportParams;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRightVolume()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSnapshot(II)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSubtitleSource()Lcom/hunantv/media/player/subtitle/SubtitleSource;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTotalBuffering()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVideoHeight()I
    .locals 0

    const/16 p0, 0x438

    return p0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getVideoProxyPath()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getVideoWidth()I
    .locals 0

    const/16 p0, 0x780

    return p0
.end method

.method public getWanosAudioEffectChoice()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAccurateSeekEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAntiViewShake()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBackPlayEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBackground()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCompletion()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDataLoadPaused()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isForceHttpDns()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHardware()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isImgoSourceModuleOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isKeyInfoDataSet()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMediaCodecSWEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isOnlyAudioMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/FakeVideoView;->isPlaying:Z

    return p0
.end method

.method public isPrepared()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/FakeVideoView;->isPrepared:Z

    return p0
.end method

.method public isRecording()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRendered()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/widget/FakeVideoView;->isRendered:Z

    return p0
.end method

.method public isSmoothSwitchOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportAMCKeyFrameBackup()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedSnapshot()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTsSkipErrorEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isWanosAudioEffectValid()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public nativeCrashTest(I)V
    .locals 0

    return-void
.end method

.method public openImgoDSModule(Z)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "FakeVideoView"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/FakeVideoView;->setCurrentState(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/widget/FakeVideoView;->isPlaying:Z

    iget-object v0, p0, Lcom/hunantv/media/widget/FakeVideoView;->exTicker:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/ExTicker;->pause()V

    iget-object p0, p0, Lcom/hunantv/media/widget/FakeVideoView;->onPauseListener:Lcom/hunantv/media/widget/IVideoView$OnPauseListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView$OnPauseListener;->onPause()V

    :cond_0
    return-void
.end method

.method public pauseLoadData()V
    .locals 0

    return-void
.end method

.method public reBindTexture()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "FakeVideoView"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hunantv/media/widget/FakeVideoView;->resetData()V

    return-void
.end method

.method public removeSubtitleSource()V
    .locals 0

    return-void
.end method

.method public removeVideoPTSListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "FakeVideoView"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hunantv/media/widget/FakeVideoView;->resetData()V

    return-void
.end method

.method public resetRender()V
    .locals 0

    return-void
.end method

.method public resetVideoPath(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetVideoPath path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FakeVideoView"

    invoke-static {v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hunantv/media/widget/FakeVideoView;->sendPrepared()V

    return-void
.end method

.method public resetVideoPath(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/hunantv/media/p2p/IP2pTask;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "resetVideoPath path:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FakeVideoView"

    invoke-static {p2, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hunantv/media/widget/FakeVideoView;->sendPrepared()V

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public resumeLoadData()V
    .locals 0

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/widget/FakeVideoView;->exTicker:Lcom/hunantv/media/player/utils/ExTicker;

    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/utils/ExTicker;->seekto(I)V

    iget-object p0, p0, Lcom/hunantv/media/widget/FakeVideoView;->onSeekCompleteListener:Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;->onSeekComplete()V

    :cond_0
    return-void
.end method

.method public seekTo(IZ)V
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/hunantv/media/widget/FakeVideoView;->exTicker:Lcom/hunantv/media/player/utils/ExTicker;

    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p2, p1}, Lcom/hunantv/media/player/utils/ExTicker;->seekto(I)V

    iget-object p0, p0, Lcom/hunantv/media/widget/FakeVideoView;->onSeekCompleteListener:Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;->onSeekComplete()V

    :cond_0
    return-void
.end method

.method public setAMCKeyFrameBackMode(I)V
    .locals 0

    return-void
.end method

.method public setAccurateSeekEnable(Z)V
    .locals 0

    return-void
.end method

.method public setAntiViewShake(Z)V
    .locals 0

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 0

    return-void
.end method

.method public setAudioPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/FakeVideoView;->setCurrentState(I)V

    invoke-direct {p0}, Lcom/hunantv/media/widget/FakeVideoView;->sendPrepared()V

    return-void
.end method

.method public setBackPlayEnable(Z)V
    .locals 0

    return-void
.end method

.method public setBackPlayStartEnable(Z)V
    .locals 0

    return-void
.end method

.method public setBackground(Z)V
    .locals 0

    return-void
.end method

.method public setBufferTimeout(I)V
    .locals 0

    return-void
.end method

.method public setConnectTimeOut(I)V
    .locals 0

    return-void
.end method

.method public setDataSourceInfo(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)V
    .locals 0

    return-void
.end method

.method public setDisableAudioFocus(Z)V
    .locals 0

    return-void
.end method

.method public setDisplayFloatRect(Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;)V
    .locals 0

    return-void
.end method

.method public setDnsFamilyType(I)V
    .locals 0

    return-void
.end method

.method public setDrmInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setDrmLicensePrepared()V
    .locals 0

    return-void
.end method

.method public setEnableVideoStartTime(Z)V
    .locals 0

    return-void
.end method

.method public setEnableWanosAudioEffect(Z)V
    .locals 0

    return-void
.end method

.method public setFileStartTimeFloatS(F)V
    .locals 0

    return-void
.end method

.method public setFlowDataStatistic(Lcom/hunantv/media/player/statistic/FlowDataStatistic;)V
    .locals 0

    return-void
.end method

.method public setForceDecodeMode(Z)V
    .locals 0

    return-void
.end method

.method public setForceHttpDns(Z)V
    .locals 0

    return-void
.end method

.method public setKeyInfoData(Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public setKeyInfoData([BII)I
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public setLastFrameRecovery(Z)V
    .locals 0

    return-void
.end method

.method public setLiveMode(Z)V
    .locals 0

    return-void
.end method

.method public setLiveReopen()V
    .locals 0

    return-void
.end method

.method public setLiveStartIndex(I)V
    .locals 0

    return-void
.end method

.method public setLoopABPlay(ZLcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setLoopSeekPlay(ZI)V
    .locals 0

    return-void
.end method

.method public setM3u8Caches(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setMediacodecRecreateformat(ZZ)V
    .locals 0

    return-void
.end method

.method public setMgtvFastMode(I)V
    .locals 0

    return-void
.end method

.method public setNETIsBroken(Z)V
    .locals 0

    return-void
.end method

.method public setNetAddrinfo(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public setNetAddrinfo(IIZ)V
    .locals 0

    .line 2
    return-void
.end method

.method public setNetAddrinfo(Ljava/lang/String;IZ)V
    .locals 0

    .line 3
    return-void
.end method

.method public setNetPlayConfig(Lcom/hunantv/media/config/NetPlayConfig;)V
    .locals 0

    return-void
.end method

.method public setOnAVPlayListener(Lcom/hunantv/media/widget/IVideoView$OnAVPlayListener;)V
    .locals 0

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/hunantv/media/widget/IVideoView$OnBufferingUpdateListener;)V
    .locals 0

    return-void
.end method

.method public setOnChangeSourceListener(Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;)V
    .locals 0

    return-void
.end method

.method public setOnCompletionListener(Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;)V
    .locals 0

    return-void
.end method

.method public setOnErrorListener(Lcom/hunantv/media/widget/IVideoView$OnErrorListener;)V
    .locals 0

    return-void
.end method

.method public setOnEventInfoListener(Lcom/hunantv/media/widget/IVideoView$OnEventInfoListener;)V
    .locals 0

    return-void
.end method

.method public setOnFrameListener(Lcom/hunantv/media/widget/IVideoView$OnFrameListener;)V
    .locals 0

    return-void
.end method

.method public setOnInfoListener(Lcom/hunantv/media/widget/IVideoView$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->onInfoListener:Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

    return-void
.end method

.method public setOnInfoStringListener(Lcom/hunantv/media/widget/IVideoView$OnInfoStringListener;)V
    .locals 0

    return-void
.end method

.method public setOnLoadDataListener(Lcom/hunantv/media/widget/IVideoView$OnLoadDataListener;)V
    .locals 0

    return-void
.end method

.method public setOnPauseListener(Lcom/hunantv/media/widget/IVideoView$OnPauseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->onPauseListener:Lcom/hunantv/media/widget/IVideoView$OnPauseListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->onPreparedListener:Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

    return-void
.end method

.method public setOnRecordListener(Lcom/hunantv/media/widget/IVideoView$OnRecordListener;)V
    .locals 0

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->onSeekCompleteListener:Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;

    return-void
.end method

.method public setOnStartListener(Lcom/hunantv/media/widget/IVideoView$OnStartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->onStartListener:Lcom/hunantv/media/widget/IVideoView$OnStartListener;

    return-void
.end method

.method public setOnSwitchSmoothSourceListener(Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;)V
    .locals 0

    return-void
.end method

.method public setOnUpdateStatusListener(Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/FakeVideoView;->onUpdateStatusListener:Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;)V
    .locals 0

    return-void
.end method

.method public setOnWarningListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;)V
    .locals 0

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 0

    return-void
.end method

.method public setPlayerDebug(Z)V
    .locals 0

    return-void
.end method

.method public setPlayerHardwareMode(Z)V
    .locals 0

    return-void
.end method

.method public setPreBufferTimeoutMs(I)V
    .locals 0

    return-void
.end method

.method public setPrepared4StartMode(Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;)V
    .locals 0

    return-void
.end method

.method public setReadDataSourceType(I)V
    .locals 0

    return-void
.end method

.method public setReciveDataTimeOut(I)V
    .locals 0

    return-void
.end method

.method public setRenderFilter(Lcom/hunantv/media/widget/IVideoView$RenderFilter;)V
    .locals 0

    return-void
.end method

.method public setRenderViewVisible(I)V
    .locals 0

    return-void
.end method

.method public setReportParams(Lcom/hunantv/media/report/ReportParams;)V
    .locals 0

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0

    return-void
.end method

.method public setSecure(Z)V
    .locals 0

    return-void
.end method

.method public setSeekAutoStartAfterComplete(Z)V
    .locals 0

    return-void
.end method

.method public setSkipLoopFilter(Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;)V
    .locals 0

    return-void
.end method

.method public setSmoothKeyFrameInfo([BLjava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setSmoothSwitchMode(I)V
    .locals 0

    return-void
.end method

.method public setStartPosMs(I)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/FakeVideoView;->exTicker:Lcom/hunantv/media/player/utils/ExTicker;

    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/utils/ExTicker;->seekto(I)V

    return-void
.end method

.method public setStreamKey(I)V
    .locals 0

    return-void
.end method

.method public setSubtitleCallback(Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;)V
    .locals 0

    return-void
.end method

.method public setSubtitleConfig(Lcom/hunantv/media/player/subtitle/SubtitleConfig;)V
    .locals 0

    return-void
.end method

.method public setSubtitleSource(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    .locals 0

    return-void
.end method

.method public setSurfaceHolderListener(Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;)V
    .locals 0

    return-void
.end method

.method public setTimeout(II)V
    .locals 0

    return-void
.end method

.method public setTsFlowTag(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVideoDataSource(Lcom/hunantv/media/player/MgtvPlayerDataSource;)V
    .locals 0

    return-void
.end method

.method public setVideoFrameClockNotifyMs(I)V
    .locals 0

    return-void
.end method

.method public setVideoFrameClockNotifyPts(JJ)V
    .locals 0

    return-void
.end method

.method public setVideoIntroduction(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoPath path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FakeVideoView"

    invoke-static {v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/FakeVideoView;->setCurrentState(I)V

    invoke-direct {p0}, Lcom/hunantv/media/widget/FakeVideoView;->sendPrepared()V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/hunantv/media/p2p/IP2pTask;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setVideoPath path:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FakeVideoView"

    invoke-static {p2, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hunantv/media/widget/FakeVideoView;->sendPrepared()V

    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    return-void
.end method

.method public setWanosAudioEffectChoice(I)V
    .locals 0

    return-void
.end method

.method public setWanosAudioEffectConfig([B)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 0

    return-void
.end method

.method public showDebugPanel(Z)Lcom/hunantv/media/widget/debug/DebugPanel;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public start()V
    .locals 2

    const-string v0, "FakeVideoView"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/FakeVideoView;->setCurrentState(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/widget/FakeVideoView;->isPlaying:Z

    iget-object v0, p0, Lcom/hunantv/media/widget/FakeVideoView;->exTicker:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/ExTicker;->resume()V

    iget-object v0, p0, Lcom/hunantv/media/widget/FakeVideoView;->onStartListener:Lcom/hunantv/media/widget/IVideoView$OnStartListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView$OnStartListener;->onStart()V

    :cond_0
    iget-boolean v0, p0, Lcom/hunantv/media/widget/FakeVideoView;->isRendered:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/widget/FakeVideoView;->sendRenderStart()V

    :cond_1
    return-void
.end method

.method public startAVDecoder()V
    .locals 0

    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public stepPlaybackNextFrame()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "FakeVideoView"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hunantv/media/widget/FakeVideoView;->resetData()V

    return-void
.end method

.method public stopRecord()V
    .locals 0

    return-void
.end method

.method public support3X()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportImgoAIQE(Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportMaxSpeed()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public switchSmoothSource(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)V
    .locals 0

    return-void
.end method

.method public useSystemPlayer(Z)V
    .locals 0

    return-void
.end method
