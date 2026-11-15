.class public final Lcom/cloud/tmc/miniapp/ByteAppManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;
    }
.end annotation


# static fields
.field public static final BYTEAPP_PKG_NAME:Ljava/lang/String; = "com.cloud.tmc.byteapp"

.field public static final INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

.field private static final TAG:Ljava/lang/String; = "TmcApp:ByteAppManager"

.field private static final activityStack:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static complete:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static isConfigInit:Z

.field private static isInit:Z

.field private static isMainProcessGetInitAthenaStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isMainProcessPreInit:Z

.field private static isPreInit:Z

.field private static miniAppLifecycleListener:Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;

.field private static miniBroadcastReceiver:Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;

.field private static miniProcessTimeStamp:J

.field public static sApplication:Landroid/app/Application;

.field private static schemeInitStatus:Z

.field private static tctpStatus:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->activityStack:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->isMainProcessGetInitAthenaStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->initVaid$lambda$6()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getActivityStack$p()Ljava/util/LinkedHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->activityStack:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic b(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->warmupMiniapp$lambda$1$lambda$0(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->preUnzip$lambda$5(Landroid/app/Application;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final checkIsPreInit(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "TmcApp:ByteAppManager"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_2

    .line 13
    :cond_0
    move-object p1, v1

    .line 14
    :goto_0
    instance-of v2, p1, Landroid/app/Application;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    check-cast p1, Landroid/app/Application;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object p1, v1

    .line 22
    :goto_1
    if-nez p1, :cond_2

    .line 23
    .line 24
    sget-object p1, Lcom/cloud/tmc/miniapp/ByteAppManager;->sApplication:Landroid/app/Application;

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getSApplication()Landroid/app/Application;

    .line 29
    .line 30
    .line 31
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    goto :goto_3

    .line 33
    :cond_2
    move-object v1, p1

    .line 34
    goto :goto_3

    .line 35
    :goto_2
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 39
    .line 40
    :try_start_1
    invoke-static {v1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->preInit(Landroid/app/Application;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    .line 42
    .line 43
    goto :goto_4

    .line 44
    :catchall_1
    move-exception p1

    .line 45
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :cond_4
    :goto_4
    return-void
.end method

.method public static synthetic d(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->init$lambda$2(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->preInit$lambda$8(Landroid/app/Application;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final getActivityStack$com_cloud_tmc_miniapp_sdk()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->activityStack:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getComplete$com_cloud_tmc_miniapp_sdk()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->complete:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getComplete$com_cloud_tmc_miniapp_sdk$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final getSApplication()Landroid/app/Application;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->sApplication:Landroid/app/Application;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "sApplication"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public static synthetic getSApplication$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final getSDKVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->Companion:Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;->getSDK_BRAND_VERSION()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final init(Landroid/app/Application;)I
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->init$default(Landroid/app/Application;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final init(Landroid/app/Application;Lkotlin/jvm/functions/Function0;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, v0, p1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->init(Landroid/app/Application;ZLkotlin/jvm/functions/Function0;)I

    move-result p0

    return p0
.end method

.method public static final init(Landroid/app/Application;Z)I
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    const-string v0, "application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->init$default(Landroid/app/Application;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final init(Landroid/app/Application;ZLkotlin/jvm/functions/Function0;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    sput-object p2, Lcom/cloud/tmc/miniapp/ByteAppManager;->complete:Lkotlin/jvm/functions/Function0;

    .line 5
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->setSApplication(Landroid/app/Application;)V

    .line 6
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/Utils;->setAppIfNecessary(Landroid/app/Application;)V

    .line 7
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->preInit(Landroid/app/Application;)V

    const/4 v2, -0x1

    const-string v3, "TmcApp:ByteAppManager"

    if-eqz p1, :cond_0

    .line 8
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "current process not allowed to start! processName:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {v3, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 11
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getCloseSdkSwitch()Z

    move-result p1

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app  init, closeSDK = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    return v2

    .line 13
    :cond_1
    sget-boolean p1, Lcom/cloud/tmc/miniapp/ByteAppManager;->isInit:Z

    if-eqz p1, :cond_2

    .line 14
    const-string p0, "already init finished"

    invoke-static {v3, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 p1, 0x1

    .line 15
    sput-boolean p1, Lcom/cloud/tmc/miniapp/ByteAppManager;->isInit:Z

    .line 16
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt p1, v2, :cond_4

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_miniapp_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/bytedance/sdk/component/uA/b;->a(Ljava/lang/String;)V

    .line 19
    :cond_4
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->registerNetworkCallback(Landroid/content/Context;)V

    .line 20
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->injectActivities()V

    .line 21
    invoke-static {p0}, Lyj/a;->b(Landroid/content/Context;)V

    const/4 p1, 0x6

    const/4 v2, 0x0

    .line 22
    invoke-static {p0, v2, v2, p1, v2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->init$default(Landroid/app/Application;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;ILjava/lang/Object;)V

    .line 23
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->intDebugMonitor()V

    .line 24
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->initVaid()V

    .line 25
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->initInnerWarmup(Landroid/app/Application;)V

    .line 26
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->initWebviewWarmup(Landroid/app/Application;)V

    .line 27
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object p1, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;

    .line 29
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object p1, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;

    const-string v0, "OooO0O0"

    const-string v1, "[IconDownloadManager] init"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sput-object p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;->OooO0O0:Landroid/app/Application;

    .line 32
    invoke-virtual {p1, p0}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o(Landroid/app/Application;)V

    .line 33
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 34
    invoke-static {}, Lcom/cloud/tmc/integration/utils/MiniRequestUtils;->requestAbilityConfig()V

    .line 35
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 36
    :catchall_0
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    .line 37
    :goto_0
    const-class p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    new-instance v0, Lcom/cloud/tmc/miniapp/ByteAppManager$init$1;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ByteAppManager$init$1;-><init>(Landroid/app/Application;)V

    const-string v1, ""

    invoke-interface {p1, p0, v1, v0}, Lcom/cloud/tmc/kernel/service/ConfigService;->loadService(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 38
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init finished! processName:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-class p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 40
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_SDK_PV:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {p0, v1, p1, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 41
    :try_start_1
    sget-object p0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance p1, Lcom/cloud/tmc/miniapp/f;

    invoke-direct {p1, p2}, Lcom/cloud/tmc/miniapp/f;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 42
    invoke-static {v3, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic init$default(Landroid/app/Application;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->init(Landroid/app/Application;Lkotlin/jvm/functions/Function0;)I

    move-result p0

    return p0
.end method

.method public static synthetic init$default(Landroid/app/Application;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 2
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ByteAppManager;->init(Landroid/app/Application;ZLkotlin/jvm/functions/Function0;)I

    move-result p0

    return p0
.end method

.method private static final init$lambda$2(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
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
    const-string v0, "TmcApp:ByteAppManager"

    .line 9
    .line 10
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method private final initAthena(Landroid/app/Application;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    .line 2
    .line 3
    const-string v0, "context"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/athena/AthenaConstants;->delay:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    .line 13
    .line 14
    sput-object p1, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO0OO:Landroid/app/Application;

    .line 15
    .line 16
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->isAppDebugAble()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "com.cloud.tmc.byteapp"

    .line 29
    .line 30
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/16 v3, 0xeab

    .line 35
    .line 36
    invoke-static {p1, v1, v3, v0, v2}, Lcom/transsion/ga/AthenaAnalytics;->Q(Landroid/content/Context;Ljava/lang/String;IZZ)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/transsion/ga/AthenaAnalytics;->d0(Z)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/transsion/ga/AthenaAnalytics;->b0(Z)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/athena/AthenaConstants;->currentProcessIsInitAthena:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private final initInnerWarmup(Landroid/app/Application;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-class v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;->init(Landroid/app/Application;)V

    .line 16
    .line 17
    .line 18
    const-class v0, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    .line 25
    .line 26
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;->init(Landroid/app/Application;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :catchall_0
    :cond_0
    return-void
.end method

.method private final initVaid()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 8
    .line 9
    new-instance v1, Lcom/cloud/tmc/miniapp/c;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/c;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    const-string v1, "TmcApp:ByteAppManager"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method private static final initVaid$lambda$6()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getSApplication()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->H(Landroid/content/Context;Z)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 17
    .line 18
    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getSApplication()Landroid/app/Application;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "miniLauncherGlobal"

    .line 23
    .line 24
    const-string v4, "athenaVaid"

    .line 25
    .line 26
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private final initWebviewWarmup(Landroid/app/Application;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-class v0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;->init(Landroid/app/Application;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    :catchall_0
    :cond_0
    return-void
.end method

.method private final injectActivities()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getSApplication()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/cloud/tmc/miniapp/ByteAppManager$injectActivities$1;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/ByteAppManager$injectActivities$1;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final intDebugMonitor()V
    .locals 3

    .line 1
    sget-object v0, Lcom/cloud/tmc/debugtools/DebugManager;->INSTANCE:Lcom/cloud/tmc/debugtools/DebugManager;

    .line 2
    .line 3
    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getSApplication()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-class v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/debugtools/DebugManager;->register(Landroid/app/Application;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static final isConfigInit$com_cloud_tmc_miniapp_sdk()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->isConfigInit:Z

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic isConfigInit$com_cloud_tmc_miniapp_sdk$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final isDev()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getDEV()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final isInit()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->isInit:Z

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic isInit$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final isMainProcessGetInitAthenaStatus$com_cloud_tmc_miniapp_sdk()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->isMainProcessGetInitAthenaStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic isMainProcessGetInitAthenaStatus$com_cloud_tmc_miniapp_sdk$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final isMainProcessPreInit$com_cloud_tmc_miniapp_sdk()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->isMainProcessPreInit:Z

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic isMainProcessPreInit$com_cloud_tmc_miniapp_sdk$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final isPreInit()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->isPreInit:Z

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic isPreInit$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final launchMiniAppDeeplink(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v1, "it.applicationContext"

    .line 10
    .line 11
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, ""

    .line 17
    .line 18
    :cond_0
    sget-object v1, Lcom/cloud/tmc/miniapp/CommonAppUtils;->INSTANCE:Lcom/cloud/tmc/miniapp/CommonAppUtils;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/CommonAppUtils;->getStartFromChannel()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, p0, p1, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->launchMiniApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public static final launchMiniAppForId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/ByteAppManager;->launchMiniAppForId$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public static final launchMiniAppForId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/ByteAppManager;->launchMiniAppForId$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public static final launchMiniAppForId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_1

    .line 3
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v0, p1, p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getLaunchContext(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    const-string v1, "100000"

    invoke-static {p2, v1}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    const-string v1, "scene_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p2, Lcom/cloud/tmc/miniapp/CommonAppUtils;->INSTANCE:Lcom/cloud/tmc/miniapp/CommonAppUtils;

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/CommonAppUtils;->getStartFromChannel()Ljava/lang/String;

    move-result-object p2

    const-string v1, "miniapp_frm_start"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 8
    :cond_0
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->launchMiniAppForId(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public static synthetic launchMiniAppForId$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x8

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ByteAppManager;->launchMiniAppForId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final onDestroy()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->onWarmupPoolDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final onWarmupPoolDestroy()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/fps/FpsManager;->INSTANCE:Lcom/cloud/tmc/fps/FpsManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/fps/FpsManager;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final otherProcessInit()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->isInit:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getSApplication()Landroid/app/Application;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/cloud/tmc/miniapp/ByteAppManager;->complete:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->init(Landroid/app/Application;ZLkotlin/jvm/functions/Function0;)I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "other process init finished! processName:"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "TmcApp:ByteAppManager"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public static final preInit(Landroid/app/Application;)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->setSApplication(Landroid/app/Application;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/Utils;->setAppIfNecessary(Landroid/app/Application;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    const-string v3, "TmcApp:ByteAppManager"

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    sget-boolean v1, Lcom/cloud/tmc/miniapp/ByteAppManager;->isMainProcessPreInit:Z

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    :try_start_0
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->initAthena(Landroid/app/Application;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v4, "application.applicationContext"

    .line 42
    .line 43
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->registerMiniReceiver(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    sput-boolean v2, Lcom/cloud/tmc/miniapp/ByteAppManager;->isMainProcessPreInit:Z

    .line 50
    .line 51
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v1, "current process not allowed to preInit! processName:"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v3, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_1
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 83
    .line 84
    sget-boolean v1, Lcom/cloud/tmc/miniapp/ByteAppManager;->isPreInit:Z

    .line 85
    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    sget-object v1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 90
    .line 91
    new-instance v4, Lcom/cloud/tmc/miniapp/d;

    .line 92
    .line 93
    invoke-direct {v4, p0}, Lcom/cloud/tmc/miniapp/d;-><init>(Landroid/app/Application;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v4}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->configInit(Landroid/app/Application;)V

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getCloseSdkSwitch()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v5, "app fresh config, preInit closeSDK = "

    .line 112
    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    if-eqz v1, :cond_3

    .line 127
    .line 128
    return-void

    .line 129
    :cond_3
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->initAthena(Landroid/app/Application;)V

    .line 130
    .line 131
    .line 132
    sput-object p0, Lcom/cloud/tmc/worker/utils/Utils;->app:Landroid/app/Application;

    .line 133
    .line 134
    new-instance v0, Lcom/google/gson/GsonBuilder;

    .line 135
    .line 136
    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-class v1, Lcom/cloud/tmc/integration/proxy/IRequestConfigProxy;

    .line 144
    .line 145
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Lcom/cloud/tmc/integration/proxy/IRequestConfigProxy;

    .line 150
    .line 151
    invoke-interface {v4}, Lcom/cloud/tmc/integration/proxy/IRequestConfigProxy;->preLoadConfig()V

    .line 152
    .line 153
    .line 154
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Lcom/cloud/tmc/integration/proxy/IRequestConfigProxy;

    .line 159
    .line 160
    invoke-interface {v1}, Lcom/cloud/tmc/integration/proxy/IRequestConfigProxy;->repairIntToFloat()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_4

    .line 165
    .line 166
    new-instance v1, Lcom/cloud/tmc/miniapp/ByteAppManager$preInit$2;

    .line 167
    .line 168
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/ByteAppManager$preInit$2;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    new-instance v4, Lcom/cloud/tmc/kernel/utils/CustomizedObjectTypeAdapter;

    .line 176
    .line 177
    invoke-direct {v4}, Lcom/cloud/tmc/kernel/utils/CustomizedObjectTypeAdapter;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 181
    .line 182
    .line 183
    :cond_4
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 184
    .line 185
    .line 186
    move-result-wide v4

    .line 187
    sput-wide v4, Lcom/cloud/tmc/miniapp/ByteAppManager;->miniProcessTimeStamp:J

    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->setGsonDelegate(Lcom/google/gson/Gson;)V

    .line 194
    .line 195
    .line 196
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/TmcInitializer;->init(Landroid/content/Context;)V

    .line 197
    .line 198
    .line 199
    sput-boolean v2, Lcom/cloud/tmc/miniapp/ByteAppManager;->isPreInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :catchall_1
    move-exception p0

    .line 203
    invoke-static {v3, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    :goto_1
    return-void
.end method

.method private static final preInit$lambda$8(Landroid/app/Application;)V
    .locals 2

    .line 1
    const-string v0, "$application"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->warmUpConfigMMKV()V

    .line 9
    .line 10
    .line 11
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 18
    .line 19
    const-string v1, "miniLauncherGlobal"

    .line 20
    .line 21
    invoke-interface {v0, p0, v1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->warmUpMMKVFile(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    const-string v0, "TmcApp:ByteAppManager"

    .line 27
    .line 28
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method private static final preUnzip$lambda$5(Landroid/app/Application;)V
    .locals 4

    .line 1
    const-string v0, "TmcApp:ByteAppManager"

    .line 2
    .line 3
    const-string v1, "$application"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 9
    .line 10
    const-string v2, "preUnZipIdList"

    .line 11
    .line 12
    const-string v3, "[\"100000\"]"

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-class v2, Ljava/util/List;

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    instance-of v2, v1, Ljava/util/List;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    check-cast v1, Ljava/util/List;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    if-nez v1, :cond_1

    .line 35
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :goto_1
    const-string v2, "preUnzipList eror"

    .line 43
    .line 44
    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_2
    :try_start_1
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0;

    .line 53
    .line 54
    sget-object v3, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO0O0:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p0, v1}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o(Landroid/app/Application;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :catchall_1
    move-exception v1

    .line 64
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :goto_3
    :try_start_2
    const-class v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    const-string v2, "enablePreUnZipRetry"

    .line 79
    .line 80
    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigBoolean(Ljava/lang/String;Z)Z

    .line 81
    .line 82
    .line 83
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 84
    goto :goto_4

    .line 85
    :catchall_2
    const/4 v1, 0x0

    .line 86
    :cond_2
    :goto_4
    if-eqz v1, :cond_3

    .line 87
    .line 88
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0;

    .line 89
    .line 90
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO0O0:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 91
    .line 92
    invoke-virtual {v0, p0, v1}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o(Landroid/app/Application;Ljava/util/List;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    return-void
.end method

.method public static final renderWarmup(ZZI)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final reportForExternal(Ljava/lang/String;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "target"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->reportForExternal$default(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public static final reportForExternal(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "target"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/cloud/tmc/reporttrack/ReportForExternal;->INSTANCE:Lcom/cloud/tmc/reporttrack/ReportForExternal;

    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/reporttrack/ReportForExternal;->report(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic reportForExternal$default(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->reportForExternal(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final setAppId(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v0, p0}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->setAppId(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public static final setDataSyncCallback(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppDataSyncCallback;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "TmcApp:ByteAppManager"

    .line 2
    .line 3
    const-string v1, "setDataSyncCallback"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->setDataSyncCallback(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppDataSyncCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static final setDebugLogMode(Z)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->enableDebugLog(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final setLoginHostInfo(Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final setMainProcessGetInitAthenaStatus$com_cloud_tmc_miniapp_sdk(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p0, Lcom/cloud/tmc/miniapp/ByteAppManager;->isMainProcessGetInitAthenaStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    return-void
.end method

.method public static final setMiniAppCustomConfig(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/integration/utils/AppUtils;->updateMiniappCustomConfig(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :catchall_0
    return-void
.end method

.method public static final setOpenMutipleTask(Ljava/lang/Boolean;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x1

    .line 19
    :goto_0
    invoke-interface {v0, p0}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->setOpenMutipleTask(Z)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public static final setSApplication(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p0, Lcom/cloud/tmc/miniapp/ByteAppManager;->sApplication:Landroid/app/Application;

    .line 7
    .line 8
    return-void
.end method

.method public static final startUpMiniService()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getTargetProcess()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getDEFAULT_TARGET_PROCESS()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object v0, Lcom/cloud/tmc/miniapp/ipc/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/OooO00o$OooO00o;

    .line 19
    .line 20
    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getSApplication()Landroid/app/Application;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "sApplication.applicationContext"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/ipc/OooO00o$OooO00o;->OooO00o(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static final warmupMiniapp(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;->INSTANCE:Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;

    .line 4
    .line 5
    new-instance v1, Lcom/cloud/tmc/miniapp/e;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/e;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;->runOnBackground(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :catchall_0
    :cond_0
    return-void
.end method

.method private static final warmupMiniapp$lambda$1$lambda$0(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p0, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->warmupEntrance(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    :catchall_0
    return-void
.end method

.method public static final workerWarmup(ZZI)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public final checkPreInitConfig(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    instance-of v1, p1, Landroid/app/Application;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast p1, Landroid/app/Application;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/Utils;->setAppIfNecessary(Landroid/app/Application;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 20
    .line 21
    const-string v1, "enablePreInitV2"

    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :catchall_0
    :cond_1
    return v0
.end method

.method public final configInit(Landroid/app/Application;)V
    .locals 3

    .line 1
    const-string v0, "TmcApp:ByteAppManager"

    .line 2
    .line 3
    const-string v1, "application"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->setSApplication(Landroid/app/Application;)V

    .line 9
    .line 10
    .line 11
    sget-boolean v1, Lcom/cloud/tmc/miniapp/ByteAppManager;->isConfigInit:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->preLoadConfig$com_cloud_tmc_miniapp_sdk(Landroid/app/Application;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-class v1, Lcom/cloud/tmc/kernel/proxy/network/IChangeUrlProxy;

    .line 22
    .line 23
    new-instance v2, Lcom/cloud/tmc/miniapp/DynamicChangeUrlImpl;

    .line 24
    .line 25
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/DynamicChangeUrlImpl;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const-class v1, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;

    .line 32
    .line 33
    new-instance v2, Lcom/cloud/tmc/miniapp/ConfigImpl;

    .line 34
    .line 35
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/ConfigImpl;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 42
    .line 43
    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/TmcKVStorageImpl;

    .line 44
    .line 45
    invoke-direct {v2}, Lcom/cloud/tmc/integration/defaultImpl/TmcKVStorageImpl;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const-class v1, Lcom/cloud/tmc/kernel/service/EnvironmentService;

    .line 52
    .line 53
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/EnvironmentServiceImpl;

    .line 54
    .line 55
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/EnvironmentServiceImpl;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const-class v1, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 62
    .line 63
    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 64
    .line 65
    invoke-direct {v2, p1}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const-class v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 72
    .line 73
    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;

    .line 74
    .line 75
    invoke-direct {v2}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    sput-boolean v1, Lcom/cloud/tmc/miniapp/ByteAppManager;->isConfigInit:Z

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->preLoadConfig$com_cloud_tmc_miniapp_sdk(Landroid/app/Application;)V

    .line 85
    .line 86
    .line 87
    const-string p1, "pre config init"

    .line 88
    .line 89
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :goto_0
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    return-void
.end method

.method public final getApplication$com_cloud_tmc_miniapp_sdk()Landroid/app/Application;
    .locals 2

    .line 1
    const-string v0, "TmcApp:ByteAppManager"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/miniapp/ByteAppManager;->sApplication:Landroid/app/Application;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "getapplication: sApplication"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getSApplication()Landroid/app/Application;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v1, "Utils.getApp()"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    :goto_1
    return-object v0
.end method

.method public final getMiniAppLifecycleListener$com_cloud_tmc_miniapp_sdk()Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->miniAppLifecycleListener:Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMiniProcessTimeStamp()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->miniProcessTimeStamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSchemeInitStatus()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->schemeInitStatus:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getTctpStatus()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->tctpStatus:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final preLoadConfig$com_cloud_tmc_miniapp_sdk(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/service/ConfigService;->loadPreService(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    const-string v0, "TmcApp:ByteAppManager"

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final preUnzip(Landroid/app/Application;)V
    .locals 3

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v2, "enablePreUnZipV3"

    .line 24
    .line 25
    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    const/4 v1, 0x0

    .line 31
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 32
    .line 33
    const-string p1, "TmcApp:ByteAppManager"

    .line 34
    .line 35
    const-string v0, "Disable preZip"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 42
    .line 43
    new-instance v1, Lcom/cloud/tmc/miniapp/b;

    .line 44
    .line 45
    invoke-direct {v1, p1}, Lcom/cloud/tmc/miniapp/b;-><init>(Landroid/app/Application;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public final registerMiniAppLifecycleListener(Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMainProcess()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sput-object p1, Lcom/cloud/tmc/miniapp/ByteAppManager;->miniAppLifecycleListener:Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    :catchall_0
    :cond_0
    return-void
.end method

.method public final registerMiniReceiver(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, "TmcApp:ByteAppManager"

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/miniapp/ByteAppManager;->miniBroadcastReceiver:Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string p1, "registerMiniReceiver: miniBroadcastReceiver is not null"

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMainProcess()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    const-string p1, "registerMiniReceiver: not main process"

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance v1, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;

    .line 33
    .line 34
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v1, Lcom/cloud/tmc/miniapp/ByteAppManager;->miniBroadcastReceiver:Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;

    .line 38
    .line 39
    new-instance v1, Landroid/content/IntentFilter;

    .line 40
    .line 41
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "com.cloud.tmc.miniapp.process_id"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v2, "com.cloud.tmc.miniapp.addhome_success"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v2, "com.cloud.tmc.miniapp.start_time"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v2, "com.cloud.tmc.miniapp.use_time"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v2, "com.cloud.tmc.miniapp.report_cache"

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    .line 71
    const/16 v3, 0x21

    .line 72
    .line 73
    if-lt v2, v3, :cond_2

    .line 74
    .line 75
    sget-object v2, Lcom/cloud/tmc/miniapp/ByteAppManager;->miniBroadcastReceiver:Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;

    .line 76
    .line 77
    const/4 v3, 0x4

    .line 78
    invoke-static {p1, v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    sget-object v2, Lcom/cloud/tmc/miniapp/ByteAppManager;->miniBroadcastReceiver:Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;

    .line 83
    .line 84
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    :goto_0
    const-string p1, "registerMiniReceiver:success"

    .line 88
    .line 89
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :goto_1
    const-string v1, "registerMiniReceiver Error:"

    .line 94
    .line 95
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :goto_2
    return-void
.end method

.method public final setMiniAppLifecycleListener$com_cloud_tmc_miniapp_sdk(Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/cloud/tmc/miniapp/ByteAppManager;->miniAppLifecycleListener:Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setMiniProcessTimeStamp(J)V
    .locals 0

    .line 1
    sput-wide p1, Lcom/cloud/tmc/miniapp/ByteAppManager;->miniProcessTimeStamp:J

    .line 2
    .line 3
    return-void
.end method

.method public final setSchemeInitStatus(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/cloud/tmc/miniapp/ByteAppManager;->schemeInitStatus:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setTctpStatus(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/cloud/tmc/miniapp/ByteAppManager;->tctpStatus:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method
