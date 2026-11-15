.class public final Lcom/cloud/tmc/miniapp/GlobalPackageConfig;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/intf/IPackageConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;
    }
.end annotation


# static fields
.field private static final BRAND_VERSION_PREFIX:Ljava/lang/String; = "1"

.field public static final Companion:Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;

.field private static final SDK_BRAND_VERSION:Ljava/lang/String;

.field private static final SDK_BUILD_VARIANT_TYPE:Ljava/lang/String;

.field private static final SDK_DEV_VERSION:Ljava/lang/String;

.field private static appId:Ljava/lang/String;

.field private static frameworkVersion:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->Companion:Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getSDK_VERSION()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "1."

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->SDK_BRAND_VERSION:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getSDK_VERSION()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->SDK_DEV_VERSION:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getSDK_BUILD_VARIANT_TYPE()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->SDK_BUILD_VARIANT_TYPE:Ljava/lang/String;

    .line 43
    .line 44
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

.method public static final synthetic access$getAppId$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getFrameworkVersion$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->frameworkVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSDK_BRAND_VERSION$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->SDK_BRAND_VERSION:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSDK_BUILD_VARIANT_TYPE$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->SDK_BUILD_VARIANT_TYPE:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSDK_DEV_VERSION$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->SDK_DEV_VERSION:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setAppId$cp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setFrameworkVersion$cp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->frameworkVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private final saveValueForLauncher(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
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
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "miniLauncherGlobal"

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    const-string p2, ""

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v0, v1, v2, p1, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :goto_1
    const-string p2, "[GlobalPackageConfig] saveValueForLauncher"

    .line 27
    .line 28
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :goto_2
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->appId:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public getDevSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->SDK_DEV_VERSION:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrameworkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->frameworkVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpenMutipleTask()Z
    .locals 5

    .line 1
    :try_start_0
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
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "miniLauncherGlobal"

    .line 14
    .line 15
    const-string v3, "miniMutipleTask"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    return v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    const-string v1, "[GlobalPackageConfig] getMutipleTaskStatus"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->SDK_BRAND_VERSION:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "miniHostAppId"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->saveValueForLauncher(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object p1, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->appId:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public setFrameworkVersion(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "miniHostFwVersion"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->saveValueForLauncher(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->frameworkVersion:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public setOpenMutipleTask(Z)V
    .locals 4

    .line 1
    :try_start_0
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
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "miniLauncherGlobal"

    .line 14
    .line 15
    const-string v3, "miniMutipleTask"

    .line 16
    .line 17
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    const-string v0, "[GlobalPackageConfig] setOpenMutipleTask"

    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method
