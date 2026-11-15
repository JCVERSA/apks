.class public final Lcom/cloud/tmc/offline/download/utils/OfflineUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0008J\u000e\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000cJ\u0010\u0010\u0011\u001a\u00020\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u0014\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0008J\u001c\u0010\u0015\u001a\u00020\u000f2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u0018\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0008J&\u0010\u0019\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0008J\u000e\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000cJ\u0018\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u0008H\u0002J.\u0010\u001f\u001a\u00020 2\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010!\u001a\u00020\"2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020%0$2\u0006\u0010&\u001a\u00020\u0008H\u0002J\u000e\u0010\'\u001a\u00020 2\u0006\u0010\u0012\u001a\u00020\u000cJ\"\u0010\'\u001a\u00020 2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00082\u0006\u0010(\u001a\u00020\u00082\u0008\u0010)\u001a\u0004\u0018\u00010*J\u000e\u0010+\u001a\u00020 2\u0006\u0010,\u001a\u00020\u000cJ\u0010\u0010-\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0008J\u000e\u0010.\u001a\u00020/2\u0006\u0010\u0012\u001a\u00020\u000cJ\u0012\u00100\u001a\u0004\u0018\u00010\u000c2\u0008\u0010)\u001a\u0004\u0018\u00010*J\u0006\u00101\u001a\u00020\u0008J\u0010\u00102\u001a\u0004\u0018\u00010*2\u0006\u0010\u0012\u001a\u00020\u000cJ\u0016\u00103\u001a\u00020 2\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u00104\u001a\u00020\u0008J\u0010\u00105\u001a\u00020\u00082\u0006\u00106\u001a\u00020\u0008H\u0002J\u000e\u00107\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0008J\n\u00108\u001a\u0004\u0018\u000109H\u0002J\u001a\u0010:\u001a\u0004\u0018\u00010*2\u0006\u0010,\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u000cH\u0002J$\u0010<\u001a\n\u0012\u0004\u0012\u00020=\u0018\u00010$2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0008J\u001e\u0010>\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0016\u001a\u00020\u00082\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0008H\u0002J\u0012\u0010?\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0016\u001a\u00020\u0008H\u0002J\u001e\u0010@\u001a\u0004\u0018\u00010A2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0008J\u001c\u0010B\u001a\u0004\u0018\u00010A2\u0006\u0010\u0010\u001a\u00020\u00082\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0008J\u0014\u0010C\u001a\u00020D2\n\u0010E\u001a\u0006\u0012\u0002\u0008\u00030FH\u0002J\u0010\u0010G\u001a\u00020\u000f2\u0006\u0010H\u001a\u00020\u000cH\u0002J\u0006\u0010I\u001a\u00020\u000fJ\u000e\u0010J\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000cJ\u0010\u0010K\u001a\u0004\u0018\u00010\u000c2\u0006\u00104\u001a\u00020\u0008J\u001a\u0010L\u001a\u00020 2\u0006\u0010L\u001a\u00020\u00082\u0008\u0008\u0002\u0010M\u001a\u00020\u000fH\u0002J\u0018\u0010N\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010O\u001a\u00020PH\u0002JG\u0010Q\u001a\u00020R2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010S\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010T\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010U\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010V\u001a\u0004\u0018\u00010W\u00a2\u0006\u0002\u0010XJ\u0018\u0010Y\u001a\u00020 2\u0006\u0010Z\u001a\u00020\u000f2\u0008\u0008\u0002\u0010[\u001a\u00020RJ\u001a\u0010\\\u001a\u0004\u0018\u00010A2\u0006\u0010\u0016\u001a\u00020\u00082\u0008\u0008\u0002\u0010]\u001a\u00020\u000fJ,\u0010^\u001a\u00020 2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000c2\u0006\u0010V\u001a\u00020W2\n\u0010E\u001a\u0006\u0012\u0002\u0008\u00030F2\u0006\u0010S\u001a\u00020\u0008J\u001a\u0010_\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0008J\u001a\u0010`\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00082\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0008H\u0002R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R.\u0010\n\u001a\"\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bj\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u000c`\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006a"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/utils/OfflineUtils;",
        "",
        "()V",
        "MAX_UPDATE_TIME",
        "",
        "getMAX_UPDATE_TIME",
        "()J",
        "TAG",
        "",
        "lastGetManifestTime",
        "manifestMemoryCache",
        "Ljava/util/HashMap;",
        "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "Lkotlin/collections/HashMap;",
        "checkMiniAppInDisableAntiShakeList",
        "",
        "appId",
        "checkNetwork",
        "offPkgConfig",
        "allowNetworkType",
        "checkOfflineLoadMiniAppLegal",
        "checkOfflinePackageDownloadStatus",
        "group",
        "packageName",
        "checkOfflinePackageVersion",
        "checkOfflineResourceLegal",
        "url",
        "checkParams",
        "checkVersion",
        "oldVersion",
        "newVersion",
        "convertFile2VUrl",
        "",
        "manager",
        "Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;",
        "files",
        "",
        "Ljava/io/File;",
        "path",
        "deleteOfflineZipUnCompressDir",
        "version",
        "updateEntity",
        "Lcom/cloud/h5update/bean/UpdateEntity;",
        "diffUpdateOfflinePkgConfig",
        "newOffPkgConfig",
        "enableVerifyServerFile",
        "generateDefaultZipFileInfo",
        "Lcom/cloud/tmc/offline/download/model/OfflineZipFileInfo;",
        "generateOffPkgConfig",
        "generateUniqueId",
        "generateUpdateEntity",
        "generateVUrl",
        "zipUnCompressPath",
        "getAllOfDigit",
        "s",
        "getAppId",
        "getContext",
        "Landroid/content/Context;",
        "getDiffUpdateEntity",
        "oldOffPkgConfig",
        "getOfflinePackageDownloadInfo",
        "Lcom/cloud/tmc/offline/download/model/ZipFileInfo;",
        "getOfflinePackageManifest",
        "getOfflinePackageManifestOrMemoryCache",
        "getOfflinePkgCachePath",
        "Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;",
        "getOfflinePkgFwCachePath",
        "getPointTaskStatus",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;",
        "result",
        "Lcom/cloud/tmc/offline/download/model/TaskResult;",
        "isAllowRequest",
        "config",
        "isMainThread",
        "isNeedDownload",
        "loadManifest",
        "log",
        "printStack",
        "metadataMatches",
        "response",
        "Lokhttp3/Response;",
        "pointCommonParams",
        "Landroid/os/Bundle;",
        "trigger",
        "isIdle",
        "consumeTime",
        "task",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/offline/download/task/base/ITask;)Landroid/os/Bundle;",
        "reportOfflinePkgApiUsageStatus",
        "hitStatus",
        "bundle",
        "searchOfflinePkgCachePath",
        "useMemory",
        "startTaskTrack",
        "verifyServerFile",
        "verifyServerUrl",
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
.field public static final INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

.field public static final TAG:Ljava/lang/String; = "TmcOfflineDownload: OfflineUtils"

.field private static lastGetManifestTime:J

.field private static final manifestMemoryCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->manifestMemoryCache:Ljava/util/HashMap;

    .line 14
    .line 15
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

.method public static final synthetic access$metadataMatches(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Lokhttp3/Response;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->metadataMatches(Ljava/lang/String;Lokhttp3/Response;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic checkOfflinePackageDownloadStatus$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
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
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflinePackageDownloadStatus(Ljava/lang/String;Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static synthetic checkOfflineResourceLegal$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflineResourceLegal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private final checkVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "\\."

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    new-instance v2, Lkotlin/text/Regex;

    .line 5
    .line 6
    invoke-direct {v2, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v2, p1, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/Collection;

    .line 15
    .line 16
    new-array v2, v3, [Ljava/lang/String;

    .line 17
    .line 18
    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, [Ljava/lang/String;

    .line 23
    .line 24
    new-instance v2, Lkotlin/text/Regex;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p2, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Ljava/util/Collection;

    .line 34
    .line 35
    new-array v0, v3, [Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, [Ljava/lang/String;

    .line 42
    .line 43
    array-length v0, p1

    .line 44
    array-length v2, p2

    .line 45
    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    move v2, v3

    .line 50
    :goto_0
    if-ge v2, v0, :cond_4

    .line 51
    .line 52
    array-length v4, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const-string v5, "0"

    .line 54
    .line 55
    if-ge v2, v4, :cond_0

    .line 56
    .line 57
    :try_start_1
    aget-object v4, p1, v2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception p1

    .line 61
    goto :goto_3

    .line 62
    :cond_0
    move-object v4, v5

    .line 63
    :goto_1
    invoke-direct {p0, v4}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getAllOfDigit(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    array-length v6, p2

    .line 72
    if-ge v2, v6, :cond_1

    .line 73
    .line 74
    aget-object v5, p2, v2

    .line 75
    .line 76
    :cond_1
    invoke-direct {p0, v5}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getAllOfDigit(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    if-ge v5, v4, :cond_2

    .line 85
    .line 86
    move v1, v3

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    if-le v5, v4, :cond_3

    .line 89
    .line 90
    :goto_2
    return v1

    .line 91
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    return v3

    .line 95
    :goto_3
    const-string p2, "TmcOfflineDownload: OfflineUtils"

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return v1
.end method

.method private final convertFile2VUrl(Ljava/lang/String;Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x2

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v0, v1, v3, v2, v3}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->listFiles$default(Ljava/io/File;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)[Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    array-length v2, v1

    .line 31
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->convertFile2VUrl(Ljava/lang/String;Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;Ljava/util/List;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string v1, "file.absolutePath"

    .line 72
    .line 73
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const-string v1, "file.name"

    .line 81
    .line 82
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/4 v7, 0x1

    .line 86
    move-object v2, p2

    .line 87
    move-object v4, p1

    .line 88
    move-object v6, p4

    .line 89
    invoke-interface/range {v2 .. v7}, Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;->generateVUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v3, "generateVUrl: fileName: "

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, ", vUrl: "

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const-string v1, "TmcOfflineDownload: OfflineUtils"

    .line 123
    .line 124
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_1
    return-void
.end method

.method private final getAllOfDigit(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "builder.toString()"

    .line 38
    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object p1
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final getDiffUpdateEntity(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/h5update/bean/UpdateEntity;
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateUpdateEntity(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/h5update/bean/UpdateEntity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateUpdateEntity(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/h5update/bean/UpdateEntity;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "[getDiffUpdateEntity] newUpdateEntity:"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v7, "TmcOfflineDownload: OfflineUtils"

    .line 32
    .line 33
    invoke-static {v7, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "[getDiffUpdateEntity] oldUpdateEntity:"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v7, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, ""

    .line 57
    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/cloud/h5update/bean/UpdateEntity;->getPreloadResource()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    check-cast v1, Ljava/lang/Iterable;

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_5

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Lcom/cloud/h5update/bean/PreloadResource;

    .line 83
    .line 84
    sget-object v3, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/cloud/h5update/bean/PreloadResource;->getUrl()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    if-nez v5, :cond_1

    .line 91
    .line 92
    move-object v5, v0

    .line 93
    :cond_1
    invoke-virtual {v3, v5}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getAppId(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    if-eqz p2, :cond_0

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/cloud/h5update/bean/UpdateEntity;->getPreloadResource()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    if-eqz v5, :cond_0

    .line 104
    .line 105
    check-cast v5, Ljava/lang/Iterable;

    .line 106
    .line 107
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_0

    .line 116
    .line 117
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    check-cast v6, Lcom/cloud/h5update/bean/PreloadResource;

    .line 122
    .line 123
    sget-object v8, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 124
    .line 125
    invoke-virtual {v6}, Lcom/cloud/h5update/bean/PreloadResource;->getUrl()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    if-nez v9, :cond_3

    .line 130
    .line 131
    move-object v9, v0

    .line 132
    :cond_3
    invoke-virtual {v8, v9}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getAppId(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-eqz v8, :cond_2

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/cloud/h5update/bean/PreloadResource;->getEncryptedStaticZip()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    invoke-virtual {v6}, Lcom/cloud/h5update/bean/PreloadResource;->getEncryptedStaticZip()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    if-eqz v8, :cond_4

    .line 155
    .line 156
    invoke-virtual {v2}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    invoke-virtual {v6}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    if-eqz v8, :cond_4

    .line 169
    .line 170
    invoke-virtual {v2}, Lcom/cloud/h5update/bean/PreloadResource;->getVersion()Ljava/lang/Long;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-virtual {v6}, Lcom/cloud/h5update/bean/PreloadResource;->getVersion()Ljava/lang/Long;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-nez v8, :cond_2

    .line 183
    .line 184
    :cond_4
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string v2, "[getDiffUpdateEntity] \u66f4\u65b0diffPreloadResource:"

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-static {v7, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    if-eqz p2, :cond_b

    .line 209
    .line 210
    invoke-virtual {p2}, Lcom/cloud/h5update/bean/UpdateEntity;->getPreloadResource()Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    if-eqz v1, :cond_b

    .line 215
    .line 216
    check-cast v1, Ljava/lang/Iterable;

    .line 217
    .line 218
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_b

    .line 227
    .line 228
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    check-cast v2, Lcom/cloud/h5update/bean/PreloadResource;

    .line 233
    .line 234
    sget-object v3, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 235
    .line 236
    invoke-virtual {v2}, Lcom/cloud/h5update/bean/PreloadResource;->getUrl()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    if-nez v5, :cond_7

    .line 241
    .line 242
    move-object v5, v0

    .line 243
    :cond_7
    invoke-virtual {v3, v5}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getAppId(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    const/4 v5, 0x0

    .line 248
    if-eqz p1, :cond_a

    .line 249
    .line 250
    invoke-virtual {p1}, Lcom/cloud/h5update/bean/UpdateEntity;->getPreloadResource()Ljava/util/List;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    if-eqz v6, :cond_a

    .line 255
    .line 256
    check-cast v6, Ljava/lang/Iterable;

    .line 257
    .line 258
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    :cond_8
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    if-eqz v8, :cond_a

    .line 267
    .line 268
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    check-cast v8, Lcom/cloud/h5update/bean/PreloadResource;

    .line 273
    .line 274
    sget-object v9, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 275
    .line 276
    invoke-virtual {v8}, Lcom/cloud/h5update/bean/PreloadResource;->getUrl()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v8

    .line 280
    if-nez v8, :cond_9

    .line 281
    .line 282
    move-object v8, v0

    .line 283
    :cond_9
    invoke-virtual {v9, v8}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getAppId(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v8

    .line 291
    if-eqz v8, :cond_8

    .line 292
    .line 293
    const/4 v5, 0x1

    .line 294
    goto :goto_2

    .line 295
    :cond_a
    if-nez v5, :cond_6

    .line 296
    .line 297
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    goto :goto_1

    .line 301
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    const-string v0, "[getDiffUpdateEntity] \u6700\u7ec8diffPreloadResource:"

    .line 307
    .line 308
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-static {v7, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const/4 p1, 0x0

    .line 322
    if-eqz p2, :cond_c

    .line 323
    .line 324
    invoke-virtual {p2}, Lcom/cloud/h5update/bean/UpdateEntity;->getExtraConfig()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    move-object v1, v0

    .line 329
    goto :goto_3

    .line 330
    :cond_c
    move-object v1, p1

    .line 331
    :goto_3
    if-eqz p2, :cond_d

    .line 332
    .line 333
    invoke-virtual {p2}, Lcom/cloud/h5update/bean/UpdateEntity;->getIgnoreCachedFiles()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    move-object v2, v0

    .line 338
    goto :goto_4

    .line 339
    :cond_d
    move-object v2, p1

    .line 340
    :goto_4
    if-eqz p2, :cond_e

    .line 341
    .line 342
    invoke-virtual {p2}, Lcom/cloud/h5update/bean/UpdateEntity;->getPackageName()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    move-object v3, v0

    .line 347
    goto :goto_5

    .line 348
    :cond_e
    move-object v3, p1

    .line 349
    :goto_5
    if-eqz p2, :cond_f

    .line 350
    .line 351
    invoke-virtual {p2}, Lcom/cloud/h5update/bean/UpdateEntity;->getUpdateMode()Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    move-object v5, v0

    .line 356
    goto :goto_6

    .line 357
    :cond_f
    move-object v5, p1

    .line 358
    :goto_6
    if-eqz p2, :cond_10

    .line 359
    .line 360
    invoke-virtual {p2}, Lcom/cloud/h5update/bean/UpdateEntity;->getVersion()Ljava/lang/Long;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    :cond_10
    move-object v6, p1

    .line 365
    new-instance p1, Lcom/cloud/h5update/bean/UpdateEntity;

    .line 366
    .line 367
    move-object v0, p1

    .line 368
    invoke-direct/range {v0 .. v6}, Lcom/cloud/h5update/bean/UpdateEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 369
    .line 370
    .line 371
    new-instance p2, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .line 375
    .line 376
    const-string v0, "[getDiffUpdateEntity] diffUpdateEntity:"

    .line 377
    .line 378
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p2

    .line 388
    invoke-static {v7, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    return-object p1
.end method

.method private final getMAX_UPDATE_TIME()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getOfflineMaxUpdateTimeInterval$com_cloud_tmc_offline_download()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static synthetic getOfflinePackageDownloadInfo$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
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
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getOfflinePackageDownloadInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final getOfflinePackageManifest(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_1a

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_1
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 25
    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    move-object v3, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move-object v3, p2

    .line 31
    :goto_1
    invoke-virtual {v2, v3}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getOfflinePkgConfigCache(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_7

    .line 36
    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_3
    if-eqz p2, :cond_4

    .line 45
    .line 46
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_5

    .line 51
    .line 52
    :cond_4
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_6

    .line 57
    .line 58
    :cond_5
    return-object v1

    .line 59
    :cond_6
    sget-object p2, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 60
    .line 61
    invoke-direct {p2, p1, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getOfflinePackageManifest(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1

    .line 66
    :cond_7
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateUpdateEntity(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/h5update/bean/UpdateEntity;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-nez v3, :cond_c

    .line 71
    .line 72
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_8

    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_8
    if-eqz p2, :cond_9

    .line 80
    .line 81
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_a

    .line 86
    .line 87
    :cond_9
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-eqz p2, :cond_b

    .line 92
    .line 93
    :cond_a
    return-object v1

    .line 94
    :cond_b
    sget-object p2, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 95
    .line 96
    invoke-direct {p2, p1, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getOfflinePackageManifest(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    return-object p1

    .line 101
    :cond_c
    invoke-virtual {v3}, Lcom/cloud/h5update/bean/UpdateEntity;->getPreloadResource()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-nez v3, :cond_11

    .line 106
    .line 107
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_d

    .line 112
    .line 113
    return-object v1

    .line 114
    :cond_d
    if-eqz p2, :cond_e

    .line 115
    .line 116
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_f

    .line 121
    .line 122
    :cond_e
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-eqz p2, :cond_10

    .line 127
    .line 128
    :cond_f
    return-object v1

    .line 129
    :cond_10
    sget-object p2, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 130
    .line 131
    invoke-direct {p2, p1, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getOfflinePackageManifest(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    return-object p1

    .line 136
    :cond_11
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    :cond_12
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_15

    .line 145
    .line 146
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    check-cast v4, Lcom/cloud/h5update/bean/PreloadResource;

    .line 151
    .line 152
    invoke-virtual {v4}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    if-nez v4, :cond_13

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_13
    sget-object v5, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 160
    .line 161
    invoke-virtual {v5, v2, v4}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v4}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getStatus()I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    const/4 v6, 0x4

    .line 170
    if-ne v5, v6, :cond_12

    .line 171
    .line 172
    invoke-virtual {v4}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    if-eqz v5, :cond_14

    .line 177
    .line 178
    invoke-virtual {v5}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    goto :goto_3

    .line 183
    :cond_14
    move-object v5, v1

    .line 184
    :goto_3
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    if-eqz v5, :cond_12

    .line 189
    .line 190
    invoke-virtual {v4}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    return-object p1

    .line 195
    :cond_15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_16

    .line 200
    .line 201
    return-object v1

    .line 202
    :cond_16
    if-eqz p2, :cond_17

    .line 203
    .line 204
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-nez v0, :cond_18

    .line 209
    .line 210
    :cond_17
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    if-eqz p2, :cond_19

    .line 215
    .line 216
    :cond_18
    return-object v1

    .line 217
    :cond_19
    invoke-direct {p0, p1, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getOfflinePackageManifest(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    return-object p1

    .line 222
    :cond_1a
    :goto_4
    const-string p1, "TmcOfflineDownload: OfflineUtils"

    .line 223
    .line 224
    const-string p2, "No package name"

    .line 225
    .line 226
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    return-object v1
.end method

.method static synthetic getOfflinePackageManifest$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
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
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getOfflinePackageManifest(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final getOfflinePackageManifestOrMemoryCache(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->manifestMemoryCache:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    sget-wide v4, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->lastGetManifestTime:J

    .line 16
    .line 17
    sub-long v4, v0, v4

    .line 18
    .line 19
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getOfflineManifestTimeInterval$com_cloud_tmc_offline_download()J

    .line 20
    .line 21
    .line 22
    move-result-wide v6

    .line 23
    cmp-long v4, v4, v6

    .line 24
    .line 25
    if-lez v4, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-object v3

    .line 29
    :cond_1
    :goto_0
    const/4 v3, 0x2

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-static {p0, p1, v4, v3, v4}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getOfflinePackageManifest$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_2
    sput-wide v0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->lastGetManifestTime:J

    .line 41
    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v0, "manifestCache \u5185\u5b58\u5931\u6548\uff0c\u4ece\u7f13\u5b58\u4e2d\u8bfb\u53d6\uff0c"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v0, "TmcOfflineDownload: OfflineUtils"

    .line 60
    .line 61
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v3
.end method

.method public static synthetic getOfflinePkgCachePath$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;
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
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getOfflinePkgCachePath(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic getOfflinePkgFwCachePath$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;
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
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getOfflinePkgFwCachePath(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final getPointTaskStatus(Lcom/cloud/tmc/offline/download/model/TaskResult;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;)",
            "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;"
        }
    .end annotation

    .line 1
    instance-of p1, p1, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->TASK_FINISH:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->TASK_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 9
    .line 10
    :goto_0
    return-object p1
.end method

.method private final isAllowRequest(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->lastUpdateTime(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sub-long/2addr v2, v0

    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v0, v0, v4

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-lez v0, :cond_2

    .line 18
    .line 19
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->isAppDebugAble()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-wide/32 v4, 0x1d4c0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getMAX_UPDATE_TIME()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    :goto_0
    cmp-long v0, v2, v4

    .line 34
    .line 35
    if-lez v0, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v0, v1

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 41
    :goto_2
    if-nez v0, :cond_4

    .line 42
    .line 43
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/TimeUtils;->getNowMills()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    sub-long v2, v4, v2

    .line 48
    .line 49
    const/4 v6, 0x5

    .line 50
    invoke-static {v4, v5, v2, v3, v6}, Lcom/cloud/tmc/miniutils/util/TimeUtils;->getFitTimeSpan(JJI)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    const-string p1, "It"

    .line 61
    .line 62
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, " has only been "

    .line 71
    .line 72
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, " since the last update or check, which does not meet the 24-hour update policy"

    .line 79
    .line 80
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const/4 v2, 0x2

    .line 88
    const/4 v3, 0x0

    .line 89
    invoke-static {p0, p1, v1, v2, v3}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->log$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    return v0
.end method

.method private final log(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Ljava/lang/Throwable;

    .line 4
    .line 5
    const-string v0, "Just Print"

    .line 6
    .line 7
    invoke-direct {p2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p2, ""

    .line 16
    .line 17
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " "

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "TmcOfflineDownload: OfflineUtils"

    .line 38
    .line 39
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method static synthetic log$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;ZILjava/lang/Object;)V
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
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->log(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final metadataMatches(Ljava/lang/String;Lokhttp3/Response;)Z
    .locals 8

    .line 1
    const-string v0, "TmcOfflineDownload: OfflineUtils"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const-string v3, "ETag"

    .line 9
    .line 10
    invoke-virtual {v2, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v4, "metadataMatches: Server eTag: "

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v3, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getOfflinePkgConfigCache(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    return v1

    .line 43
    :cond_0
    invoke-virtual {p0, v3}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateUpdateEntity(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/h5update/bean/UpdateEntity;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    return v1

    .line 50
    :cond_1
    invoke-virtual {v3}, Lcom/cloud/h5update/bean/UpdateEntity;->getExtraConfig()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-nez v3, :cond_2

    .line 55
    .line 56
    return v1

    .line 57
    :cond_2
    invoke-static {v3}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const/4 v4, 0x0

    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto/16 :goto_8

    .line 71
    .line 72
    :cond_3
    move-object v3, v4

    .line 73
    :goto_0
    if-eqz v3, :cond_4

    .line 74
    .line 75
    const-string v5, "extParams"

    .line 76
    .line 77
    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v3, :cond_4

    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    if-eqz v3, :cond_4

    .line 88
    .line 89
    const-string v5, "verifyServerFileMetadata"

    .line 90
    .line 91
    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-eqz v3, :cond_4

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    move-object v3, v4

    .line 103
    :goto_1
    if-eqz v3, :cond_8

    .line 104
    .line 105
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_7

    .line 114
    .line 115
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    move-object v6, v5

    .line 120
    check-cast v6, Lcom/google/gson/JsonElement;

    .line 121
    .line 122
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    if-eqz v6, :cond_6

    .line 127
    .line 128
    const-string v7, "appId"

    .line 129
    .line 130
    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    if-eqz v6, :cond_6

    .line 135
    .line 136
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    goto :goto_2

    .line 141
    :cond_6
    move-object v6, v4

    .line 142
    :goto_2
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-eqz v6, :cond_5

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_7
    move-object v5, v4

    .line 150
    :goto_3
    check-cast v5, Lcom/google/gson/JsonElement;

    .line 151
    .line 152
    if-eqz v5, :cond_8

    .line 153
    .line 154
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    if-eqz p1, :cond_8

    .line 159
    .line 160
    const-string v3, "metadata"

    .line 161
    .line 162
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    if-eqz p1, :cond_8

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    goto :goto_4

    .line 173
    :cond_8
    move-object p1, v4

    .line 174
    :goto_4
    if-eqz p1, :cond_c

    .line 175
    .line 176
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_b

    .line 185
    .line 186
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    move-object v5, v3

    .line 191
    check-cast v5, Lcom/google/gson/JsonElement;

    .line 192
    .line 193
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    if-eqz v5, :cond_a

    .line 198
    .line 199
    const-string v6, "url"

    .line 200
    .line 201
    invoke-virtual {v5, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    if-eqz v5, :cond_a

    .line 206
    .line 207
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    goto :goto_5

    .line 212
    :cond_a
    move-object v5, v4

    .line 213
    :goto_5
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    invoke-virtual {v6}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-eqz v5, :cond_9

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_b
    move-object v3, v4

    .line 233
    :goto_6
    check-cast v3, Lcom/google/gson/JsonElement;

    .line 234
    .line 235
    if-eqz v3, :cond_c

    .line 236
    .line 237
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    goto :goto_7

    .line 242
    :cond_c
    move-object p1, v4

    .line 243
    :goto_7
    if-eqz p1, :cond_d

    .line 244
    .line 245
    const-string p2, "eTag"

    .line 246
    .line 247
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    if-eqz p1, :cond_d

    .line 252
    .line 253
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    const-string p2, "metadataMatches: H5 platform eTag: "

    .line 263
    .line 264
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    return p1

    .line 282
    :goto_8
    const-string p2, "metadataMatches fail!"

    .line 283
    .line 284
    invoke-static {v0, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    .line 286
    .line 287
    return v1
.end method

.method public static synthetic pointCommonParams$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/offline/download/task/base/ITask;ILjava/lang/Object;)Landroid/os/Bundle;
    .locals 1

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    and-int/lit8 p7, p6, 0x4

    .line 13
    .line 14
    if-eqz p7, :cond_2

    .line 15
    .line 16
    move-object p3, v0

    .line 17
    :cond_2
    and-int/lit8 p7, p6, 0x8

    .line 18
    .line 19
    if-eqz p7, :cond_3

    .line 20
    .line 21
    move-object p4, v0

    .line 22
    :cond_3
    and-int/lit8 p6, p6, 0x10

    .line 23
    .line 24
    if-eqz p6, :cond_4

    .line 25
    .line 26
    move-object p5, v0

    .line 27
    :cond_4
    invoke-virtual/range {p0 .. p5}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->pointCommonParams(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/offline/download/task/base/ITask;)Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static synthetic reportOfflinePkgApiUsageStatus$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;ZLandroid/os/Bundle;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    new-instance p2, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->reportOfflinePkgApiUsageStatus(ZLandroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic searchOfflinePkgCachePath$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;ZILjava/lang/Object;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;
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
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->searchOfflinePkgCachePath(Ljava/lang/String;Z)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final verifyServerUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "TmcOfflineDownload: OfflineUtils"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_12

    .line 5
    .line 6
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_9

    .line 13
    .line 14
    :cond_0
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getOfflinePkgConfigCache(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateUpdateEntity(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/h5update/bean/UpdateEntity;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    invoke-virtual {v2}, Lcom/cloud/h5update/bean/UpdateEntity;->getExtraConfig()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-nez v2, :cond_3

    .line 35
    .line 36
    return v1

    .line 37
    :cond_3
    const/4 v3, 0x0

    .line 38
    :try_start_0
    invoke-static {v2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 45
    .line 46
    .line 47
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v2

    .line 50
    const-string v4, "Json parse exception:"

    .line 51
    .line 52
    invoke-static {v0, v4, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :cond_4
    move-object v2, v3

    .line 56
    :goto_0
    if-nez v2, :cond_5

    .line 57
    .line 58
    return v1

    .line 59
    :cond_5
    :try_start_1
    const-string v4, "extParams"

    .line 60
    .line 61
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_6

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-eqz v2, :cond_6

    .line 72
    .line 73
    const-string v4, "verifyServerFileMetadata"

    .line 74
    .line 75
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-eqz v2, :cond_6

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    goto :goto_1

    .line 86
    :catchall_1
    move-exception p1

    .line 87
    goto/16 :goto_8

    .line 88
    .line 89
    :cond_6
    move-object v2, v3

    .line 90
    :goto_1
    if-nez v2, :cond_7

    .line 91
    .line 92
    const-string p1, "verifyServerUrl: verifyServerFileMetadata \u6ca1\u6709\u914d\u7f6e"

    .line 93
    .line 94
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return v1

    .line 98
    :cond_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_a

    .line 107
    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    move-object v5, v4

    .line 113
    check-cast v5, Lcom/google/gson/JsonElement;

    .line 114
    .line 115
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    if-eqz v5, :cond_9

    .line 120
    .line 121
    const-string v6, "appId"

    .line 122
    .line 123
    invoke-virtual {v5, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    if-eqz v5, :cond_9

    .line 128
    .line 129
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    goto :goto_2

    .line 134
    :cond_9
    move-object v5, v3

    .line 135
    :goto_2
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    if-eqz v5, :cond_8

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_a
    move-object v4, v3

    .line 143
    :goto_3
    check-cast v4, Lcom/google/gson/JsonElement;

    .line 144
    .line 145
    if-eqz v4, :cond_b

    .line 146
    .line 147
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-eqz p1, :cond_b

    .line 152
    .line 153
    const-string v2, "metadata"

    .line 154
    .line 155
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    if-eqz p1, :cond_b

    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    goto :goto_4

    .line 166
    :cond_b
    move-object p1, v3

    .line 167
    :goto_4
    if-nez p1, :cond_c

    .line 168
    .line 169
    const-string p1, "verifyServerUrl: \u6ca1\u6709\u67e5\u8be2\u5230\u76f8\u5173\u7684\u914d\u7f6e\u4fe1\u606f"

    .line 170
    .line 171
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    return v1

    .line 175
    :cond_c
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    move v2, v1

    .line 180
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    const/4 v5, -0x1

    .line 185
    if-eqz v4, :cond_10

    .line 186
    .line 187
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    if-gez v2, :cond_d

    .line 192
    .line 193
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 194
    .line 195
    .line 196
    :cond_d
    check-cast v4, Lcom/google/gson/JsonElement;

    .line 197
    .line 198
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    if-eqz v4, :cond_e

    .line 203
    .line 204
    const-string v6, "url"

    .line 205
    .line 206
    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    if-eqz v4, :cond_e

    .line 211
    .line 212
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    goto :goto_6

    .line 217
    :cond_e
    move-object v4, v3

    .line 218
    :goto_6
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    if-eqz v4, :cond_f

    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_10
    move v2, v5

    .line 229
    :goto_7
    if-eq v2, v5, :cond_11

    .line 230
    .line 231
    const/4 v1, 0x1

    .line 232
    :cond_11
    return v1

    .line 233
    :goto_8
    const-string p2, ""

    .line 234
    .line 235
    invoke-static {v0, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    .line 237
    .line 238
    :cond_12
    :goto_9
    return v1
.end method


# virtual methods
.method public final checkMiniAppInDisableAntiShakeList(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "object : TypeToken<ArrayList<String>>() {}.type"

    .line 2
    .line 3
    const-string v1, "[\"1000886706715795456\"]"

    .line 4
    .line 5
    const-string v2, "TmcOfflineDownload: OfflineUtils"

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    :try_start_0
    const-class v3, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 18
    .line 19
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 24
    .line 25
    const-string v4, "miniOfflineDownloadDisableAntiShake"

    .line 26
    .line 27
    invoke-interface {v3, v4, v1}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v3

    .line 33
    const-string v4, "checkMiniAppInDisableAntiShakeList failed!"

    .line 34
    .line 35
    invoke-static {v2, v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    move-object v3, v1

    .line 39
    :goto_0
    :try_start_1
    const-string v4, "whiteListStr"

    .line 40
    .line 41
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v4, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$checkMiniAppInDisableAntiShakeList$whiteList$1;

    .line 45
    .line 46
    invoke-direct {v4}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$checkMiniAppInDisableAntiShakeList$whiteList$1;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catchall_1
    move-exception v3

    .line 64
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :try_start_2
    new-instance v3, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$checkMiniAppInDisableAntiShakeList$whiteList$2;

    .line 68
    .line 69
    invoke-direct {v3}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$checkMiniAppInDisableAntiShakeList$whiteList$2;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 84
    .line 85
    :goto_1
    move-object v3, v0

    .line 86
    goto :goto_2

    .line 87
    :catchall_2
    move-exception v0

    .line 88
    const-string v1, ""

    .line 89
    .line 90
    invoke-static {v2, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :goto_2
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v4, "checkMiniAppInDisableAntiShakeList: \u5f53\u524d\u5c0f\u7a0b\u5e8f\u662f\u5426\u5728\u7981\u7528\u79bb\u7ebf\u52a0\u8f7d\u9632\u6296\u540d\u5355\u4e2d\uff1a"

    .line 109
    .line 110
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, " \u7981\u7528\u540d\u5355\uff1a"

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    return p1

    .line 136
    :cond_1
    :goto_3
    const/4 p1, 0x0

    .line 137
    return p1
.end method

.method public final checkNetwork(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Z
    .locals 1

    const-string v0, "offPkgConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getNetworkType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkNetwork(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final checkNetwork(Ljava/lang/String;)Z
    .locals 6

    .line 2
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->getDetailNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getDetailNetworkType(context)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "WIFI"

    const-string v4, "5G"

    const-string v5, "4G"

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "weak"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    const-string v1, "2G"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 6
    :sswitch_1
    const-string v2, "strong"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 8
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 10
    :sswitch_2
    const-string v2, "only5g"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 12
    :sswitch_3
    const-string v2, "only4g"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 14
    :sswitch_4
    const-string v2, "medium"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    .line 15
    :cond_6
    const-string v1, "3G"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 16
    :sswitch_5
    const-string v2, "onlyWifi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    .line 17
    :cond_7
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_8
    :goto_0
    if-eqz v1, :cond_9

    .line 18
    const-string v2, "\u7b26\u5408"

    goto :goto_1

    :cond_9
    const-string v2, "\u4e0d\u7b26\u5408"

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkNetwork: current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " target:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u662f\u5426\u7b26\u5408\u8981\u6c42\uff1a"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    const-string v0, "TmcOfflineDownload: OfflineUtils"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7b52731f -> :sswitch_5
        -0x4041708b -> :sswitch_4
        -0x3c5514a1 -> :sswitch_3
        -0x3c551482 -> :sswitch_2
        -0x352a8969 -> :sswitch_1
        0x379f78 -> :sswitch_0
    .end sparse-switch
.end method

.method public final checkOfflineLoadMiniAppLegal(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "TmcOfflineDownload: OfflineUtils"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_9

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_4

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v2, v3

    .line 26
    :goto_0
    if-eqz v2, :cond_8

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_2

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_2
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v4, 0x1

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    return v4

    .line 43
    :cond_3
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getOfflinePkgConfigCache(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getExtParams()Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->getAuthorizedMiniApp()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    :cond_4
    const/4 v0, -0x1

    .line 62
    if-eqz v3, :cond_6

    .line 63
    .line 64
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    move v3, v1

    .line 69
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_6

    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v5, p1, v4}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_5

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_6
    move v3, v0

    .line 92
    :goto_2
    if-eq v3, v0, :cond_7

    .line 93
    .line 94
    move v1, v4

    .line 95
    :cond_7
    return v1

    .line 96
    :cond_8
    :goto_3
    const-string p1, "packageName is null or empty"

    .line 97
    .line 98
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return v1

    .line 102
    :cond_9
    :goto_4
    const-string p1, "appId is null or empty"

    .line 103
    .line 104
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return v1
.end method

.method public final checkOfflinePackageDownloadStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_10

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_7

    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v1, v2

    .line 25
    :goto_0
    if-eqz v1, :cond_10

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_2

    .line 32
    .line 33
    goto/16 :goto_7

    .line 34
    .line 35
    :cond_2
    if-nez p2, :cond_3

    .line 36
    .line 37
    move-object v3, p1

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    move-object v3, p2

    .line 40
    :goto_1
    const/4 v4, 0x1

    .line 41
    invoke-virtual {p0, v3, v4}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->searchOfflinePkgCachePath(Ljava/lang/String;Z)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_4

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;->getZipFileInfo()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    goto :goto_2

    .line 52
    :cond_4
    move-object v3, v2

    .line 53
    :goto_2
    if-eqz v3, :cond_8

    .line 54
    .line 55
    check-cast v3, Ljava/lang/Iterable;

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_7

    .line 66
    .line 67
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    move-object v5, v4

    .line 72
    check-cast v5, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;

    .line 73
    .line 74
    invoke-virtual {v5}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    if-eqz v5, :cond_6

    .line 79
    .line 80
    invoke-virtual {v5}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    goto :goto_3

    .line 85
    :cond_6
    move-object v5, v2

    .line 86
    :goto_3
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_5

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_7
    move-object v4, v2

    .line 94
    :goto_4
    check-cast v4, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_8
    move-object v4, v2

    .line 98
    :goto_5
    if-eqz v4, :cond_9

    .line 99
    .line 100
    invoke-virtual {v4}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->getZipUnCompressPath()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    :cond_9
    if-eqz v2, :cond_b

    .line 105
    .line 106
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-nez v3, :cond_a

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_a
    new-instance p1, Ljava/io/File;

    .line 114
    .line 115
    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Ljava/io/File;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    return p1

    .line 123
    :cond_b
    :goto_6
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_c

    .line 128
    .line 129
    return v0

    .line 130
    :cond_c
    if-eqz p2, :cond_d

    .line 131
    .line 132
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-nez v2, :cond_e

    .line 137
    .line 138
    :cond_d
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    if-eqz p2, :cond_f

    .line 143
    .line 144
    :cond_e
    return v0

    .line 145
    :cond_f
    invoke-virtual {p0, p1, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflinePackageDownloadStatus(Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    return p1

    .line 150
    :cond_10
    :goto_7
    return v0
.end method

.method public final checkOfflinePackageVersion(Ljava/lang/String;)Z
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "checkOfflinePackageVersion : appId: "

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "TmcOfflineDownload: OfflineUtils"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p1, :cond_9

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getCheckVersionEnable$com_cloud_tmc_offline_download()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x1

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    const-string p1, "Checking offline package version is not enabled"

    .line 42
    .line 43
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v3

    .line 47
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v4, "Current appId is: "

    .line 53
    .line 54
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v2, "100000"

    .line 68
    .line 69
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    return v3

    .line 76
    :cond_2
    const/4 v2, 0x0

    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-eqz v4, :cond_3

    .line 82
    .line 83
    const-class v5, Lcom/cloud/tmc/integration/proxy/IAppInfoManagerProxy;

    .line 84
    .line 85
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    check-cast v5, Lcom/cloud/tmc/integration/proxy/IAppInfoManagerProxy;

    .line 90
    .line 91
    sget-object v6, Lcom/cloud/tmc/integration/model/AppInfoQuery;->Companion:Lcom/cloud/tmc/integration/model/AppInfoQuery$Companion;

    .line 92
    .line 93
    invoke-virtual {v6, p1}, Lcom/cloud/tmc/integration/model/AppInfoQuery$Companion;->make(Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppInfoQuery;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-interface {v5, v4, v6}, Lcom/cloud/tmc/integration/proxy/IAppInfoManagerProxy;->getAppModelHasNotOffline(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 98
    .line 99
    .line 100
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 102
    :catch_0
    move-exception v4

    .line 103
    const-string v5, "getAppModelHasNotOffline is failed"

    .line 104
    .line 105
    invoke-static {v1, v5, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    :goto_0
    if-eqz v2, :cond_8

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    if-eqz v2, :cond_8

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/ExtendModel;->getOfflinePackageVersion()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-nez v2, :cond_4

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getOfflinePackageManifestOrMemoryCache(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    if-nez v4, :cond_5

    .line 128
    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v3, "checkOfflinePackageManifest: \u8bfb\u53d6\u4e0d\u5230 "

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string p1, " \u914d\u7f6e\u7684\u79bb\u7ebf\u5305 manifest\uff0c\u4e0d\u901a\u8fc7"

    .line 143
    .line 144
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return v0

    .line 155
    :cond_5
    invoke-virtual {v4}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getVersion()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    if-nez p1, :cond_6

    .line 160
    .line 161
    const-string p1, "checkOfflinePackageVersion: \u79bb\u7ebf\u5305 manifest \u4e2d\u6ca1\u6709\u914d\u7f6e offlinePackageVersion\uff0c\u5219\u4e0d\u901a\u8fc7"

    .line 162
    .line 163
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return v0

    .line 167
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v4, "checkOfflinePackageVersion: offlinePackageVersion: "

    .line 173
    .line 174
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v4, " version: "

    .line 181
    .line 182
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_7

    .line 200
    .line 201
    return v3

    .line 202
    :cond_7
    invoke-direct {p0, v2, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    return p1

    .line 207
    :cond_8
    :goto_1
    const-string p1, "checkOfflinePackageVersion: appInfo \u4e2d\u6ca1\u6709\u914d\u7f6e offlinePackageVersion\uff0c\u5219\u4f7f\u7528"

    .line 208
    .line 209
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    return v3

    .line 213
    :cond_9
    :goto_2
    return v0
.end method

.method public final checkOfflineResourceLegal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "TmcOfflineDownload: OfflineUtils"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-nez v5, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_2

    .line 26
    .line 27
    :cond_1
    :goto_0
    move-object/from16 v2, p0

    .line 28
    .line 29
    goto/16 :goto_b

    .line 30
    .line 31
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const/4 v6, 0x0

    .line 36
    if-eqz v5, :cond_3

    .line 37
    .line 38
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    move-object v5, v6

    .line 44
    :goto_1
    if-eqz v5, :cond_4

    .line 45
    .line 46
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-nez v7, :cond_5

    .line 51
    .line 52
    :cond_4
    move-object/from16 v2, p0

    .line 53
    .line 54
    goto/16 :goto_a

    .line 55
    .line 56
    :cond_5
    sget-object v7, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 57
    .line 58
    if-nez v2, :cond_6

    .line 59
    .line 60
    move-object v8, v0

    .line 61
    goto :goto_2

    .line 62
    :cond_6
    move-object v8, v2

    .line 63
    :goto_2
    invoke-virtual {v7, v8}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getOfflinePkgConfigCacheOrMemoryCache(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    if-eqz v7, :cond_7

    .line 68
    .line 69
    invoke-virtual {v7}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getExtParams()Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    if-eqz v7, :cond_7

    .line 74
    .line 75
    invoke-virtual {v7}, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->getPackageInclude()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    goto :goto_3

    .line 80
    :cond_7
    move-object v7, v6

    .line 81
    :goto_3
    const/4 v8, 0x2

    .line 82
    const-string v9, ".so"

    .line 83
    .line 84
    invoke-static {v1, v9, v4, v8, v6}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    const/4 v8, 0x1

    .line 89
    if-eqz v6, :cond_8

    .line 90
    .line 91
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isEnableAhaSoFormatConvert$com_cloud_tmc_offline_download()Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_8

    .line 96
    .line 97
    const-string v6, "@===.zip"

    .line 98
    .line 99
    invoke-static {v1, v9, v6, v8}, Lkotlin/text/StringsKt;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    new-instance v9, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v10, "so file check replace success! url: "

    .line 109
    .line 110
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-static {v3, v9}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    move-object v10, v6

    .line 124
    goto :goto_4

    .line 125
    :cond_8
    move-object v10, v1

    .line 126
    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/cloud/tmc/integration/utils/FileUtil;->getVhost(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    new-instance v9, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v6, "/"

    .line 139
    .line 140
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    const/4 v14, 0x4

    .line 148
    const/4 v15, 0x0

    .line 149
    const-string v12, ""

    .line 150
    .line 151
    const/4 v13, 0x0

    .line 152
    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    :try_start_0
    invoke-static {v6}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    const/16 v9, 0xa

    .line 161
    .line 162
    invoke-virtual {v6, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    const-string v9, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 167
    .line 168
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .line 170
    .line 171
    goto :goto_5

    .line 172
    :catchall_0
    const-string v6, ""

    .line 173
    .line 174
    :goto_5
    if-eqz v7, :cond_c

    .line 175
    .line 176
    check-cast v7, Ljava/lang/Iterable;

    .line 177
    .line 178
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    if-eqz v9, :cond_c

    .line 187
    .line 188
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    check-cast v9, Lcom/cloud/tmc/offline/download/model/PackageInclude;

    .line 193
    .line 194
    invoke-virtual {v9}, Lcom/cloud/tmc/offline/download/model/PackageInclude;->getAppId()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    if-eqz v10, :cond_9

    .line 199
    .line 200
    invoke-static {v10, v0, v8}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 201
    .line 202
    .line 203
    move-result v10

    .line 204
    if-ne v10, v8, :cond_9

    .line 205
    .line 206
    invoke-virtual {v9}, Lcom/cloud/tmc/offline/download/model/PackageInclude;->getPaths()Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    const/4 v10, -0x1

    .line 211
    if-eqz v9, :cond_b

    .line 212
    .line 213
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    move v11, v4

    .line 218
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    if-eqz v12, :cond_b

    .line 223
    .line 224
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    check-cast v12, Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {v12, v6, v8}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 231
    .line 232
    .line 233
    move-result v12

    .line 234
    if-eqz v12, :cond_a

    .line 235
    .line 236
    goto :goto_7

    .line 237
    :cond_a
    add-int/lit8 v11, v11, 0x1

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_b
    move v11, v10

    .line 241
    :goto_7
    if-eq v11, v10, :cond_9

    .line 242
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    const-string v2, "file check success! url: "

    .line 249
    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    return v8

    .line 264
    :cond_c
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    if-eqz v3, :cond_d

    .line 269
    .line 270
    return v4

    .line 271
    :cond_d
    if-eqz v2, :cond_f

    .line 272
    .line 273
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-nez v3, :cond_e

    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_e
    move v8, v4

    .line 281
    :cond_f
    :goto_8
    if-eqz v8, :cond_10

    .line 282
    .line 283
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-eqz v2, :cond_11

    .line 288
    .line 289
    :cond_10
    move-object/from16 v2, p0

    .line 290
    .line 291
    goto :goto_9

    .line 292
    :cond_11
    move-object/from16 v2, p0

    .line 293
    .line 294
    invoke-virtual {v2, v0, v1, v5}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflineResourceLegal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    return v0

    .line 299
    :goto_9
    return v4

    .line 300
    :goto_a
    const-string v0, "packageName is null or empty!"

    .line 301
    .line 302
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    return v4

    .line 306
    :goto_b
    const-string v0, "appId or url is empty!"

    .line 307
    .line 308
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    return v4
.end method

.method public final checkParams(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Z
    .locals 3

    .line 1
    const-string v0, "offPkgConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, "TmcOfflineDownload: OfflineUtils"

    .line 12
    .line 13
    if-eqz v0, :cond_7

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getNetworkType()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_6

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_5

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgEncrypted()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const/4 p1, 0x1

    .line 62
    return p1

    .line 63
    :cond_4
    :goto_0
    const-string p1, "No pkgEncrypted specified for package config"

    .line 64
    .line 65
    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return v1

    .line 69
    :cond_5
    :goto_1
    const-string p1, "No pkgUrl specified for package config"

    .line 70
    .line 71
    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return v1

    .line 75
    :cond_6
    :goto_2
    const-string p1, "No networkType specified for package config"

    .line 76
    .line 77
    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return v1

    .line 81
    :cond_7
    :goto_3
    const-string p1, "No group specified for package config"

    .line 82
    .line 83
    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return v1
.end method

.method public final deleteOfflineZipUnCompressDir(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V
    .locals 2

    const-string v0, "offPkgConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateUpdateEntity(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/h5update/bean/UpdateEntity;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->deleteOfflineZipUnCompressDir(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/h5update/bean/UpdateEntity;)V

    return-void
.end method

.method public final deleteOfflineZipUnCompressDir(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/h5update/bean/UpdateEntity;)V
    .locals 10

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u68c0\u67e5\u5220\u9664\u65e7\u8d44\u6e90\u6587\u4ef6\uff0cgroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcOfflineDownload: OfflineUtils"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u68c0\u67e5\u5220\u9664\u65e7\u8d44\u6e90\u6587\u4ef6\uff0cupdateEntity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p3}, Lcom/cloud/h5update/bean/UpdateEntity;->getPreloadResource()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/Iterable;

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/h5update/bean/PreloadResource;

    .line 8
    invoke-virtual {v2}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9
    sget-object v3, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    invoke-virtual {v3, p1, v2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getZipDownloadStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    .line 11
    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getZipUnCompressPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 12
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {v5}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 15
    invoke-static {v5, v3, v6, v4, v6}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->listFiles$default(Ljava/io/File;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)[Ljava/io/File;

    move-result-object v4

    const-class v5, Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;

    .line 16
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;

    .line 17
    array-length v6, v4

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v6, :cond_5

    aget-object v9, v4, v8

    if-eqz v5, :cond_4

    .line 18
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9, v3}, Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;->removeByFilePath(Ljava/lang/String;Z)V

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 19
    :cond_5
    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getZipUnCompressPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cloud/tmc/miniutils/util/FileUtils;->delete(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 20
    invoke-virtual {v2, v7}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->setStatus(I)V

    .line 21
    sget-object v4, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    invoke-virtual {v4, p1, p2, v2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setZipDownloadStatus(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    .line 22
    sget-object v4, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v4, p3}, Lcom/cloud/h5update/TH5Update$a;->b(Lcom/cloud/h5update/bean/UpdateEntity;)V

    const-class v4, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;

    .line 23
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;

    .line 24
    invoke-interface {v4}, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;->scanForOfflineDownloadDelete()V

    .line 25
    :cond_6
    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getZipUnCompressPath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5220\u9664\u65e7\u7684\u6587\u4ef6\u8d44\u6e90\u7ed3\u679c\u4e3a\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c\u6587\u4ef6\u5939\u8def\u5f84\uff1a"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final diffUpdateOfflinePkgConfig(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V
    .locals 6

    .line 1
    const-string v0, "newOffPkgConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getOfflinePkgConfigCache(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getExtInfo()Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getExtParams()Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v5, "diff update offline pkg config before, extInfo: "

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, " extParams: "

    .line 41
    .line 42
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "TmcOfflineDownload: OfflineUtils"

    .line 53
    .line 54
    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getExtInfo()Ljava/util/HashMap;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v1, v3}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->setExtInfo(Ljava/util/HashMap;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getExtParams()Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v1, p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->setExtParams(Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setOfflinePkgConfigCache(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getExtInfo()Ljava/util/HashMap;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getExtParams()Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v3, "diff update offline pkg config after, extInfo: "

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {v4, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final enableVerifyServerFile(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "TmcOfflineDownload: OfflineUtils"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_7

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getOfflinePkgConfigCache(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateUpdateEntity(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/h5update/bean/UpdateEntity;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/h5update/bean/UpdateEntity;->getExtraConfig()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    return v1

    .line 36
    :cond_3
    const/4 v2, 0x0

    .line 37
    :try_start_0
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 44
    .line 45
    .line 46
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :cond_4
    :goto_0
    if-nez v2, :cond_5

    .line 53
    .line 54
    return v1

    .line 55
    :cond_5
    :try_start_1
    const-string p1, "extParams"

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_6

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_6

    .line 68
    .line 69
    const-string v2, "verifyServerFile"

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_6

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 78
    .line 79
    .line 80
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    goto :goto_1

    .line 82
    :catchall_1
    move-exception p1

    .line 83
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    :cond_6
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v2, "enableVerifyServerFile: \u542f\u7528\u9a8c\u8bc1\u670d\u52a1\u5668\u6587\u4ef6\u5f00\u5173 verifyServerFile="

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_7
    :goto_2
    return v1
.end method

.method public final generateDefaultZipFileInfo(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/tmc/offline/download/model/OfflineZipFileInfo;
    .locals 4

    .line 1
    const-string v0, "offPkgConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getType()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-class v1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 11
    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const v3, -0x3df94319

    .line 19
    .line 20
    .line 21
    if-eq v2, v3, :cond_3

    .line 22
    .line 23
    const v3, 0x298bf87

    .line 24
    .line 25
    .line 26
    if-eq v2, v3, :cond_1

    .line 27
    .line 28
    const v3, 0x3f73626a

    .line 29
    .line 30
    .line 31
    if-eq v2, v3, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v2, "miniapp"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v2, "miniframework"

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getAppBaseDownloadPath(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    const-string v2, "normal"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getAppBaseFilePath(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, "/temp_data"

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    goto :goto_1

    .line 108
    :cond_5
    :goto_0
    const-string v0, "TmcOfflineDownload: OfflineUtils"

    .line 109
    .line 110
    const-string v2, "offline_pkg_manifest type is unknown"

    .line 111
    .line 112
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getAppBaseDownloadPath(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    :goto_1
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v2, "/"

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    new-instance v1, Lcom/cloud/tmc/offline/download/model/OfflineZipFileInfo;

    .line 158
    .line 159
    const-string v2, "zipDirPath"

    .line 160
    .line 161
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-direct {v1, v0, p1}, Lcom/cloud/tmc/offline/download/model/OfflineZipFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return-object v1
.end method

.method public final generateOffPkgConfig(Lcom/cloud/h5update/bean/UpdateEntity;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/cloud/h5update/bean/UpdateEntity;->getExtraConfig()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$generateOffPkgConfig$1$fromJson$1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$generateOffPkgConfig$1$fromJson$1;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "object : TypeToken<OffPkgConfig>() {}.type"

    .line 20
    .line 21
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 29
    .line 30
    :cond_0
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/h5update/bean/UpdateEntity;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->setGroup(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    if-nez v0, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/h5update/bean/UpdateEntity;->getVersion()Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->setVersion(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_1
    if-nez v0, :cond_3

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->setExtraConfig(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_2
    return-object v0
.end method

.method public final generateUniqueId()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Lkotlin/ranges/IntRange;

    .line 6
    .line 7
    const v3, 0x186a0

    .line 8
    .line 9
    .line 10
    const v4, 0xf423f

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v3, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sget-object v3, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 17
    .line 18
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->p(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "_"

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "Generating unique id: "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v2, "TmcOfflineDownload: OfflineUtils"

    .line 60
    .line 61
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v0
.end method

.method public final generateUpdateEntity(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/h5update/bean/UpdateEntity;
    .locals 3

    .line 1
    const-string v0, "offPkgConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getExtraConfig()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_0
    new-instance v1, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$generateUpdateEntity$1;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$generateUpdateEntity$1;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "object : TypeToken<UpdateEntity>() {}.type"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/cloud/h5update/bean/UpdateEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    move-object v0, p1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    const-string v1, "TmcOfflineDownload: OfflineUtils"

    .line 38
    .line 39
    const-string v2, "Exception json parse error"

    .line 40
    .line 41
    invoke-static {v1, v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-object v0
.end method

.method public final generateVUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "group"

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
    new-instance v0, Ljava/io/File;

    .line 12
    .line 13
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    const/4 v1, 0x2

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v0, v2, p2, v1, p2}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->listFiles$default(Ljava/io/File;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)[Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-class v0, Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;

    .line 30
    .line 31
    const-string v1, "manager"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    array-length v1, p2

    .line 37
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-string v1, ""

    .line 46
    .line 47
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->convertFile2VUrl(Ljava/lang/String;Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;Ljava/util/List;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final getAppId(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "_"

    .line 7
    .line 8
    filled-new-array {v0}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v5, 0x6

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    move-object v1, p1

    .line 17
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "100000"

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/16 v3, 0x13

    .line 53
    .line 54
    if-ne v2, v3, :cond_1

    .line 55
    .line 56
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/Utils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/Utils;

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Lcom/cloud/tmc/offline/download/utils/Utils;->isNumeric(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const-string v1, ""

    .line 66
    .line 67
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v2, "[getAppId] url:"

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p1, ", targetAppId:"

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string v0, "TmcOfflineDownload: OfflineUtils"

    .line 93
    .line 94
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-object v1
.end method

.method public final getOfflinePackageDownloadInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/ZipFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_f

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_6

    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v1, v0

    .line 24
    :goto_0
    if-eqz v1, :cond_f

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :cond_2
    if-nez p2, :cond_3

    .line 35
    .line 36
    move-object v2, p1

    .line 37
    goto :goto_1

    .line 38
    :cond_3
    move-object v2, p2

    .line 39
    :goto_1
    const/4 v3, 0x1

    .line 40
    invoke-virtual {p0, v2, v3}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->searchOfflinePkgCachePath(Ljava/lang/String;Z)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;->getZipFileInfo()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    goto :goto_2

    .line 51
    :cond_4
    move-object v2, v0

    .line 52
    :goto_2
    if-eqz v2, :cond_8

    .line 53
    .line 54
    check-cast v2, Ljava/lang/Iterable;

    .line 55
    .line 56
    new-instance v4, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_9

    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;

    .line 76
    .line 77
    invoke-virtual {v5}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    if-eqz v6, :cond_6

    .line 82
    .line 83
    invoke-virtual {v6}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    goto :goto_4

    .line 88
    :cond_6
    move-object v6, v0

    .line 89
    :goto_4
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_7

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_7
    move-object v5, v0

    .line 97
    :goto_5
    if-eqz v5, :cond_5

    .line 98
    .line 99
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_8
    move-object v4, v0

    .line 104
    :cond_9
    if-eqz v4, :cond_a

    .line 105
    .line 106
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    xor-int/2addr v2, v3

    .line 111
    if-ne v2, v3, :cond_a

    .line 112
    .line 113
    return-object v4

    .line 114
    :cond_a
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_b

    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_b
    if-eqz p2, :cond_c

    .line 122
    .line 123
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-nez v2, :cond_d

    .line 128
    .line 129
    :cond_c
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    if-eqz p2, :cond_e

    .line 134
    .line 135
    :cond_d
    return-object v0

    .line 136
    :cond_e
    invoke-virtual {p0, p1, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getOfflinePackageDownloadInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    return-object p1

    .line 141
    :cond_f
    :goto_6
    return-object v0
.end method

.method public final getOfflinePkgCachePath(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_9

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object v1, v0

    .line 23
    :goto_0
    if-eqz v1, :cond_9

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    if-nez p2, :cond_3

    .line 33
    .line 34
    move-object v2, p1

    .line 35
    goto :goto_1

    .line 36
    :cond_3
    move-object v2, p2

    .line 37
    :goto_1
    const/4 v3, 0x1

    .line 38
    invoke-virtual {p0, v2, v3}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->searchOfflinePkgCachePath(Ljava/lang/String;Z)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_5

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_5
    if-eqz p2, :cond_6

    .line 53
    .line 54
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_7

    .line 59
    .line 60
    :cond_6
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_8

    .line 65
    .line 66
    :cond_7
    return-object v0

    .line 67
    :cond_8
    invoke-virtual {p0, p1, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getOfflinePkgCachePath(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :cond_9
    :goto_2
    return-object v0
.end method

.method public final getOfflinePkgFwCachePath(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "appId"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v2

    .line 20
    :goto_0
    if-eqz v1, :cond_f

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    goto/16 :goto_6

    .line 29
    .line 30
    :cond_1
    if-nez p2, :cond_2

    .line 31
    .line 32
    move-object v3, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move-object v3, p2

    .line 35
    :goto_1
    const/4 v4, 0x2

    .line 36
    invoke-static {p0, v3, v0, v4, v2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->searchOfflinePkgCachePath$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;ZILjava/lang/Object;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;->getZipFileInfo()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    move-object v3, v2

    .line 48
    :goto_2
    if-eqz v3, :cond_7

    .line 49
    .line 50
    check-cast v3, Ljava/lang/Iterable;

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_6

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    move-object v5, v4

    .line 67
    check-cast v5, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;

    .line 68
    .line 69
    invoke-virtual {v5}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    if-eqz v5, :cond_5

    .line 74
    .line 75
    invoke-virtual {v5}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    goto :goto_3

    .line 80
    :cond_5
    move-object v5, v2

    .line 81
    :goto_3
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_4

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_6
    move-object v4, v2

    .line 89
    :goto_4
    check-cast v4, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_7
    move-object v4, v2

    .line 93
    :goto_5
    if-eqz v4, :cond_9

    .line 94
    .line 95
    new-instance v3, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    if-eqz v5, :cond_8

    .line 102
    .line 103
    invoke-virtual {v5}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getVersion()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    :cond_8
    const/4 v5, 0x1

    .line 108
    new-array v5, v5, [Lcom/cloud/tmc/offline/download/model/ZipFileInfo;

    .line 109
    .line 110
    aput-object v4, v5, v0

    .line 111
    .line 112
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-direct {v3, p1, v2, v0}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 117
    .line 118
    .line 119
    move-object v2, v3

    .line 120
    :cond_9
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_a

    .line 125
    .line 126
    return-object v2

    .line 127
    :cond_a
    if-eqz p2, :cond_b

    .line 128
    .line 129
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_c

    .line 134
    .line 135
    :cond_b
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    if-eqz p2, :cond_d

    .line 140
    .line 141
    :cond_c
    return-object v2

    .line 142
    :cond_d
    if-nez v2, :cond_f

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflineLoadMiniAppLegal(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-eqz p2, :cond_e

    .line 149
    .line 150
    invoke-virtual {p0, p1, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getOfflinePkgFwCachePath(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    goto :goto_6

    .line 155
    :cond_e
    new-instance p2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v0, "appId: "

    .line 161
    .line 162
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string p1, " is not valid, unable search for miniapp offline pkg"

    .line 169
    .line 170
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    new-instance p2, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v0, "getOfflinePkgFwCachePath: "

    .line 183
    .line 184
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    const-string p2, "TmcOfflineDownload: OfflineUtils"

    .line 195
    .line 196
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :cond_f
    :goto_6
    return-object v2
.end method

.method public final isMainThread()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final isNeedDownload(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Z
    .locals 10

    .line 1
    const-string v0, "offPkgConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->isAllowRequest(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "TmcOfflineDownload: OfflineUtils"

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string p1, "\u66f4\u65b0\u65f6\u95f4\u4e0d\u6ee1\u8db3\u8981\u6c42\uff0c\u4e0d\u5141\u8bb8\u66f4\u65b0"

    .line 15
    .line 16
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getOfflinePkgConfigCache(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v2, 0x1

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    return v2

    .line 35
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getVersion()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getVersion()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateUpdateEntity(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/h5update/bean/UpdateEntity;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_4

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/cloud/h5update/bean/UpdateEntity;->getPreloadResource()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    check-cast v3, Ljava/lang/Iterable;

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_4

    .line 72
    .line 73
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lcom/cloud/h5update/bean/PreloadResource;

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-lez v5, :cond_2

    .line 90
    .line 91
    sget-object v5, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 92
    .line 93
    invoke-virtual {v5, p1, v4}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v5}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getStatus()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    const/4 v7, 0x2

    .line 102
    if-ge v6, v7, :cond_2

    .line 103
    .line 104
    invoke-virtual {v5}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getUrl()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-nez p1, :cond_3

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    move-object v4, p1

    .line 112
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v0, "\u5f53\u524d\u8d44\u6e90\u5c1a\u672a\u4e0b\u8f7d\uff0c\u5141\u8bb8\u4e0b\u8f7d\uff1a"

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return v2

    .line 133
    :cond_4
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getVersion()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getVersion()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    xor-int/lit8 v3, v2, 0x1

    .line 146
    .line 147
    if-nez v2, :cond_5

    .line 148
    .line 149
    const-string v4, "\u7b26\u5408"

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_5
    const-string v4, "\u4e0d\u7b26\u5408"

    .line 153
    .line 154
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v6, "\u68c0\u67e5\u7248\u672c\u662f\u5426\u7b26\u5408\u66f4\u65b0\u8981\u6c42\uff1a"

    .line 160
    .line 161
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-static {v1, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    if-nez v2, :cond_6

    .line 175
    .line 176
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 177
    .line 178
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setLastUpdateTime(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    .line 179
    .line 180
    .line 181
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 182
    .line 183
    invoke-direct {v1, p1, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getDiffUpdateEntity(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/h5update/bean/UpdateEntity;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    new-instance v7, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;

    .line 196
    .line 197
    const/4 v1, 0x0

    .line 198
    invoke-direct {v7, v0, p1, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;-><init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/h5update/bean/UpdateEntity;Lkotlin/coroutines/Continuation;)V

    .line 199
    .line 200
    .line 201
    const/4 v8, 0x3

    .line 202
    const/4 v9, 0x0

    .line 203
    const/4 v5, 0x0

    .line 204
    const/4 v6, 0x0

    .line 205
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 206
    .line 207
    .line 208
    :cond_6
    return v3
.end method

.method public final loadManifest(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    .locals 3

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
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 15
    .line 16
    const-string v2, "offpkg_manifest.json"

    .line 17
    .line 18
    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_1
    const-string p1, "UTF-8"

    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/cloud/tmc/miniutils/util/FileIOUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "readFile2String(manifestFile, \"UTF-8\")"

    .line 35
    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    const-class v0, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    move-object v1, p1

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    const-string v0, "TmcOfflineDownload: OfflineUtils"

    .line 51
    .line 52
    const-string v2, "parse Json fail"

    .line 53
    .line 54
    invoke-static {v0, v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-object v1
.end method

.method public final pointCommonParams(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/offline/download/task/base/ITask;)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v1, "offline_pkg_version"

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getVersion()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "offline_pkg_group"

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "offline_pkg_nation"

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getNation()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "offline_pkg_app"

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getApp()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v1, "offline_pkg_language"

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getLanguage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v1, "offline_pkg_priority"

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPriority()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    const-string v1, "offline_pkg_type"

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getType()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v1, "offline_pkg_networkType"

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getNetworkType()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    if-eqz p3, :cond_2

    .line 81
    .line 82
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    const-string p1, "idle"

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const-string p1, "startup"

    .line 92
    .line 93
    :goto_0
    const-string p3, "offline_pkg_downloadModel"

    .line 94
    .line 95
    invoke-virtual {v0, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    if-eqz p4, :cond_3

    .line 99
    .line 100
    const-string p1, "offline_pkg_consume_time"

    .line 101
    .line 102
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    .line 103
    .line 104
    .line 105
    move-result-wide p3

    .line 106
    invoke-virtual {v0, p1, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 107
    .line 108
    .line 109
    :cond_3
    instance-of p1, p5, Lcom/cloud/tmc/offline/download/task/base/BaseTask;

    .line 110
    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    check-cast p5, Lcom/cloud/tmc/offline/download/task/base/BaseTask;

    .line 114
    .line 115
    invoke-virtual {p5}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string p3, "offline_pkg_task"

    .line 120
    .line 121
    invoke-virtual {v0, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    if-eqz p2, :cond_5

    .line 125
    .line 126
    const-string p1, "offline_pkg_trigger"

    .line 127
    .line 128
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    return-object v0
.end method

.method public final reportOfflinePkgApiUsageStatus(ZLandroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "bundle"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 13
    .line 14
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_PKG_API_USAGE_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->getObjectNameEn()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p2, v3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-interface {v0, p1, v1, v2, p2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    const-string p2, "TmcOfflineDownload: OfflineUtils"

    .line 34
    .line 35
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final searchOfflinePkgCachePath(Ljava/lang/String;Z)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;
    .locals 10

    .line 1
    const-string v0, "group"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit$com_cloud_tmc_offline_download()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    sget-object p2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getOfflinePkgConfigCacheOrMemoryCache(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget-object p2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getOfflinePkgConfigCache(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    if-nez p1, :cond_2

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_2
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateUpdateEntity(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/h5update/bean/UpdateEntity;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-nez p2, :cond_3

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/cloud/h5update/bean/UpdateEntity;->getPreloadResource()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-nez p2, :cond_4

    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    :cond_5
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_a

    .line 60
    .line 61
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lcom/cloud/h5update/bean/PreloadResource;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-nez v1, :cond_6

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_6
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 75
    .line 76
    invoke-virtual {v2, p1, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getStatus()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    const/4 v3, 0x4

    .line 85
    if-ne v2, v3, :cond_5

    .line 86
    .line 87
    new-instance v2, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;

    .line 88
    .line 89
    const/4 v8, 0x7

    .line 90
    const/4 v9, 0x0

    .line 91
    const/4 v5, 0x0

    .line 92
    const/4 v6, 0x0

    .line 93
    const/4 v7, 0x0

    .line 94
    move-object v4, v2

    .line 95
    invoke-direct/range {v4 .. v9}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getZipUnCompressPath()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-eqz v3, :cond_7

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->setZipUnCompressPath(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_7
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getUrl()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    if-eqz v3, :cond_8

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->setUrl(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_8
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-eqz v1, :cond_9

    .line 121
    .line 122
    invoke-virtual {v2, v1}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->setManifest(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    .line 123
    .line 124
    .line 125
    :cond_9
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_a
    new-instance p2, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getVersion()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-direct {p2, v1, p1, v0}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 140
    .line 141
    .line 142
    return-object p2
.end method

.method public final startTaskTrack(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/task/base/ITask;Lcom/cloud/tmc/offline/download/model/TaskResult;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "result"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "trigger"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    instance-of v0, p3, Lcom/cloud/tmc/offline/download/model/TaskResult$Retry;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p3}, Lcom/cloud/tmc/offline/download/model/TaskResult;->isTrace()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-interface {p2}, Lcom/cloud/tmc/offline/download/task/base/ITask;->getStartTaskTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    sub-long/2addr v0, v3

    .line 35
    const-class v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 36
    .line 37
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    move-object v6, v3

    .line 42
    check-cast v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 43
    .line 44
    invoke-direct {p0, p3}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getPointTaskStatus(Lcom/cloud/tmc/offline/download/model/TaskResult;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v4, "\uff0c\u8017\u65f6\uff1a"

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v4, "ms"

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-interface {p2}, Lcom/cloud/tmc/offline/download/task/base/ITask;->isIdleRunTask()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    move-object v0, p0

    .line 86
    move-object v1, p1

    .line 87
    move-object v2, p4

    .line 88
    move-object v5, p2

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->pointCommonParams(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/offline/download/task/base/ITask;)Landroid/os/Bundle;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "offline_pkg_error_code"

    .line 94
    .line 95
    invoke-virtual {p3}, Lcom/cloud/tmc/offline/download/model/TaskResult;->getErrorCode()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    const-string v1, "offline_pkg_error_msg"

    .line 103
    .line 104
    invoke-virtual {p3}, Lcom/cloud/tmc/offline/download/model/TaskResult;->getErrorMsg()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 112
    .line 113
    const/4 v1, 0x0

    .line 114
    invoke-interface {v6, v1, v7, v8, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 115
    .line 116
    .line 117
    :cond_0
    return-void
.end method

.method public final verifyServerFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "TmcOfflineDownload: OfflineUtils"

    .line 3
    .line 4
    if-eqz p1, :cond_5

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    if-eqz p2, :cond_5

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->isConnected()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v0, "verifyServerFile: \u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u9ed8\u8ba4\u8fdb\u884c\u901a\u8fc7\u3002"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v3

    .line 52
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->verifyServerUrl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v0, "verifyServerFile: \u8be5URL\u4e0d\u5728\u5f85\u6821\u9a8c\u7684URLS\u5185\u5219\u9ed8\u8ba4\u8fdb\u884c\u901a\u8fc7\u3002"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return v3

    .line 79
    :cond_3
    new-instance v2, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;

    .line 80
    .line 81
    invoke-direct {v2, p2, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->isMainThread()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_4

    .line 89
    .line 90
    const-string v2, "verifyServerFile \u4e0d\u652f\u6301\u5728\u4e3b\u7ebf\u7a0b\u4e2d\u4f7f\u7528"

    .line 91
    .line 92
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception v2

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    goto :goto_1

    .line 109
    :goto_0
    const-string v3, "verifyServerFile request fail! "

    .line 110
    .line 111
    invoke-static {v1, v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 115
    .line 116
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 121
    .line 122
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_VERIFY_SERVER_FILE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 123
    .line 124
    new-instance v4, Landroid/os/Bundle;

    .line 125
    .line 126
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v5, "offline_pkg_appId"

    .line 130
    .line 131
    invoke-virtual {v4, v5, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v5, "offline_pkg_url"

    .line 135
    .line 136
    invoke-virtual {v4, v5, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string p2, "offline_pkg_error_msg"

    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v4, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string p2, "offline_pkg_verify_server_status"

    .line 149
    .line 150
    const/4 v2, 0x3

    .line 151
    invoke-virtual {v4, p2, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 155
    .line 156
    const-string p2, ""

    .line 157
    .line 158
    invoke-interface {v1, p1, v3, p2, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 159
    .line 160
    .line 161
    :goto_1
    return v0

    .line 162
    :cond_5
    :goto_2
    const-string p1, "verifyServerFile: appId or url is null or empty"

    .line 163
    .line 164
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return v0
.end method
