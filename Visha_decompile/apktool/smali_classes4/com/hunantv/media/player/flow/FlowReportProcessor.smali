.class public Lcom/hunantv/media/player/flow/FlowReportProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final STATUS_IDLE:I = 0x0

.field private static final STATUS_START:I = 0x1

.field private static final STATUS_STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FlowReportProcessor"


# instance fields
.field def:I

.field duration:I

.field encodeInfo:Ljava/lang/String;

.field file_size:I

.field flag:Ljava/lang/String;

.field flowStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

.field h:I

.field isP2p:Z

.field locker:Ljava/lang/Object;

.field pushInfo2Ticker:Lcom/hunantv/media/player/utils/ExTicker;

.field reporter:Lcom/mgtv/easydatasource/FlowReporter;

.field volatile status:I

.field stream_type:I

.field suuid:Ljava/lang/String;

.field url:Ljava/lang/String;

.field vid:Ljava/lang/String;

.field w:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->stream_type:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->status:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->pushInfo2Ticker:Lcom/hunantv/media/player/utils/ExTicker;

    new-instance v0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {v0}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->flowStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->locker:Ljava/lang/Object;

    iput-object p1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->vid:Ljava/lang/String;

    iput p3, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->def:I

    iput-object p4, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->suuid:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->isP2p:Z

    iput-object p6, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->flag:Ljava/lang/String;

    new-instance p1, Lcom/mgtv/easydatasource/FlowReporter;

    invoke-direct {p1, p2, p3, p4}, Lcom/mgtv/easydatasource/FlowReporter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->reporter:Lcom/mgtv/easydatasource/FlowReporter;

    invoke-direct {p0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FlowReporter version: "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgtv/easydatasource/FlowReporter;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p1, p6}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->getLogTag()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "vid:"

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",def:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",suuid:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", isP2p:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/hunantv/media/player/flow/FlowReportProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->pushCurrentPlayerFlowInfo2()V

    return-void
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlowReportProcessor-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->flag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->isP2p:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isEnable()Z
    .locals 1

    invoke-static {}, Lcom/mgtv/easydatasource/FlowReporter;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getFlowReportMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInvalidVideoType(Lcom/hunantv/media/report/ReportParams;)Z
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_BOOT:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_PRE:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_MID:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->LIVE:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->LOCAL:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->STAR_ROOM_LIVE:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->GIF_PREVIEW_VIDEO:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->GIF_PREVIEW_IMAGE:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->GIF_CREATOR:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object p0

    sget-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->SOCIAL_AUDIO_CHAT:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private pushCurrentPlayerFlowInfo2()V
    .locals 5

    invoke-virtual {p0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->isHls()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/hunantv/media/player/flow/entity/FlowReportEntity;

    invoke-direct {v0}, Lcom/hunantv/media/player/flow/entity/FlowReportEntity;-><init>()V

    iget-object v1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/hunantv/media/player/flow/entity/FlowReportEntity;->url:Ljava/lang/String;

    iget v1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->file_size:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/hunantv/media/player/flow/entity/FlowReportEntity;->file_size:J

    iget-object v1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->flowStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-virtual {v1}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->getDynamicIntervalBytes()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/hunantv/media/player/flow/entity/FlowReportEntity;->down_size:J

    const/4 v1, 0x0

    iput v1, v0, Lcom/hunantv/media/player/flow/entity/FlowReportEntity;->error_type:I

    iput v1, v0, Lcom/hunantv/media/player/flow/entity/FlowReportEntity;->error_code:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0.000000"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->duration:I

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hunantv/media/player/flow/entity/FlowReportEntity;->file_dur:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, v0, Lcom/hunantv/media/player/flow/entity/FlowReportEntity;->file_seq:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->pushPlayerFlowInfo2(Lcom/hunantv/media/player/flow/entity/FlowReportEntity;)V

    :cond_0
    return-void
.end method

.method public static replaceUrlSftc(Ljava/lang/String;Lcom/hunantv/media/report/ReportParams;)Ljava/lang/String;
    .locals 10

    const-string v0, "sftc="

    const-string v1, "replaceUrlSftc out. url="

    const-string v2, "FlowReportProcessor"

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replaceUrlSftc in. url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/hunantv/media/report/ReportParams$GlobalSet;->getsAppVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "vn"

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string v4, "ds1"

    const-string v5, "drmFlag=1"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, ""

    if-eqz v5, :cond_2

    :try_start_2
    const-string v5, "_drm1"

    goto :goto_2

    :cond_2
    move-object v5, v6

    :goto_2
    const-string v7, "sftc=free"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "_free"

    goto :goto_3

    :cond_3
    move-object v7, v6

    :goto_3
    const-string v8, "_vtp"

    if-eqz p1, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/media/report/ReportParams;->getVideoTypeStr(Lcom/hunantv/media/report/ReportParams$VideoType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/media/report/ReportParams$GlobalSet;->getsChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "sftc"

    invoke-static {p0, v3}, Lcom/hunantv/media/player/utils/UrlUtil;->getUrlParamsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    move-object v6, v3

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_0

    :cond_6
    :try_start_3
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&sftc="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?sftc="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_0

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public static replaceUrlSftcNoP2p(Ljava/lang/String;Lcom/hunantv/media/report/ReportParams;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/hunantv/media/player/utils/UrlUtil;->isLocal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hunantv/media/report/ReportParams;->isP2p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->replaceUrlSftc(Ljava/lang/String;Lcom/hunantv/media/report/ReportParams;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public forceTrigger()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "forceTrigger"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->reporter:Lcom/mgtv/easydatasource/FlowReporter;

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/FlowReporter;->forceTrigger()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFlowStatistic()Lcom/hunantv/media/player/statistic/FlowDataStatistic;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->flowStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    return-object p0
.end method

.method public isHls()Z
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->stream_type:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isP2p()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->isP2p:Z

    return p0
.end method

.method public pushP2pFlowInfo(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->isP2p:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushP2pFlowInfo json "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->reporter:Lcom/mgtv/easydatasource/FlowReporter;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/mgtv/easydatasource/FlowReporter;->pushFlowInfo(Ljava/lang/String;II)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pushPlayerFlowInfo(Lcom/hunantv/media/player/flow/entity/FlowReportEntity;)V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->isP2p:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->isHls()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    if-eqz p1, :cond_2

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushPlayerFlowInfo json "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->reporter:Lcom/mgtv/easydatasource/FlowReporter;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v1}, Lcom/mgtv/easydatasource/FlowReporter;->pushFlowInfo(Ljava/lang/String;II)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pushPlayerFlowInfo2(Lcom/hunantv/media/player/flow/entity/FlowReportEntity;)V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->isP2p:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->isHls()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    if-eqz p1, :cond_2

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushPlayerFlowInfo2 json "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->reporter:Lcom/mgtv/easydatasource/FlowReporter;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v1}, Lcom/mgtv/easydatasource/FlowReporter;->pushFlowInfo(Ljava/lang/String;II)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->duration:I

    return-void
.end method

.method public start(IIILjava/lang/String;I)V
    .locals 8

    .line 1
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->start(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public start(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->stream_type:I

    iput p2, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->w:I

    iput p3, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->h:I

    iput-object p4, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->encodeInfo:Ljava/lang/String;

    iput p5, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->file_size:I

    iget p5, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->status:I

    if-eqz p5, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "start return cause current status :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->status:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->getLogTag()Ljava/lang/String;

    move-result-object p5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start stream_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",w:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",h:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",encodeInfo:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",url:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->url:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->reporter:Lcom/mgtv/easydatasource/FlowReporter;

    invoke-virtual {p1, p6}, Lcom/mgtv/easydatasource/FlowReporter;->setPlayerSuuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->reporter:Lcom/mgtv/easydatasource/FlowReporter;

    invoke-virtual {p1, p7}, Lcom/mgtv/easydatasource/FlowReporter;->setBusinessSuuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->reporter:Lcom/mgtv/easydatasource/FlowReporter;

    invoke-virtual {p1, p2, p3, p4}, Lcom/mgtv/easydatasource/FlowReporter;->setVideoMetadata(IILjava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->reporter:Lcom/mgtv/easydatasource/FlowReporter;

    iget-object p2, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/mgtv/easydatasource/FlowReporter;->start(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->isHls()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->pushInfo2Ticker:Lcom/hunantv/media/player/utils/ExTicker;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hunantv/media/player/utils/ExTicker;->stop()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->pushInfo2Ticker:Lcom/hunantv/media/player/utils/ExTicker;

    :cond_1
    new-instance p1, Lcom/hunantv/media/player/utils/ExTicker;

    const/16 p2, 0x2710

    invoke-direct {p1, p2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    iput-object p1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->pushInfo2Ticker:Lcom/hunantv/media/player/utils/ExTicker;

    new-instance p2, Lcom/hunantv/media/player/flow/FlowReportProcessor$1;

    invoke-direct {p2, p0}, Lcom/hunantv/media/player/flow/FlowReportProcessor$1;-><init>(Lcom/hunantv/media/player/flow/FlowReportProcessor;)V

    invoke-virtual {p1, p2}, Lcom/hunantv/media/player/utils/ExTicker;->setCallback(Lcom/hunantv/media/player/utils/ExTicker$onTickListener;)V

    iget-object p1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->pushInfo2Ticker:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {p1}, Lcom/hunantv/media/player/utils/ExTicker;->start()V

    :cond_2
    const/4 p1, 0x1

    iput p1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->status:I

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stop()V
    .locals 5

    iget-object v0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string v1, "stop return cause already stopped"

    invoke-static {p0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->pushCurrentPlayerFlowInfo2()V

    invoke-direct {p0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->reporter:Lcom/mgtv/easydatasource/FlowReporter;

    iget-object v3, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mgtv/easydatasource/FlowReporter;->start(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->reporter:Lcom/mgtv/easydatasource/FlowReporter;

    invoke-virtual {v1}, Lcom/mgtv/easydatasource/FlowReporter;->stop()V

    iget-object v1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->pushInfo2Ticker:Lcom/hunantv/media/player/utils/ExTicker;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/hunantv/media/player/utils/ExTicker;->stop()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->pushInfo2Ticker:Lcom/hunantv/media/player/utils/ExTicker;

    :cond_1
    iput v2, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor;->status:I

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
