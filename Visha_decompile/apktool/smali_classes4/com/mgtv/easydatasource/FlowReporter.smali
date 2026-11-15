.class public Lcom/mgtv/easydatasource/FlowReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/easydatasource/FlowReporter$onReportCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MGDS"

.field private static _loaded:Z = false

.field public static final kInfoFromPlayer:I = 0x1

.field public static final kInfoFromYunFan:I = 0x2

.field public static final kProviderCDN:I = 0x1

.field public static final kProviderP2P:I = 0x2

.field public static final kProviderPCDN:I = 0x3

.field public static final kReportModeBatch:I = 0x1

.field public static final kReportModeSingle:I = 0x2

.field public static final kVideoDefBD:I = 0x4

.field public static final kVideoDefFHD:I = 0x3

.field public static final kVideoDefFast:I = 0x0

.field public static final kVideoDefHD:I = 0x2

.field public static final kVideoDefSD:I = 0x1

.field private static reportCall:Lcom/mgtv/easydatasource/FlowReporter$onReportCallBack;


# instance fields
.field private _nativeReporter:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mgtv/easydatasource/FlowReporter;->_nativeReporter:J

    sget-boolean v0, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/easydatasource/FlowReporter;->_createReporter(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mgtv/easydatasource/FlowReporter;->_nativeReporter:J

    :cond_0
    return-void
.end method

.method private native _createReporter(Ljava/lang/String;ILjava/lang/String;)J
.end method

.method private native _destoryReporter(J)V
.end method

.method private static native _enableHttpsReport(Z)V
.end method

.method private native _forceTrigger()V
.end method

.method private static native _getTsFlowTagWithUrl(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private static native _getVersion()Ljava/lang/String;
.end method

.method private static native _packSecondLayerUrl(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private static native _packThirdLayerUrl(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native _pushFlowInfo(Ljava/lang/String;II)V
.end method

.method private static native _setGlobalConfig(Ljava/lang/String;)V
.end method

.method private native _setVideoMetadata(IILjava/lang/String;)V
.end method

.method private native _start(Ljava/lang/String;)V
.end method

.method private native _stop()V
.end method

.method public static enableHttpsReport(Z)V
    .locals 1

    sget-boolean v0, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/mgtv/easydatasource/FlowReporter;->_enableHttpsReport(Z)V

    return-void
.end method

.method private static genErrorTicket()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgtv/easydatasource/ContextUtils;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "crt=999"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&cpid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReportCallBack()Lcom/mgtv/easydatasource/FlowReporter$onReportCallBack;
    .locals 1

    sget-object v0, Lcom/mgtv/easydatasource/FlowReporter;->reportCall:Lcom/mgtv/easydatasource/FlowReporter$onReportCallBack;

    return-object v0
.end method

.method public static getTsFlowTagWithUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z

    if-nez v0, :cond_0

    const-string p0, "unloaded_androidO9"

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/mgtv/easydatasource/FlowReporter;->_getTsFlowTagWithUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z

    if-nez v0, :cond_0

    const-string v0, "MGDS"

    const-string v1, "please call init first!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0.0.-404"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/mgtv/easydatasource/FlowReporter;->_getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init()Z
    .locals 5

    const-class v0, Lcom/mgtv/easydatasource/FlowReporter;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    const-string v1, "FlowReporter"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z

    const-string v1, "MGDS"

    const-string v2, "Load library success!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :goto_0
    :try_start_2
    const-string v2, "MGDS"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_4

    :goto_1
    const-string v2, "MGDS"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :goto_2
    const-string v2, "MGDS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load library! >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    sget-boolean v1, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return v1

    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static isInited()Z
    .locals 1

    sget-boolean v0, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z

    return v0
.end method

.method public static packSecondLayerUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mgtv/easydatasource/FlowReporter;->genErrorTicket()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mgtv/easydatasource/FlowReporter;->urlAppendParamPair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/mgtv/easydatasource/FlowReporter;->_packSecondLayerUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static packThirdLayerUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mgtv/easydatasource/FlowReporter;->genErrorTicket()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mgtv/easydatasource/FlowReporter;->urlAppendParamPair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/mgtv/easydatasource/FlowReporter;->_packThirdLayerUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sendReportInfo(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/mgtv/easydatasource/FlowReporter;->getReportCallBack()Lcom/mgtv/easydatasource/FlowReporter$onReportCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/easydatasource/FlowReporter;->getReportCallBack()Lcom/mgtv/easydatasource/FlowReporter$onReportCallBack;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/mgtv/easydatasource/FlowReporter$onReportCallBack;->onReportInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setGlobalConfig(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/mgtv/easydatasource/FlowReporter;->_setGlobalConfig(Ljava/lang/String;)V

    return-void
.end method

.method public static setReportCallBack(Lcom/mgtv/easydatasource/FlowReporter$onReportCallBack;)V
    .locals 2

    sget-boolean v0, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mgtv/easydatasource/FlowReporter;->init()Z

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/mgtv/easydatasource/FlowReporter;->setReportInfo(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    sput-object p0, Lcom/mgtv/easydatasource/FlowReporter;->reportCall:Lcom/mgtv/easydatasource/FlowReporter$onReportCallBack;

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/mgtv/easydatasource/FlowReporter;->setReportInfo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MGDS"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private static native setReportInfo(I)V
.end method

.method private static urlAppendParamPair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    sget-boolean v0, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/mgtv/easydatasource/FlowReporter;->_nativeReporter:J

    invoke-direct {p0, v0, v1}, Lcom/mgtv/easydatasource/FlowReporter;->_destoryReporter(J)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public forceTrigger()V
    .locals 1

    sget-boolean v0, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/mgtv/easydatasource/FlowReporter;->_forceTrigger()V

    return-void
.end method

.method public pushFlowInfo(Ljava/lang/String;II)V
    .locals 1

    sget-boolean v0, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/easydatasource/FlowReporter;->_pushFlowInfo(Ljava/lang/String;II)V

    return-void
.end method

.method public setBusinessSuuid(Ljava/lang/String;)V
    .locals 0

    sget-boolean p0, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public setPlayerSuuid(Ljava/lang/String;)V
    .locals 0

    sget-boolean p0, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public setVideoMetadata(IILjava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/easydatasource/FlowReporter;->_setVideoMetadata(IILjava/lang/String;)V

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/mgtv/easydatasource/FlowReporter;->_start(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 1

    sget-boolean v0, Lcom/mgtv/easydatasource/FlowReporter;->_loaded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/mgtv/easydatasource/FlowReporter;->_stop()V

    return-void
.end method
