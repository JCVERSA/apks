.class public final Lcom/vungle/ads/internal/downloader/DownloadRequest;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;
    }
.end annotation


# instance fields
.field private final asset:Lcom/vungle/ads/internal/model/AdAsset;

.field private final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private downloadDuration:Lcom/vungle/ads/x;

.field private final logEntry:Lcom/vungle/ads/internal/util/n;

.field private final priority:Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;Lcom/vungle/ads/internal/model/AdAsset;Lcom/vungle/ads/internal/util/n;)V
    .locals 1

    const-string v0, "priority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->priority:Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    iput-object p2, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->asset:Lcom/vungle/ads/internal/model/AdAsset;

    iput-object p3, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->logEntry:Lcom/vungle/ads/internal/util/n;

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;Lcom/vungle/ads/internal/model/AdAsset;Lcom/vungle/ads/internal/util/n;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/internal/downloader/DownloadRequest;-><init>(Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;Lcom/vungle/ads/internal/model/AdAsset;Lcom/vungle/ads/internal/util/n;)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final getAsset()Lcom/vungle/ads/internal/model/AdAsset;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->asset:Lcom/vungle/ads/internal/model/AdAsset;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->logEntry:Lcom/vungle/ads/internal/util/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->priority:Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;->getPriority()I

    move-result v0

    return v0
.end method

.method public final getPriority()Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->priority:Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isHtmlTemplate()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->asset:Lcom/vungle/ads/internal/model/AdAsset;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdAsset;->getAdIdentifier()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "vmURL"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final isMainVideo()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->asset:Lcom/vungle/ads/internal/model/AdAsset;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdAsset;->getAdIdentifier()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "MAIN_VIDEO"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final isTemplate()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->asset:Lcom/vungle/ads/internal/model/AdAsset;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdAsset;->getFileType()Lcom/vungle/ads/internal/model/AdAsset$FileType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/vungle/ads/internal/model/AdAsset$FileType;->ZIP:Lcom/vungle/ads/internal/model/AdAsset$FileType;

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->isHtmlTemplate()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public final startRecord()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/x;

    .line 2
    .line 3
    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->TEMPLATE_DOWNLOAD_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->downloadDuration:Lcom/vungle/ads/x;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/vungle/ads/x;->markStart()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final stopRecord()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->downloadDuration:Lcom/vungle/ads/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/x;->markEnd()V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->logEntry:Lcom/vungle/ads/internal/util/n;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->asset:Lcom/vungle/ads/internal/model/AdAsset;

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/AdAsset;->getServerPath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v0, v2, v3}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DownloadRequest{, priority="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->priority:Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", url=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->asset:Lcom/vungle/ads/internal/model/AdAsset;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/AdAsset;->getServerPath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "\', path=\'"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->asset:Lcom/vungle/ads/internal/model/AdAsset;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/AdAsset;->getLocalPath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, "\', cancelled="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", logEntry="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest;->logEntry:Lcom/vungle/ads/internal/util/n;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const/16 v1, 0x7d

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0
.end method
