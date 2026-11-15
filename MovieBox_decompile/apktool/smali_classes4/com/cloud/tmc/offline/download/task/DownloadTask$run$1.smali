.class public final Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/offline/download/task/DownloadTask;->run(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J \u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005H\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0016"
    }
    d2 = {
        "com/cloud/tmc/offline/download/task/DownloadTask$run$1",
        "Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;",
        "onDownloadProcess",
        "",
        "url",
        "",
        "size",
        "",
        "totalSize",
        "onError",
        "errCode",
        "",
        "errMsg",
        "onNoNeedDownload",
        "onUnZipDownloadFinish",
        "zipUnCompressPath",
        "zipFile",
        "Ljava/io/File;",
        "onZipDownloadCancel",
        "onZipDownloadFinish",
        "onZipDownloadStart",
        "onZipDownloaded",
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $downloadFailed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $downloadSuccess:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/offline/download/task/DownloadTask;Ljava/util/concurrent/CountDownLatch;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/task/DownloadTask;",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$downloadSuccess:Ljava/util/Set;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$downloadFailed:Ljava/util/Set;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onDownloadProcess(Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    const-string p2, "url"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->access$getDownloadStartTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    iget-object p2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 19
    .line 20
    invoke-static {p2}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->access$getDownloadStartTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide p3

    .line 28
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errMsg"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->access$getDownloadStartTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/Long;

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    sub-long v10, v0, v2

    .line 38
    .line 39
    sget-object v4, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    const/4 v7, 0x0

    .line 56
    move-object v6, p1

    .line 57
    move-object v9, p3

    .line 58
    invoke-virtual/range {v4 .. v11}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->trackDownloadRecord(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;J)V

    .line 59
    .line 60
    .line 61
    sget-object p2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 62
    .line 63
    iget-object p3, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 64
    .line 65
    invoke-virtual {p3}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    new-instance v7, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 70
    .line 71
    const/16 v5, 0xa

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v2, 0x0

    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v4, 0x0

    .line 77
    move-object v0, v7

    .line 78
    move-object v1, p1

    .line 79
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p3, v7}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    .line 83
    .line 84
    .line 85
    iget-object p2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$downloadFailed:Ljava/util/Set;

    .line 86
    .line 87
    check-cast p2, Ljava/util/Collection;

    .line 88
    .line 89
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public onNoNeedDownload(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$downloadSuccess:Ljava/util/Set;

    .line 7
    .line 8
    check-cast v0, Ljava/util/Collection;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onUnZipDownloadFinish(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 11

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "zipUnCompressPath"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "zipFile"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object p3, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 17
    .line 18
    invoke-virtual {p3, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->loadManifest(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_7

    .line 23
    .line 24
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$downloadSuccess:Ljava/util/Set;

    .line 25
    .line 26
    check-cast v1, Ljava/util/Collection;

    .line 27
    .line 28
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    new-instance v3, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 40
    .line 41
    const/4 v4, 0x4

    .line 42
    invoke-direct {v3, p1, p2, v4, v0}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    .line 46
    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, ""

    .line 67
    .line 68
    invoke-static {v1, v2}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p3, v0, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateVUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 80
    .line 81
    invoke-static {p2}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->access$getDownloadFinishTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Ljava/lang/Long;

    .line 90
    .line 91
    if-nez p2, :cond_1

    .line 92
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide p2

    .line 97
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 102
    .line 103
    .line 104
    move-result-wide p2

    .line 105
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->access$getDownloadStartTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Ljava/lang/Long;

    .line 116
    .line 117
    if-nez v0, :cond_2

    .line 118
    .line 119
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 124
    .line 125
    .line 126
    move-result-wide v0

    .line 127
    sub-long v9, p2, v0

    .line 128
    .line 129
    sget-object v3, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    .line 130
    .line 131
    iget-object p2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p2}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    const/16 p2, 0xc8

    .line 142
    .line 143
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    const-string v8, "success"

    .line 148
    .line 149
    const/4 v6, 0x1

    .line 150
    move-object v5, p1

    .line 151
    invoke-virtual/range {v3 .. v10}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->trackDownloadRecord(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;J)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 157
    .line 158
    .line 159
    const-class p1, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;

    .line 160
    .line 161
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    check-cast p2, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;

    .line 166
    .line 167
    iget-object p3, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 168
    .line 169
    invoke-virtual {p3}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    invoke-virtual {p3}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getAppInfo()Lcom/cloud/tmc/integration/model/AppInfoModel;

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    if-eqz p3, :cond_3

    .line 178
    .line 179
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getAppId()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    if-nez p3, :cond_4

    .line 184
    .line 185
    :cond_3
    move-object p3, v2

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getAppInfo()Lcom/cloud/tmc/integration/model/AppInfoModel;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    if-eqz v0, :cond_6

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getLogo()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    if-nez v0, :cond_5

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_5
    move-object v2, v0

    .line 206
    :cond_6
    :goto_1
    invoke-interface {p2, p3, v2}, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;->downloadIcon(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;

    .line 214
    .line 215
    invoke-interface {p1}, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;->scanForOfflineDownloadSuccess()V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :cond_7
    sget-object p3, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 220
    .line 221
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 222
    .line 223
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    new-instance v8, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 228
    .line 229
    const/16 v6, 0x8

    .line 230
    .line 231
    const/4 v7, 0x0

    .line 232
    const/4 v3, 0x0

    .line 233
    const/4 v4, 0x5

    .line 234
    const/4 v5, 0x0

    .line 235
    move-object v1, v8

    .line 236
    move-object v2, p1

    .line 237
    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p3, v0, v8}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    .line 241
    .line 242
    .line 243
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 244
    .line 245
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    if-nez p1, :cond_8

    .line 254
    .line 255
    const-string p1, "The"

    .line 256
    .line 257
    :cond_8
    new-instance p3, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string p1, " downloaded offline package is not legal! zipUnCompressPath: "

    .line 266
    .line 267
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    const-string p2, "TmcOfflineDownload: DownloadTask"

    .line 278
    .line 279
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 283
    .line 284
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 285
    .line 286
    .line 287
    return-void
.end method

.method public onZipDownloadCancel(Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->access$getDownloadStartTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/Long;

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    sub-long v10, v0, v2

    .line 33
    .line 34
    sget-object v4, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const/16 v0, 0x3e8

    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    const-string v9, "cancel"

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    move-object v6, p1

    .line 56
    invoke-virtual/range {v4 .. v11}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->trackDownloadRecord(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;J)V

    .line 57
    .line 58
    .line 59
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-instance v9, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 68
    .line 69
    const/16 v7, 0xa

    .line 70
    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v4, 0x0

    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    move-object v2, v9

    .line 76
    move-object v3, p1

    .line 77
    invoke-direct/range {v2 .. v8}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, v9}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$downloadFailed:Ljava/util/Set;

    .line 84
    .line 85
    check-cast v0, Ljava/util/Collection;

    .line 86
    .line 87
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public onZipDownloadFinish(Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v9, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 15
    .line 16
    const/16 v7, 0xa

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x0

    .line 22
    move-object v2, v9

    .line 23
    move-object v3, p1

    .line 24
    invoke-direct/range {v2 .. v8}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v9}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onZipDownloadStart(Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v9, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 15
    .line 16
    const/16 v7, 0xa

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    const/4 v6, 0x0

    .line 22
    move-object v2, v9

    .line 23
    move-object v3, p1

    .line 24
    invoke-direct/range {v2 .. v8}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v9}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->access$getDownloadStartTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public onZipDownloaded(Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v9, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 15
    .line 16
    const/16 v7, 0xa

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    move-object v2, v9

    .line 23
    move-object v3, p1

    .line 24
    invoke-direct/range {v2 .. v8}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v9}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->access$getDownloadFinishTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    return-void
.end method
