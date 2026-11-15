.class public Lcom/cloud/tmc/miniapp/TmcInitializer;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcInitializer"

.field private static alreadyInited:Z = false

.field private static alreadySetupProxy:Z = false

.field private static sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/TmcInitializer;->sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/cloud/tmc/miniapp/TmcInitializer;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, v1}, Lcom/cloud/tmc/miniapp/TmcInitializer;->init(Landroid/content/Context;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/kernel/extension/ExtensionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lcom/cloud/tmc/miniapp/TmcInitializer;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/cloud/tmc/miniapp/TmcInitializer;->alreadyInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3
    :try_start_1
    sput-boolean v1, Lcom/cloud/tmc/miniapp/TmcInitializer;->alreadyInited:Z

    .line 4
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/TmcInitializer;->setupProxy(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_1

    .line 5
    :try_start_2
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getExtensionRegistry()Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    .line 6
    new-instance p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;-><init>()V

    .line 7
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    const-class v2, Lcom/cloud/tmc/integration/bridge/AppOptionsBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    const-class v2, Lcom/cloud/tmc/integration/bridge/FileBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    const-class v2, Lcom/cloud/tmc/integration/bridge/GetClipboardBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    const-class v2, Lcom/cloud/tmc/integration/bridge/GetSdkVersionBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    const-class v2, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    const-class v2, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    const-class v2, Lcom/cloud/tmc/integration/bridge/KeyboardBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    const-class v2, Lcom/cloud/tmc/integration/bridge/LocalStorageBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    const-class v2, Lcom/cloud/tmc/integration/bridge/FrameworkStorageBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    const-class v2, Lcom/cloud/tmc/integration/bridge/MakePhoneCallBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    const-class v2, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    const-class v2, Lcom/cloud/tmc/integration/bridge/AppBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    const-class v2, Lcom/cloud/tmc/integration/bridge/NavigateBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    const-class v2, Lcom/cloud/tmc/integration/bridge/NavigationBarBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    const-class v2, Lcom/cloud/tmc/integration/bridge/PerfBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    const-class v2, Lcom/cloud/tmc/integration/bridge/PullRefreshBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    const-class v2, Lcom/cloud/tmc/integration/bridge/SendToSmsBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    const-class v2, Lcom/cloud/tmc/integration/bridge/SetClipboardBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    const-class v2, Lcom/cloud/tmc/integration/bridge/ShareBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    const-class v2, Lcom/cloud/tmc/integration/bridge/VibrateBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    const-class v2, Lcom/cloud/tmc/integration/bridge/NetworkBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    const-class v2, Lcom/cloud/tmc/integration/bridge/BatteryBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    const-class v2, Lcom/cloud/tmc/integration/bridge/ScreenBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    const-class v2, Lcom/cloud/tmc/integration/bridge/PayBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    const-class v2, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const-class v2, Lcom/cloud/tmc/integration/bridge/AudioEffectBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    const-class v2, Lcom/cloud/tmc/integration/bridge/LatestUseBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    const-class v2, Lcom/cloud/tmc/integration/bridge/InnerWarmupBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    const-class v2, Lcom/cloud/tmc/integration/bridge/CommunicationBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    const-class v2, Lcom/cloud/tmc/integration/bridge/WifiBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    const-class v2, Lcom/cloud/tmc/integration/bridge/ReportBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    const-class v2, Lcom/cloud/tmc/integration/bridge/ScreenShotBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    const-class v2, Lcom/cloud/tmc/integration/bridge/TouchEventBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const-class v2, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const-class v2, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    const-class v2, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-class v2, Lcom/cloud/tmc/integration/bridge/HardwareBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-class v2, Lcom/cloud/tmc/integration/bridge/WebViewAbilityBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const-class v2, Lcom/cloud/tmc/ad/bridge/AdBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-class v2, Lcom/cloud/tmc/ad/bridge/AdAthenaBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const-class v2, Lcom/cloud/tmc/integration/internalBridge/GetAppConfigBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    const-class v2, Lcom/cloud/tmc/integration/internalBridge/GetPackageFileBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    const-class v2, Lcom/cloud/tmc/integration/internalBridge/NativeLogBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const-class v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    const-class v2, Lcom/cloud/tmc/integration/internalBridge/OfflineDownloadBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    const-class v2, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    const-class v2, Lcom/cloud/tmc/miniapp/bridge/NavigateMiniAppBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    const-class v2, Lcom/cloud/tmc/miniapp/bridge/TabBarBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const-class v2, Lcom/cloud/tmc/miniapp/bridge/ShowToastBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    const-class v2, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const-class v2, Lcom/cloud/tmc/integration/bridge/GlobalStorageBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const-class v2, Lcom/cloud/tmc/miniapp/bridge/NotifyMessageBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const-class v2, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const-class v2, Lcom/cloud/tmc/miniapp/bridge/AppManagerDataProviderBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    const-class v2, Lcom/cloud/tmc/integration/bridge/LocationBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    const-class v2, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const-class v2, Lcom/cloud/tmc/integration/bridge/OfflineAppBridge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {p0, v1}, Lcom/cloud/tmc/miniapp/TmcInitializer;->registerBridge(Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;Ljava/util/List;)V

    if-nez p1, :cond_3

    .line 66
    new-instance p1, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;-><init>(Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;)V

    .line 67
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register bridge done with jsapi count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->getActionCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {}, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->getInstance()Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->bindExtensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V

    .line 69
    invoke-static {p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->bind(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V

    .line 70
    invoke-static {p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->bindExtensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V

    .line 71
    sput-object p1, Lcom/cloud/tmc/miniapp/TmcInitializer;->sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    monitor-exit v0

    return-void

    .line 73
    :goto_1
    :try_start_3
    const-string p1, "setup ExtensionManager exception!"

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "setup ExtensionManager exception!"

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private static registerBridge(Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;Ljava/util/List;)V
    .locals 2
    .param p0    # Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/BridgeExtension;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Class;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-static {v0}, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->make(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->target:Ljava/lang/Class;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->scope:Ljava/lang/Class;

    .line 27
    .line 28
    invoke-interface {p0, v1, v0}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    const-string v1, "Failed to register bridge!"

    .line 34
    .line 35
    invoke-static {v1}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public static declared-synchronized reset()V
    .locals 2

    .line 1
    const-class v0, Lcom/cloud/tmc/miniapp/TmcInitializer;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-boolean v1, Lcom/cloud/tmc/miniapp/TmcInitializer;->alreadyInited:Z

    .line 6
    .line 7
    sput-boolean v1, Lcom/cloud/tmc/miniapp/TmcInitializer;->alreadySetupProxy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v1
.end method

.method public static declared-synchronized setupProxy(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-class v0, Lcom/cloud/tmc/miniapp/TmcInitializer;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/cloud/tmc/miniapp/TmcInitializer;->alreadySetupProxy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    :try_start_1
    sput-boolean v1, Lcom/cloud/tmc/miniapp/TmcInitializer;->alreadySetupProxy:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    .line 13
    :try_start_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->sApplicationContext:Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    const-class v1, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;

    .line 25
    .line 26
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/TmcApplicationContextGetter;

    .line 27
    .line 28
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/TmcApplicationContextGetter;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 35
    .line 36
    new-instance v2, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;

    .line 37
    .line 38
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceTrack;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    .line 45
    .line 46
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/BuildConfigProxyImp;

    .line 47
    .line 48
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/BuildConfigProxyImp;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const-class v1, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 55
    .line 56
    new-instance v2, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;

    .line 57
    .line 58
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const-class v1, Lcom/cloud/tmc/kernel/proxy/worker/IWorkerFactory;

    .line 65
    .line 66
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/WorkerImp;

    .line 67
    .line 68
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/WorkerImp;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const-class v1, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;

    .line 75
    .line 76
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/WebViewImp;

    .line 77
    .line 78
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/WebViewImp;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const-class v1, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    .line 85
    .line 86
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;

    .line 87
    .line 88
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    const-class v1, Lcom/cloud/tmc/integration/proxy/IRefreshProxy;

    .line 95
    .line 96
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/RefreshProxyImpl;

    .line 97
    .line 98
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/RefreshProxyImpl;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    const-class v1, Lcom/cloud/tmc/kernel/proxy/worker/JSAheadParamsProxy;

    .line 105
    .line 106
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/JSAheadParamsProxyImp;

    .line 107
    .line 108
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/JSAheadParamsProxyImp;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    const-class v1, Lcom/cloud/tmc/integration/performance/render/IRenderPool;

    .line 115
    .line 116
    new-instance v2, Lcom/cloud/tmc/integration/performance/render/RenderPool;

    .line 117
    .line 118
    invoke-direct {v2}, Lcom/cloud/tmc/integration/performance/render/RenderPool;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    const-class v1, Lcom/cloud/tmc/render/IRenderFactory;

    .line 125
    .line 126
    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;

    .line 127
    .line 128
    invoke-direct {v2}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    const-class v1, Lcom/cloud/tmc/worker/IWorkerManagerFactory;

    .line 135
    .line 136
    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;

    .line 137
    .line 138
    invoke-direct {v2}, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    const-class v1, Lcom/cloud/tmc/integration/performance/worker/IWorkerPool;

    .line 145
    .line 146
    new-instance v2, Lcom/cloud/tmc/integration/performance/worker/WorkerPool;

    .line 147
    .line 148
    invoke-direct {v2}, Lcom/cloud/tmc/integration/performance/worker/WorkerPool;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    const-class v1, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 155
    .line 156
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    .line 157
    .line 158
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    .line 165
    .line 166
    new-instance v2, Lcom/cloud/tmc/miniapp/TmcInitializer$1;

    .line 167
    .line 168
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/TmcInitializer$1;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    .line 172
    .line 173
    .line 174
    const-class v1, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    .line 175
    .line 176
    new-instance v2, Lcom/cloud/tmc/miniapp/TmcInitializer$2;

    .line 177
    .line 178
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/TmcInitializer$2;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    .line 182
    .line 183
    .line 184
    const-class v1, Lcom/cloud/tmc/kernel/proxy/offline/IOfflineManagerProxy;

    .line 185
    .line 186
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/TmcOfflineManagerProxyImpl;

    .line 187
    .line 188
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/TmcOfflineManagerProxyImpl;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    const-class v1, Lcom/cloud/tmc/integration/proxy/IAdActivityGetProxy;

    .line 195
    .line 196
    new-instance v2, Lcom/cloud/tmc/miniapp/ad/AdActivityGetImp;

    .line 197
    .line 198
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/ad/AdActivityGetImp;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    const-class v1, Lcom/cloud/tmc/integration/proxy/ReportFactoryProxy;

    .line 205
    .line 206
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory;

    .line 207
    .line 208
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/ReportFactory;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    const-class v1, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;

    .line 215
    .line 216
    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/OnRenderProcessGoneManager;

    .line 217
    .line 218
    invoke-direct {v2}, Lcom/cloud/tmc/integration/defaultImpl/OnRenderProcessGoneManager;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    const-class v1, Lcom/cloud/tmc/ad/IAdManagerProxy;

    .line 225
    .line 226
    new-instance v2, Lcom/cloud/tmc/miniapp/ad/AdManager;

    .line 227
    .line 228
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/ad/AdManager;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;

    .line 235
    .line 236
    new-instance v2, Lcom/cloud/tmc/miniapp/TmcInitializer$3;

    .line 237
    .line 238
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/TmcInitializer$3;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    .line 242
    .line 243
    .line 244
    const-class v1, Lcom/cloud/tmc/integration/proxy/IAdsenseProxy;

    .line 245
    .line 246
    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/AdsenseManager;

    .line 247
    .line 248
    invoke-direct {v2}, Lcom/cloud/tmc/integration/defaultImpl/AdsenseManager;-><init>()V

    .line 249
    .line 250
    .line 251
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    const-class v1, Lcom/cloud/tmc/integration/proxy/IRequestConfigProxy;

    .line 255
    .line 256
    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/RequestConfigManager;

    .line 257
    .line 258
    invoke-direct {v2}, Lcom/cloud/tmc/integration/defaultImpl/RequestConfigManager;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    const-class v1, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    .line 265
    .line 266
    new-instance v2, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    .line 267
    .line 268
    invoke-direct {v2}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    const-class v1, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    .line 275
    .line 276
    new-instance v2, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;

    .line 277
    .line 278
    invoke-direct {v2}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    const-class v1, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    .line 285
    .line 286
    new-instance v2, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;

    .line 287
    .line 288
    invoke-direct {v2}, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 295
    .line 296
    new-instance v2, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceUtils;

    .line 297
    .line 298
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/PerformanceUtils;-><init>()V

    .line 299
    .line 300
    .line 301
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    const-class v1, Lcom/cloud/tmc/render/ILocalChannelProxy;

    .line 305
    .line 306
    new-instance v2, Lcom/cloud/tmc/miniapp/TmcInitializer$4;

    .line 307
    .line 308
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/TmcInitializer$4;-><init>()V

    .line 309
    .line 310
    .line 311
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    .line 312
    .line 313
    .line 314
    const-class v1, Lcom/cloud/tmc/render/IMonitorWebviewManagerProxy;

    .line 315
    .line 316
    new-instance v2, Lcom/cloud/tmc/miniapp/TmcInitializer$5;

    .line 317
    .line 318
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/TmcInitializer$5;-><init>()V

    .line 319
    .line 320
    .line 321
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    .line 322
    .line 323
    .line 324
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 325
    .line 326
    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/TmcKVStorageImpl;

    .line 327
    .line 328
    invoke-direct {v2}, Lcom/cloud/tmc/integration/defaultImpl/TmcKVStorageImpl;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    const-class v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 335
    .line 336
    new-instance v2, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenterFactory;

    .line 337
    .line 338
    invoke-direct {v2}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenterFactory;-><init>()V

    .line 339
    .line 340
    .line 341
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    const-class v1, Lcom/cloud/tmc/kernel/resource/IFileResourceManager;

    .line 345
    .line 346
    new-instance v2, Lcom/cloud/tmc/integration/resource/FileResourceManager;

    .line 347
    .line 348
    invoke-direct {v2}, Lcom/cloud/tmc/integration/resource/FileResourceManager;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    const-class v1, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    .line 355
    .line 356
    new-instance v2, Lcom/cloud/tmc/integration/resource/ImageResourceManager;

    .line 357
    .line 358
    invoke-direct {v2}, Lcom/cloud/tmc/integration/resource/ImageResourceManager;-><init>()V

    .line 359
    .line 360
    .line 361
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    const-class v1, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;

    .line 365
    .line 366
    new-instance v2, Lcom/cloud/tmc/integration/resource/PackageResourceManager;

    .line 367
    .line 368
    invoke-direct {v2}, Lcom/cloud/tmc/integration/resource/PackageResourceManager;-><init>()V

    .line 369
    .line 370
    .line 371
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    const-class v1, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    .line 375
    .line 376
    new-instance v2, Lcom/cloud/tmc/integration/resource/BaseResourceProcessor;

    .line 377
    .line 378
    invoke-direct {v2}, Lcom/cloud/tmc/integration/resource/BaseResourceProcessor;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    const-class v1, Lcom/cloud/tmc/kernel/proxy/perf/IPerformanceAndErrorTracker;

    .line 385
    .line 386
    new-instance v2, Lcom/cloud/tmc/miniapp/TmcInitializer$6;

    .line 387
    .line 388
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/TmcInitializer$6;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    .line 392
    .line 393
    .line 394
    const-class v1, Lcom/cloud/tmc/kernel/proxy/core/IEngineFactory;

    .line 395
    .line 396
    new-instance v2, Lcom/cloud/tmc/miniapp/TmcInitializer$7;

    .line 397
    .line 398
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/TmcInitializer$7;-><init>()V

    .line 399
    .line 400
    .line 401
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    .line 402
    .line 403
    .line 404
    const-class v1, Lcom/cloud/tmc/kernel/proxy/IBridgeFactory;

    .line 405
    .line 406
    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/DefaultBridgeFactory;

    .line 407
    .line 408
    invoke-direct {v2}, Lcom/cloud/tmc/integration/defaultImpl/DefaultBridgeFactory;-><init>()V

    .line 409
    .line 410
    .line 411
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    new-instance v1, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouterManager;

    .line 415
    .line 416
    invoke-direct {v1}, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouterManager;-><init>()V

    .line 417
    .line 418
    .line 419
    const-class v2, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    .line 420
    .line 421
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    const-class v1, Lcom/cloud/tmc/kernel/bridge/IMsgDispatcher;

    .line 425
    .line 426
    new-instance v2, Lcom/cloud/tmc/integration/MsgDispatcher;

    .line 427
    .line 428
    invoke-direct {v2}, Lcom/cloud/tmc/integration/MsgDispatcher;-><init>()V

    .line 429
    .line 430
    .line 431
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    const-class v1, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    .line 435
    .line 436
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultClientStarter;

    .line 437
    .line 438
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultClientStarter;-><init>()V

    .line 439
    .line 440
    .line 441
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 442
    .line 443
    .line 444
    const-class v1, Lcom/cloud/tmc/integration/proxy/IFragmentManagerFactory;

    .line 445
    .line 446
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/TmcFragmentManagerFactory;

    .line 447
    .line 448
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/TmcFragmentManagerFactory;-><init>()V

    .line 449
    .line 450
    .line 451
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    const-class v1, Lcom/cloud/tmc/integration/invoke/ExtensionInvokerFactory;

    .line 455
    .line 456
    new-instance v2, Lcom/cloud/tmc/integration/invoke/DefaultExtensionInvokerFactory;

    .line 457
    .line 458
    invoke-direct {v2}, Lcom/cloud/tmc/integration/invoke/DefaultExtensionInvokerFactory;-><init>()V

    .line 459
    .line 460
    .line 461
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    const-class v1, Lcom/cloud/tmc/kernel/executor/IExecutorService;

    .line 465
    .line 466
    new-instance v2, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;

    .line 467
    .line 468
    invoke-direct {v2}, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;-><init>()V

    .line 469
    .line 470
    .line 471
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    const-class v1, Lcom/cloud/tmc/render/proxy/InjectJSProxy;

    .line 475
    .line 476
    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/InjectJSProxyImp;

    .line 477
    .line 478
    invoke-direct {v2}, Lcom/cloud/tmc/integration/defaultImpl/InjectJSProxyImp;-><init>()V

    .line 479
    .line 480
    .line 481
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    const-class v1, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    .line 485
    .line 486
    new-instance v2, Lcom/cloud/tmc/miniapp/TmcInitializer$8;

    .line 487
    .line 488
    invoke-direct {v2, p0}, Lcom/cloud/tmc/miniapp/TmcInitializer$8;-><init>(Landroid/content/Context;)V

    .line 489
    .line 490
    .line 491
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    .line 492
    .line 493
    .line 494
    const-class p0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 495
    .line 496
    new-instance v1, Lcom/cloud/tmc/miniapp/TmcInitializer$9;

    .line 497
    .line 498
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/TmcInitializer$9;-><init>()V

    .line 499
    .line 500
    .line 501
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    .line 502
    .line 503
    .line 504
    const-class p0, Lcom/cloud/tmc/render/IRenderWebivewStrategyCache;

    .line 505
    .line 506
    new-instance v1, Lcom/cloud/tmc/miniapp/TmcInitializer$10;

    .line 507
    .line 508
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/TmcInitializer$10;-><init>()V

    .line 509
    .line 510
    .line 511
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    .line 512
    .line 513
    .line 514
    const-class p0, Lcom/cloud/tmc/integration/proxy/DialogProxy;

    .line 515
    .line 516
    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;

    .line 517
    .line 518
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;-><init>()V

    .line 519
    .line 520
    .line 521
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 522
    .line 523
    .line 524
    const-class p0, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 525
    .line 526
    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;

    .line 527
    .line 528
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;-><init>()V

    .line 529
    .line 530
    .line 531
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 532
    .line 533
    .line 534
    const-class p0, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    .line 535
    .line 536
    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultLauncherMiniActivityProxy;

    .line 537
    .line 538
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultLauncherMiniActivityProxy;-><init>()V

    .line 539
    .line 540
    .line 541
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 542
    .line 543
    .line 544
    const-class p0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 545
    .line 546
    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;

    .line 547
    .line 548
    invoke-direct {v1}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;-><init>()V

    .line 549
    .line 550
    .line 551
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 552
    .line 553
    .line 554
    const-class p0, Lcom/cloud/tmc/integration/proxy/VibrateProxy;

    .line 555
    .line 556
    new-instance v1, Lcom/cloud/tmc/miniapp/TmcInitializer$11;

    .line 557
    .line 558
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/TmcInitializer$11;-><init>()V

    .line 559
    .line 560
    .line 561
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    .line 562
    .line 563
    .line 564
    const-class p0, Lcom/cloud/tmc/integration/proxy/NativePermissionProxy;

    .line 565
    .line 566
    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/NativePermissionImpl;

    .line 567
    .line 568
    invoke-direct {v1}, Lcom/cloud/tmc/integration/defaultImpl/NativePermissionImpl;-><init>()V

    .line 569
    .line 570
    .line 571
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    const-class p0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 575
    .line 576
    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl;

    .line 577
    .line 578
    invoke-direct {v1}, Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl;-><init>()V

    .line 579
    .line 580
    .line 581
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    const-class p0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 585
    .line 586
    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/TmcPathImpl;

    .line 587
    .line 588
    invoke-direct {v1}, Lcom/cloud/tmc/integration/defaultImpl/TmcPathImpl;-><init>()V

    .line 589
    .line 590
    .line 591
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 592
    .line 593
    .line 594
    const-class p0, Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 595
    .line 596
    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/TmcFileImpl;

    .line 597
    .line 598
    invoke-direct {v1}, Lcom/cloud/tmc/integration/defaultImpl/TmcFileImpl;-><init>()V

    .line 599
    .line 600
    .line 601
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    new-instance p0, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;

    .line 605
    .line 606
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;-><init>()V

    .line 607
    .line 608
    .line 609
    const-class v1, Lcom/cloud/tmc/integration/proxy/IAppInfoManagerProxy;

    .line 610
    .line 611
    invoke-static {v1, p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 612
    .line 613
    .line 614
    const-class v1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 615
    .line 616
    invoke-static {v1, p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 617
    .line 618
    .line 619
    const-class p0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 620
    .line 621
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/impl/TmcResourceManagerImpl;

    .line 622
    .line 623
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcResourceManagerImpl;-><init>()V

    .line 624
    .line 625
    .line 626
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 627
    .line 628
    .line 629
    const-class p0, Lcom/cloud/tmc/integration/proxy/AnimtionProxy;

    .line 630
    .line 631
    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;

    .line 632
    .line 633
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;-><init>()V

    .line 634
    .line 635
    .line 636
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 637
    .line 638
    .line 639
    const-class p0, Lcom/cloud/tmc/integration/proxy/ImageSelectProxy;

    .line 640
    .line 641
    new-instance v1, Lcom/cloud/tmc/miniapp/TmcInitializer$12;

    .line 642
    .line 643
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/TmcInitializer$12;-><init>()V

    .line 644
    .line 645
    .line 646
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    .line 647
    .line 648
    .line 649
    const-class p0, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    .line 650
    .line 651
    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/UpdateLoadingStepProxyImpl;

    .line 652
    .line 653
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/defaultimpl/UpdateLoadingStepProxyImpl;-><init>()V

    .line 654
    .line 655
    .line 656
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 657
    .line 658
    .line 659
    const-class p0, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;

    .line 660
    .line 661
    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;

    .line 662
    .line 663
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;-><init>()V

    .line 664
    .line 665
    .line 666
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 667
    .line 668
    .line 669
    const-class p0, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    .line 670
    .line 671
    new-instance v1, Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl;

    .line 672
    .line 673
    invoke-direct {v1}, Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl;-><init>()V

    .line 674
    .line 675
    .line 676
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 677
    .line 678
    .line 679
    const-class p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentProxy;

    .line 680
    .line 681
    new-instance v1, Lcom/cloud/tmc/miniapp/TmcInitializer$13;

    .line 682
    .line 683
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/TmcInitializer$13;-><init>()V

    .line 684
    .line 685
    .line 686
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    .line 687
    .line 688
    .line 689
    const-class p0, Lcom/cloud/tmc/kernel/node/IGetNodeSource;

    .line 690
    .line 691
    new-instance v1, Lcom/cloud/tmc/miniapp/h;

    .line 692
    .line 693
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/h;-><init>()V

    .line 694
    .line 695
    .line 696
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    .line 697
    .line 698
    .line 699
    const-class p0, Lcom/cloud/tmc/integration/proxy/ITaskQueueProxy;

    .line 700
    .line 701
    new-instance v1, Lcom/cloud/tmc/miniapp/i;

    .line 702
    .line 703
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/i;-><init>()V

    .line 704
    .line 705
    .line 706
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    .line 707
    .line 708
    .line 709
    const-class p0, Lcom/cloud/tmc/integration/proxy/AuthorityProxy;

    .line 710
    .line 711
    new-instance v1, Lcom/cloud/tmc/miniapp/j;

    .line 712
    .line 713
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/j;-><init>()V

    .line 714
    .line 715
    .line 716
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->setLazy(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V

    .line 717
    .line 718
    .line 719
    const-class p0, Lcom/cloud/tmc/kernel/proxy/render/IWebViewDownloadProxy;

    .line 720
    .line 721
    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/DefaultWebViewDownloadImpl;

    .line 722
    .line 723
    invoke-direct {v1}, Lcom/cloud/tmc/integration/defaultImpl/DefaultWebViewDownloadImpl;-><init>()V

    .line 724
    .line 725
    .line 726
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 727
    .line 728
    .line 729
    goto :goto_0

    .line 730
    :catchall_0
    move-exception p0

    .line 731
    :try_start_3
    const-string v1, "setupProxy error!"

    .line 732
    .line 733
    invoke-static {v1}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object p0

    .line 741
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 742
    .line 743
    .line 744
    :goto_0
    monitor-exit v0

    .line 745
    return-void

    .line 746
    :catchall_1
    move-exception p0

    .line 747
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 748
    throw p0
.end method
