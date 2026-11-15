.class public final Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final OooO:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;

.field public static OooO0O0:Landroid/app/Application;

.field public static final OooO0OO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO00o;",
            ">;"
        }
    .end annotation
.end field

.field public static final OooO0Oo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;",
            ">;"
        }
    .end annotation
.end field

.field public static OooO0o:Ljava/lang/String;

.field public static OooO0o0:Ljava/lang/String;

.field public static OooO0oO:Ljava/lang/String;

.field public static OooO0oo:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0OO:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0Oo:Ljava/util/Map;

    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0o0:Ljava/lang/String;

    .line 25
    .line 26
    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0o:Ljava/lang/String;

    .line 27
    .line 28
    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0oO:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 31
    .line 32
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 33
    .line 34
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 38
    .line 39
    .line 40
    new-instance v8, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0o;

    .line 41
    .line 42
    invoke-direct {v8}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0o;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v9, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0OO;

    .line 46
    .line 47
    invoke-direct {v9}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0OO;-><init>()V

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    const-wide/16 v4, 0x0

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    move-object v1, v0

    .line 55
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 59
    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final OooO00o()V
    .locals 5

    .line 11
    sget-object v0, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0Oo:Ljava/util/Map;

    move-object v1, v0

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 12
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0O0:Landroid/app/Application;

    if-eqz v1, :cond_0

    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 13
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v3, "offlineScan"

    const-string v4, "offlineScanApps"

    invoke-interface {v2, v1, v3, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v2, Lcom/cloud/tmc/miniapp/offlineapps/scan/ScanManager$getOfflineAppsFromMMKV$1$1;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/offlineapps/scan/ScanManager$getOfflineAppsFromMMKV$1$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 15
    const-string v2, "OooO0O0"

    const-string v3, "[getOfflineAppsFromMMKV] error"

    invoke-static {v2, v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 17
    :cond_1
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static final OooO0Oo()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0O0()V

    .line 2
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0o0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    const-string v1, "OooO0O0"

    const-string v2, "[scan] fail"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/miniapp/offlineapps/OfflineDownloadAppBean;)Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;
    .locals 19

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineDownloadAppBean;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getOfflinePkgFwCachePath(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;->getZipFileInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 47
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->getZipUnCompressPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineDownloadAppBean;->getAppId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getVersion()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    goto/16 :goto_5

    .line 49
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineDownloadAppBean;->getZipPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineDownloadAppBean;->getZipPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineDownloadAppBean;->getAppId()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[checkOfflineDownloadAppIsValid]->validOfflineDownloadZipPath:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", offlineDownloadAppBean.zipPath:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", appId:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", valid:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "OooO0O0"

    invoke-static {v4, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_b

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineDownloadAppBean;->getAppId()Ljava/lang/String;

    move-result-object v5

    .line 52
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getAppInfo()Lcom/cloud/tmc/integration/model/AppInfoModel;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_0

    :cond_3
    move-object v7, v1

    .line 53
    :goto_0
    sget-object v8, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;->OFFLINE_DOWNLOAD:Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    .line 54
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getAppInfo()Lcom/cloud/tmc/integration/model/AppInfoModel;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getLogo()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_1

    :cond_4
    move-object v9, v1

    .line 55
    :goto_1
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getAppInfo()Lcom/cloud/tmc/integration/model/AppInfoModel;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getAppinfoCategoryType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v11, v2

    goto :goto_2

    :cond_5
    move-object v11, v1

    .line 56
    :goto_2
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getAppInfo()Lcom/cloud/tmc/integration/model/AppInfoModel;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getDesc()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_3

    :cond_6
    move-object v12, v1

    .line 57
    :goto_3
    sget-object v2, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineDownloadAppBean;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getAppInfo()Lcom/cloud/tmc/integration/model/AppInfoModel;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getLogo()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    :cond_7
    const-string v4, ""

    :cond_8
    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 58
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getAppInfo()Lcom/cloud/tmc/integration/model/AppInfoModel;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getClassificationNames()Ljava/util/List;

    move-result-object v2

    move-object v15, v2

    goto :goto_4

    :cond_9
    move-object v15, v1

    .line 59
    :goto_4
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getAppInfo()Lcom/cloud/tmc/integration/model/AppInfoModel;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getClassification()Ljava/util/List;

    move-result-object v1

    :cond_a
    move-object/from16 v16, v1

    .line 60
    new-instance v1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

    const/16 v17, 0x100

    const/16 v18, 0x0

    const-wide/16 v13, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v18}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;JLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_b
    :goto_5
    return-object v1
.end method

.method public final OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/offlineapps/OfflineDownloadAppBean;
    .locals 14

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getOfflineDownloadAppPath]->scanPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OooO0O0"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 38
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 39
    :cond_1
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p1, v3

    if-eqz v4, :cond_2

    .line 40
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v6, ".zip"

    const/4 v7, 0x2

    invoke-static {v5, v6, v2, v7, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v5, "i.name"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, ".zip"

    const-string v9, ""

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "100000"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 41
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, ".zip"

    const-string v10, ""

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "i.absolutePath"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    :cond_3
    const-string p1, ""

    move-object v0, p1

    :goto_1
    if-eqz v2, :cond_4

    .line 44
    new-instance v1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineDownloadAppBean;

    invoke-direct {v1, p1, v0}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineDownloadAppBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-object v1
.end method

.method public final OooO00o(Landroid/app/Application;)V
    .locals 2

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "OooO0O0"

    const-string v1, "[ScanManager] init"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sput-object p1, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0O0:Landroid/app/Application;

    .line 3
    const-class p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string v0, "offlineAppsScanLevel"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigInt(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0oo:I

    .line 4
    sget-object p1, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/cloud/tmc/miniapp/offlineapps/scan/a;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/offlineapps/scan/a;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 5
    const-class p1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getRootFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get(PathProxy::class.java).rootFilePath"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0o0:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getRootDownloadPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get(PathProxy::class.java).rootDownloadPath"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0o:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getRootMiniAppPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "get(PathProxy::class.java).rootMiniAppPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0oO:Ljava/lang/String;

    .line 8
    sget-object p1, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;

    new-instance p1, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0$OooO00o;

    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0$OooO00o;-><init>()V

    .line 9
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sput-object p1, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/offlineapps/download/OooO00o;

    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;)V
    .locals 5

    .line 32
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getLogoPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkLogoPath] appId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", logoUrl:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", logoPath:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OooO0O0"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getLogoPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 34
    :cond_0
    sget-object v0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getLogoUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {v0, v1, p1}, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final OooO00o(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    .line 64
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getVersion()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 65
    :cond_3
    :goto_1
    sget-object v3, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v3, v1, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final OooO00o(ZLcom/cloud/tmc/miniapp/offlineapps/ScanScene;Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO00o;)V
    .locals 7

    const-string v0, "scanScene"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    const-class v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string v1, "offlineAppsAbilitySwitch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "OooO0O0"

    if-nez v0, :cond_1

    .line 19
    const-string p1, "[scan] offlineAppsAbilitySwitch is close"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 20
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO00o;->result(Ljava/util/List;)V

    :cond_0
    return-void

    .line 21
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 22
    sget-object v3, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0Oo:Ljava/util/Map;

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sendResult] fromCache scene:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 24
    invoke-interface {p3, v0}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO00o;->result(Ljava/util/List;)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move-object v0, p3

    .line 25
    :goto_0
    sget-object v3, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0OO:Ljava/util/Map;

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p3

    goto :goto_1

    :cond_4
    move p3, v4

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v3, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget p3, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0oo:I

    .line 27
    sget-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;->LEVEL_0:Lcom/cloud/tmc/miniapp/offlineapps/ScanType;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;->getType()I

    move-result v0

    if-ne p3, v0, :cond_5

    goto :goto_2

    .line 28
    :cond_5
    sget-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;->LEVEL_1:Lcom/cloud/tmc/miniapp/offlineapps/ScanType;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;->getType()I

    move-result v0

    if-ne p3, v0, :cond_7

    .line 29
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->getType()I

    move-result p3

    sget-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_PINFORLATER:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->getType()I

    move-result v0

    if-lt p3, v0, :cond_6

    goto :goto_2

    :cond_6
    move p3, v4

    goto :goto_3

    :cond_7
    :goto_2
    move p3, v2

    :goto_3
    if-eqz p1, :cond_9

    if-eqz p3, :cond_8

    goto :goto_4

    :cond_8
    move v2, v4

    .line 30
    :cond_9
    :goto_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[scan] needScan:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isCache:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", scanScene:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_a

    .line 31
    sget-object p1, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p2, Lcom/cloud/tmc/miniapp/offlineapps/scan/b;

    invoke-direct {p2}, Lcom/cloud/tmc/miniapp/offlineapps/scan/b;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_a
    return-void
.end method

.method public final OooO0O0(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[scanOfflineDownloadAppsModeDownload]->scanPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OooO0O0"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 17
    :cond_1
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_a

    aget-object v4, p1, v3

    if-eqz v4, :cond_9

    .line 18
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 19
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_3

    .line 20
    :cond_2
    array-length v5, v4

    if-nez v5, :cond_3

    goto :goto_3

    .line 21
    :cond_3
    invoke-static {v4}, Lkotlin/collections/ArraysKt;->S([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    if-nez v4, :cond_4

    goto :goto_3

    .line 22
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    .line 23
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_3

    .line 24
    :cond_6
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_9

    aget-object v7, v4, v6

    .line 25
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "j.absolutePath"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/offlineapps/OfflineDownloadAppBean;

    move-result-object v7

    if-nez v7, :cond_7

    goto :goto_2

    .line 26
    :cond_7
    invoke-virtual {p0, v7}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/offlineapps/OfflineDownloadAppBean;)Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 27
    invoke-virtual {v7}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_9
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    :goto_4
    return-object v0
.end method

.method public final OooO0O0()V
    .locals 5

    .line 1
    const-string v0, "OooO0O0"

    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    sget-object v2, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0o0:Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0o0:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0OO(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o(Ljava/util/Map;Ljava/util/Map;)V

    .line 4
    :goto_0
    sget-object v2, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0o:Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v2, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0o:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0O0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o(Ljava/util/Map;Ljava/util/Map;)V

    .line 6
    :goto_1
    sget-object v2, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0oO:Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    sget-object v2, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0oO:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0Oo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o(Ljava/util/Map;Ljava/util/Map;)V

    .line 8
    :goto_2
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[realScan] result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v2, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0Oo:Ljava/util/Map;

    move-object v3, v2

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 10
    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 11
    const-string v2, "[realScan] fail"

    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public final OooO0OO(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[scanOfflineDownloadAppsModeFiles]->scanPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OooO0O0"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 6
    :cond_1
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_b

    aget-object v4, p1, v3

    if-eqz v4, :cond_a

    .line 7
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    .line 8
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/temp_data"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    .line 11
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_3

    .line 12
    :cond_3
    array-length v5, v4

    if-nez v5, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    invoke-static {v4}, Lkotlin/collections/ArraysKt;->S([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    if-nez v4, :cond_5

    goto :goto_3

    .line 14
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_3

    .line 16
    :cond_7
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_a

    aget-object v7, v4, v6

    .line 17
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "j.absolutePath"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/offlineapps/OfflineDownloadAppBean;

    move-result-object v7

    if-nez v7, :cond_8

    goto :goto_2

    .line 18
    :cond_8
    invoke-virtual {p0, v7}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/offlineapps/OfflineDownloadAppBean;)Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 19
    invoke-virtual {v7}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_a
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_4
    return-object v0
.end method

.method public final OooO0OO()V
    .locals 5

    .line 20
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0O0:Landroid/app/Application;

    if-eqz v0, :cond_0

    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 21
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v2, "offlineScan"

    const-string v3, "offlineScanApps"

    sget-object v4, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0Oo:Ljava/util/Map;

    invoke-static {v4}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 22
    const-string v1, "OooO0O0"

    const-string v2, "[saveOfflineAppsToMMKV] error"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final OooO0Oo(Ljava/lang/String;)Ljava/util/Map;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scanUsedApps]->scanPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OooO0O0"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 8
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 9
    :cond_1
    array-length v3, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_b

    aget-object v6, v0, v5

    if-eqz v6, :cond_a

    .line 10
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "100000"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_3

    .line 11
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 12
    sget-object v9, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0O0:Landroid/app/Application;

    if-nez v9, :cond_3

    goto/16 :goto_3

    .line 13
    :cond_3
    const-class v10, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-static {v10}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-interface {v10, v9, v7}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v9

    if-nez v9, :cond_4

    goto/16 :goto_3

    .line 14
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_5

    goto/16 :goto_3

    .line 15
    :cond_5
    array-length v10, v6

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_a

    aget-object v12, v6, v11

    if-eqz v12, :cond_9

    .line 16
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-ne v13, v8, :cond_9

    .line 17
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    if-nez v13, :cond_6

    goto/16 :goto_2

    .line 18
    :cond_6
    array-length v13, v13

    if-nez v13, :cond_7

    goto/16 :goto_2

    .line 19
    :cond_7
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 20
    invoke-virtual {v9}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    .line 21
    invoke-virtual {v9}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[scanUsedApps]->versionFilePath:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", packageUrl_MD5:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", appId:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", valid:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_9

    .line 22
    const-string v4, "appId"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v9}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    move-result-object v11

    .line 24
    invoke-virtual {v9}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    move-result-object v12

    .line 25
    sget-object v13, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;->USED:Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    .line 26
    invoke-virtual {v9}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    move-result-object v14

    .line 27
    invoke-virtual {v9}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    move-result v4

    .line 28
    invoke-virtual {v9}, Lcom/cloud/tmc/integration/model/AppModel;->getDesc()Ljava/lang/String;

    move-result-object v17

    .line 29
    sget-object v6, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;

    invoke-virtual {v9}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    const-string v8, ""

    :cond_8
    invoke-virtual {v6, v7, v8}, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 30
    invoke-virtual {v9}, Lcom/cloud/tmc/integration/model/AppModel;->getClassificationNames()Ljava/util/List;

    move-result-object v20

    .line 31
    invoke-virtual {v9}, Lcom/cloud/tmc/integration/model/AppModel;->getClassification()Ljava/util/List;

    move-result-object v21

    .line 32
    new-instance v6, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

    .line 33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v22, 0x100

    const/16 v23, 0x0

    const-wide/16 v18, 0x0

    move-object v9, v6

    move-object v10, v7

    .line 34
    invoke-direct/range {v9 .. v23}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;JLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_a
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_4
    return-object v1
.end method

.method public final OooO0o0()V
    .locals 10

    .line 1
    const-string v0, "OooO0O0"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0OO()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0Oo:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    sget-object v3, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0OO:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 37
    .line 38
    .line 39
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 42
    .line 43
    .line 44
    new-instance v3, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/cloud/tmc/integration/utils/LatestUseUtils;->getLatestUseApps()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    goto/16 :goto_7

    .line 62
    .line 63
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_4

    .line 72
    .line 73
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Lcom/cloud/tmc/integration/model/AppStoreInfo;

    .line 78
    .line 79
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppStoreInfo;->getAppId()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    if-nez v6, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    check-cast v7, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

    .line 91
    .line 92
    if-nez v7, :cond_3

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppStoreInfo;->getSaveTime()J

    .line 96
    .line 97
    .line 98
    move-result-wide v8

    .line 99
    invoke-virtual {v7, v8, v9}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->setOpenTimestamp(J)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v7}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_5

    .line 125
    .line 126
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    check-cast v5, Ljava/util/Map$Entry;

    .line 131
    .line 132
    sget-object v6, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;

    .line 133
    .line 134
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    check-cast v5, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

    .line 139
    .line 140
    invoke-virtual {v6, v5}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    .line 150
    .line 151
    new-instance v1, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    sget-object v4, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 157
    .line 158
    const-string v5, "offlineAppsList"

    .line 159
    .line 160
    const-string v6, "[\"1000827142865809408\",\"1000263325676503040\",\"1000938677585735680\",\"1000091930789543936\",\"1000176126598975488\",\"1000589204414427136\",\"1000779965791449088\",\"1000434393060675584\",\"1000928659483803648\",\"1000262595995639808\",\"1000296789383352320\",\"1000222344028467200\",\"1000622920416403456\"]"

    .line 161
    .line 162
    invoke-virtual {v4, v5, v6}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    const-class v5, Ljava/util/List;

    .line 167
    .line 168
    invoke-static {v4, v5}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    instance-of v5, v4, Ljava/util/List;

    .line 173
    .line 174
    if-eqz v5, :cond_6

    .line 175
    .line 176
    check-cast v4, Ljava/util/List;

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_6
    const/4 v4, 0x0

    .line 180
    :goto_3
    if-nez v4, :cond_7

    .line 181
    .line 182
    new-instance v4, Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .line 186
    .line 187
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    const/4 v6, 0x0

    .line 192
    move v7, v6

    .line 193
    :goto_4
    if-ge v7, v5, :cond_9

    .line 194
    .line 195
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    check-cast v8, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

    .line 200
    .line 201
    invoke-virtual {v8}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getAppId()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v8

    .line 209
    if-eqz v8, :cond_8

    .line 210
    .line 211
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_9
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    :cond_a
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_c

    .line 234
    .line 235
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    check-cast v3, Ljava/util/Map$Entry;

    .line 240
    .line 241
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    check-cast v4, Ljava/lang/String;

    .line 246
    .line 247
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    check-cast v3, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO00o;

    .line 252
    .line 253
    if-eqz v3, :cond_b

    .line 254
    .line 255
    const/4 v5, 0x1

    .line 256
    goto :goto_6

    .line 257
    :cond_b
    move v5, v6

    .line 258
    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    const-string v8, "[sendResult] fromSync scene:"

    .line 264
    .line 265
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v4, " needScanResult:"

    .line 272
    .line 273
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-static {v0, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    if-eqz v3, :cond_a

    .line 287
    .line 288
    invoke-interface {v3, v1}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO00o;->result(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .line 290
    .line 291
    goto :goto_5

    .line 292
    :goto_7
    const-string v2, "[sendResult] fail"

    .line 293
    .line 294
    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    .line 296
    .line 297
    :cond_c
    return-void
.end method
