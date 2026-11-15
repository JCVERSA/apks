.class public Lcom/aliyun/downloader/DownloaderConfig;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public mConnectTimeoutS:I

.field public mHttpProxy:Ljava/lang/String;

.field public mNetworkTimeoutMs:J

.field public mReferrer:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/aliyun/downloader/DownloaderConfig;->mNetworkTimeoutMs:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/aliyun/downloader/DownloaderConfig;->mConnectTimeoutS:I

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    iput-object v0, p0, Lcom/aliyun/downloader/DownloaderConfig;->mHttpProxy:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/aliyun/downloader/DownloaderConfig;->mReferrer:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/aliyun/downloader/DownloaderConfig;->mUserAgent:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method
