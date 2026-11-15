.class public final Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/OnFileDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000E\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001c\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0016J:\u0010\u0014\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\u0019\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\u001a\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0016J$\u0010\u001b\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020 H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006!"
    }
    d2 = {
        "com/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1",
        "Lcom/cloud/tmc/kernel/proxy/network/OnFileDownloadCallback;",
        "offPkgConfig",
        "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "getOffPkgConfig",
        "()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "serverLastModify",
        "",
        "getServerLastModify",
        "()Ljava/lang/String;",
        "setServerLastModify",
        "(Ljava/lang/String;)V",
        "contentType",
        "",
        "contextType",
        "Lokhttp3/MediaType;",
        "onCancel",
        "",
        "url",
        "callbackId",
        "onFailed",
        "errorCode",
        "errorMsg",
        "e",
        "Ljava/io/IOException;",
        "onFinish",
        "onPrepare",
        "onProgress",
        "progress",
        "",
        "responseHeader",
        "headers",
        "Lokhttp3/Headers;",
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
.field final synthetic $downloadUrl:Ljava/lang/String;

.field final synthetic $error:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/IOException;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $filePath:Ljava/lang/String;

.field final synthetic $success:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

.field private serverLastModify:Ljava/lang/String;

.field final synthetic this$0:Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/io/IOException;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->$downloadUrl:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->$error:Lkotlin/jvm/functions/Function3;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->$success:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->this$0:Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->$filePath:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generatePrePullAppInfoOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public contentType(Lokhttp3/MediaType;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "contentType: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "PrePullAppInfoDownloadTask"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method public final getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getServerLastModify()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->serverLastModify:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onCancel url: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, " callbackId: "

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "PrePullAppInfoDownloadTask"

    .line 27
    .line 28
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->$error:Lkotlin/jvm/functions/Function3;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    const-string p2, "cancel download"

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    const-string v1, "106"

    .line 39
    .line 40
    invoke-interface {p1, v1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onFailed url: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, " errorCode: "

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, " errorMsg: "

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, " callbackId: "

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p5, "PrePullAppInfoDownloadTask"

    .line 43
    .line 44
    invoke-static {p5, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string p1, "D008"

    .line 48
    .line 49
    const-string p5, "D009"

    .line 50
    .line 51
    filled-new-array {p1, p5}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ljava/lang/Iterable;

    .line 60
    .line 61
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    sget-object p1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 68
    .line 69
    iget-object p2, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setLastUpdateTime(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string p2, "getStackTraceString(e)"

    .line 79
    .line 80
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-nez p2, :cond_0

    .line 88
    .line 89
    const-string p1, "No new version available"

    .line 90
    .line 91
    invoke-static {p3, p1}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :cond_0
    move-object v6, p1

    .line 96
    sget-object p1, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    .line 97
    .line 98
    iget-object p2, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->this$0:Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;

    .line 99
    .line 100
    invoke-static {p2}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;->access$getPreviousStep$p(Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iget-object p2, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    const-string v5, "102"

    .line 111
    .line 112
    const-string v1, "step_download"

    .line 113
    .line 114
    const/4 v3, 0x2

    .line 115
    move-object v0, p1

    .line 116
    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->trackPrePullCdnRecord(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->reportPrePullCdnRecord()V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->$filePath:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->delete(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->$error:Lkotlin/jvm/functions/Function3;

    .line 129
    .line 130
    if-eqz p1, :cond_2

    .line 131
    .line 132
    invoke-interface {p1, p2, p3, p4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    :cond_2
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onFinish url: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, " callbackId: "

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "PrePullAppInfoDownloadTask"

    .line 27
    .line 28
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->serverLastModify:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    sget-object p2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 38
    .line 39
    invoke-virtual {p2, v0, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setLastModify(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->$success:Lkotlin/jvm/functions/Function0;

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public onPrepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onPrepare url: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, " callbackId: "

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "PrePullAppInfoDownloadTask"

    .line 27
    .line 28
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onProgress url: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, " progress: "

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, " callbackId: "

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string p2, "PrePullAppInfoDownloadTask"

    .line 35
    .line 36
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public synthetic progressUpdate(Ljava/lang/String;ILjava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/cloud/tmc/kernel/proxy/network/a;->a(Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public responseHeader(Lokhttp3/Headers;)Z
    .locals 9

    .line 1
    const-string v0, "headers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

    .line 7
    .line 8
    new-instance v1, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1$responseHeader$isEquals$1;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1$responseHeader$isEquals$1;-><init>(Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->checkResponseHeader(Lokhttp3/Headers;Lkotlin/jvm/functions/Function1;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    new-instance v8, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->$downloadUrl:Ljava/lang/String;

    .line 22
    .line 23
    const/16 v6, 0xa

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    const/4 v5, 0x0

    .line 29
    move-object v1, v8

    .line 30
    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v8}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    return p1
.end method

.method public final setServerLastModify(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask$downloadFile$1;->serverLastModify:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
