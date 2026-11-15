.class public Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;,
        Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;
    }
.end annotation


# static fields
.field public static final CB_HTTP_ERROR_TYPE_DNS_FAILED:I = 0x1

.field public static final CB_HTTP_ERROR_TYPE_DNS_TIMEOUT:I = 0x8

.field public static final CB_HTTP_ERROR_TYPE_HTTP_RECEIVE_ERR:I = 0x5

.field public static final CB_HTTP_ERROR_TYPE_HTTP_REQUEST_ERR:I = 0x4

.field public static final CB_HTTP_ERROR_TYPE_HTTP_REQUEST_TIMEOUT:I = 0x6

.field public static final CB_HTTP_ERROR_TYPE_HTTP_RESPONSE_4XX_5XX:I = 0x7

.field public static final CB_HTTP_ERROR_TYPE_TCP_CONNECT_ERR:I = 0x2

.field public static final CB_HTTP_ERROR_TYPE_TCP_CONNECT_TIMEOUT:I = 0x3

.field private static final CODE_ABORT:I = -0x1

.field private static final CODE_BLOCKED:I = 0x1

.field private static final CODE_NORMAL:I = 0x0

.field public static final ERROR_TYPE_CUS_CODE:I = 0x9

.field public static final ERR_BASE_CODE_610:I = 0x262

.field public static final ERR_BASE_CODE_701:I = 0x2bd

.field public static final ERR_BASE_CODE_705:I = 0x2c1

.field public static final ERR_BASE_CODE_910:I = 0x38e

.field public static final ERR_BASE_CODE_911:I = 0x38f

.field public static final ERR_BASE_CODE_913:I = 0x391

.field public static final ERR_P2P_DIRECT_WHAT:I = 0x61d3c

.field public static final ERR_P2P_MGTVDS_NEGATIVE_BASECODE:I = 0xad570

.field public static final ERR_P2P_MGTVDS_POSITIVE_BASECODE:I = 0xaae60

.field public static final ERR_P2P_STAGE_BASE_CODE:I = 0x989680

.field public static final ERR_P2P_STAGE_GETSIZE_FLAGCODE:I = 0x1

.field public static final ERR_P2P_STAGE_READAT_FLAGCODE:I = 0x2

.field public static final ERR_P2P_TYPE_BASE_CODE:I = 0xf4240

.field public static final ERR_P2P_TYPE_BASE_FLAGCODE:I = 0x0

.field public static final INVALID_CODE:I = -0x1

.field public static final MAX_P2P_NOT_START_TIMEOUT_US:I = 0x989680

.field public static final WAIT_MS:I = 0xa


# instance fields
.field private mConfig:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;

.field private mDataSourceUrl:Ljava/lang/String;

.field private mInfoListener:Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource$IInfoListener;

.field private volatile mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

.field private volatile mLastM3u8Entity:Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;

.field private mLockObj:Ljava/lang/Object;

.field private mMediaPlayer:Lcom/hunantv/media/player/h;

.field private mOnNotifyMsgListener:Lcom/mgtv/a/a$a;

.field private mP2pTask:Lcom/mgtv/a/c;

.field private volatile mRequestAbort:Z

.field private mTagStr:Ljava/lang/String;

.field private mVideoSourceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/hunantv/media/player/h;Ljava/lang/String;ILcom/mgtv/a/c;Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mRequestAbort:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLockObj:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mTagStr:Ljava/lang/String;

    new-instance v0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;-><init>(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;)V

    iput-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mOnNotifyMsgListener:Lcom/mgtv/a/a$a;

    iput-object p1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mMediaPlayer:Lcom/hunantv/media/player/h;

    iput-object p2, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mDataSourceUrl:Ljava/lang/String;

    iput p3, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mVideoSourceType:I

    iput-object p4, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mP2pTask:Lcom/mgtv/a/c;

    iput-object p5, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mConfig:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;

    if-nez p5, :cond_0

    new-instance p1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;

    invoke-direct {p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mConfig:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setConfig connectTime:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mConfig:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;

    invoke-virtual {p3}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;->getConnectTimeOutUs()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",receiveTime:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mConfig:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;

    invoke-virtual {p3}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;->getReciveDataTimeOutUs()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mP2pTask:Lcom/mgtv/a/c;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/mgtv/a/b;->d()Lcom/mgtv/a/b;

    move-result-object p1

    iget-object p0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mOnNotifyMsgListener:Lcom/mgtv/a/a$a;

    invoke-virtual {p1, p0}, Lcom/mgtv/a/b;->a(Lcom/mgtv/a/a$a;)V

    :cond_1
    return-void
.end method

.method public static P2PDebugD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static synthetic access$000(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$102(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;)Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastM3u8Entity:Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;)Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;)Lcom/mgtv/a/c;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mP2pTask:Lcom/mgtv/a/c;

    return-object p0
.end method

.method private blockReadThread()I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isRequestAbort()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isP2pTaskStart()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLockObj:Ljava/lang/Object;

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isRequestAbort()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-eqz v1, :cond_2

    return v3

    :cond_2
    return v0
.end method

.method private callbackOnSourceInfoUpdate()V
    .locals 2

    invoke-virtual {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isRequestAbort()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mInfoListener:Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource$IInfoListener;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mgtv/a/b;->d()Lcom/mgtv/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mP2pTask:Lcom/mgtv/a/c;

    invoke-virtual {v0, v1}, Lcom/mgtv/a/b;->a(Lcom/mgtv/a/c;)Lcom/mgtv/a/d;

    move-result-object v0

    iget-object p0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mInfoListener:Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource$IInfoListener;

    invoke-interface {p0, v0}, Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource$IInfoListener;->onSourceInfoUpdate(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static checkClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private checkHtmlM3u8(JILjava/lang/String;)J
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastM3u8Entity:Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastM3u8Entity:Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;

    iget-boolean v0, v0, Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;->isHtml:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastM3u8Entity:Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;

    iget-object v0, v0, Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastM3u8Entity:Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;

    iget-object v0, v0, Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;->fileName:Ljava/lang/String;

    invoke-static {p4}, Lcom/hunantv/media/player/utils/UrlUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getSize out error_code:701"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x9

    const/16 p1, 0x2bd

    invoke-static {p3, p0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCode(III)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_0
    return-wide p1
.end method

.method private checkM3u8SizeError(ILjava/lang/String;)J
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastM3u8Entity:Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastM3u8Entity:Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;

    iget-boolean v0, v0, Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;->isSizeError:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastM3u8Entity:Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;

    iget-object v0, v0, Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastM3u8Entity:Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;

    iget-object v0, v0, Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;->fileName:Ljava/lang/String;

    invoke-static {p2}, Lcom/hunantv/media/player/utils/UrlUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p2, "checkM3u8SizeError error_code:705"

    invoke-static {p0, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x9

    const/16 p2, 0x2c1

    invoke-static {p1, p0, p2}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCode(III)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static convertErrorTypeStaticCode(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x8

    return p0

    :pswitch_0
    const/4 p0, 0x7

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x3

    return p0

    :pswitch_5
    const/4 p0, 0x2

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertP2pErrorCode(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    rem-int/lit16 p0, p0, 0x2710

    return p0
.end method

.method private static convertPlayerErrorCode(III)I
    .locals 2

    const v0, 0xf4240

    const v1, 0x989680

    mul-int/2addr p0, v1

    mul-int/2addr p1, v0

    add-int/2addr p0, p1

    if-ltz p2, :cond_0

    const p1, 0xaae60

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    :goto_0
    neg-int p0, p0

    return p0

    :cond_0
    const p1, 0xad570

    add-int/2addr p0, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/2addr p0, p1

    goto :goto_0
.end method

.method private static convertPlayerErrorCodeGetSize(I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCodeGetSize(II)I

    move-result p0

    return p0
.end method

.method private static convertPlayerErrorCodeGetSize(II)I
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCode(III)I

    move-result p0

    return p0
.end method

.method private static convertPlayerErrorCodeReadAt(I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCodeReadAt(II)I

    move-result p0

    return p0
.end method

.method private static convertPlayerErrorCodeReadAt(II)I
    .locals 1

    .line 2
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCode(III)I

    move-result p0

    return p0
.end method

.method public static convertTaskStatusCode(I)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    if-eq p0, v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    return v1
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2pDirect-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mP2pTask:Lcom/mgtv/a/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mgtv/a/c;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mTagStr:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getP2pDirectTypeCode(I)I
    .locals 1

    const v0, 0xf4240

    div-int/2addr p0, v0

    rem-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public static getShortErrorCode(II)I
    .locals 1

    const v0, 0x61d3c

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertP2pErrorCode(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private getSizeImpl(Ljava/lang/String;)J
    .locals 12

    const/4 v0, 0x1

    new-array v11, v0, [J

    new-array v0, v0, [I

    invoke-static {}, Lcom/mgtv/a/b;->d()Lcom/mgtv/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mP2pTask:Lcom/mgtv/a/c;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    move-object v9, v11

    move-object v10, v0

    invoke-virtual/range {v1 .. v10}, Lcom/mgtv/a/b;->a(Lcom/mgtv/a/c;Ljava/lang/String;[BJJ[J[I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v3, v1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSizeImpl out OK. size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v0, v11, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->P2PDebugD(Ljava/lang/String;Ljava/lang/String;)V

    aget-wide p0, v11, v3

    return-wide p0

    :cond_0
    const-wide/16 v4, -0x22b

    cmp-long p1, v4, v1

    if-nez p1, :cond_1

    const-wide/32 p0, -0x7849cd70

    return-wide p0

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long p1, v4, v1

    if-nez p1, :cond_2

    aget p1, v0, v3

    invoke-static {p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCodeGetSize(I)I

    move-result p1

    int-to-long v0, p1

    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSizeImpl out E_NET_FALSE. ret:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->P2PDebugD(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_2
    long-to-int p0, v1

    invoke-static {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCodeGetSize(I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method private getSizeImplProxy(Ljava/lang/String;)Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;
    .locals 3

    new-instance v0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;-><init>(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getSizeImpl(Ljava/lang/String;)J

    move-result-wide p0

    iput-wide p0, v0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;->ret:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v1

    iput-wide p0, v0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;->costMs:J

    return-object v0
.end method

.method private isDataSourcePaused()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isP2pTaskStart()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->B()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNoTaskByHashError(II)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isP2pDirectError(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0xa36bfc

    if-eq p1, p0, :cond_0

    const p0, 0x13c027c

    if-eq p1, p0, :cond_0

    const p0, 0x13c0276

    if-eq p1, p0, :cond_0

    const p0, 0xa36bf6

    if-ne p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isP2pDirect913X(II)Z
    .locals 1

    const v0, 0x61d3c

    if-ne p0, v0, :cond_0

    invoke-static {p0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isP2pDirectCusCode(II)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertP2pErrorCode(I)I

    move-result p0

    const/16 p1, 0x23aa

    if-lt p0, p1, :cond_0

    const/16 p1, 0x23b3

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isP2pDirectCusCode(II)Z
    .locals 1

    const v0, 0x61d3c

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getP2pDirectTypeCode(I)I

    move-result p0

    const/16 p1, 0x9

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isP2pDirectDnsError(II)Z
    .locals 1

    const v0, 0x61d3c

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getP2pDirectTypeCode(I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isP2pDirectError(II)Z
    .locals 0

    const p1, 0x61d3c

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isP2pDirectHttp403(II)Z
    .locals 1

    const v0, 0x61d3c

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertP2pErrorCode(I)I

    move-result p0

    const/16 p1, 0x193

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isP2pDirectHttp410(II)Z
    .locals 1

    const v0, 0x61d3c

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertP2pErrorCode(I)I

    move-result p0

    const/16 p1, 0x19a

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isP2pDirectHttp4XX(II)Z
    .locals 1

    const v0, 0x61d3c

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertP2pErrorCode(I)I

    move-result p0

    const/16 p1, 0x190

    if-lt p0, p1, :cond_0

    const/16 p1, 0x1f3

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isP2pDirectHttp5XX(II)Z
    .locals 1

    const v0, 0x61d3c

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertP2pErrorCode(I)I

    move-result p0

    const/16 p1, 0x1f4

    if-lt p0, p1, :cond_0

    const/16 p1, 0x257

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isP2pDirectTimeoutError(II)Z
    .locals 3

    const v0, 0x61d3c

    if-ne p0, v0, :cond_2

    const v0, 0x1a586

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x1a587

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertP2pErrorCode(I)I

    move-result v0

    const/16 v2, 0x38e

    if-eq v0, v2, :cond_1

    const/16 v2, 0x38f

    if-eq v0, v2, :cond_1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isP2pDirect913X(II)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private readAtImpl(Ljava/lang/String;[BJJ)J
    .locals 13

    const/4 v0, 0x1

    new-array v9, v0, [J

    new-array v11, v0, [I

    invoke-static {}, Lcom/mgtv/a/b;->d()Lcom/mgtv/a/b;

    move-result-object v1

    move-object v12, p0

    iget-object v2, v12, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mP2pTask:Lcom/mgtv/a/c;

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-object v10, v11

    invoke-virtual/range {v1 .. v10}, Lcom/mgtv/a/b;->a(Lcom/mgtv/a/c;Ljava/lang/String;[BJJ[J[I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAtImpl out OK. size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->P2PDebugD(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    :cond_0
    const-wide/16 v3, -0x22b

    cmp-long v3, v3, v1

    if-nez v3, :cond_1

    const-wide/32 v0, -0x7849cd70

    return-wide v0

    :cond_1
    const-wide/16 v3, -0x1

    cmp-long v3, v3, v1

    if-nez v3, :cond_3

    const/4 v1, 0x0

    aget v1, v11, v1

    if-ne v0, v1, :cond_2

    const-wide/32 v0, -0x7849cd71

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCodeReadAt(I)I

    move-result v0

    int-to-long v0, v0

    :goto_0
    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAtImpl out E_NET_FALSE. ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->P2PDebugD(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_3
    long-to-int v0, v1

    invoke-static {v0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCodeReadAt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private readAtImplProxy(Ljava/lang/String;[BJJ)Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;
    .locals 3

    new-instance v0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;-><init>(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct/range {p0 .. p6}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->readAtImpl(Ljava/lang/String;[BJJ)J

    move-result-wide p0

    iput-wide p0, v0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;->ret:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v1

    iput-wide p0, v0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;->costMs:J

    return-object v0
.end method


# virtual methods
.method public close(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->release()V

    return-void
.end method

.method public getDataSourceUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mDataSourceUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getLastM3u8Entity()Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastM3u8Entity:Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;

    return-object p0
.end method

.method public getSize(Ljava/lang/String;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSize in url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->P2PDebugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;-><init>(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->callbackOnSourceInfoUpdate()V

    :goto_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isRequestAbort()Z

    move-result v4

    if-nez v4, :cond_7

    iget-wide v4, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;->ret:J

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->checkHtmlM3u8(JILjava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;->ret:J

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-ltz v4, :cond_7

    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->blockReadThread()I

    move-result v4

    if-ltz v4, :cond_7

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getSizeImplProxy(Ljava/lang/String;)Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-wide v9, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;->ret:J

    const-wide/32 v11, -0x7849cd70

    cmp-long v5, v9, v11

    if-nez v5, :cond_7

    if-eq v4, v6, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isDataSourcePaused()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getSize isDataSourcePaused"

    invoke-static {v2, v3}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->P2PDebugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_1
    iget-wide v4, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;->costMs:J

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v9, 0x3e8

    mul-long/2addr v4, v9

    invoke-virtual {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isP2pTaskStart()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mConfig:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;

    invoke-virtual {v9}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;->getReciveDataTimeOutUs()I

    move-result v9

    int-to-long v9, v9

    cmp-long v4, v4, v9

    if-lez v4, :cond_6

    iget-object v1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iget-object v1, v1, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iget-object v1, v1, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/hunantv/media/player/utils/UrlUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/hunantv/media/player/utils/UrlUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSize lastErrorName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",targetName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->P2PDebugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iget v1, v1, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;->error_type:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getSize out error_code:610"

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iget p1, p1, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;->error_type:I

    invoke-static {p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertErrorTypeStaticCode(I)I

    move-result p1

    const/16 v1, 0x262

    invoke-static {p1, v1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCodeGetSize(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v1, p1

    :try_start_1
    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->callbackOnSourceInfoUpdate()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-wide v1

    :catchall_1
    move-exception p0

    goto/16 :goto_6

    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getSize out error_code:911"

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iget p1, p1, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;->error_type:I

    invoke-static {p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertErrorTypeStaticCode(I)I

    move-result p1

    const/16 v1, 0x38f

    invoke-static {p1, v1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCodeGetSize(II)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v1, p1

    :try_start_3
    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->callbackOnSourceInfoUpdate()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-wide v1

    :pswitch_2
    :try_start_4
    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getSize out error_code:910"

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iget p1, p1, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;->error_type:I

    invoke-static {p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertErrorTypeStaticCode(I)I

    move-result p1

    const/16 v1, 0x38e

    invoke-static {p1, v1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCodeGetSize(II)I

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    int-to-long v1, p1

    :try_start_5
    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->callbackOnSourceInfoUpdate()V

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-wide v1

    :pswitch_3
    :try_start_6
    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSize out error_code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iget v2, v2, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;->error_code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iget p1, p1, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;->error_type:I

    invoke-static {p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertErrorTypeStaticCode(I)I

    move-result p1

    iget-object v1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iget v1, v1, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;->error_code:I

    invoke-static {p1, v1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCodeGetSize(II)I

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    int-to-long v1, p1

    :try_start_7
    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->callbackOnSourceInfoUpdate()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-wide v1

    :cond_2
    :goto_2
    :try_start_8
    invoke-direct {p0, v6, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->checkM3u8SizeError(ILjava/lang/String;)J

    move-result-wide v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    cmp-long p1, v1, v7

    if-gez p1, :cond_3

    :try_start_9
    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->callbackOnSourceInfoUpdate()V

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-wide v1

    :cond_3
    :try_start_a
    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getSize out error_code:-2018102642"

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->callbackOnSourceInfoUpdate()V

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const-wide/32 p0, -0x7849cd72

    return-wide p0

    :cond_4
    const-wide/32 v6, 0x989680

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    :try_start_c
    iget-object p1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mP2pTask:Lcom/mgtv/a/c;

    const/16 v1, 0x9

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/mgtv/a/c;->b()I

    move-result p1

    invoke-static {p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertTaskStatusCode(I)I

    move-result p1

    goto :goto_3

    :cond_5
    move p1, v1

    :goto_3
    add-int/lit16 p1, p1, 0x23aa

    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSize out"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCodeGetSize(II)I

    move-result p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    int-to-long v1, p1

    :try_start_d
    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->callbackOnSourceInfoUpdate()V

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    return-wide v1

    :cond_6
    :try_start_e
    iget-object v4, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLockObj:Ljava/lang/Object;

    const-wide/16 v5, 0xa

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v4

    :try_start_f
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    invoke-virtual {v1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;->clean()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isRequestAbort()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getSize out-2018111410"

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->callbackOnSourceInfoUpdate()V

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    const-wide/32 p0, -0x7849efb2

    return-wide p0

    :cond_8
    :try_start_11
    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSize out ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;->ret:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->P2PDebugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;->ret:J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->callbackOnSourceInfoUpdate()V

    monitor-exit v0

    return-wide v1

    :goto_5
    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->callbackOnSourceInfoUpdate()V

    throw p1

    :goto_6
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getVideoSourceType()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mVideoSourceType:I

    return p0
.end method

.method public isP2pTaskStart()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mP2pTask:Lcom/mgtv/a/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/c;->b()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRequestAbort()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mRequestAbort:Z

    return p0
.end method

.method public readAt(Ljava/lang/String;[BJJ)J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAt in url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, p3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",size:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p5

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",buffer:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p2

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->P2PDebugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isRequestAbort()Z

    move-result v0

    const-wide/16 v11, 0x0

    if-nez v0, :cond_8

    const/4 v0, 0x2

    invoke-direct {v1, v11, v12, v0, v2}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->checkHtmlM3u8(JILjava/lang/String;)J

    move-result-wide v13

    cmp-long v15, v13, v11

    if-ltz v15, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->blockReadThread()I

    move-result v15

    if-ltz v15, :cond_7

    invoke-direct/range {p0 .. p6}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->readAtImpl(Ljava/lang/String;[BJJ)J

    move-result-wide v13

    const-wide/32 v16, -0x7849cd70

    cmp-long v16, v13, v16

    if-nez v16, :cond_7

    const/4 v13, 0x1

    if-eq v15, v13, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isDataSourcePaused()Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "readAt isDataSourcePaused"

    invoke-static {v9, v10}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->P2PDebugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v9

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isP2pTaskStart()Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v15, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mConfig:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;

    invoke-virtual {v15}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;->getReciveDataTimeOutUs()I

    move-result v15

    int-to-long v11, v15

    cmp-long v11, v13, v11

    if-lez v11, :cond_6

    iget-object v4, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iget-object v4, v4, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;->url:Ljava/lang/String;

    invoke-static {v4}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iget-object v4, v4, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;->url:Ljava/lang/String;

    invoke-static {v4}, Lcom/hunantv/media/player/utils/UrlUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/hunantv/media/player/utils/UrlUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readAt lastErrorName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",targetName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->P2PDebugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iget v4, v4, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;->error_type:I

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "readAt out error_code:610"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iget v0, v0, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;->error_type:I

    invoke-static {v0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertErrorTypeStaticCode(I)I

    move-result v0

    const/16 v1, 0x262

    invoke-static {v0, v1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCodeReadAt(II)I

    move-result v0

    int-to-long v0, v0

    monitor-exit v3

    return-wide v0

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "readAt out mLastHttpError.error_code:911"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iget v0, v0, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;->error_type:I

    invoke-static {v0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertErrorTypeStaticCode(I)I

    move-result v0

    const/16 v1, 0x38f

    invoke-static {v0, v1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCodeReadAt(II)I

    move-result v0

    int-to-long v0, v0

    monitor-exit v3

    return-wide v0

    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "readAt out mLastHttpError.error_code:910"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iget v0, v0, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;->error_type:I

    invoke-static {v0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertErrorTypeStaticCode(I)I

    move-result v0

    const/16 v1, 0x38e

    invoke-static {v0, v1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCodeReadAt(II)I

    move-result v0

    int-to-long v0, v0

    monitor-exit v3

    return-wide v0

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAt out mLastHttpError.error_code:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iget v4, v4, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;->error_code:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iget v0, v0, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;->error_type:I

    invoke-static {v0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertErrorTypeStaticCode(I)I

    move-result v0

    iget-object v1, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iget v1, v1, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;->error_code:I

    invoke-static {v0, v1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCodeReadAt(II)I

    move-result v0

    int-to-long v0, v0

    monitor-exit v3

    return-wide v0

    :cond_2
    :goto_2
    invoke-direct {v1, v0, v2}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->checkM3u8SizeError(ILjava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAt out checkRet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    return-wide v4

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "readAt out mLastHttpError.error_code:-2018102643"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    const-wide/32 v0, -0x7849cd73

    return-wide v0

    :cond_4
    const-wide/32 v11, 0x989680

    cmp-long v0, v13, v11

    if-lez v0, :cond_6

    iget-object v0, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mP2pTask:Lcom/mgtv/a/c;

    const/16 v2, 0x9

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mgtv/a/c;->b()I

    move-result v0

    invoke-static {v0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertTaskStatusCode(I)I

    move-result v0

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    add-int/lit16 v0, v0, 0x23aa

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readAt out"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->convertPlayerErrorCodeReadAt(II)I

    move-result v0

    int-to-long v0, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :cond_6
    :try_start_1
    iget-object v0, v1, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLockObj:Ljava/lang/Object;

    const-wide/16 v11, 0xa

    invoke-virtual {v0, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    move-wide v11, v13

    goto :goto_4

    :cond_8
    move-wide v6, v11

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isRequestAbort()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "readAt out-2018111410"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    const-wide/32 v0, -0x7849efb2

    return-wide v0

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAt out ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->P2PDebugD(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    return-wide v11

    :goto_5
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 2

    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mRequestAbort:Z

    iget-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastHttpError:Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iput-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mLastM3u8Entity:Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;

    invoke-static {}, Lcom/mgtv/a/b;->d()Lcom/mgtv/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mOnNotifyMsgListener:Lcom/mgtv/a/a$a;

    invoke-virtual {v0, v1}, Lcom/mgtv/a/b;->b(Lcom/mgtv/a/a$a;)V

    invoke-direct {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "release out"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setInfoListener(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource$IInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mInfoListener:Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource$IInfoListener;

    return-void
.end method

.method public setLogTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mTagStr:Ljava/lang/String;

    return-void
.end method

.method public setP2pTask(Lcom/mgtv/a/c;)V
    .locals 1

    iput-object p1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mP2pTask:Lcom/mgtv/a/c;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/mgtv/a/b;->d()Lcom/mgtv/a/b;

    move-result-object p1

    iget-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mOnNotifyMsgListener:Lcom/mgtv/a/a$a;

    invoke-virtual {p1, v0}, Lcom/mgtv/a/b;->b(Lcom/mgtv/a/a$a;)V

    invoke-static {}, Lcom/mgtv/a/b;->d()Lcom/mgtv/a/b;

    move-result-object p1

    iget-object p0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->mOnNotifyMsgListener:Lcom/mgtv/a/a$a;

    invoke-virtual {p1, p0}, Lcom/mgtv/a/b;->a(Lcom/mgtv/a/a$a;)V

    :cond_0
    return-void
.end method
