.class public Lcom/mgtv/downloader/p2p/DownloadFacade;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MSG_DOWNLOAD_INFO:I = 0xb

.field private static final MSG_OFFLINE_DOWNLOAD_ERROR:I = 0x65

.field private static final MSG_OFFLINE_DOWNLOAD_FINISHED:I = 0x64

.field private static final MSG_OFFLINE_PLAY_ERROR:I = 0x69

.field private static final MSG_ONLINE_PLAY:I = 0x2

.field private static final MSG_PARSE_M3U8_ERROR:I = 0xcb

.field private static final MSG_REP0RT_THREE_FAILED:I = 0xca

.field private static final MSG_REPORT_P2P_PROXY:I = 0xc8

.field private static final MSG_REPORT_THREE_SUCCESS:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "DownloadSDK"

.field private static mInstance:Lcom/mgtv/downloader/p2p/DownloadFacade;


# instance fields
.field private mDownloadListener:Lcom/mgtv/downloader/p2p/mg/IP2PListener;

.field private mMsgHandler:Landroid/os/Handler;

.field private mReportListener:Lcom/mgtv/downloader/p2p/mg/IReportThreeListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/mgtv/downloader/p2p/DownloadFacade;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/mgtv/downloader/p2p/DownloadFacade;->dispatchCallerMessage(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static addDomain(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/mgtv/irouting/a;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private dispatchCallerMessage(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const-string p4, "="

    const/4 p5, 0x2

    const-string p6, "DownloadSDK"

    if-eq p1, p5, :cond_7

    const/16 p5, 0xb

    if-eq p1, p5, :cond_6

    const/16 p5, 0x69

    if-eq p1, p5, :cond_5

    const/16 p5, 0x64

    if-eq p1, p5, :cond_4

    const/16 p5, 0x65

    const-string v0, ", errorCode: "

    if-eq p1, p5, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Dispatch callback: parse m3u8 error, taskID: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p4, p2

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p4, p3

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mgtv/downloader/p2p/DownloadFacade;->mReportListener:Lcom/mgtv/downloader/p2p/mg/IReportThreeListener;

    move-object p4, p2

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    move-object p5, p3

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-interface {p1, p4, p5}, Lcom/mgtv/downloader/p2p/mg/IReportThreeListener;->onReportThreeFailed(II)V

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Dispatch callback: report three failed, taskID: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p4, p2

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p4, p3

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/DownloadFacade;->mReportListener:Lcom/mgtv/downloader/p2p/mg/IReportThreeListener;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/mgtv/downloader/p2p/mg/IReportThreeListener;->onReportThreeFailed(II)V

    goto/16 :goto_3

    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dispatch callback: report three success, taskID: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p3, p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/DownloadFacade;->mReportListener:Lcom/mgtv/downloader/p2p/mg/IReportThreeListener;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/mgtv/downloader/p2p/mg/IReportThreeListener;->onReportThreeSuccess(I)V

    goto/16 :goto_3

    :pswitch_3
    check-cast p3, [B

    invoke-static {p3}, Lcom/mgtv/downloader/p2p/mg/Utils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Dispatch callback: report info: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "&"

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    move p5, p3

    :goto_0
    array-length v0, p2

    const/4 v1, 0x1

    if-ge p5, v0, :cond_1

    aget-object v0, p2, p5

    invoke-virtual {v0, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "dlRs"

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/mgtv/data/aphone/a/a;->a()Lcom/mgtv/data/aphone/a/a;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/mgtv/data/aphone/a/a;->b(Z)Lcom/mgtv/data/aphone/a/a;

    move-result-object p0

    const-string p3, "event_hls_dlrs_new"

    invoke-virtual {p0, p3, p1, p2}, Lcom/mgtv/data/aphone/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lcom/mgtv/data/aphone/a/b/b;)V

    goto/16 :goto_3

    :cond_2
    invoke-static {}, Lcom/mgtv/data/aphone/a/a;->a()Lcom/mgtv/data/aphone/a/a;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/mgtv/data/aphone/a/a;->b(Z)Lcom/mgtv/data/aphone/a/a;

    move-result-object p0

    const-string p3, "event_hls_dlproc_new"

    invoke-virtual {p0, p3, p1, p2}, Lcom/mgtv/data/aphone/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lcom/mgtv/data/aphone/a/b/b;)V

    goto/16 :goto_3

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Dispatch callback: offline download taskID: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/DownloadFacade;->mDownloadListener:Lcom/mgtv/downloader/p2p/mg/IP2PListener;

    if-eqz p0, :cond_8

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/mgtv/downloader/p2p/mg/IP2PListener;->onOfflineDownloadError(II)V

    goto/16 :goto_3

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dispatch callback: offline download finish, taskID: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/DownloadFacade;->mDownloadListener:Lcom/mgtv/downloader/p2p/mg/IP2PListener;

    if-eqz p0, :cond_8

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/mgtv/downloader/p2p/mg/IP2PListener;->onOfflineDownloadFinish(I)V

    goto/16 :goto_3

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dispatch callback: offline play error, taskID: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/DownloadFacade;->mDownloadListener:Lcom/mgtv/downloader/p2p/mg/IP2PListener;

    if-eqz p0, :cond_8

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/mgtv/downloader/p2p/mg/IP2PListener;->onOfflinePlayError(I)V

    goto :goto_3

    :cond_6
    :goto_1
    check-cast p3, [B

    invoke-static {p3}, Lcom/mgtv/downloader/p2p/mg/Utils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dispatch callback: download info: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/downloader/p2p/DownloadFacade;->mDownloadListener:Lcom/mgtv/downloader/p2p/mg/IP2PListener;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v2, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/mgtv/downloader/p2p/mg/IP2PListener;->onOfflineDownloadProgress(IJIJLjava/lang/String;)V

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Dispatch callback: online play, taskID: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/DownloadFacade;->mDownloadListener:Lcom/mgtv/downloader/p2p/mg/IP2PListener;

    if-eqz p0, :cond_8

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/mgtv/downloader/p2p/mg/IP2PListener;->onOnlinePlayError(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p6, p0}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private native initNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static declared-synchronized instance()Lcom/mgtv/downloader/p2p/DownloadFacade;
    .locals 2

    const-class v0, Lcom/mgtv/downloader/p2p/DownloadFacade;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mgtv/downloader/p2p/DownloadFacade;->mInstance:Lcom/mgtv/downloader/p2p/DownloadFacade;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mgtv/downloader/p2p/DownloadFacade;

    invoke-direct {v1}, Lcom/mgtv/downloader/p2p/DownloadFacade;-><init>()V

    sput-object v1, Lcom/mgtv/downloader/p2p/DownloadFacade;->mInstance:Lcom/mgtv/downloader/p2p/DownloadFacade;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/mgtv/downloader/p2p/DownloadFacade;->mInstance:Lcom/mgtv/downloader/p2p/DownloadFacade;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private printTag(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p3, p4, p5}, Lcom/mgtv/downloader/p2p/mg/Utils;->printTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static pushCallerMessage(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mgtv/downloader/p2p/DownloadFacade;->pushMessage(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized pushMessage(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    move-object v9, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v9, Lcom/mgtv/downloader/p2p/DownloadFacade;->mMsgHandler:Landroid/os/Handler;

    new-instance v10, Lcom/mgtv/downloader/p2p/DownloadFacade$1;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/mgtv/downloader/p2p/DownloadFacade$1;-><init>(Lcom/mgtv/downloader/p2p/DownloadFacade;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public native buildURL(I)[B
.end method

.method public native createTask(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public native deinit()V
.end method

.method public native deleteOfflineCache(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native deleteOfflineCacheAll()I
.end method

.method public native getErrorCode(I)I
.end method

.method public native getOfflineM3U8Path(I)[B
.end method

.method public native getTaskInfoByJson(I)[B
.end method

.method public native getTaskInfoByStruct(I)Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;
.end method

.method public native getVersion()[B
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/downloader/p2p/DownloadFacade;->initNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p4}, Lcom/mgtv/downloader/p2p/DownloadFacade;->setUserData(Ljava/util/Map;)V

    return p1
.end method

.method public initHandler(Landroid/os/Looper;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/downloader/p2p/DownloadFacade;->mMsgHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mgtv/downloader/p2p/DownloadFacade;->mMsgHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public native pauseTask(I)I
.end method

.method public native pushEvent(I)V
.end method

.method public native runTask(I)I
.end method

.method public declared-synchronized setDownloadListener(Lcom/mgtv/downloader/p2p/mg/IP2PListener;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mgtv/downloader/p2p/DownloadFacade;->mDownloadListener:Lcom/mgtv/downloader/p2p/mg/IP2PListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public native setPlayTime(III)V
.end method

.method public native setPlayingPos(II)V
.end method

.method public declared-synchronized setReportDownloadListener(Lcom/mgtv/downloader/p2p/mg/IReportThreeListener;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mgtv/downloader/p2p/DownloadFacade;->mReportListener:Lcom/mgtv/downloader/p2p/mg/IReportThreeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public native setServerConfig(Ljava/lang/String;)V
.end method

.method public setUserData(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    if-eq v2, v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Long;

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/downloader/p2p/DownloadFacade;->setUserDataString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/downloader/p2p/DownloadFacade;->setUserDataInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_3
    return-void
.end method

.method public native setUserDataInt(Ljava/lang/String;I)V
.end method

.method public native setUserDataString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native stopTask(I)I
.end method
