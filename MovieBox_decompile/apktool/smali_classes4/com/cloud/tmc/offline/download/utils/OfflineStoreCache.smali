.class public final Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000e\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0002J\u0010\u0010\u0017\u001a\n \u0019*\u0004\u0018\u00010\u00180\u0018H\u0002J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001b\u001a\u00020\u0014J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0004J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0004J\u0016\u0010\u001f\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u0004J\u0006\u0010\"\u001a\u00020#J\u0010\u0010$\u001a\u0004\u0018\u00010\u00042\u0006\u0010%\u001a\u00020\u0004J\u0016\u0010&\u001a\u00020\'2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u0004J\u0018\u0010&\u001a\u00020\'2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0006\u0010!\u001a\u00020\u0004J\u000e\u0010(\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u0014J\u001a\u0010)\u001a\u00020*2\u0006\u0010)\u001a\u00020\u00042\u0008\u0008\u0002\u0010+\u001a\u00020 H\u0002J\u000e\u0010,\u001a\u00020*2\u0006\u0010%\u001a\u00020\u0004J\u0016\u0010-\u001a\u00020*2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010.\u001a\u00020\u0004J\u000e\u0010/\u001a\u00020*2\u0006\u0010\u001b\u001a\u00020\u0014J\u0016\u0010/\u001a\u00020*2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u0004J\u0010\u00101\u001a\u00020*2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0014J\u000e\u00102\u001a\u00020*2\u0006\u00103\u001a\u00020#J\u0016\u00104\u001a\u00020*2\u0006\u0010%\u001a\u00020\u00042\u0006\u00105\u001a\u00020\u0004J\u0016\u00106\u001a\u00020*2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u00107\u001a\u00020\'J \u00106\u001a\u00020*2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0006\u00100\u001a\u00020\u00042\u0006\u00107\u001a\u00020\'R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R*\u0010\u000e\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00100\u000fj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0010`\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R.\u0010\u0013\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u000fj\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0014`\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;",
        "",
        "()V",
        "KEY_DOWNLOAD_STATE",
        "",
        "KEY_ERROR_MSG_1",
        "KEY_ERROR_MSG_2",
        "KEY_LAST_MODIFY",
        "KEY_LAST_UPDATE_TIME",
        "KEY_OFFLINE_PKG_CONFIG",
        "KEY_PERSIST_FILE",
        "KEY_PERSIST_FILE_SIZE",
        "KEY_ZIP_UNCOMPRESS_DIR",
        "TAG",
        "lastGetOfflinePkgConfigTime",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "offlineAppId",
        "offlinePkgConfigMemoryCache",
        "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "getContext",
        "Landroid/content/Context;",
        "getKvProxy",
        "Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;",
        "kotlin.jvm.PlatformType",
        "getLastModify",
        "config",
        "getOfflinePkgConfigCache",
        "group",
        "getOfflinePkgConfigCacheOrMemoryCache",
        "getOfflineZipDownloadStatus",
        "",
        "url",
        "getVUrlFileSize",
        "",
        "getVUrlKey2Value",
        "key",
        "getZipDownloadStatus",
        "Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;",
        "lastUpdateTime",
        "log",
        "",
        "printStack",
        "removeVUrlKey2Value",
        "setLastModify",
        "lastModify",
        "setLastUpdateTime",
        "version",
        "setOfflinePkgConfigCache",
        "setVUrlFileSize",
        "size",
        "setVUrlKey2Value",
        "value",
        "setZipDownloadStatus",
        "info",
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
.field public static final INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

.field private static final KEY_DOWNLOAD_STATE:Ljava/lang/String; = "_download_state"

.field private static final KEY_ERROR_MSG_1:Ljava/lang/String; = "offPkgConfig group is null!"

.field private static final KEY_ERROR_MSG_2:Ljava/lang/String; = "offPkgConfig group cannot be null!"

.field private static final KEY_LAST_MODIFY:Ljava/lang/String; = "_last_modify"

.field private static final KEY_LAST_UPDATE_TIME:Ljava/lang/String; = "_last_update_time"

.field private static final KEY_OFFLINE_PKG_CONFIG:Ljava/lang/String; = "offline_pkg_config"

.field private static final KEY_PERSIST_FILE:Ljava/lang/String; = "vUrlFile_"

.field private static final KEY_PERSIST_FILE_SIZE:Ljava/lang/String; = "vUrlFileSize"

.field private static final KEY_ZIP_UNCOMPRESS_DIR:Ljava/lang/String; = "_zip_uncompress_dir"

.field private static final TAG:Ljava/lang/String; = "TmcOfflineDownload: OfflineStoreCache"

.field private static final lastGetOfflinePkgConfigTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final offlineAppId:Ljava/lang/String;

.field private static final offlinePkgConfigMemoryCache:Ljava/util/HashMap;
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
    new-instance v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->offlinePkgConfigMemoryCache:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->lastGetOfflinePkgConfigTime:Ljava/util/HashMap;

    .line 21
    .line 22
    const-string v0, "offline"

    .line 23
    .line 24
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->offlineAppId:Ljava/lang/String;

    .line 29
    .line 30
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

.method private final getKvProxy()Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 8
    .line 9
    return-object v0
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
    const-string p2, "TmcOfflineDownload: OfflineStoreCache"

    .line 38
    .line 39
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method static synthetic log$default(Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;Ljava/lang/String;ZILjava/lang/Object;)V
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
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->log(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getLastModify(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "config"

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
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getVersion()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, "_last_modify"

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 51
    .line 52
    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getKvProxy()Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {v1, v2, v0, p1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :cond_1
    return-object v1

    .line 65
    :cond_2
    :goto_0
    const-string p1, "offPkgConfig group is null!"

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->log(Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    return-object v1
.end method

.method public final getOfflinePkgConfigCache(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

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
    goto :goto_1

    .line 11
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "offline_pkg_config"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    sget-object v3, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 35
    .line 36
    invoke-direct {v3}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getKvProxy()Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v3, v2, p1, v1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    new-instance v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache$getOfflinePkgConfigCache$1;

    .line 59
    .line 60
    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache$getOfflinePkgConfigCache$1;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "object : TypeToken<OffPkgConfig>() {}.type"

    .line 68
    .line 69
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 77
    .line 78
    return-object p1

    .line 79
    :cond_3
    :goto_0
    return-object v0

    .line 80
    :cond_4
    :goto_1
    const-string p1, "offPkgConfig group is null!"

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    invoke-direct {p0, p1, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->log(Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    return-object v0
.end method

.method public final getOfflinePkgConfigCacheOrMemoryCache(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    .locals 9

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->offlinePkgConfigMemoryCache:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 21
    .line 22
    sget-object v4, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->lastGetOfflinePkgConfigTime:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Ljava/lang/Long;

    .line 29
    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    const-wide/16 v5, 0x0

    .line 33
    .line 34
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    sub-long v5, v0, v5

    .line 45
    .line 46
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getOfflinePkgConfigTimeInterval$com_cloud_tmc_offline_download()J

    .line 47
    .line 48
    .line 49
    move-result-wide v7

    .line 50
    cmp-long v5, v5, v7

    .line 51
    .line 52
    if-lez v5, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-object v3

    .line 56
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getOfflinePkgConfigCache(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-eqz v3, :cond_4

    .line 61
    .line 62
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v0, "offlinePkgConfigMemoryCache \u5185\u5b58\u5931\u6548\uff0c\u4ece\u7f13\u5b58\u4e2d\u8bfb\u53d6\uff0c"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string v0, "TmcOfflineDownload: OfflineStoreCache"

    .line 90
    .line 91
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-object v3

    .line 95
    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 96
    return-object p1
.end method

.method public final getOfflineZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getStatus()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 p2, 0x2

    .line 20
    if-lt p1, p2, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    return p1
.end method

.method public final getVUrlFileSize()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getKvProxy()Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->offlineAppId:Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "vUrlFileSize"

    .line 16
    .line 17
    invoke-interface {v1, v0, v2, v3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public final getVUrlKey2Value(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getKvProxy()Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->offlineAppId:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v4, "vUrlFile_"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {v1, v0, v2, p1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p1, 0x0

    .line 43
    :goto_0
    return-object p1
.end method

.method public final getZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getZipDownloadStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getZipDownloadStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "url"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_download_state"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    sget-object v3, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    invoke-direct {v3}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getKvProxy()Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    move-result-object v3

    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    :try_start_0
    new-instance v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache$getZipDownloadStatus$1;

    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache$getZipDownloadStatus$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "object : TypeToken<Offli\u2026ipDownloadInfo>() {}.type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    const-string v1, "TmcOfflineDownload: OfflineStoreCache"

    const-string v2, "Exception json parse error"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    new-instance v0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    return-object v0

    .line 10
    :cond_2
    :goto_1
    new-instance v0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 11
    :cond_3
    :goto_2
    new-instance v0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    const/16 v13, 0xf

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final lastUpdateTime(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)J
    .locals 4

    .line 1
    const-string v0, "config"

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
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getVersion()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, "_last_update_time"

    .line 37
    .line 38
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 52
    .line 53
    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getKvProxy()Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {v1, v3, v0, p1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    :cond_1
    return-wide v1

    .line 66
    :cond_2
    :goto_0
    const-string p1, "offPkgConfig group is null!"

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->log(Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    return-wide v1
.end method

.method public final removeVUrlKey2Value(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getKvProxy()Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->offlineAppId:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v4, "vUrlFile_"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {v1, v0, v2, p1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final setLastModify(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lastModify"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getVersion()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, "_last_modify"

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 55
    .line 56
    invoke-direct {v2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getKvProxy()Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {v2, v1, v0, p1, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void

    .line 68
    :cond_2
    :goto_0
    const-string p1, "offPkgConfig group is null!"

    .line 69
    .line 70
    const/4 p2, 0x1

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->log(Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final setLastUpdateTime(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getVersion()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setLastUpdateTime(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setLastUpdateTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "group"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    const-string p1, "offPkgConfig group is null!"

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->log(Ljava/lang/String;Z)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_last_update_time"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getKvProxy()Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    move-result-object v0

    invoke-static {p2}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public final setOfflinePkgConfigCache(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "offline_pkg_config"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    sget-object v3, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 42
    .line 43
    invoke-direct {v3}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getKvProxy()Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {v3, v2, v0, v1, p1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void

    .line 59
    :cond_3
    :goto_1
    const-string p1, "offPkgConfig group is null!"

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->log(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final setVUrlFileSize(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getKvProxy()Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->offlineAppId:Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "vUrlFileSize"

    .line 16
    .line 17
    invoke-interface {v1, v0, v2, v3, p1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final setVUrlKey2Value(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getKvProxy()Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->offlineAppId:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v4, "vUrlFile_"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {v1, v0, v2, p1, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getVersion()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setZipDownloadStatus(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    return-void
.end method

.method public final setZipDownloadStatus(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V
    .locals 4

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_4

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getZipDownloadStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    move-result-object v1

    .line 5
    invoke-virtual {p3}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getZipUnCompressPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->setZipUnCompressPath(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p3}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->setStatus(I)V

    .line 8
    invoke-virtual {p3}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->setManifest(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_download_state"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 10
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    invoke-direct {v2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getKvProxy()Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    move-result-object v2

    invoke-static {p3}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, p1, p3, v3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_2
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getStatus()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setLastUpdateTime(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 13
    :cond_4
    :goto_0
    const-string p1, "offPkgConfig group or info url is null!"

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->log(Ljava/lang/String;Z)V

    return-void
.end method
