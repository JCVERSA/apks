.class public final Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004J\"\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\rJ\u0010\u0010\u000e\u001a\u00020\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u0015\u001a\u00020\tJ\u0006\u0010\u0016\u001a\u00020\tJ\u0006\u0010\u0017\u001a\u00020\tJ\u0006\u0010\u0018\u001a\u00020\tJ:\u0010\u0019\u001a\u0016\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aj\n\u0012\u0004\u0012\u00020\u001b\u0018\u0001`\u001c2\u0006\u0010\u0007\u001a\u00020\u00042\u0016\u0008\u0002\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u0006\u0018\u00010\rJ\u000e\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020!J<\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00112\u0006\u0010$\u001a\u00020\u00042$\u0008\u0002\u0010%\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0012\u0004\u0012\u00020\u0006\u0018\u00010&J\u0014\u0010\'\u001a\u0004\u0018\u00010\u0004*\u00020\u000b2\u0006\u0010(\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;",
        "",
        "()V",
        "TAG",
        "",
        "checkCdnAppInfoFileAndDelete",
        "",
        "zipUnCompressPath",
        "checkResponseHeader",
        "",
        "headers",
        "Lokhttp3/Headers;",
        "block",
        "Lkotlin/Function1;",
        "generateDefaultFileNameByUrl",
        "url",
        "generateDownloadFile",
        "Ljava/io/File;",
        "offPkgConfig",
        "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "generatePrePullAppInfoOffPkgConfig",
        "isAllowRequest",
        "isDownloaded",
        "isNotLegalZip",
        "isParsed",
        "loadCdnAppInfo",
        "Ljava/util/ArrayList;",
        "Lcom/cloud/tmc/offline/download/model/PrePullAppInfo;",
        "Lkotlin/collections/ArrayList;",
        "error",
        "",
        "setZipDownloadStatus",
        "info",
        "Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;",
        "unzipFile",
        "srcFile",
        "destFile",
        "unzipCallBack",
        "Lkotlin/Function3;",
        "getHeaderIgnoreCase",
        "name",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

.field private static final TAG:Ljava/lang/String; = "PrePullAppInfoUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic loadCdnAppInfo$default(Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->loadCdnAppInfo(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic unzipFile$default(Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;Ljava/io/File;Ljava/lang/String;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->unzipFile(Ljava/io/File;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final checkCdnAppInfoFileAndDelete(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "PrePullAppInfoUtils"

    .line 2
    .line 3
    const-string v1, "zipUnCompressPath"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->isDir(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "check cdnAppInfoFile is not exist, zipUnCompressPath: "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 38
    .line 39
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils$checkCdnAppInfoFileAndDelete$listFiles$1;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils$checkCdnAppInfoFileAndDelete$listFiles$1;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static {v1, v2, p1}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->listFiles(Ljava/io/File;ZLkotlin/jvm/functions/Function1;)[Ljava/io/File;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    array-length v1, p1

    .line 50
    :goto_0
    if-ge v2, v1, :cond_2

    .line 51
    .line 52
    aget-object v3, p1, v2

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getDelete(Ljava/io/File;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v6, "check cdnAppInfoFile delete "

    .line 70
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v4, ", file: "

    .line 78
    .line 79
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    const-string p1, "check cdnAppInfoFile finished"

    .line 96
    .line 97
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    :goto_2
    return-void
.end method

.method public final checkResponseHeader(Lokhttp3/Headers;Lkotlin/jvm/functions/Function1;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "headers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generatePrePullAppInfoOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "Last-Modified"

    .line 16
    .line 17
    invoke-virtual {p0, p1, v1}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->getHeaderIgnoreCase(Lokhttp3/Headers;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "checkResponseHeader server lastModified: "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "PrePullAppInfoUtils"

    .line 39
    .line 40
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    sget-object v3, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 54
    .line 55
    invoke-virtual {v3, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getLastModify(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v4, "checkResponseHeader local lastModify: "

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-nez v3, :cond_1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const/4 v1, 0x1

    .line 89
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v3, "checkResponseHeader \u5224\u65ad\u672c\u5730\u4e0e\u670d\u52a1\u7aef LastModify \u662f\u5426\u76f8\u540c : "

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    if-nez v0, :cond_2

    .line 114
    .line 115
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_2
    return v0

    .line 119
    :cond_3
    :goto_0
    const-string v0, "checkResponseHeader local lastModify is null or empty"

    .line 120
    .line 121
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    return v1

    .line 128
    :cond_4
    :goto_1
    const-string p1, "checkResponseHeader server lastModify is null or empty"

    .line 129
    .line 130
    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return v1
.end method

.method public final generateDefaultFileNameByUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/FileUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, ".zip"

    .line 8
    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    :goto_0
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->takeIfNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    sget-object p1, Lcom/cloud/tmc/integration/utils/GenerateIdUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/GenerateIdUtils;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/GenerateIdUtils;->generateRandomId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :cond_2
    invoke-static {p1, v0}, Lcom/cloud/tmc/integration/utils/FileUtil;->addExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v1, "Generating file name by url: "

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "PrePullAppInfoUtils"

    .line 51
    .line 52
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object p1
.end method

.method public final generateDownloadFile(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Ljava/io/File;
    .locals 4

    .line 1
    const-string v0, "offPkgConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateDefaultZipFileInfo(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/tmc/offline/download/model/OfflineZipFileInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "Generating zip file info: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "PrePullAppInfoUtils"

    .line 30
    .line 31
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OfflineZipFileInfo;->getZipCacheAbsolutePath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :try_start_0
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createOrExistsDir(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    const-string v3, "Unable to create zip directory"

    .line 45
    .line 46
    invoke-static {v2, v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    :goto_0
    if-nez v1, :cond_0

    .line 51
    .line 52
    const-string p1, "\u521b\u5efa\u4e0b\u8f7d\u6587\u4ef6\u5939\u5931\u8d25"

    .line 53
    .line 54
    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    return-object p1

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generateDefaultFileNameByUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "Generating zip file name: "

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Ljava/io/File;

    .line 88
    .line 89
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object v1
.end method

.method public final generatePrePullAppInfoOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "pre_pull_appInfo"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->setGroup(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->setPkgUrl(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->setPriority(I)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "idle"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->setDownloadModel(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "0.0.0"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->setVersion(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->build()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public final getHeaderIgnoreCase(Lokhttp3/Headers;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "name"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    move-object p2, p1

    .line 31
    check-cast p2, Ljava/util/Collection;

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_1

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    move-object v0, p1

    .line 44
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    :cond_1
    return-object v0

    .line 47
    :goto_1
    const-string p2, "PrePullAppInfoUtils"

    .line 48
    .line 49
    const-string v0, "getHeaderIgnoreCase failed"

    .line 50
    .line 51
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    return-object p1
.end method

.method public final isAllowRequest()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generatePrePullAppInfoOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->lastUpdateTime(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    sub-long/2addr v3, v1

    .line 16
    const-wide/16 v5, 0x0

    .line 17
    .line 18
    cmp-long v1, v1, v5

    .line 19
    .line 20
    if-lez v1, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getPrefetchCdnAppInfoTimeInterval$com_cloud_tmc_offline_download()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    cmp-long v1, v3, v1

    .line 27
    .line 28
    if-lez v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 34
    :goto_1
    if-nez v1, :cond_3

    .line 35
    .line 36
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/TimeUtils;->getNowMills()J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    sub-long v2, v5, v3

    .line 41
    .line 42
    const/4 v4, 0x5

    .line 43
    invoke-static {v5, v6, v2, v3, v4}, Lcom/cloud/tmc/miniutils/util/TimeUtils;->getFitTimeSpan(JJI)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    const-string v0, "It"

    .line 54
    .line 55
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, " has only been "

    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, " since the last update or check"

    .line 72
    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v2, "PrePullAppInfoUtils"

    .line 81
    .line 82
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    return v1
.end method

.method public final isDownloaded()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generatePrePullAppInfoOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 6
    .line 7
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getStatus()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x2

    .line 20
    if-lt v0, v1, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0
.end method

.method public final isNotLegalZip()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generatePrePullAppInfoOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 6
    .line 7
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getStatus()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x5

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0
.end method

.method public final isParsed()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generatePrePullAppInfoOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 6
    .line 7
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getStatus()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x7

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0
.end method

.method public final loadCdnAppInfo(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/offline/download/model/PrePullAppInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "zipUnCompressPath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->isDir(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/io/IOException;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " is not a directory"

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_0
    return-object v1

    .line 41
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 42
    .line 43
    const-string v2, "allReleaseAppInfo.json"

    .line 44
    .line 45
    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    if-eqz p2, :cond_2

    .line 55
    .line 56
    new-instance p1, Ljava/io/IOException;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, " is not exists"

    .line 71
    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :cond_2
    return-object v1

    .line 86
    :cond_3
    const-string p1, "UTF-8"

    .line 87
    .line 88
    invoke-static {v0, p1}, Lcom/cloud/tmc/miniutils/util/FileIOUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string v0, "readFile2String(appInfoFile, \"UTF-8\")"

    .line 93
    .line 94
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :try_start_0
    new-instance v0, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils$loadCdnAppInfo$1;

    .line 98
    .line 99
    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils$loadCdnAppInfo$1;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v2, "object : TypeToken<Array\u2026rePullAppInfo>>() {}.type"

    .line 107
    .line 108
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    move-object v1, p1

    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception p1

    .line 120
    const-string v0, "PrePullAppInfoUtils"

    .line 121
    .line 122
    const-string v2, "parse Json fail"

    .line 123
    .line 124
    invoke-static {v0, v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    if-eqz p2, :cond_4

    .line 128
    .line 129
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_0
    return-object v1
.end method

.method public final setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V
    .locals 2

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generatePrePullAppInfoOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 11
    .line 12
    invoke-virtual {v1, v0, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final unzipFile(Ljava/io/File;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "srcFile"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "destFile"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/compress/CompressUtils;->unzip(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-interface {p3, v0, p2, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "Unable to unzip file, "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v1, "PrePullAppInfoUtils"

    .line 42
    .line 43
    invoke-static {v1, p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    if-eqz p3, :cond_0

    .line 47
    .line 48
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-interface {p3, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_0
    :goto_0
    return-void
.end method
