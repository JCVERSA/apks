.class public Lcom/hunantv/media/player/smooth/SmoothMediaSource;
.super Lcom/hunantv/media/player/MgtvMediaSource;
.source "SourceFile"


# static fields
.field public static final SMOOTH_LEVEL1:I = 0x0

.field public static final SMOOTH_LEVEL2:I = 0x1

.field public static final SMOOTH_LEVEL3:I = 0x2

.field public static final SWITCHMOD_NORMAL:I = 0x0

.field public static final SWITCHMOD_ONLY_AUDIO:I = 0x1


# instance fields
.field public backupUrlJson:Ljava/lang/String;

.field private bindPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

.field private data:Ljava/lang/Object;

.field private enableImgoAIQE:Z

.field volatile flowReportProcessor:Lcom/hunantv/media/player/flow/FlowReportProcessor;

.field private flowReporterLocker:Ljava/lang/Object;

.field public isp2p:Z

.field public lastRetry:Z

.field private level:I

.field private p2pDirectSource:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

.field private reportParams:Lcom/hunantv/media/report/ReportParams;

.field private reporter:Lcom/hunantv/media/report/a;

.field public retry:I

.field public volatile s_event_0_timestamp:J

.field public volatile s_event_11_timestamp:J

.field public volatile s_event_2_timestamp:J

.field public volatile s_event_3_timestamp:J

.field switchMod:I

.field public throwErrorIfSwitchFailed:Z

.field tsFlowTag:Ljava/lang/String;

.field private updateUrl:Ljava/lang/String;

.field private vfps:Ljava/lang/String;

.field public videoFileHash:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaSource;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->level:I

    const-string p1, "0"

    iput-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->vfps:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->enableImgoAIQE:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->flowReporterLocker:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvMediaSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->level:I

    const-string p1, "0"

    iput-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->vfps:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->enableImgoAIQE:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->flowReporterLocker:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvMediaSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->level:I

    const-string p1, "0"

    iput-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->vfps:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->enableImgoAIQE:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->flowReporterLocker:Ljava/lang/Object;

    iput p4, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->switchMod:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaSource;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->level:I

    const-string p1, "0"

    iput-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->vfps:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->enableImgoAIQE:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->flowReporterLocker:Ljava/lang/Object;

    return-void
.end method

.method private isFileFormat(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->fileFormat:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bind(Lcom/hunantv/media/player/MgtvMediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->bindPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eq v0, p1, :cond_4

    iput-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->bindPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    new-instance v0, Lcom/hunantv/media/report/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/hunantv/media/report/a;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)V

    iput-object v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reporter:Lcom/hunantv/media/report/a;

    iget-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->bindPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getReportParams()Lcom/hunantv/media/report/ReportParams;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/hunantv/media/report/ReportParams;-><init>(Lcom/hunantv/media/report/ReportParams;)V

    iput-object v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/hunantv/media/report/ReportParams;

    invoke-direct {p1}, Lcom/hunantv/media/report/ReportParams;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-static {p1, v0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->replaceUrlSftcNoP2p(Ljava/lang/String;Lcom/hunantv/media/report/ReportParams;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->url:Ljava/lang/String;

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->proxyUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-static {p1, v0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->replaceUrlSftcNoP2p(Ljava/lang/String;Lcom/hunantv/media/report/ReportParams;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->proxyUrl:Ljava/lang/String;

    iget v0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->readType:I

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->url:Ljava/lang/String;

    :cond_2
    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->playingUrl:Ljava/lang/String;

    iget-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {p1}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object p1

    sget-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne p1, v0, :cond_3

    iget p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->switchMod:I

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    sget-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD_AUDIO:Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/report/ReportParams;->setVideoType(Lcom/hunantv/media/report/ReportParams$VideoType;)Lcom/hunantv/media/report/ReportParams;

    :cond_3
    iget-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->def:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/report/ReportParams;->setDef(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    iget-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/media/player/utils/UrlUtil;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hunantv/media/report/ReportParams;->setUrl(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    iget-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->videoFileHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/report/ReportParams;->setVideoFileHash(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    iget-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reporter:Lcom/hunantv/media/report/a;

    invoke-virtual {p1, p0}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)V

    iget-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reporter:Lcom/hunantv/media/report/a;

    iget-object p0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {p1, p0}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/report/ReportParams;)V

    :cond_4
    return-void
.end method

.method public genFlowReporter()V
    .locals 9

    iget-object v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->flowReporterLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->flowReportProcessor:Lcom/hunantv/media/player/flow/FlowReportProcessor;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaSource;->p2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v1

    sget-object v2, Lcom/hunantv/media/report/ReportParams$ProxyType;->ONLY_P2P:Lcom/hunantv/media/report/ReportParams$ProxyType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v1

    sget-object v2, Lcom/hunantv/media/report/ReportParams$ProxyType;->P2P_DRM:Lcom/hunantv/media/report/ReportParams$ProxyType;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v7, v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    new-instance v1, Lcom/hunantv/media/player/flow/FlowReportProcessor;

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaSource;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v2}, Lcom/hunantv/media/report/ReportParams;->getVid()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v2}, Lcom/hunantv/media/report/ReportParams;->getDef()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v2, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v2}, Lcom/hunantv/media/report/ReportParams;->getVideoSession()Ljava/lang/String;

    move-result-object v6

    const-string v8, "smooth"

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/hunantv/media/player/flow/FlowReportProcessor;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    iput-object v1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->flowReportProcessor:Lcom/hunantv/media/player/flow/FlowReportProcessor;

    :cond_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getArg()I
    .locals 1

    const-string v0, "HLS-TS"

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->isFileFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "HLS-FMP4"

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->isFileFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string v0, "MPEG-TS"

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->isFileFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-string v0, "MPEG-4"

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->isFileFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-string v0, "FLV"

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->isFileFormat(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public getBackupUrlJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->backupUrlJson:Ljava/lang/String;

    return-object p0
.end method

.method public getData()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public getDef()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/hunantv/media/player/MgtvMediaSource;->getDef()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEnableImgoAIQE()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->enableImgoAIQE:Z

    return p0
.end method

.method public getFlowReportProcessor()Lcom/hunantv/media/player/flow/FlowReportProcessor;
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->flowReporterLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->flowReportProcessor:Lcom/hunantv/media/player/flow/FlowReportProcessor;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLevel()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->level:I

    return p0
.end method

.method public getP2pDirectSource()Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->p2pDirectSource:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    return-object p0
.end method

.method public getReportParams()Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    return-object p0
.end method

.method public getReporter()Lcom/hunantv/media/report/a;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reporter:Lcom/hunantv/media/report/a;

    return-object p0
.end method

.method public getRetry()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->retry:I

    return p0
.end method

.method public getSwitchMod()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->switchMod:I

    return p0
.end method

.method public getTsFlowTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->tsFlowTag:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->updateUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getVVTimeT1()J
    .locals 4

    iget-wide v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_0_timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_2_timestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_2_timestamp:J

    iget-wide v2, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_0_timestamp:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getVVTimeT4()J
    .locals 4

    iget-wide v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_2_timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_3_timestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_3_timestamp:J

    iget-wide v2, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_2_timestamp:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getVVTimeT6()J
    .locals 4

    iget-wide v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_3_timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_11_timestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_11_timestamp:J

    iget-wide v2, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_3_timestamp:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getVVTimeVVT()J
    .locals 4

    iget-wide v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_0_timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_11_timestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_11_timestamp:J

    iget-wide v2, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_0_timestamp:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getVfps()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->vfps:Ljava/lang/String;

    return-object p0
.end method

.method public getVid()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/hunantv/media/player/MgtvMediaSource;->getVid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVsri()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/hunantv/media/player/MgtvMediaSource;->getVsri()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isIsp2p()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->isp2p:Z

    return p0
.end method

.method public isLastRetry()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->lastRetry:Z

    return p0
.end method

.method public isThrowErrorIfSwitchFailed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->throwErrorIfSwitchFailed:Z

    return p0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/hunantv/media/player/MgtvMediaSource;->release()V

    iget-object v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->p2pDirectSource:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic setAudioFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaSource;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->setAudioFormat(Ljava/lang/String;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public setAudioFormat(Ljava/lang/String;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/hunantv/media/player/MgtvMediaSource;->setAudioFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaSource;

    return-object p0
.end method

.method public setBackupUrlJson(Ljava/lang/String;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->backupUrlJson:Ljava/lang/String;

    return-object p0
.end method

.method public setData(Ljava/lang/Object;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic setDef(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaSource;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->setDef(Ljava/lang/String;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public setDef(Ljava/lang/String;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/hunantv/media/player/MgtvMediaSource;->setDef(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaSource;

    return-object p0
.end method

.method public setEnableImgoAIQE(Z)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->enableImgoAIQE:Z

    return-object p0
.end method

.method public bridge synthetic setFileFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaSource;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->setFileFormat(Ljava/lang/String;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public setFileFormat(Ljava/lang/String;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/hunantv/media/player/MgtvMediaSource;->setFileFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaSource;

    return-object p0
.end method

.method public setIsp2p(Z)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->isp2p:Z

    return-object p0
.end method

.method public setLastRetry(Z)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->lastRetry:Z

    return-object p0
.end method

.method public setLevel(I)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->level:I

    return-object p0
.end method

.method public setP2pDirectSource(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 1

    iput-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->p2pDirectSource:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->p2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hunantv/media/p2p/IP2pTask;->getImgoTask()Lcom/mgtv/a/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->setP2pTask(Lcom/mgtv/a/c;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setP2pTask(Lcom/hunantv/media/p2p/IP2pTask;)Lcom/hunantv/media/player/MgtvMediaSource;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->setP2pTask(Lcom/hunantv/media/p2p/IP2pTask;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public setP2pTask(Lcom/hunantv/media/p2p/IP2pTask;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lcom/hunantv/media/player/MgtvMediaSource;->setP2pTask(Lcom/hunantv/media/p2p/IP2pTask;)Lcom/hunantv/media/player/MgtvMediaSource;

    iget-object v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->p2pDirectSource:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hunantv/media/p2p/IP2pTask;->getImgoTask()Lcom/mgtv/a/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->setP2pTask(Lcom/mgtv/a/c;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setReadType(I)Lcom/hunantv/media/player/MgtvMediaSource;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->setReadType(I)Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public setReadType(I)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/hunantv/media/player/MgtvMediaSource;->setReadType(I)Lcom/hunantv/media/player/MgtvMediaSource;

    return-object p0
.end method

.method public setReportParams(Lcom/hunantv/media/report/ReportParams;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 1

    iput-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reporter:Lcom/hunantv/media/report/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/report/ReportParams;)V

    :cond_0
    return-object p0
.end method

.method public setRetry(I)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->retry:I

    return-object p0
.end method

.method public setSwitchMod(I)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->switchMod:I

    return-object p0
.end method

.method public setThrowErrorIfSwitchFailed(Z)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->throwErrorIfSwitchFailed:Z

    return-object p0
.end method

.method public setTsFlowTag(Ljava/lang/String;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 1

    iput-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->tsFlowTag:Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hunantv/media/report/ReportParams;->setFlowt(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    :cond_0
    return-object p0
.end method

.method public setUpdateUrl(Ljava/lang/String;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->updateUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setVfps(Ljava/lang/String;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->vfps:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setVid(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaSource;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->setVid(Ljava/lang/String;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public setVid(Ljava/lang/String;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/hunantv/media/player/MgtvMediaSource;->setVid(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaSource;

    return-object p0
.end method

.method public setVideoFileHash(Ljava/lang/String;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 1

    iput-object p1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->videoFileHash:Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hunantv/media/report/ReportParams;->setVideoFileHash(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setVideoFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaSource;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->setVideoFormat(Ljava/lang/String;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public setVideoFormat(Ljava/lang/String;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/hunantv/media/player/MgtvMediaSource;->setVideoFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaSource;

    return-object p0
.end method

.method public bridge synthetic setVsri(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaSource;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->setVsri(Ljava/lang/String;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public setVsri(Ljava/lang/String;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/hunantv/media/player/MgtvMediaSource;->setVsri(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaSource;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmoothMediaSource{level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updateUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->updateUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bindPlayer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->bindPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reporter="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reporter:Lcom/hunantv/media/report/a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reportParams="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->reportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", retry="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->retry:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lastRetry="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->lastRetry:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isp2p="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->isp2p:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", readType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/player/MgtvMediaSource;->readType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaSource;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", proxyUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaSource;->proxyUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", playingUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaSource;->playingUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoFormat=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaSource;->videoFormat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fileFormat=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaSource;->fileFormat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaSource;->vid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", def=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaSource;->def:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", throwErrorIfSwitchFailed=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->throwErrorIfSwitchFailed:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", switchMod=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->switchMod:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tsFlowTag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->tsFlowTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public useUpdateUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->updateUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->playingUrl:Ljava/lang/String;

    return-object v0
.end method
