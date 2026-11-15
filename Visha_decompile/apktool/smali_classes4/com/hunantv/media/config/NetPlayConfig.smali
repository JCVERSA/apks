.class public Lcom/hunantv/media/config/NetPlayConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONFIG_CLOSE:I = 0x9

.field public static final CONFIG_DEFAULT:I = 0x0

.field public static final DRM_TYPE_AUDIO_MAES:I = 0x14

.field public static final DRM_TYPE_CBCS_HLS:I = 0x6

.field public static final DRM_TYPE_CENC_HLS:I = 0x4

.field public static final DRM_TYPE_MARLIN_BBTS:I = 0x0

.field public static final DRM_TYPE_SM4_HLS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "NetPlayConfig"

.field private static sAACExAudioEnable:Z = false

.field private static sAlphaPlayEnable:Z = false

.field private static sAudioTimestampEnable:Z = false

.field private static sCodecBgStopWhiteList:[Ljava/lang/String; = null

.field private static final sCodecSWRenderBlackList:[Ljava/lang/String;

.field public static sConfig4K:I = 0x0

.field public static sConfigAIQEDef:I = 0x0

.field public static sConfigCodecSWRender:I = 0x0

.field public static sConfigDRMRootOK:I = 0x0

.field public static sConfigDnsCache:I = 0x0

.field public static sConfigDnsType:I = 0x0

.field public static sConfigFastMode:I = 0x0

.field public static sConfigH265:I = 0x0

.field public static sConfigHUAWEILatency:I = 0x1

.field public static sConfigHdr:I = 0x0

.field public static sConfigMgtvMediaCodec:I = 0x0

.field public static sConfigMultiDrmOrder:I = 0x0

.field public static sConfigOppoSr:I = 0x0

.field public static sConfigP2pHttpDns:I = 0x0

.field public static sConfigPlayCheckVsrVulkan:I = 0x0

.field public static sConfigPlayMaxSpeedType:I = 0x0

.field public static sConfigPreferDrmType:I = 0x0

.field public static sConfigPrivateHDR:I = 0x0

.field public static sConfigRenderOpengl:I = 0x9

.field public static sConfigSWRenderType:I = 0x0

.field public static sConfigWanosV2Enable:I = 0x0

.field public static sConfigWanosVersion:I = 0x0

.field private static sCtxModifyErrEnable:Z = false

.field private static sDefaultAIQEEnable:Z = false

.field private static sDrmProxyEnable:Z = false

.field private static sExDefEnable:Z = false

.field private static volatile sGlobalNetPlayConfig:Lcom/hunantv/media/config/NetPlayConfig; = null

.field private static volatile sGlobalNetPlayConfigStr:Ljava/lang/String; = null

.field private static final sHeadsetBlackList:[Ljava/lang/String;

.field private static sHightSpeedEnable:Z = false

.field private static sImgoVsrEnable:Z = false

.field private static sNativeOpenglEnable:Z = false

.field private static sNetworkType:Ljava/lang/String; = null

.field public static sPlayercoreVersion:I = 0x2

.field private static sReportModeBatchEnable:Z = false

.field private static sReportModeSingleEnable:Z = false

.field private static sSmoothSwitchEnable:Z = true

.field private static sSpatializerEnable:Z = false

.field private static sWanosAudioEnable:Z = false


# instance fields
.field public accurate_seek:I

.field public addrinfo_timeout:I

.field public addrinfo_type:Ljava/lang/String;

.field public buffer_timeout:I

.field public datasource_async:I

.field public decodetype:I

.field public dns_family_type:I

.field public http_multiple:I

.field public http_persistent:I

.field public is_soft:I

.field public load_retry_time:I

.field public m3u8_gzip:I

.field public mp_type:I

.field public open_timeout:I

.field public player_support:Ljava/lang/String;

.field public render_type:I

.field public rw_timeout:I

.field public ts_not_skip:I

.field public weak_net_speed:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "BND-AL00"

    const-string v1, "M2011K2C"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/config/NetPlayConfig;->sCodecSWRenderBlackList:[Ljava/lang/String;

    const-string v0, "PEEM00"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/config/NetPlayConfig;->sHeadsetBlackList:[Ljava/lang/String;

    const-string v0, "sm8350"

    const-string v1, "sm4350"

    const-string v2, "sdm710"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/config/NetPlayConfig;->sCodecBgStopWhiteList:[Ljava/lang/String;

    const-string v0, "None"

    sput-object v0, Lcom/hunantv/media/config/NetPlayConfig;->sNetworkType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hunantv/media/config/NetPlayConfig;->mp_type:I

    iput v0, p0, Lcom/hunantv/media/config/NetPlayConfig;->is_soft:I

    iput v0, p0, Lcom/hunantv/media/config/NetPlayConfig;->render_type:I

    iput v0, p0, Lcom/hunantv/media/config/NetPlayConfig;->decodetype:I

    iput v0, p0, Lcom/hunantv/media/config/NetPlayConfig;->accurate_seek:I

    iput v0, p0, Lcom/hunantv/media/config/NetPlayConfig;->open_timeout:I

    iput v0, p0, Lcom/hunantv/media/config/NetPlayConfig;->rw_timeout:I

    iput v0, p0, Lcom/hunantv/media/config/NetPlayConfig;->addrinfo_timeout:I

    iput v0, p0, Lcom/hunantv/media/config/NetPlayConfig;->buffer_timeout:I

    iput v0, p0, Lcom/hunantv/media/config/NetPlayConfig;->ts_not_skip:I

    iput v0, p0, Lcom/hunantv/media/config/NetPlayConfig;->load_retry_time:I

    iput v0, p0, Lcom/hunantv/media/config/NetPlayConfig;->datasource_async:I

    iput v0, p0, Lcom/hunantv/media/config/NetPlayConfig;->weak_net_speed:I

    iput v0, p0, Lcom/hunantv/media/config/NetPlayConfig;->dns_family_type:I

    iput v0, p0, Lcom/hunantv/media/config/NetPlayConfig;->http_persistent:I

    iput v0, p0, Lcom/hunantv/media/config/NetPlayConfig;->http_multiple:I

    iput v0, p0, Lcom/hunantv/media/config/NetPlayConfig;->m3u8_gzip:I

    return-void
.end method

.method public static getConfigAIQEDef()I
    .locals 1

    sget v0, Lcom/hunantv/media/config/NetPlayConfig;->sConfigAIQEDef:I

    return v0
.end method

.method public static getConfigDRMRootOK()I
    .locals 1

    sget v0, Lcom/hunantv/media/config/NetPlayConfig;->sConfigDRMRootOK:I

    return v0
.end method

.method public static getConfigWanosV2Enable()Z
    .locals 2

    sget v0, Lcom/hunantv/media/config/NetPlayConfig;->sConfigWanosV2Enable:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getConfigWanosVersion()I
    .locals 1

    sget v0, Lcom/hunantv/media/config/NetPlayConfig;->sConfigWanosVersion:I

    return v0
.end method

.method public static getFlowReportMode()I
    .locals 3

    sget-boolean v0, Lcom/hunantv/media/config/NetPlayConfig;->sReportModeSingleEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v2, Lcom/hunantv/media/config/NetPlayConfig;->sReportModeBatchEnable:Z

    if-nez v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    sget-boolean v2, Lcom/hunantv/media/config/NetPlayConfig;->sReportModeBatchEnable:Z

    if-nez v2, :cond_2

    :cond_1
    return v1

    :cond_2
    if-eqz v0, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    sget-boolean v0, Lcom/hunantv/media/config/NetPlayConfig;->sReportModeBatchEnable:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    return v1
.end method

.method public static declared-synchronized getGlobalNetPlayConfigStr()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/hunantv/media/config/NetPlayConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/config/NetPlayConfig;->sGlobalNetPlayConfigStr:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getNetworkType()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/hunantv/media/config/NetPlayConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/config/NetPlayConfig;->sNetworkType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getPlayCheckVsrVulkan()I
    .locals 1

    sget v0, Lcom/hunantv/media/config/NetPlayConfig;->sConfigPlayCheckVsrVulkan:I

    return v0
.end method

.method public static getPlayMaxSpeedType()I
    .locals 1

    sget v0, Lcom/hunantv/media/config/NetPlayConfig;->sConfigPlayMaxSpeedType:I

    return v0
.end method

.method public static getPlayercoreVersion()I
    .locals 1

    sget v0, Lcom/hunantv/media/config/NetPlayConfig;->sPlayercoreVersion:I

    return v0
.end method

.method public static getPreferDrmType()I
    .locals 1

    sget v0, Lcom/hunantv/media/config/NetPlayConfig;->sConfigPreferDrmType:I

    return v0
.end method

.method public static declared-synchronized getPrst()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/hunantv/media/config/NetPlayConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/config/NetPlayConfig;->sGlobalNetPlayConfig:Lcom/hunantv/media/config/NetPlayConfig;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hunantv/media/config/NetPlayConfig;->sGlobalNetPlayConfig:Lcom/hunantv/media/config/NetPlayConfig;

    iget-object v1, v1, Lcom/hunantv/media/config/NetPlayConfig;->player_support:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static getsGlobalNetPlayConfig()Lcom/hunantv/media/config/NetPlayConfig;
    .locals 1

    sget-object v0, Lcom/hunantv/media/config/NetPlayConfig;->sGlobalNetPlayConfig:Lcom/hunantv/media/config/NetPlayConfig;

    return-object v0
.end method

.method private static inBlackList(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/hunantv/media/config/NetPlayConfig;->sCodecSWRenderBlackList:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/hunantv/media/player/utils/ArrayUtil;->inArrayIgnoreCase([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static inHeadsetBlackList(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/hunantv/media/config/NetPlayConfig;->sHeadsetBlackList:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/hunantv/media/player/utils/ArrayUtil;->inArrayIgnoreCase([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static is4KOpen()Z
    .locals 2

    sget v0, Lcom/hunantv/media/config/NetPlayConfig;->sConfig4K:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isAACExAudioEnable()Z
    .locals 1

    sget-boolean v0, Lcom/hunantv/media/config/NetPlayConfig;->sAACExAudioEnable:Z

    return v0
.end method

.method public static isAlphaPlayEnable()Z
    .locals 1

    sget-boolean v0, Lcom/hunantv/media/config/NetPlayConfig;->sAlphaPlayEnable:Z

    return v0
.end method

.method public static isAudioTimestampEnable()Z
    .locals 4

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->isApi26_AndroidOOrLater()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/hunantv/media/report/c/h;->b()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hunantv/media/player/utils/SystemUtil;->getHwEmuiAPILevel()I

    move-result v0

    const/16 v3, 0x19

    if-lt v0, v3, :cond_0

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->isHUAWEILatencyOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Lcom/hunantv/media/report/c/h;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->isHONORLatencyOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    sget-boolean v0, Lcom/hunantv/media/config/NetPlayConfig;->sAudioTimestampEnable:Z

    return v0

    :cond_4
    return v1
.end method

.method public static isCodecSWRenderMark()Z
    .locals 2

    sget v0, Lcom/hunantv/media/config/NetPlayConfig;->sConfigCodecSWRender:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfigHelper;->getMod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/config/NetPlayConfig;->inBlackList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isCodecSWRenderOpen()Z
    .locals 2

    sget v0, Lcom/hunantv/media/config/NetPlayConfig;->sConfigCodecSWRender:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isCtxModifyErrEnable()Z
    .locals 1

    sget-boolean v0, Lcom/hunantv/media/config/NetPlayConfig;->sCtxModifyErrEnable:Z

    return v0
.end method

.method public static isDefaultEnableImgoAIQE()Z
    .locals 1

    sget-boolean v0, Lcom/hunantv/media/config/NetPlayConfig;->sDefaultAIQEEnable:Z

    return v0
.end method

.method public static isDrmProxyEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isEnableSWOpengl()Z
    .locals 2

    sget v0, Lcom/hunantv/media/config/NetPlayConfig;->sConfigSWRenderType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isExDefEnable()Z
    .locals 1

    sget-boolean v0, Lcom/hunantv/media/config/NetPlayConfig;->sExDefEnable:Z

    return v0
.end method

.method public static isHONORLatencyOpen()Z
    .locals 2

    sget v0, Lcom/hunantv/media/config/NetPlayConfig;->sConfigHUAWEILatency:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHUAWEILatencyOpen()Z
    .locals 2

    sget v0, Lcom/hunantv/media/config/NetPlayConfig;->sConfigHUAWEILatency:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isHdrOpen()Z
    .locals 2

    sget v0, Lcom/hunantv/media/config/NetPlayConfig;->sConfigHdr:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    sget v0, Lcom/hunantv/media/config/NetPlayConfig;->sConfigPrivateHDR:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/hunantv/media/report/c/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isHightSpeedEnable()Z
    .locals 1

    sget-boolean v0, Lcom/hunantv/media/config/NetPlayConfig;->sHightSpeedEnable:Z

    return v0
.end method

.method public static isImgoVsrEnable()Z
    .locals 1

    sget-boolean v0, Lcom/hunantv/media/config/NetPlayConfig;->sImgoVsrEnable:Z

    return v0
.end method

.method public static isNativeOpenglEnable()Z
    .locals 1

    sget-boolean v0, Lcom/hunantv/media/config/NetPlayConfig;->sNativeOpenglEnable:Z

    return v0
.end method

.method public static isOppoSrOpen()Z
    .locals 2

    sget v0, Lcom/hunantv/media/config/NetPlayConfig;->sConfigOppoSr:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isRenderOpenglOpen()Z
    .locals 2

    sget v0, Lcom/hunantv/media/config/NetPlayConfig;->sConfigRenderOpengl:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSmoothSwitchEnable()Z
    .locals 1

    sget-boolean v0, Lcom/hunantv/media/config/NetPlayConfig;->sSmoothSwitchEnable:Z

    return v0
.end method

.method public static isSpatializerEnable()Z
    .locals 1

    sget-boolean v0, Lcom/hunantv/media/config/NetPlayConfig;->sSpatializerEnable:Z

    return v0
.end method

.method public static isWanosAudioEnable()Z
    .locals 1

    sget-boolean v0, Lcom/hunantv/media/config/NetPlayConfig;->sWanosAudioEnable:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/hunantv/media/config/NetPlayConfig;->sAACExAudioEnable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isWanosAudioInnerEnable()Z
    .locals 1

    sget-boolean v0, Lcom/hunantv/media/config/NetPlayConfig;->sWanosAudioEnable:Z

    return v0
.end method

.method public static declared-synchronized mapPlayerSupportS2Value(CI)V
    .locals 5

    const-class v0, Lcom/hunantv/media/config/NetPlayConfig;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/hunantv/media/config/NetPlayConfig;->validBooleanChar(C)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapPlayerSupportS2Value invalid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x1

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/16 v4, 0x30

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-ne v4, p0, :cond_1

    :try_start_1
    sput-boolean v3, Lcom/hunantv/media/config/NetPlayConfig;->sSpatializerEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sSpatializerEnable = false"

    :goto_0
    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    if-ne v2, p0, :cond_2

    sput-boolean v1, Lcom/hunantv/media/config/NetPlayConfig;->sSpatializerEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sSpatializerEnable = true"

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sSpatializerEnable value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/hunantv/media/config/NetPlayConfig;->sSpatializerEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    if-ne v4, p0, :cond_3

    sput-boolean v3, Lcom/hunantv/media/config/NetPlayConfig;->sHightSpeedEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sHightSpeedEnable = false"

    goto :goto_0

    :cond_3
    if-ne v2, p0, :cond_4

    sput-boolean v1, Lcom/hunantv/media/config/NetPlayConfig;->sHightSpeedEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sHightSpeedEnable = true"

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sHightSpeedEnable value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/hunantv/media/config/NetPlayConfig;->sHightSpeedEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_2
    if-ne v4, p0, :cond_5

    sput-boolean v3, Lcom/hunantv/media/config/NetPlayConfig;->sCtxModifyErrEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sCtxModifyErrEnable = false"

    goto :goto_0

    :cond_5
    if-ne v2, p0, :cond_6

    sput-boolean v1, Lcom/hunantv/media/config/NetPlayConfig;->sCtxModifyErrEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sCtxModifyErrEnable = true"

    goto :goto_0

    :cond_6
    sget-object p1, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sCtxModifyErrEnable value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/hunantv/media/config/NetPlayConfig;->sAACExAudioEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_3
    if-ne v4, p0, :cond_7

    sput-boolean v3, Lcom/hunantv/media/config/NetPlayConfig;->sImgoVsrEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sImgoVsrEnable = false"

    goto/16 :goto_0

    :cond_7
    if-ne v2, p0, :cond_8

    sput-boolean v1, Lcom/hunantv/media/config/NetPlayConfig;->sImgoVsrEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sImgoVsrEnable = true"

    goto/16 :goto_0

    :cond_8
    sget-object p1, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sImgoVsrEnable value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/hunantv/media/config/NetPlayConfig;->sImgoVsrEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_4
    if-ne v4, p0, :cond_9

    sput-boolean v3, Lcom/hunantv/media/config/NetPlayConfig;->sAACExAudioEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sAACExAudioEnable = false"

    goto/16 :goto_0

    :cond_9
    if-ne v2, p0, :cond_a

    sput-boolean v1, Lcom/hunantv/media/config/NetPlayConfig;->sAACExAudioEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sAACExAudioEnable = true"

    goto/16 :goto_0

    :cond_a
    sget-object p1, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sAACExAudioEnable value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/hunantv/media/config/NetPlayConfig;->sAACExAudioEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_5
    if-ne v4, p0, :cond_b

    sput-boolean v3, Lcom/hunantv/media/config/NetPlayConfig;->sWanosAudioEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sWanosAudioEnable = false"

    goto/16 :goto_0

    :cond_b
    if-ne v2, p0, :cond_c

    sput-boolean v1, Lcom/hunantv/media/config/NetPlayConfig;->sWanosAudioEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sWanosAudioEnable = true"

    goto/16 :goto_0

    :cond_c
    sget-object p1, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sWanosAudioEnable value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/hunantv/media/config/NetPlayConfig;->sWanosAudioEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_6
    if-ne v4, p0, :cond_d

    sput-boolean v3, Lcom/hunantv/media/config/NetPlayConfig;->sReportModeBatchEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sReportModeBatchEnable = false"

    goto/16 :goto_0

    :cond_d
    if-ne v2, p0, :cond_e

    sput-boolean v1, Lcom/hunantv/media/config/NetPlayConfig;->sReportModeBatchEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sReportModeBatchEnable = true"

    goto/16 :goto_0

    :cond_e
    sget-object p1, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sReportModeBatchEnable value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/hunantv/media/config/NetPlayConfig;->sReportModeBatchEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_7
    if-ne v4, p0, :cond_f

    sput-boolean v3, Lcom/hunantv/media/config/NetPlayConfig;->sReportModeSingleEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sReportModeSingleEnable = false"

    goto/16 :goto_0

    :cond_f
    if-ne v2, p0, :cond_10

    sput-boolean v1, Lcom/hunantv/media/config/NetPlayConfig;->sReportModeSingleEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sReportModeSingleEnable = true"

    goto/16 :goto_0

    :cond_10
    sget-object p1, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sReportModeSingleEnable value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/hunantv/media/config/NetPlayConfig;->sReportModeSingleEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_8
    if-ne v4, p0, :cond_11

    sput-boolean v3, Lcom/hunantv/media/config/NetPlayConfig;->sAlphaPlayEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sAlphaPlayEnable = false"

    goto/16 :goto_0

    :cond_11
    if-ne v2, p0, :cond_12

    sput-boolean v1, Lcom/hunantv/media/config/NetPlayConfig;->sAlphaPlayEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sAlphaPlayEnable = true"

    goto/16 :goto_0

    :cond_12
    sget-object p1, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sAlphaPlayEnable value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/hunantv/media/config/NetPlayConfig;->sAlphaPlayEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_9
    if-ne v4, p0, :cond_13

    sput-boolean v3, Lcom/hunantv/media/config/NetPlayConfig;->sExDefEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sExDefEnable = false"

    goto/16 :goto_0

    :cond_13
    if-ne v2, p0, :cond_14

    sput-boolean v1, Lcom/hunantv/media/config/NetPlayConfig;->sExDefEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sExDefEnable = true"

    goto/16 :goto_0

    :cond_14
    sget-object p1, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sExDefEnable value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/hunantv/media/config/NetPlayConfig;->sExDefEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_a
    if-ne v4, p0, :cond_15

    sput-boolean v3, Lcom/hunantv/media/config/NetPlayConfig;->sSmoothSwitchEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sSmoothSwitchEnable = false"

    goto/16 :goto_0

    :cond_15
    if-ne v2, p0, :cond_16

    sput-boolean v1, Lcom/hunantv/media/config/NetPlayConfig;->sSmoothSwitchEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sSmoothSwitchEnable = true"

    goto/16 :goto_0

    :cond_16
    sget-object p1, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sSmoothSwitchEnable value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/hunantv/media/config/NetPlayConfig;->sSmoothSwitchEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_b
    if-ne v4, p0, :cond_17

    sput-boolean v3, Lcom/hunantv/media/config/NetPlayConfig;->sAudioTimestampEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sAudioTimestampEnable = false"

    goto/16 :goto_0

    :cond_17
    if-ne v2, p0, :cond_18

    sput-boolean v1, Lcom/hunantv/media/config/NetPlayConfig;->sAudioTimestampEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sAudioTimestampEnable = true"

    goto/16 :goto_0

    :cond_18
    sget-object p1, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sAudioTimestampEnable value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/hunantv/media/config/NetPlayConfig;->sAudioTimestampEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_c
    if-ne v4, p0, :cond_19

    sput-boolean v3, Lcom/hunantv/media/config/NetPlayConfig;->sNativeOpenglEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sNativeOpenglEnable = false"

    goto/16 :goto_0

    :cond_19
    if-ne v2, p0, :cond_1a

    sput-boolean v1, Lcom/hunantv/media/config/NetPlayConfig;->sNativeOpenglEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sNativeOpenglEnable = true"

    goto/16 :goto_0

    :cond_1a
    sget-object p1, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sNativeOpenglEnable value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/hunantv/media/config/NetPlayConfig;->sNativeOpenglEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_d
    if-ne v4, p0, :cond_1b

    sput-boolean v3, Lcom/hunantv/media/config/NetPlayConfig;->sDrmProxyEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sDrmProxyEnable = false"

    goto/16 :goto_0

    :cond_1b
    if-ne v2, p0, :cond_1c

    sput-boolean v1, Lcom/hunantv/media/config/NetPlayConfig;->sDrmProxyEnable:Z

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string p1, "sDrmProxyEnable = true"

    goto/16 :goto_0

    :cond_1c
    sget-object p1, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sDrmProxyEnable value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/hunantv/media/config/NetPlayConfig;->sDrmProxyEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized parseAddrInfoType(Ljava/lang/String;)V
    .locals 8

    const-class v0, Lcom/hunantv/media/config/NetPlayConfig;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    if-gtz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    sget-object v2, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseAddrInfoType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    array-length p0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :goto_0
    if-ge v4, p0, :cond_3

    aget-char v6, v1, v4

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigWanosVersion:I

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :pswitch_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigWanosV2Enable:I

    goto/16 :goto_1

    :pswitch_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigAIQEDef:I

    goto/16 :goto_1

    :pswitch_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigDRMRootOK:I

    goto/16 :goto_1

    :pswitch_4
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigPlayCheckVsrVulkan:I

    goto/16 :goto_1

    :pswitch_5
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigPlayMaxSpeedType:I

    goto/16 :goto_1

    :pswitch_6
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigSWRenderType:I

    goto/16 :goto_1

    :pswitch_7
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigMultiDrmOrder:I

    invoke-static {v6}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->setMultiDrmOrder(I)V

    goto/16 :goto_1

    :pswitch_8
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigPrivateHDR:I

    goto/16 :goto_1

    :pswitch_9
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigPreferDrmType:I

    goto/16 :goto_1

    :pswitch_a
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigOppoSr:I

    goto/16 :goto_1

    :pswitch_b
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigCodecSWRender:I

    goto/16 :goto_1

    :pswitch_c
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfig4K:I

    goto/16 :goto_1

    :pswitch_d
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigHdr:I

    goto/16 :goto_1

    :pswitch_e
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigHUAWEILatency:I

    goto :goto_1

    :pswitch_f
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigRenderOpengl:I

    goto :goto_1

    :pswitch_10
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigMgtvMediaCodec:I

    goto :goto_1

    :pswitch_11
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigP2pHttpDns:I

    goto :goto_1

    :pswitch_12
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigFastMode:I

    goto :goto_1

    :pswitch_13
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigDnsCache:I

    goto :goto_1

    :pswitch_14
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/hunantv/media/config/NetPlayConfig;->sConfigDnsType:I

    goto :goto_1

    :pswitch_15
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/hunantv/media/config/NetPlayConfig;->sConfigH265:I

    const/16 v7, 0x39

    if-ne v7, v6, :cond_2

    sget-object v6, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string v7, "sH265Enable = false"

    invoke-static {v6, v7}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v3, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sH265Enable:Z

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string v7, "sH265Enable = true"

    invoke-static {v6, v7}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sH265Enable:Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseAddrInfoType sConfigH265:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hunantv/media/config/NetPlayConfig;->sConfigH265:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sConfigDnsType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hunantv/media/config/NetPlayConfig;->sConfigDnsType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sConfigDnsCache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hunantv/media/config/NetPlayConfig;->sConfigDnsCache:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sConfigFastMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hunantv/media/config/NetPlayConfig;->sConfigFastMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sConfigP2pHttpDns:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hunantv/media/config/NetPlayConfig;->sConfigP2pHttpDns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sConfigMgtvMediaCodec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hunantv/media/config/NetPlayConfig;->sConfigMgtvMediaCodec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sConfigPreferDrmType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hunantv/media/config/NetPlayConfig;->sConfigPreferDrmType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sConfigSWRenderType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hunantv/media/config/NetPlayConfig;->sConfigSWRenderType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sConfigPlayMaxSpeedType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hunantv/media/config/NetPlayConfig;->sConfigPlayMaxSpeedType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sConfigHdr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hunantv/media/config/NetPlayConfig;->sConfigHdr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sConfigPrivateHDR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hunantv/media/config/NetPlayConfig;->sConfigPrivateHDR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sConfigPlayCheckVsrVulkan:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hunantv/media/config/NetPlayConfig;->sConfigPlayCheckVsrVulkan:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sConfigDRMRootOK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hunantv/media/config/NetPlayConfig;->sConfigDRMRootOK:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sConfigRenderOpengl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hunantv/media/config/NetPlayConfig;->sConfigRenderOpengl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sConfigAIQEDef:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hunantv/media/config/NetPlayConfig;->sConfigAIQEDef:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized parsePlayerSupport(Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/hunantv/media/config/NetPlayConfig;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    aget-object v2, p0, v1

    const/4 v3, 0x1

    aget-object p0, p0, v3

    invoke-static {v2}, Lcom/hunantv/media/config/NetPlayConfig;->validBooleanStr(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    if-eqz p0, :cond_4

    array-length v2, p0

    if-gtz v2, :cond_3

    goto :goto_1

    :cond_3
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_7

    aget-char v4, p0, v1

    invoke-static {v4, v3}, Lcom/hunantv/media/config/NetPlayConfig;->mapPlayerSupportS2Value(CI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :cond_5
    :goto_2
    :try_start_2
    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    const-string v1, "player_support invalid s1 or s2"

    invoke-static {p0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :cond_6
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    monitor-exit v0

    return-void

    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static declared-synchronized setGlobalNetPlayConfig(Lcom/hunantv/media/config/NetPlayConfig;)V
    .locals 4

    const-class v0, Lcom/hunantv/media/config/NetPlayConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGlobalNetPlayConfig "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/hunantv/media/config/NetPlayConfig;->sGlobalNetPlayConfig:Lcom/hunantv/media/config/NetPlayConfig;

    sget-object v1, Lcom/hunantv/media/config/NetPlayConfig;->sGlobalNetPlayConfig:Lcom/hunantv/media/config/NetPlayConfig;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->addrinfo_type:Ljava/lang/String;

    invoke-static {p0}, Lcom/hunantv/media/config/NetPlayConfig;->parseAddrInfoType(Ljava/lang/String;)V

    sget-object p0, Lcom/hunantv/media/config/NetPlayConfig;->sGlobalNetPlayConfig:Lcom/hunantv/media/config/NetPlayConfig;

    iget-object p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->player_support:Ljava/lang/String;

    invoke-static {p0}, Lcom/hunantv/media/config/NetPlayConfig;->parsePlayerSupport(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized setGlobalNetPlayConfigStr(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/hunantv/media/config/NetPlayConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGlobalNetPlayConfigStr :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/hunantv/media/config/NetPlayConfig;->sGlobalNetPlayConfigStr:Ljava/lang/String;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/hunantv/media/config/NetPlayConfigWrapper;

    invoke-virtual {v2, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/config/NetPlayConfigWrapper;

    iget-object v2, p0, Lcom/hunantv/media/config/NetPlayConfigWrapper;->data:Lcom/hunantv/media/config/NetPlayConfig;

    sput-object v2, Lcom/hunantv/media/config/NetPlayConfig;->sGlobalNetPlayConfig:Lcom/hunantv/media/config/NetPlayConfig;

    sget-object v2, Lcom/hunantv/media/config/NetPlayConfig;->sGlobalNetPlayConfig:Lcom/hunantv/media/config/NetPlayConfig;

    invoke-static {v2}, Lcom/hunantv/media/config/NetPlayConfig;->setGlobalNetPlayConfig(Lcom/hunantv/media/config/NetPlayConfig;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGlobalNetPlayConfigStr wrapper.data :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/config/NetPlayConfigWrapper;->data:Lcom/hunantv/media/config/NetPlayConfig;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized setNetworkType(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/hunantv/media/config/NetPlayConfig;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/hunantv/media/config/NetPlayConfig;->sNetworkType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setPlayercoreVersion(I)V
    .locals 3

    sget-object v0, Lcom/hunantv/media/config/NetPlayConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayercoreVersion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput p0, Lcom/hunantv/media/config/NetPlayConfig;->sPlayercoreVersion:I

    return-void
.end method

.method public static declared-synchronized updateNetworkType(Landroid/content/Context;)V
    .locals 1

    const-class v0, Lcom/hunantv/media/config/NetPlayConfig;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/hunantv/media/report/c/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/hunantv/media/config/NetPlayConfig;->sNetworkType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static validBooleanChar(C)Z
    .locals 1

    const/16 v0, 0x30

    if-eq p0, v0, :cond_1

    const/16 v0, 0x31

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static validBooleanStr(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAccurate_seek()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->accurate_seek:I

    return p0
.end method

.method public getAddrinfo_timeout()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->addrinfo_timeout:I

    return p0
.end method

.method public getAddrinfo_type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->addrinfo_type:Ljava/lang/String;

    return-object p0
.end method

.method public getBuffer_timeout()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->buffer_timeout:I

    return p0
.end method

.method public getDatasource_async()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->datasource_async:I

    return p0
.end method

.method public getDecodetype()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->decodetype:I

    return p0
.end method

.method public getDns_family_type()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->dns_family_type:I

    return p0
.end method

.method public getHttp_multiple()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->http_multiple:I

    return p0
.end method

.method public getHttp_persistent()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->http_persistent:I

    return p0
.end method

.method public getIs_soft()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->is_soft:I

    return p0
.end method

.method public getLoad_retry_time()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->load_retry_time:I

    return p0
.end method

.method public getM3u8_gzip()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->m3u8_gzip:I

    return p0
.end method

.method public getMp_type()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->mp_type:I

    return p0
.end method

.method public getOpen_timeout()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->open_timeout:I

    return p0
.end method

.method public getPlayer_support()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->player_support:Ljava/lang/String;

    return-object p0
.end method

.method public getRender_type()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->render_type:I

    return p0
.end method

.method public getRw_timeout()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->rw_timeout:I

    return p0
.end method

.method public getTs_not_skip()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->ts_not_skip:I

    return p0
.end method

.method public getWeak_net_speed()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->weak_net_speed:I

    return p0
.end method

.method public setAccurate_seek(I)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/config/NetPlayConfig;->accurate_seek:I

    return-object p0
.end method

.method public setAddrinfo_timeout(I)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/config/NetPlayConfig;->addrinfo_timeout:I

    return-object p0
.end method

.method public setAddrinfo_type(I)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-object p0
.end method

.method public setAddrinfo_type(Ljava/lang/String;)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/media/config/NetPlayConfig;->addrinfo_type:Ljava/lang/String;

    return-object p0
.end method

.method public setBuffer_timeout(I)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/config/NetPlayConfig;->buffer_timeout:I

    return-object p0
.end method

.method public setDatasource_async(I)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/config/NetPlayConfig;->datasource_async:I

    return-object p0
.end method

.method public setDecodetype(I)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/config/NetPlayConfig;->decodetype:I

    return-object p0
.end method

.method public setDns_family_type(I)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/config/NetPlayConfig;->dns_family_type:I

    return-object p0
.end method

.method public setHttp_multiple(I)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/config/NetPlayConfig;->http_multiple:I

    return-object p0
.end method

.method public setHttp_persistent(I)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/config/NetPlayConfig;->http_persistent:I

    return-object p0
.end method

.method public setIs_soft(I)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/config/NetPlayConfig;->is_soft:I

    return-object p0
.end method

.method public setLoad_retry_time(I)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/config/NetPlayConfig;->load_retry_time:I

    return-object p0
.end method

.method public setM3u8_gzip(I)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/config/NetPlayConfig;->m3u8_gzip:I

    return-object p0
.end method

.method public setMp_type(I)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/config/NetPlayConfig;->mp_type:I

    return-object p0
.end method

.method public setOpen_timeout(I)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/config/NetPlayConfig;->open_timeout:I

    return-object p0
.end method

.method public setPlayer_support(Ljava/lang/String;)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/config/NetPlayConfig;->player_support:Ljava/lang/String;

    return-object p0
.end method

.method public setRender_type(I)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/config/NetPlayConfig;->render_type:I

    return-object p0
.end method

.method public setRw_timeout(I)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/config/NetPlayConfig;->rw_timeout:I

    return-object p0
.end method

.method public setTs_not_skip(I)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/config/NetPlayConfig;->ts_not_skip:I

    return-object p0
.end method

.method public setWeak_net_speed(I)Lcom/hunantv/media/config/NetPlayConfig;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/config/NetPlayConfig;->weak_net_speed:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetPlayConfig{mp_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/config/NetPlayConfig;->mp_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is_soft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/config/NetPlayConfig;->is_soft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", render_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/config/NetPlayConfig;->render_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decodetype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/config/NetPlayConfig;->decodetype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", accurate_seek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/config/NetPlayConfig;->accurate_seek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", open_timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/config/NetPlayConfig;->open_timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rw_timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/config/NetPlayConfig;->rw_timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", addrinfo_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/config/NetPlayConfig;->addrinfo_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addrinfo_timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/config/NetPlayConfig;->addrinfo_timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", buffer_timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/config/NetPlayConfig;->buffer_timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ts_not_skip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/config/NetPlayConfig;->ts_not_skip:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", load_retry_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/config/NetPlayConfig;->load_retry_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", datasource_async="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/config/NetPlayConfig;->datasource_async:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", weak_net_speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/config/NetPlayConfig;->weak_net_speed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dns_family_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/config/NetPlayConfig;->dns_family_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", http_persistent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/config/NetPlayConfig;->http_persistent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", http_multiple="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/config/NetPlayConfig;->http_multiple:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", m3u8_gzip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/config/NetPlayConfig;->m3u8_gzip:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", player_support="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/config/NetPlayConfig;->player_support:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
