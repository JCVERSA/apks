.class public Lcom/hunantv/media/global/MgtvPlayerCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;,
        Lcom/hunantv/media/global/MgtvPlayerCapabilities$AlphaCapabilities;
    }
.end annotation


# static fields
.field private static sAlphaCapabilities:Lcom/hunantv/media/global/MgtvPlayerCapabilities$AlphaCapabilities;

.field public static sExDef:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;

    invoke-direct {v0}, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;-><init>()V

    sput-object v0, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->sExDef:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized fillScreenInfo(Landroid/content/Context;)V
    .locals 6

    const-class v0, Lcom/hunantv/media/global/MgtvPlayerCapabilities;

    monitor-enter v0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->sExDef:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;

    const-string v2, "0x0"

    iput-object v2, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;->sceen_size:Ljava/lang/String;

    const-string v2, "0"

    iput-object v2, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;->sceen_fps:Ljava/lang/String;

    const-string v2, "0"

    iput-object v2, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;->screen_hdr_type:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->isWanosAudioInnerEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "1"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    const-string v2, "0"

    :goto_0
    iput-object v2, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;->support_wanos:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    float-to-int v3, v3

    sget-object v4, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->sExDef:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;->sceen_size:Ljava/lang/String;

    sget-object v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->sExDef:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;->sceen_fps:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object p0

    if-eqz p0, :cond_3

    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget v3, p0, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->sExDef:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;

    const-string v4, "1"

    iput-object v4, v3, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;->screen_hdr_type:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit v0

    return-void

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static getAVC1080PMaxFps()I
    .locals 5

    invoke-static {}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getDecoderPerformanceList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v3, v3, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->mimeType:Ljava/lang/String;

    sget-object v4, Lcom/hunantv/media/player/helper/MediaCodecHelp;->AMIME_VIDEO_AVC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v0, v0, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_fps_1080p:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static getAVC4KMaxFps()I
    .locals 5

    invoke-static {}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getDecoderPerformanceList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v3, v3, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->mimeType:Ljava/lang/String;

    sget-object v4, Lcom/hunantv/media/player/helper/MediaCodecHelp;->AMIME_VIDEO_AVC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v0, v0, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_fps_4k:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static declared-synchronized getAlphaCapabilities(Landroid/content/Context;)Lcom/hunantv/media/global/MgtvPlayerCapabilities$AlphaCapabilities;
    .locals 2

    const-class v0, Lcom/hunantv/media/global/MgtvPlayerCapabilities;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->sAlphaCapabilities:Lcom/hunantv/media/global/MgtvPlayerCapabilities$AlphaCapabilities;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$AlphaCapabilities;

    invoke-static {p0}, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->getExDef(Landroid/content/Context;)Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/hunantv/media/global/MgtvPlayerCapabilities$AlphaCapabilities;-><init>(Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;)V

    sput-object v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->sAlphaCapabilities:Lcom/hunantv/media/global/MgtvPlayerCapabilities$AlphaCapabilities;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->sAlphaCapabilities:Lcom/hunantv/media/global/MgtvPlayerCapabilities$AlphaCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getExDef(Landroid/content/Context;)Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;
    .locals 3

    const-class v0, Lcom/hunantv/media/global/MgtvPlayerCapabilities;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->sExDef:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->isExDefEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string v2, "0"

    :goto_0
    iput-object v2, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;->support:Ljava/lang/String;

    sget-object v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->sExDef:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;

    iget-object v2, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;->sceen_size:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;->sceen_fps:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;->screen_hdr_type:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->fillScreenInfo(Landroid/content/Context;)V

    :cond_2
    sget-object p0, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->sExDef:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;

    iget-object v1, p0, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;->h264:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H264;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->getH264Info()Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H264;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;->h264:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H264;

    :cond_3
    sget-object p0, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->sExDef:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;

    iget-object v1, p0, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;->h265:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;

    if-nez v1, :cond_4

    invoke-static {}, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->getH265Info()Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;->h265:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;

    :cond_4
    const-string p0, "MgtvCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sExDef: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->sExDef:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;

    invoke-virtual {v2}, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->sExDef:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getH264Info()Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H264;
    .locals 6

    const-class v0, Lcom/hunantv/media/global/MgtvPlayerCapabilities;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H264;

    invoke-direct {v1}, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H264;-><init>()V

    invoke-static {}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getDecoderPerformanceList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v4, v4, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->mimeType:Ljava/lang/String;

    sget-object v5, Lcom/hunantv/media/player/helper/MediaCodecHelp;->AMIME_VIDEO_AVC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "1"

    iput-object v4, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H264;->support:Ljava/lang/String;

    iget-object v4, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H264;->sdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Sdr;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v5, v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_def:Ljava/lang/String;

    iput-object v5, v4, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Sdr;->max_def:Ljava/lang/String;

    iget-object v4, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H264;->sdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Sdr;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v5, v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_def_fps:Ljava/lang/String;

    iput-object v5, v4, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Sdr;->max_def_fps:Ljava/lang/String;

    iget-object v4, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H264;->hdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-boolean v5, v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->hdr_support:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->isHdrOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "1"

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    const-string v5, "0"

    :goto_1
    iput-object v5, v4, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;->support:Ljava/lang/String;

    const-string v4, "1"

    iget-object v5, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H264;->hdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;

    iget-object v5, v5, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;->support:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H264;->hdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v5, v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_def:Ljava/lang/String;

    iput-object v5, v4, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;->max_def:Ljava/lang/String;

    iget-object v4, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H264;->hdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v5, v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_def_fps:Ljava/lang/String;

    iput-object v5, v4, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;->max_def_fps:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-object v1

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getH265Info()Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;
    .locals 6

    const-class v0, Lcom/hunantv/media/global/MgtvPlayerCapabilities;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;

    invoke-direct {v1}, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;-><init>()V

    invoke-static {}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getDecoderPerformanceList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v4, v4, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->mimeType:Ljava/lang/String;

    sget-object v5, Lcom/hunantv/media/player/helper/MediaCodecHelp;->AMIME_VIDEO_HEVC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "1"

    iput-object v4, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;->support:Ljava/lang/String;

    iget-object v4, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;->sdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Sdr;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v5, v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_def:Ljava/lang/String;

    iput-object v5, v4, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Sdr;->max_def:Ljava/lang/String;

    iget-object v4, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;->sdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Sdr;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v5, v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_def_fps:Ljava/lang/String;

    iput-object v5, v4, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Sdr;->max_def_fps:Ljava/lang/String;

    iget-object v4, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;->hdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-boolean v5, v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->hdr_support:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->isHdrOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "1"

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    const-string v5, "0"

    :goto_1
    iput-object v5, v4, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;->support:Ljava/lang/String;

    const-string v4, "1"

    iget-object v5, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;->hdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;

    iget-object v5, v5, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;->support:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;->hdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v5, v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_def:Ljava/lang/String;

    iput-object v5, v4, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;->max_def:Ljava/lang/String;

    iget-object v4, v1, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;->hdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v5, v5, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_def_fps:Ljava/lang/String;

    iput-object v5, v4, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;->max_def_fps:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-object v1

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getHEVC1080PMaxFps()I
    .locals 5

    invoke-static {}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getDecoderPerformanceList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v3, v3, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->mimeType:Ljava/lang/String;

    sget-object v4, Lcom/hunantv/media/player/helper/MediaCodecHelp;->AMIME_VIDEO_HEVC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v0, v0, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_fps_1080p:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static getHEVC4KMaxFps()I
    .locals 5

    invoke-static {}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getDecoderPerformanceList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v3, v3, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->mimeType:Ljava/lang/String;

    sget-object v4, Lcom/hunantv/media/player/helper/MediaCodecHelp;->AMIME_VIDEO_HEVC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v0, v0, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_fps_4k:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
