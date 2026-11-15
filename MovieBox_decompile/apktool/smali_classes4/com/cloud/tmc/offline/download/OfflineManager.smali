.class public final Lcom/cloud/tmc/offline/download/OfflineManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0091\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e*\u0001.\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010K\u001a\u00020L2\u0008\u0010M\u001a\u0004\u0018\u00010\u00062\u0008\u0010N\u001a\u0004\u0018\u00010OH\u0007J\u0012\u0010P\u001a\u00020\n2\u0008\u0010M\u001a\u0004\u0018\u00010\u0006H\u0007J\u000e\u0010Q\u001a\u00020L2\u0006\u0010R\u001a\u00020SJ\u0010\u0010T\u001a\u00020L2\u0006\u0010U\u001a\u00020\u0006H\u0002J\u0010\u0010V\u001a\u00020L2\u0006\u0010U\u001a\u00020\u0006H\u0002J*\u0010W\u001a\u00020L2\u0006\u0010\u000e\u001a\u00020X2\u0018\u0008\u0002\u0010Y\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010[\u0012\u0004\u0012\u00020L\u0018\u00010ZH\u0007J*\u0010W\u001a\u00020L2\u0006\u0010\\\u001a\u00020]2\u0018\u0008\u0002\u0010Y\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010[\u0012\u0004\u0012\u00020L\u0018\u00010ZH\u0007J,\u0010W\u001a\u00020L2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0018\u0008\u0002\u0010Y\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010[\u0012\u0004\u0012\u00020L\u0018\u00010ZH\u0007J4\u0010^\u001a\u00020L2\u0008\u0010_\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010`\u001a\u00020\n2\u0016\u0008\u0002\u0010Y\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020L\u0018\u00010ZH\u0007J\u0012\u0010a\u001a\u00020\n2\u0008\u0010M\u001a\u0004\u0018\u00010\u0006H\u0007J\u0010\u0010b\u001a\u00020L2\u0006\u0010c\u001a\u00020dH\u0002J\u000f\u0010e\u001a\u0004\u0018\u00010SH\u0001\u00a2\u0006\u0002\u0008fJ\u001a\u0010g\u001a\n\u0012\u0004\u0012\u00020i\u0018\u00010h2\u0008\u0010j\u001a\u0004\u0018\u00010\u0006H\u0007J\u0012\u0010k\u001a\u0004\u0018\u00010[2\u0006\u0010j\u001a\u00020\u0006H\u0007J\u001a\u0010k\u001a\u0004\u0018\u00010[2\u0006\u0010j\u001a\u00020\u00062\u0006\u0010l\u001a\u00020\u0006H\u0007J\u0012\u0010m\u001a\u0004\u0018\u00010[2\u0006\u0010M\u001a\u00020\u0006H\u0007J\u001e\u0010n\u001a\u0004\u0018\u00010o2\u0008\u0010M\u001a\u0004\u0018\u00010\u00062\u0008\u0010l\u001a\u0004\u0018\u00010\u0006H\u0007J\u0010\u0010p\u001a\u00020L2\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0008\u0010q\u001a\u00020LH\u0002J\u0010\u0010r\u001a\u00020L2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0008\u0010s\u001a\u00020\nH\u0002J\u0008\u0010t\u001a\u00020\nH\u0002J\r\u0010&\u001a\u00020\nH\u0001\u00a2\u0006\u0002\u0008uJ\u0008\u0010v\u001a\u00020\nH\u0002J>\u0010w\u001a\u00020L2\u0006\u0010x\u001a\u00020\u00062\n\u0008\u0002\u0010y\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010`\u001a\u00020\n2\u0016\u0008\u0002\u0010Y\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020L\u0018\u00010ZH\u0002J\u0008\u0010z\u001a\u00020LH\u0007J2\u0010{\u001a\u00020L2\u0006\u0010x\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010X2\u0016\u0008\u0002\u0010Y\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020L\u0018\u00010ZH\u0002J\u001c\u0010|\u001a\u00020\n2\u0008\u0010M\u001a\u0004\u0018\u00010\u00062\u0008\u0010l\u001a\u0004\u0018\u00010\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\n8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000b\u0010\u0002\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000f8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\n8BX\u0083\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0013\u0010\u0002\u001a\u0004\u0008\u0014\u0010\rR\u001a\u0010\u0015\u001a\u00020\n8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0016\u0010\u0002\u001a\u0004\u0008\u0017\u0010\rR\u001a\u0010\u0018\u001a\u00020\n8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0019\u0010\u0002\u001a\u0004\u0008\u001a\u0010\rR\u001a\u0010\u001b\u001a\u00020\n8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001c\u0010\u0002\u001a\u0004\u0008\u001d\u0010\rR\u001a\u0010\u001e\u001a\u00020\n8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001f\u0010\u0002\u001a\u0004\u0008 \u0010\rR\u001a\u0010!\u001a\u00020\n8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\"\u0010\u0002\u001a\u0004\u0008!\u0010\rR\u001a\u0010#\u001a\u00020\n8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008$\u0010\u0002\u001a\u0004\u0008%\u0010\rR\u000e\u0010&\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\'\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008)\u0010*R\u0010\u0010-\u001a\u00020.X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010/R\u001a\u00100\u001a\u00020\n8BX\u0083\u0004\u00a2\u0006\u000c\u0012\u0004\u00081\u0010\u0002\u001a\u0004\u00082\u0010\rR\u001a\u00103\u001a\u00020\u00048@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u00084\u0010\u0002\u001a\u0004\u00085\u00106R\u001a\u00107\u001a\u00020\u00048@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u00088\u0010\u0002\u001a\u0004\u00089\u00106R\u001a\u0010:\u001a\u00020\u00048@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008;\u0010\u0002\u001a\u0004\u0008<\u00106R(\u0010?\u001a\u0004\u0018\u00010>2\u0008\u0010=\u001a\u0004\u0018\u00010>@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\u001a\u0010D\u001a\u00020\u00048@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008E\u0010\u0002\u001a\u0004\u0008F\u00106R\u001a\u0010G\u001a\u00020\u00068@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008H\u0010\u0002\u001a\u0004\u0008I\u0010J\u00a8\u0006}"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/OfflineManager;",
        "",
        "()V",
        "MIN_CHECK_OFFLINE_CONFIG_DEVIATE_TIME",
        "",
        "TAG",
        "",
        "application",
        "Landroid/app/Application;",
        "checkVersionEnable",
        "",
        "getCheckVersionEnable$com_cloud_tmc_offline_download$annotations",
        "getCheckVersionEnable$com_cloud_tmc_offline_download",
        "()Z",
        "config",
        "Lcom/google/gson/JsonObject;",
        "getConfig$com_cloud_tmc_offline_download",
        "()Lcom/google/gson/JsonObject;",
        "initLoad",
        "getInitLoad$annotations",
        "getInitLoad",
        "isDisableOfflinePkgFw",
        "isDisableOfflinePkgFw$com_cloud_tmc_offline_download$annotations",
        "isDisableOfflinePkgFw$com_cloud_tmc_offline_download",
        "isDisableOfflineResources",
        "isDisableOfflineResources$com_cloud_tmc_offline_download$annotations",
        "isDisableOfflineResources$com_cloud_tmc_offline_download",
        "isEnableAhaSoFormatConvert",
        "isEnableAhaSoFormatConvert$com_cloud_tmc_offline_download$annotations",
        "isEnableAhaSoFormatConvert$com_cloud_tmc_offline_download",
        "isEnablePrefetchCdnAppInfo",
        "isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download$annotations",
        "isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download",
        "isEnabled",
        "isEnabled$annotations",
        "isForceRefreshPrefetchCdnAppInfo",
        "isForceRefreshPrefetchCdnAppInfo$com_cloud_tmc_offline_download$annotations",
        "isForceRefreshPrefetchCdnAppInfo$com_cloud_tmc_offline_download",
        "isInit",
        "mTaskQueue",
        "Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;",
        "getMTaskQueue",
        "()Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;",
        "mTaskQueue$delegate",
        "Lkotlin/Lazy;",
        "networkListener",
        "com/cloud/tmc/offline/download/OfflineManager$networkListener$1",
        "Lcom/cloud/tmc/offline/download/OfflineManager$networkListener$1;",
        "networkLoad",
        "getNetworkLoad$annotations",
        "getNetworkLoad",
        "offlineManifestTimeInterval",
        "getOfflineManifestTimeInterval$com_cloud_tmc_offline_download$annotations",
        "getOfflineManifestTimeInterval$com_cloud_tmc_offline_download",
        "()J",
        "offlineMaxUpdateTimeInterval",
        "getOfflineMaxUpdateTimeInterval$com_cloud_tmc_offline_download$annotations",
        "getOfflineMaxUpdateTimeInterval$com_cloud_tmc_offline_download",
        "offlinePkgConfigTimeInterval",
        "getOfflinePkgConfigTimeInterval$com_cloud_tmc_offline_download$annotations",
        "getOfflinePkgConfigTimeInterval$com_cloud_tmc_offline_download",
        "value",
        "Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;",
        "onUpdateCallback",
        "getOnUpdateCallback$com_cloud_tmc_offline_download",
        "()Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;",
        "setOnUpdateCallback$com_cloud_tmc_offline_download",
        "(Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;)V",
        "prefetchCdnAppInfoTimeInterval",
        "getPrefetchCdnAppInfoTimeInterval$com_cloud_tmc_offline_download$annotations",
        "getPrefetchCdnAppInfoTimeInterval$com_cloud_tmc_offline_download",
        "prefetchCdnAppInfoUrl",
        "getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download$annotations",
        "getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download",
        "()Ljava/lang/String;",
        "addOfflineLifecycleObserver",
        "",
        "appId",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "checkMiniAppInDisableAntiShakeList",
        "clearCache",
        "context",
        "Landroid/content/Context;",
        "doExecutePrePullAppInfoDownloadTask",
        "previousStep",
        "doExecutePrePullAppInfoUnZipTask",
        "downloadPkg",
        "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "callback",
        "Lkotlin/Function1;",
        "Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;",
        "builder",
        "Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;",
        "downloadPkgFromPlatform",
        "packageName",
        "antiShake",
        "enableVerifyServerFile",
        "execute",
        "task",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "getContext",
        "getContext$com_cloud_tmc_offline_download",
        "getOfflinePackageDownloadInfo",
        "",
        "Lcom/cloud/tmc/offline/download/model/ZipFileInfo;",
        "group",
        "getOfflinePkgCachePath",
        "url",
        "getOfflinePkgFwCachePath",
        "getOfflineResources",
        "Ljava/io/File;",
        "init",
        "initH5Update",
        "initSomeThings",
        "isFast",
        "isHostFast",
        "isInit$com_cloud_tmc_offline_download",
        "isPrePullAppInfoFast",
        "loadConfig",
        "trigger",
        "_packageName",
        "prePullFeaturedAppInfo",
        "startDownloadTask",
        "verifyServerFile",
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
.field public static final INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

.field private static final MIN_CHECK_OFFLINE_CONFIG_DEVIATE_TIME:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "TmcOfflineDownload: OfflineManager"

.field private static application:Landroid/app/Application;

.field private static volatile isInit:Z

.field private static final mTaskQueue$delegate:Lkotlin/Lazy;

.field private static final networkListener:Lcom/cloud/tmc/offline/download/OfflineManager$networkListener$1;

.field private static onUpdateCallback:Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 7
    .line 8
    new-instance v0, Lcom/cloud/tmc/offline/download/OfflineManager$networkListener$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/OfflineManager$networkListener$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->networkListener:Lcom/cloud/tmc/offline/download/OfflineManager$networkListener$1;

    .line 14
    .line 15
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager$mTaskQueue$2;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager$mTaskQueue$2;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->mTaskQueue$delegate:Lkotlin/Lazy;

    .line 22
    .line 23
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

.method public static synthetic a()Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->initSomeThings$lambda$16()Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic access$doExecutePrePullAppInfoDownloadTask(Lcom/cloud/tmc/offline/download/OfflineManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/OfflineManager;->doExecutePrePullAppInfoDownloadTask(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$doExecutePrePullAppInfoUnZipTask(Lcom/cloud/tmc/offline/download/OfflineManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/OfflineManager;->doExecutePrePullAppInfoUnZipTask(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getNetworkLoad()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getNetworkLoad()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final synthetic access$initSomeThings(Lcom/cloud/tmc/offline/download/OfflineManager;Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/OfflineManager;->initSomeThings(Landroid/app/Application;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$startDownloadTask(Lcom/cloud/tmc/offline/download/OfflineManager;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/OfflineManager;->startDownloadTask(Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final addOfflineLifecycleObserver(Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/LifecycleUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/LifecycleUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/offline/download/utils/LifecycleUtils;->addOfflineLifecycleObserver(Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p0

    .line 8
    const-string p1, "TmcOfflineDownload: OfflineManager"

    .line 9
    .line 10
    const-string v0, "addOfflineLifecycleObserver"

    .line 11
    .line 12
    invoke-static {p1, v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public static synthetic b(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/offline/download/OfflineManager;->clearCache$lambda$28(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/offline/download/OfflineManager;->init$lambda$15(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final checkMiniAppInDisableAntiShakeList(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkMiniAppInDisableAntiShakeList(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    const-string v0, "TmcOfflineDownload: OfflineManager"

    .line 10
    .line 11
    const-string v1, "checkMiniAppInDisableAntiShakeList"

    .line 12
    .line 13
    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method private static final clearCache$lambda$28(Landroid/content/Context;)V
    .locals 14

    .line 1
    const-string v0, "$context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 7
    .line 8
    const-string v1, "clearOfflineDownloadCache"

    .line 9
    .line 10
    const-string v2, "{\"clear\":false,\"intervalTime\":604800}"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-class v1, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "fromJson(\n              \u2026ava\n                    )"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    check-cast v0, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;

    .line 28
    .line 29
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 36
    .line 37
    const-string v3, "appId_lastClearOfflineDownloadCache"

    .line 38
    .line 39
    const-string v4, "key_lastClearOfflineDownloadCache"

    .line 40
    .line 41
    invoke-interface {v2, p0, v3, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    const/16 v6, 0x3e8

    .line 50
    .line 51
    int-to-long v6, v6

    .line 52
    div-long v12, v4, v6

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->getClear()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    sub-long v2, v12, v2

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/ClearOfflineDownloadCacheData;->getIntervalTime()J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    cmp-long v0, v2, v4

    .line 67
    .line 68
    if-lez v0, :cond_1

    .line 69
    .line 70
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    move-object v8, v0

    .line 75
    check-cast v8, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 76
    .line 77
    const-string v10, "appId_lastClearOfflineDownloadCache"

    .line 78
    .line 79
    const-string v11, "key_lastClearOfflineDownloadCache"

    .line 80
    .line 81
    move-object v9, p0

    .line 82
    invoke-interface/range {v8 .. v13}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/cloud/tmc/integration/utils/LatestUseUtils;->getLatestUseApps()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    if-eqz p0, :cond_1

    .line 90
    .line 91
    check-cast p0, Ljava/lang/Iterable;

    .line 92
    .line 93
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lcom/cloud/tmc/integration/model/AppStoreInfo;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppStoreInfo;->getAppId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v3, "\u904d\u5386\u4f7f\u7528\u8fc7\u7684\u5c0f\u7a0b\u5e8f\uff0c\u8fdb\u884c\u6e05\u9664\u7f13\u5b58\uff0cgroup: "

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string v2, "TmcOfflineDownload: OfflineUtils"

    .line 131
    .line 132
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppStoreInfo;->getAppId()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getOfflinePkgConfigCache(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-nez v0, :cond_0

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_0
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 149
    .line 150
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->deleteOfflineZipUnCompressDir(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_1
    return-void
.end method

.method public static synthetic d()Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->initSomeThings$lambda$17()Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final doExecutePrePullAppInfoDownloadTask(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "TmcOfflineDownload: OfflineManager"

    .line 8
    .line 9
    const-string v0, "\u9884\u62c9\u53d6\u7cbe\u9009 AppInfo \u80fd\u529b\u5df2\u5173\u95ed\uff0c\u4e0b\u8f7d\u4efb\u52a1"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;

    .line 16
    .line 17
    sget-object v1, Lcom/cloud/tmc/offline/download/OfflineManager$doExecutePrePullAppInfoDownloadTask$1;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager$doExecutePrePullAppInfoDownloadTask$1;

    .line 18
    .line 19
    invoke-direct {v0, p1, v1}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoDownloadTask;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private final doExecutePrePullAppInfoUnZipTask(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "TmcOfflineDownload: OfflineManager"

    .line 8
    .line 9
    const-string v0, "\u9884\u62c9\u53d6\u7cbe\u9009 AppInfo \u80fd\u529b\u5df2\u5173\u95ed\uff0c\u89e3\u6790\u4efb\u52a1"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;

    .line 16
    .line 17
    sget-object v1, Lcom/cloud/tmc/offline/download/OfflineManager$doExecutePrePullAppInfoUnZipTask$1;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager$doExecutePrePullAppInfoUnZipTask$1;

    .line 18
    .line 19
    invoke-direct {v0, p1, v1}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoParseTask;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static final downloadPkg(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "config"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkg(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final downloadPkg(Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->build()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkg(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final downloadPkg(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3
    const-string v2, "TmcOfflineDownload: OfflineManager"

    .line 4
    :try_start_0
    sget-boolean v3, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_a

    .line 6
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_2

    .line 7
    :cond_2
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v1, :cond_3

    .line 8
    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    .line 9
    :cond_4
    :try_start_1
    new-instance v3, Lcom/cloud/tmc/offline/download/OfflineManager$downloadPkg$offPkgConfig$pkgConfig$1;

    invoke-direct {v3}, Lcom/cloud/tmc/offline/download/OfflineManager$downloadPkg$offPkgConfig$pkgConfig$1;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-string v5, "object : TypeToken<OffPkgConfig?>() {}.type"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    :try_start_2
    const-string v3, "Json parse error"

    invoke-static {v2, v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v4

    :goto_1
    if-nez v6, :cond_6

    if-eqz v1, :cond_5

    .line 12
    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void

    .line 13
    :cond_6
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    invoke-virtual {v0, v6}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkParams(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v1, :cond_7

    .line 14
    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void

    .line 15
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 16
    new-instance v0, Lcom/cloud/h5update/bean/UpdateEntity;

    .line 17
    invoke-static {v6}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 18
    const-string v9, "*.html"

    .line 19
    invoke-virtual {v6}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v10

    .line 20
    invoke-virtual {v6}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgEncrypted()Ljava/lang/String;

    move-result-object v12

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    long-to-int v5, v13

    .line 22
    invoke-virtual {v6}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    move-result-object v14

    .line 23
    invoke-virtual {v6}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v15

    .line 24
    new-instance v7, Lcom/cloud/h5update/bean/PreloadResource;

    .line 25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 26
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object v11, v7

    .line 27
    invoke-direct/range {v11 .. v16}, Lcom/cloud/h5update/bean/PreloadResource;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 28
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v5, 0x4

    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 30
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object v7, v0

    .line 31
    invoke-direct/range {v7 .. v13}, Lcom/cloud/h5update/bean/UpdateEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 32
    invoke-virtual {v6}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    const-string v3, "normal"

    :cond_9
    invoke-virtual {v6, v3}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->setType(Ljava/lang/String;)V

    .line 33
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->setExtraConfig(Ljava/lang/String;)V

    .line 34
    const-string v7, "api"

    .line 35
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    new-instance v3, Lcom/cloud/tmc/offline/download/task/DownloadTask;

    new-instance v9, Lcom/cloud/tmc/offline/download/OfflineManager$downloadPkg$1;

    invoke-direct {v9, v6, v7, v1}, Lcom/cloud/tmc/offline/download/OfflineManager$downloadPkg$1;-><init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/cloud/tmc/offline/download/task/DownloadTask;-><init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v3}, Lcom/cloud/tmc/offline/download/OfflineManager;->execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    goto :goto_4

    :cond_a
    :goto_2
    if-eqz v1, :cond_b

    .line 36
    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    return-void

    .line 37
    :goto_3
    const-string v1, "Error downloading"

    invoke-static {v2, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public static synthetic downloadPkg$default(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkg(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic downloadPkg$default(Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkg(Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic downloadPkg$default(Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkg(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final downloadPkgFromPlatform(Ljava/lang/String;)V
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkgFromPlatform$default(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public static final downloadPkgFromPlatform(Ljava/lang/String;Z)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkgFromPlatform$default(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public static final downloadPkgFromPlatform(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 3
    sget-boolean v0, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadPkgFromPlatform: packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " antiShake: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isInit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    const-string v1, "TmcOfflineDownload: OfflineManager"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-boolean v0, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    if-eqz p0, :cond_3

    .line 7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    const-string v1, "api"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/cloud/tmc/offline/download/OfflineManager;->loadConfig(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 9
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic downloadPkgFromPlatform$default(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x4

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkgFromPlatform(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final enableVerifyServerFile(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->enableVerifyServerFile(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    const-string v0, "TmcOfflineDownload: OfflineManager"

    .line 10
    .line 11
    const-string v1, "Error enabling verify server file"

    .line 12
    .line 13
    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method private final execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V
    .locals 13

    .line 1
    sget-boolean v0, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "TmcOfflineDownload: OfflineManager"

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const-string p1, "Offline download is disabled"

    .line 15
    .line 16
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    const-string p1, "Offline download current process is not mini process\uff0ccannot execute task"

    .line 27
    .line 28
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    invoke-static {}, Lcom/cloud/tmc/offline/download/utils/NetworkUtils;->isConnected()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    const-string p1, "Network connection is not connected!"

    .line 39
    .line 40
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    invoke-interface {p1}, Lcom/cloud/tmc/offline/download/task/base/ITask;->getTrigger()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v3, "execute: task: "

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, " trigger: "

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 83
    .line 84
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->TASK_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 85
    .line 86
    new-instance v2, Landroid/os/Bundle;

    .line 87
    .line 88
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 89
    .line 90
    .line 91
    instance-of v3, p1, Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 92
    .line 93
    const/4 v4, 0x0

    .line 94
    if-eqz v3, :cond_4

    .line 95
    .line 96
    move-object v3, p1

    .line 97
    check-cast v3, Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    move-object v6, v3

    .line 104
    goto :goto_0

    .line 105
    :cond_4
    move-object v6, v4

    .line 106
    :goto_0
    sget-object v5, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 107
    .line 108
    invoke-interface {p1}, Lcom/cloud/tmc/offline/download/task/base/ITask;->getTrigger()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-interface {p1}, Lcom/cloud/tmc/offline/download/task/base/ITask;->isIdleRunTask()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    const/16 v11, 0x8

    .line 121
    .line 122
    const/4 v12, 0x0

    .line 123
    const/4 v9, 0x0

    .line 124
    move-object v10, p1

    .line 125
    invoke-static/range {v5 .. v12}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->pointCommonParams$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/offline/download/task/base/ITask;ILjava/lang/Object;)Landroid/os/Bundle;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 130
    .line 131
    .line 132
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 133
    .line 134
    const-string v3, ""

    .line 135
    .line 136
    invoke-interface {v0, v4, v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getMTaskQueue()Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->add(Lcom/cloud/tmc/offline/download/task/base/ITask;)I

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public static final getCheckVersionEnable$com_cloud_tmc_offline_download()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v2, "checkVersion"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    move v1, v2

    .line 26
    :cond_0
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-string v0, "enabled"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v0, "disabled"

    .line 32
    .line 33
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "check version enable config is "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "TmcOfflineDownload: OfflineManager"

    .line 51
    .line 52
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v1
.end method

.method public static synthetic getCheckVersionEnable$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final getContext$com_cloud_tmc_offline_download()Landroid/content/Context;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->application:Landroid/app/Application;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method private static final getInitLoad()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v2, "initLoad"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    move v1, v2

    .line 26
    :cond_0
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-string v0, "enabled"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v0, "disabled"

    .line 32
    .line 33
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "init load config is "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "TmcOfflineDownload: OfflineManager"

    .line 51
    .line 52
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v1
.end method

.method private static synthetic getInitLoad$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method private final getMTaskQueue()Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->mTaskQueue$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final getNetworkLoad()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v2, "networkLoad"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    move v1, v2

    .line 26
    :cond_0
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-string v0, "enabled"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v0, "disabled"

    .line 32
    .line 33
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "network load config is "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "TmcOfflineDownload: OfflineManager"

    .line 51
    .line 52
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v1
.end method

.method private static synthetic getNetworkLoad$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final getOfflineManifestTimeInterval$com_cloud_tmc_offline_download()J
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "offlineManifestTimeInterval"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-wide/32 v0, 0x36ee80

    .line 23
    .line 24
    .line 25
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "offline manifest time interval is "

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "TmcOfflineDownload: OfflineManager"

    .line 43
    .line 44
    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-wide v0
.end method

.method public static synthetic getOfflineManifestTimeInterval$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final getOfflineMaxUpdateTimeInterval$com_cloud_tmc_offline_download()J
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "offlineMaxUpdateTimeInterval"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-wide/32 v0, 0x5265c00

    .line 23
    .line 24
    .line 25
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "offline max update time interval is "

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "TmcOfflineDownload: OfflineManager"

    .line 43
    .line 44
    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-wide v0
.end method

.method public static synthetic getOfflineMaxUpdateTimeInterval$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final getOfflinePackageDownloadInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/ZipFileInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-static {v1, p0, v0, v2, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getOfflinePackageDownloadInfo$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    const-string v1, "TmcOfflineDownload: OfflineManager"

    .line 12
    .line 13
    const-string v2, "getOfflinePackageDownloadInfo"

    .line 14
    .line 15
    invoke-static {v1, v2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-object v0
.end method

.method public static final getOfflinePkgCachePath(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "TmcOfflineDownload: OfflineManager"

    const-string v1, "group"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 28
    :try_start_0
    sget-boolean v2, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    if-nez v2, :cond_0

    return-object v1

    .line 29
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isDisableOfflinePkgFw$com_cloud_tmc_offline_download()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 30
    :cond_1
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    invoke-virtual {v2, p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflinePackageVersion(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOfflinePkgCachePath: check offline package version is not available, group: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    .line 33
    invoke-static {v2, p0, v1, v3, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflinePackageDownloadStatus$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOfflinePkgCachePath: \u79bb\u7ebf\u5305\u5f53\u524d\u5c1a\u672a\u4e0b\u8f7d\uff0c\u7a0d\u540e\u518d\u8bf7\u6c42\uff0cappId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 35
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 36
    :cond_3
    invoke-static {v2, p0, v1, v3, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getOfflinePkgCachePath$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    .line 37
    :cond_4
    sget-object v3, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;->getZipFileInfo()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v6, 0x1

    xor-int/2addr v4, v6

    if-ne v4, v6, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {v3, p0, v5}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->reportMiniAppPackage(Ljava/lang/String;Z)V

    .line 38
    new-instance p0, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    .line 39
    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;->getZipFileInfo()Ljava/util/List;

    move-result-object v2

    .line 40
    invoke-direct {p0, v3, v4, v2}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 41
    :goto_0
    const-string v2, "Unable to load offline package"

    invoke-static {v0, v2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static final getOfflinePkgCachePath(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;
    .locals 25
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const/16 v22, 0x0

    const/4 v9, 0x1

    const-string v1, "group"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    move-object/from16 v4, p1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v23, 0x0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    if-nez v1, :cond_0

    return-object v23

    .line 2
    :cond_0
    new-instance v1, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    const v20, 0x3fe7b

    const/16 v21, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v24, v1

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v21}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppInfoModel;Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 4
    invoke-virtual/range {v24 .. v24}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v24

    .line 5
    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getStatus()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    move/from16 v9, v22

    .line 7
    :goto_0
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 8
    const-string v12, "api"

    const/16 v16, 0x18

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v2

    move-object v11, v3

    invoke-static/range {v10 .. v17}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->pointCommonParams$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/offline/download/task/base/ITask;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v4

    .line 9
    const-string v5, "offline_pkg_search_resources_type"

    .line 10
    const-string v6, "dir"

    .line 11
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v5, "offline_pkg_appId"

    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    invoke-virtual {v2, v9, v4}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->reportOfflinePkgApiUsageStatus(ZLandroid/os/Bundle;)V

    if-eqz v9, :cond_5

    .line 15
    new-instance v0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;

    const/4 v14, 0x7

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getZipUnCompressPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 17
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->setZipUnCompressPath(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 18
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->setUrl(Ljava/lang/String;)V

    .line 20
    :cond_3
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 21
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->setManifest(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    .line 22
    :cond_4
    new-instance v1, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    .line 23
    invoke-virtual {v3}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v3}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 25
    new-array v4, v4, [Lcom/cloud/tmc/offline/download/model/ZipFileInfo;

    aput-object v0, v4, v22

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 26
    invoke-direct {v1, v2, v3, v0}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 27
    :goto_2
    const-string v1, "TmcOfflineDownload: OfflineManager"

    const-string v2, "Unable to download package"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-object v23
.end method

.method public static final getOfflinePkgConfigTimeInterval$com_cloud_tmc_offline_download()J
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "offlinePkgConfigTimeInterval"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-wide/32 v0, 0x36ee80

    .line 23
    .line 24
    .line 25
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "offline pkg config time interval is "

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "TmcOfflineDownload: OfflineManager"

    .line 43
    .line 44
    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-wide v0
.end method

.method public static synthetic getOfflinePkgConfigTimeInterval$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final getOfflinePkgFwCachePath(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "TmcOfflineDownload: OfflineManager"

    .line 2
    .line 3
    const-string v1, "appId"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    sget-boolean v2, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isDisableOfflinePkgFw$com_cloud_tmc_offline_download()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_1
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 22
    .line 23
    invoke-virtual {v2, p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflinePackageVersion(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "getOfflinePkgFwCachePath: check offline package version is not available, appId: "

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v3, 0x2

    .line 53
    invoke-static {v2, p0, v1, v3, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflinePackageDownloadStatus$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_3

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v3, "getOfflinePkgFwCachePath: \u79bb\u7ebf\u5305\u5f53\u524d\u5c1a\u672a\u4e0b\u8f7d\uff0c\u7a0d\u540e\u518d\u8bf7\u6c42\uff0cappId: "

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_3
    invoke-static {v2, p0, v1, v3, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->getOfflinePkgFwCachePath$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    sget-object v3, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    .line 85
    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    const/4 v4, 0x1

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    const/4 v4, 0x0

    .line 91
    :goto_0
    invoke-virtual {v3, p0, v4}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->reportMiniAppPackage(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    return-object v2

    .line 95
    :goto_1
    const-string v2, "Unable to load offline"

    .line 96
    .line 97
    invoke-static {v0, v2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    return-object v1
.end method

.method public static final getOfflineResources(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "TmcOfflineDownload: OfflineManager"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-boolean v2, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isDisableOfflineResources$com_cloud_tmc_offline_download()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 17
    .line 18
    const/4 v7, 0x4

    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    move-object v3, v2

    .line 22
    move-object v4, p0

    .line 23
    move-object v5, p1

    .line 24
    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflineResourceLegal$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_2

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, "appId: "

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, " url: "

    .line 44
    .line 45
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p0, " is not valid"

    .line 52
    .line 53
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v2, p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflinePackageVersion(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    const-string v4, ", url: "

    .line 71
    .line 72
    if-nez v3, :cond_3

    .line 73
    .line 74
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v3, "getOfflineResources: check offline package version is not available, appId: "

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-object v1

    .line 101
    :cond_3
    const/4 v3, 0x2

    .line 102
    invoke-static {v2, p0, v1, v3, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflinePackageDownloadStatus$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_4

    .line 107
    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v3, "getOfflineResources: \u79bb\u7ebf\u5305\u5f53\u524d\u5c1a\u672a\u4e0b\u8f7d\uff0c\u7a0d\u540e\u518d\u8bf7\u6c42\uff0cappId: "

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-object v1

    .line 135
    :cond_4
    const-class v2, Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;

    .line 136
    .line 137
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;

    .line 142
    .line 143
    new-instance v3, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;

    .line 144
    .line 145
    invoke-direct {v3, p0, p1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v2, v3}, Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;->getResultWithInterceptorChain(Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;->getBody()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    sget-object v3, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    .line 157
    .line 158
    instance-of v4, v2, Ljava/io/File;

    .line 159
    .line 160
    invoke-virtual {v3, p0, v4, p1}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->trackResourceRecord(Ljava/lang/String;ZLjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    instance-of p0, v2, Ljava/io/File;

    .line 164
    .line 165
    if-eqz p0, :cond_5

    .line 166
    .line 167
    check-cast v2, Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .line 169
    return-object v2

    .line 170
    :goto_0
    const-string p1, "getOfflineResources"

    .line 171
    .line 172
    invoke-static {v0, p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    :cond_5
    return-object v1
.end method

.method public static final getPrefetchCdnAppInfoTimeInterval$com_cloud_tmc_offline_download()J
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "prefetchCdnAppInfoIntervals"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-wide/32 v0, 0x1b77400

    .line 23
    .line 24
    .line 25
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "prefetch cdn appInfo time interval is "

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "TmcOfflineDownload: OfflineManager"

    .line 43
    .line 44
    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-wide v0
.end method

.method public static synthetic getPrefetchCdnAppInfoTimeInterval$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "prefetchCdnAppInfoUrl"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    const-string v1, "https://app-oss.byte-app.com/platform/appinfo/releaseInfo/allReleaseAppInfo.zip"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "prefetch cdn appInfo url is "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "TmcOfflineDownload: OfflineManager"

    .line 47
    .line 48
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public static synthetic getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final init(Landroid/app/Application;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "TmcOfflineDownload: OfflineManager"

    .line 2
    .line 3
    const-string v1, "application"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/cloud/tmc/offline/download/OfflineManager$init$block$1;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/cloud/tmc/offline/download/OfflineManager$init$block$1;-><init>(Landroid/app/Application;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    sget-object p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->isMainThread()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "init is main thread: "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    sget-object p0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 42
    .line 43
    new-instance v2, Lcom/cloud/tmc/offline/download/b;

    .line 44
    .line 45
    invoke-direct {v2, v1}, Lcom/cloud/tmc/offline/download/b;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    return-void
.end method

.method private static final init$lambda$15(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const-string v0, "$block"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final initH5Update()V
    .locals 15

    .line 1
    const-string v0, "TmcOfflineDownload: OfflineManager"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    .line 4
    .line 5
    new-instance v2, Lcom/cloud/tmc/offline/download/deftimpl/UpdateListenerImpl;

    .line 6
    .line 7
    sget-object v3, Lcom/cloud/tmc/offline/download/OfflineManager;->onUpdateCallback:Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;

    .line 8
    .line 9
    invoke-direct {v2, v3}, Lcom/cloud/tmc/offline/download/deftimpl/UpdateListenerImpl;-><init>(Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/cloud/h5update/TH5Update$a;->r(Lv6/b;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getOFFLINE_DOWNLOAD_MODE()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v4, "\u79bb\u7ebf\u914d\u7f6e\u6a21\u5f0f\u4e3a\uff1a"

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v3, "test"

    .line 40
    .line 41
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v4, 0x3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    move v2, v4

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string v3, "pre"

    .line 51
    .line 52
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v2, 0x1

    .line 61
    :goto_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->isAppDebugAble()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move v4, v2

    .line 69
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v3, "\u79bb\u7ebf\u4e0b\u8f7d\u6a21\u5f0f\u4e3a\uff1a"

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v3, " (1:online;2:pre;3:test)"

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/cloud/h5update/TH5Update$a;->d()Lcom/cloud/h5update/TH5Update;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1, v4}, Lcom/cloud/h5update/TH5Update;->r(I)Lcom/cloud/h5update/TH5Update;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    move-object v6, v2

    .line 109
    check-cast v6, Landroid/app/Application;

    .line 110
    .line 111
    const/16 v13, 0x6e

    .line 112
    .line 113
    const/4 v14, 0x0

    .line 114
    const/4 v7, 0x0

    .line 115
    const/4 v8, 0x0

    .line 116
    const/4 v9, 0x0

    .line 117
    const/4 v10, 0x1

    .line 118
    const/4 v11, 0x0

    .line 119
    const/4 v12, 0x0

    .line 120
    invoke-static/range {v5 .. v14}, Lcom/cloud/h5update/TH5Update;->o(Lcom/cloud/h5update/TH5Update;Landroid/app/Application;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :catchall_0
    move-exception v1

    .line 125
    const-string v2, "Offline init H5 update failed!"

    .line 126
    .line 127
    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    :goto_2
    return-void
.end method

.method private final declared-synchronized initSomeThings(Landroid/app/Application;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isEnabled()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p1, "TmcOfflineDownload: OfflineManager"

    .line 9
    .line 10
    const-string v0, "OfflineManager init fails! Params is disabled"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_3

    .line 19
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const-string p1, "TmcOfflineDownload: OfflineManager"

    .line 24
    .line 25
    const-string v0, "OfflineManager is initialized"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :cond_1
    :try_start_2
    sput-object p1, Lcom/cloud/tmc/offline/download/OfflineManager;->application:Landroid/app/Application;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    .line 34
    :try_start_3
    const-class v0, Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;

    .line 35
    .line 36
    new-instance v1, Lcom/cloud/tmc/offline/download/c;

    .line 37
    .line 38
    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/c;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    .line 42
    .line 43
    .line 44
    const-class v0, Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;

    .line 45
    .line 46
    new-instance v1, Lcom/cloud/tmc/offline/download/d;

    .line 47
    .line 48
    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/d;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    .line 52
    .line 53
    .line 54
    const-class v0, Lcom/cloud/tmc/offline/download/intf/IOfflineDownloadConfig;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/cloud/tmc/offline/download/intf/IOfflineDownloadConfig;

    .line 61
    .line 62
    invoke-interface {v0}, Lcom/cloud/tmc/offline/download/intf/IOfflineDownloadConfig;->enableNetworkListener()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getNetworkLoad()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->networkListener:Lcom/cloud/tmc/offline/download/OfflineManager$networkListener$1;

    .line 75
    .line 76
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->addListener(Landroid/content/Context;Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_1
    move-exception p1

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/OfflineManager;->initH5Update()V

    .line 83
    .line 84
    .line 85
    const/4 p1, 0x1

    .line 86
    sput-boolean p1, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    .line 87
    .line 88
    const-string p1, "TmcOfflineDownload: OfflineManager"

    .line 89
    .line 90
    const-string v0, "OfflineManager initialized"

    .line 91
    .line 92
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getInitLoad()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    const-string v1, "init"

    .line 102
    .line 103
    const/16 v5, 0xe

    .line 104
    .line 105
    const/4 v6, 0x0

    .line 106
    const/4 v2, 0x0

    .line 107
    const/4 v3, 0x0

    .line 108
    const/4 v4, 0x0

    .line 109
    move-object v0, p0

    .line 110
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/offline/download/OfflineManager;->loadConfig$default(Lcom/cloud/tmc/offline/download/OfflineManager;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :goto_1
    :try_start_4
    const-string v0, "TmcOfflineDownload: OfflineManager"

    .line 115
    .line 116
    const-string v1, "Offline init failed"

    .line 117
    .line 118
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    .line 120
    .line 121
    :cond_3
    :goto_2
    monitor-exit p0

    .line 122
    return-void

    .line 123
    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 124
    throw p1
.end method

.method private static final initSomeThings$lambda$16()Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final initSomeThings$lambda$17()Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/resource/OfflineResourceManagerProxyImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/resource/OfflineResourceManagerProxyImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final isDisableOfflinePkgFw$com_cloud_tmc_offline_download()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v2, "offlinePkgFw"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_0
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const-string v0, "disable"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string v0, "enable"

    .line 31
    .line 32
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v3, "offlinePkgFw config is "

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "TmcOfflineDownload: OfflineManager"

    .line 50
    .line 51
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return v1
.end method

.method public static synthetic isDisableOfflinePkgFw$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final isDisableOfflineResources$com_cloud_tmc_offline_download()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v2, "offlineResources"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_0
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const-string v0, "disable"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string v0, "enable"

    .line 31
    .line 32
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v3, "offlineResources config is "

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "TmcOfflineDownload: OfflineManager"

    .line 50
    .line 51
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return v1
.end method

.method public static synthetic isDisableOfflineResources$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final isEnableAhaSoFormatConvert$com_cloud_tmc_offline_download()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v2, "ahaSoFormatConvert"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    move v1, v2

    .line 26
    :cond_0
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-string v0, "enabled"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v0, "disabled"

    .line 32
    .line 33
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "ahaSoFormatConvert config is "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "TmcOfflineDownload: OfflineManager"

    .line 51
    .line 52
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v1
.end method

.method public static synthetic isEnableAhaSoFormatConvert$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v2, "enablePrefetchCdnAppInfo"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    move v1, v2

    .line 26
    :cond_0
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-string v0, "enabled"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v0, "disabled"

    .line 32
    .line 33
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "prefetch cdn appInfo enable config is "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "TmcOfflineDownload: OfflineManager"

    .line 51
    .line 52
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v1
.end method

.method public static synthetic isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final isEnabled()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v2, "enable"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    move v1, v2

    .line 26
    :cond_0
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-string v0, "enabled"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v0, "disabled"

    .line 32
    .line 33
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "\u79bb\u7ebf\u6a21\u5757\u603b\u5f00\u5173\u662f "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "TmcOfflineDownload: OfflineManager"

    .line 51
    .line 52
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v1
.end method

.method public static synthetic isEnabled$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method private final isFast()Z
    .locals 3

    .line 1
    const-string v0, "is_fast"

    .line 2
    .line 3
    const-wide/32 v1, 0xea60

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/offline/download/utils/FastClickUtils;->isFastDoubleClick(Ljava/lang/String;J)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public static final isForceRefreshPrefetchCdnAppInfo$com_cloud_tmc_offline_download()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v2, "forceRefreshPrefetchCdnAppInfo"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    move v1, v2

    .line 26
    :cond_0
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-string v0, "enabled"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v0, "disabled"

    .line 32
    .line 33
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "force refresh prefetch cdn appInfo enable config is "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "TmcOfflineDownload: OfflineManager"

    .line 51
    .line 52
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v1
.end method

.method public static synthetic isForceRefreshPrefetchCdnAppInfo$com_cloud_tmc_offline_download$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method private final isHostFast()Z
    .locals 3

    .line 1
    const-string v0, "is_host_fast"

    .line 2
    .line 3
    const-wide/32 v1, 0xea60

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/offline/download/utils/FastClickUtils;->isFastDoubleClick(Ljava/lang/String;J)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public static final isInit$com_cloud_tmc_offline_download()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    .line 2
    .line 3
    return v0
.end method

.method private final isPrePullAppInfoFast()Z
    .locals 3

    .line 1
    const-string v0, "is_pre_pull_appInfo_fast"

    .line 2
    .line 3
    const-wide/32 v1, 0xea60

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/offline/download/utils/FastClickUtils;->isFastDoubleClick(Ljava/lang/String;J)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method private final loadConfig(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    if-eqz p3, :cond_2

    .line 14
    .line 15
    const-string v0, "enable"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    const-string v0, "disabled"

    .line 19
    .line 20
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "antiShake switch is "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "TmcOfflineDownload: OfflineManager"

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v0, " packageName: "

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    if-eqz p3, :cond_9

    .line 46
    .line 47
    new-instance p3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v3, "Loading configuration time is too short, try later! trigger: "

    .line 53
    .line 54
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    if-eqz p2, :cond_7

    .line 65
    .line 66
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_3

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    move-object v3, v2

    .line 85
    :goto_1
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_5

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/OfflineManager;->isFast()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_9

    .line 97
    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    if-eqz p4, :cond_6

    .line 120
    .line 121
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 122
    .line 123
    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    :cond_6
    return-void

    .line 127
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/OfflineManager;->isHostFast()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_9

    .line 132
    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string p2, " host is fast"

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    if-eqz p4, :cond_8

    .line 154
    .line 155
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 156
    .line 157
    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    :cond_8
    return-void

    .line 161
    :cond_9
    if-nez p2, :cond_b

    .line 162
    .line 163
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    if-eqz p2, :cond_a

    .line 168
    .line 169
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    goto :goto_3

    .line 174
    :cond_a
    move-object p2, v2

    .line 175
    :cond_b
    :goto_3
    if-eqz p2, :cond_f

    .line 176
    .line 177
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 178
    .line 179
    .line 180
    move-result p3

    .line 181
    if-nez p3, :cond_c

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_c
    new-instance p3, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v2, "loadConfig: trigger: "

    .line 190
    .line 191
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    invoke-static {v1, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    sget-object p3, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 211
    .line 212
    invoke-virtual {p3, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->checkOfflineLoadMiniAppLegal(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result p3

    .line 216
    if-nez p3, :cond_e

    .line 217
    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    const-string p3, "packageName: "

    .line 224
    .line 225
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string p2, " is not valid, unable to load config"

    .line 232
    .line 233
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    new-instance p2, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string p3, "loadConfig: "

    .line 246
    .line 247
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    if-eqz p4, :cond_d

    .line 261
    .line 262
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 263
    .line 264
    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    :cond_d
    return-void

    .line 268
    :cond_e
    new-instance p3, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    .line 269
    .line 270
    new-instance v0, Lcom/cloud/tmc/offline/download/OfflineManager$loadConfig$1;

    .line 271
    .line 272
    invoke-direct {v0, p1, p4}, Lcom/cloud/tmc/offline/download/OfflineManager$loadConfig$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 273
    .line 274
    .line 275
    const/4 p4, 0x0

    .line 276
    invoke-direct {p3, p2, p4, p1, v0}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;-><init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 277
    .line 278
    .line 279
    invoke-direct {p0, p3}, Lcom/cloud/tmc/offline/download/OfflineManager;->execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    .line 280
    .line 281
    .line 282
    return-void

    .line 283
    :cond_f
    :goto_4
    const-string p1, "packageName is null or empty!"

    .line 284
    .line 285
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    if-eqz p4, :cond_10

    .line 289
    .line 290
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 291
    .line 292
    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    :cond_10
    return-void
.end method

.method static synthetic loadConfig$default(Lcom/cloud/tmc/offline/download/OfflineManager;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    const/4 p3, 0x1

    .line 12
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 13
    .line 14
    if-eqz p5, :cond_2

    .line 15
    .line 16
    move-object p4, v0

    .line 17
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/offline/download/OfflineManager;->loadConfig(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static final prePullFeaturedAppInfo()V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "TmcOfflineDownload: OfflineManager"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/OfflineManager;->isPrePullAppInfoFast()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v1, "\u9884\u62c9\u53d6 AppInfo \u8dd1\u7684\u592a\u5feb\u4e86\uff01"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isEnablePrefetchCdnAppInfo$com_cloud_tmc_offline_download()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const-string v1, "\u9884\u62c9\u53d6\u7cbe\u9009 AppInfo \u80fd\u529b\u5df2\u5173\u95ed"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v2, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoCheckTask;

    .line 32
    .line 33
    sget-object v3, Lcom/cloud/tmc/offline/download/OfflineManager$prePullFeaturedAppInfo$1;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager$prePullFeaturedAppInfo$1;

    .line 34
    .line 35
    invoke-direct {v2, v3}, Lcom/cloud/tmc/offline/download/task/PrePullAppInfoCheckTask;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v2}, Lcom/cloud/tmc/offline/download/OfflineManager;->execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :goto_0
    const-string v2, "prePullFeaturedAppInfo failed"

    .line 43
    .line 44
    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    return-void
.end method

.method private final startDownloadTask(Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 14
    .line 15
    if-eqz p2, :cond_2

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/4 p2, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getOfflinePkgConfigCache(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-nez p2, :cond_4

    .line 28
    .line 29
    if-eqz p3, :cond_3

    .line 30
    .line 31
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_3
    return-void

    .line 37
    :cond_4
    invoke-virtual {p2}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getDownloadModel()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "startup"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v2, "startDownloadTask: trigger: "

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, " isStartUp: "

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "TmcOfflineDownload: OfflineManager"

    .line 73
    .line 74
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lcom/cloud/tmc/offline/download/task/DownloadTask;

    .line 78
    .line 79
    xor-int/lit8 v0, v0, 0x1

    .line 80
    .line 81
    new-instance v2, Lcom/cloud/tmc/offline/download/OfflineManager$startDownloadTask$1;

    .line 82
    .line 83
    invoke-direct {v2, p2, p1, p3}, Lcom/cloud/tmc/offline/download/OfflineManager$startDownloadTask$1;-><init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, p2, p1, v0, v2}, Lcom/cloud/tmc/offline/download/task/DownloadTask;-><init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v1}, Lcom/cloud/tmc/offline/download/OfflineManager;->execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method static synthetic startDownloadTask$default(Lcom/cloud/tmc/offline/download/OfflineManager;Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
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
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/OfflineManager;->startDownloadTask(Ljava/lang/String;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final verifyServerFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->verifyServerFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    const-string p1, "TmcOfflineDownload: OfflineManager"

    .line 10
    .line 11
    const-string v0, "Verify server file"

    .line 12
    .line 13
    invoke-static {p1, v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method


# virtual methods
.method public final clearCache(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 7
    .line 8
    new-instance v1, Lcom/cloud/tmc/offline/download/a;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Lcom/cloud/tmc/offline/download/a;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "clearCache error:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final getConfig$com_cloud_tmc_offline_download()Lcom/google/gson/JsonObject;
    .locals 3

    .line 1
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 8
    .line 9
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getKEY_OFFLINE_CONFIG()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getDEFAULT_OFFLINE_DOWNLOAD()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    const-string v1, "TmcOfflineDownload: OfflineManager"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    :cond_0
    :goto_0
    return-object v0
.end method

.method public final getOnUpdateCallback$com_cloud_tmc_offline_download()Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->onUpdateCallback:Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setOnUpdateCallback$com_cloud_tmc_offline_download(Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/h5update/TH5Update$a;->j()Lv6/b;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Lcom/cloud/tmc/offline/download/deftimpl/UpdateListenerImpl;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    check-cast v1, Lcom/cloud/tmc/offline/download/deftimpl/UpdateListenerImpl;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    move-object v1, v3

    .line 18
    :goto_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lcom/cloud/tmc/offline/download/deftimpl/UpdateListenerImpl;->setOnUpdateCallback(Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;)V

    .line 21
    .line 22
    .line 23
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    :cond_1
    if-nez v3, :cond_2

    .line 26
    .line 27
    new-instance v1, Lcom/cloud/tmc/offline/download/deftimpl/UpdateListenerImpl;

    .line 28
    .line 29
    invoke-direct {v1, p1}, Lcom/cloud/tmc/offline/download/deftimpl/UpdateListenerImpl;-><init>(Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/cloud/h5update/TH5Update$a;->r(Lv6/b;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    sput-object p1, Lcom/cloud/tmc/offline/download/OfflineManager;->onUpdateCallback:Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :goto_1
    const-string v0, "TmcOfflineDownload: OfflineManager"

    .line 39
    .line 40
    const-string v1, "set update callback failed!"

    .line 41
    .line 42
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :goto_2
    return-void
.end method
