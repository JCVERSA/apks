.class public final Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;
.implements Lcom/cloud/tmc/integration/proxy/IAppInfoManagerProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl$OooO00o;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->Companion:Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl$OooO00o;

    .line 7
    .line 8
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


# virtual methods
.method public final OooO00o(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;)Lcom/cloud/tmc/integration/model/AppModel;
    .locals 10

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 2
    const-string v2, "enableAppinfoCdn"

    .line 3
    invoke-virtual {v1, v2, v0}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x1

    const-string v3, "TmcAppInfoManagerImpl"

    if-eqz p2, :cond_1

    .line 4
    :try_start_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto/16 :goto_6

    :cond_1
    :goto_1
    move v0, v1

    :cond_2
    if-eqz v0, :cond_3

    return-object v2

    .line 5
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->getAppModelFromCDN(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppInfoModel;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 6
    sget-object v4, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v4, v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->generateAppModel(Lcom/cloud/tmc/integration/model/AppInfoModel;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    if-nez v0, :cond_4

    goto/16 :goto_5

    :cond_4
    const/4 v5, 0x6

    .line 7
    invoke-virtual {v0, v5}, Lcom/cloud/tmc/integration/model/AppModel;->setFromCacheType(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v5, "_pre"

    const-string v6, ",cdn appinfo compare result "

    const-string v7, ""

    if-eqz p3, :cond_9

    .line 8
    :try_start_2
    sget-object v8, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v8, v0}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->isShellType(Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    invoke-virtual {v4, v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    move-object v8, v7

    .line 10
    :cond_6
    invoke-virtual {v4, p3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    move-object v7, v9

    .line 11
    :goto_2
    invoke-virtual {v4, v8, v7}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appId ->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_d

    .line 13
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    move-result p3

    if-eq p3, v1, :cond_8

    .line 14
    const-string p3, "update pre appinfo use cdn"

    invoke-static {v3, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->updateAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    goto :goto_7

    .line 16
    :cond_8
    const-string p1, "current appinfo from pre,not update cdn appinfo "

    invoke-static {v3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 17
    :cond_9
    :goto_3
    invoke-virtual {v4, v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move-object v1, v7

    .line 18
    :cond_a
    invoke-virtual {v4, p3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_b

    goto :goto_4

    :cond_b
    move-object v7, p3

    .line 19
    :goto_4
    invoke-virtual {v4, v1, v7}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appModel is null,appId ->"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_d

    .line 22
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, v0, p3}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->updateAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 23
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 24
    const-string p3, "cdn"

    invoke-interface {p1, p2, p3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :cond_c
    :goto_5
    return-object v2

    .line 25
    :goto_6
    invoke-static {v3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_7
    return-object v2
.end method

.method public final OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_1

    .line 33
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 7

    .line 26
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "TmcAppInfoManagerImpl"

    if-nez v0, :cond_3

    .line 27
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packageUrl_MD5 old -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",current-> "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",used -> "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5220\u9664\u5168\u90e8"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",currentAppVersion:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\uff0coldAppVersion\uff1a"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ",usedAppVersion:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 30
    const-string p4, "Subpackage::"

    invoke-static {p4, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p3

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->clearAllFilesForVersion$default(Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    .line 32
    :cond_3
    const-string p1, "url \u5730\u5740\u4e00\u81f4\uff0c\u4e0d\u5220\u9664\u65e7\u7248\u672c\u5305"

    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final OooO0O0(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;)Lcom/cloud/tmc/integration/model/AppModel;
    .locals 9

    .line 1
    const-string v0, "TmcAppInfoManagerImpl"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_a

    .line 5
    .line 6
    :try_start_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->getAppModelFromConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppInfoModel;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_9

    .line 19
    .line 20
    sget-object v3, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->generateAppModel(Lcom/cloud/tmc/integration/model/AppInfoModel;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_1
    const/4 v4, 0x5

    .line 31
    invoke-virtual {v2, v4}, Lcom/cloud/tmc/integration/model/AppModel;->setFromCacheType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    const-string v4, "_pre"

    .line 35
    .line 36
    const-string v5, ",config appinfo compare result "

    .line 37
    .line 38
    const-string v6, ""

    .line 39
    .line 40
    if-eqz p3, :cond_6

    .line 41
    .line 42
    :try_start_1
    sget-object v7, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 43
    .line 44
    invoke-virtual {v7, v2}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->isShellType(Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {v3, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    if-nez v7, :cond_3

    .line 56
    .line 57
    move-object v7, v6

    .line 58
    :cond_3
    invoke-virtual {v3, p3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    if-nez v8, :cond_4

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    move-object v6, v8

    .line 66
    :goto_0
    invoke-virtual {v3, v7, v6}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v7, "appid ->"

    .line 76
    .line 77
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-static {v0, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    if-eqz v3, :cond_a

    .line 97
    .line 98
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    const/4 v3, 0x1

    .line 103
    if-eq p3, v3, :cond_5

    .line 104
    .line 105
    const-string p3, "update pre appinfo use config"

    .line 106
    .line 107
    invoke-static {v0, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance p3, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p0, p1, v2, p2}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->updateAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_5

    .line 129
    :catchall_0
    move-exception p1

    .line 130
    goto :goto_4

    .line 131
    :cond_5
    const-string p1, "current appinfo from pre,not update config"

    .line 132
    .line 133
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_6
    :goto_1
    const-string v7, "appmodel is null ,use config appinfo"

    .line 138
    .line 139
    invoke-static {v0, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    if-nez v7, :cond_7

    .line 147
    .line 148
    move-object v7, v6

    .line 149
    :cond_7
    invoke-virtual {v3, p3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    if-nez p3, :cond_8

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_8
    move-object v6, p3

    .line 157
    :goto_2
    invoke-virtual {v3, v7, v6}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result p3

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v6, "appmodel == null,appid ->"

    .line 167
    .line 168
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    if-eqz p3, :cond_a

    .line 188
    .line 189
    new-instance p3, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p3

    .line 204
    invoke-virtual {p0, p1, v2, p3}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->updateAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 208
    .line 209
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 214
    .line 215
    const-string p3, "config"

    .line 216
    .line 217
    invoke-interface {p1, p2, p3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    .line 219
    .line 220
    return-object v2

    .line 221
    :cond_9
    :goto_3
    return-object v1

    .line 222
    :goto_4
    const-string p2, "getAppModelFromConfig"

    .line 223
    .line 224
    invoke-static {v0, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    .line 226
    .line 227
    :cond_a
    :goto_5
    return-object v1
.end method

.method public delectOldVersionFilesAndUpdate(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "context"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "appModel"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, ""

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    move-object v3, v4

    .line 26
    :cond_0
    sget-object v5, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 27
    .line 28
    invoke-virtual {v5, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    new-instance v7, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v8, "\u5f53\u6b21->"

    .line 38
    .line 39
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, ","

    .line 46
    .line 47
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const-string v6, "TmcAppInfoManagerImpl"

    .line 58
    .line 59
    invoke-static {v6, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-nez v3, :cond_1

    .line 67
    .line 68
    move-object v3, v4

    .line 69
    :cond_1
    invoke-virtual {v0, v1, v3}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->getAppModelFromOld(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const-string v7, "Subpackage::"

    .line 74
    .line 75
    if-eqz v3, :cond_8

    .line 76
    .line 77
    invoke-virtual {v5, v3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    new-instance v9, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v10, "\u5220\u9664_"

    .line 87
    .line 88
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-static {v6, v8}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    if-nez v8, :cond_2

    .line 106
    .line 107
    move-object v8, v4

    .line 108
    :cond_2
    invoke-virtual {v0, v1, v8}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    if-eqz v8, :cond_3

    .line 129
    .line 130
    invoke-virtual {v8}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v14

    .line 134
    goto :goto_0

    .line 135
    :cond_3
    const/4 v14, 0x0

    .line 136
    :goto_0
    if-eqz v8, :cond_4

    .line 137
    .line 138
    invoke-virtual {v8}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v15

    .line 142
    goto :goto_1

    .line 143
    :cond_4
    const/4 v15, 0x0

    .line 144
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v2, "delectOldVersionFilesAndUpdate,oldVersion:"

    .line 150
    .line 151
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v2, ",oldUrl:"

    .line 158
    .line 159
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v2, "\uff0ccurrentAppVersion\uff1a"

    .line 166
    .line 167
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v9, ",currentUrl:"

    .line 174
    .line 175
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v9, ",usedAppVersion:"

    .line 182
    .line 183
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v10, ",usedUrl:"

    .line 190
    .line 191
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    invoke-static {v7, v10}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    if-nez v10, :cond_7

    .line 217
    .line 218
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v10

    .line 222
    if-eqz v8, :cond_5

    .line 223
    .line 224
    invoke-virtual {v8}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    goto :goto_2

    .line 229
    :cond_5
    const/4 v11, 0x0

    .line 230
    :goto_2
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v10

    .line 234
    if-nez v10, :cond_7

    .line 235
    .line 236
    sget-object v6, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 237
    .line 238
    invoke-virtual {v6, v1, v3}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    if-eqz v8, :cond_6

    .line 254
    .line 255
    invoke-virtual {v8}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v13

    .line 259
    goto :goto_3

    .line 260
    :cond_6
    const/4 v13, 0x0

    .line 261
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v11, "\u5220\u9664\u65e7\u7248\u672c\u5168\u91cf\u5305:"

    .line 267
    .line 268
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v2, ",oldAppVersion:"

    .line 281
    .line 282
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-static {v7, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_7
    const-string v2, "\u5168\u91cf\u5305 url \u7248\u672c\u4e00\u81f4,\u4e0d\u5220\u9664"

    .line 303
    .line 304
    invoke-static {v6, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    :cond_8
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    if-nez v2, :cond_9

    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_9
    move-object v4, v2

    .line 315
    :goto_5
    invoke-virtual {v0, v1, v4}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    if-eqz v2, :cond_a

    .line 320
    .line 321
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string v3, "_old"

    .line 334
    .line 335
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->updateAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {v5, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    const-string v4, "appID:"

    .line 359
    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v1, " updateAppModel version:"

    .line 367
    .line 368
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v1, " to old"

    .line 375
    .line 376
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-static {v7, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    :cond_a
    return-void
.end method

.method public deleteOldVersionFiles(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appModel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, ""

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    move-object v0, v1

    .line 20
    :cond_0
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 21
    .line 22
    invoke-virtual {v2, p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v5, "\u5f53\u6b21->"

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ","

    .line 40
    .line 41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v3, "TmcAppInfoManagerImpl"

    .line 52
    .line 53
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    move-object v0, v1

    .line 63
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->getAppModelFromOld(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v6, "\u5220\u9664_"

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    if-nez v3, :cond_2

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    move-object v1, v3

    .line 101
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->getSubpackageAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v2, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-nez v4, :cond_3

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    if-eqz v3, :cond_5

    .line 128
    .line 129
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-nez v4, :cond_4

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    if-eqz p3, :cond_5

    .line 137
    .line 138
    invoke-virtual {v2, v0, v3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result p3

    .line 142
    if-eqz p3, :cond_5

    .line 143
    .line 144
    invoke-virtual {p0, v1, p2, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    :goto_1
    return-void
.end method

.method public findUrlMappedAppId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, ""

    .line 7
    .line 8
    return-object p1
.end method

.method public getAppInfoModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppInfoModel;
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "query"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

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
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->getAppId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string v1, "APP_INFO_MODEL"

    .line 24
    .line 25
    invoke-interface {v0, p1, p2, v1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object p2, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    .line 39
    .line 40
    const-class v0, Lcom/cloud/tmc/integration/model/AppInfoModel;

    .line 41
    .line 42
    invoke-virtual {p2, p1, v0}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lcom/cloud/tmc/integration/model/AppInfoModel;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 50
    return-object p1
.end method

.method public getAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppModel;
    .locals 8

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "query"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/strategy/OooO00o;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->getAppId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/OooO00o;->OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "TmcAppInfoManagerImpl"

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string p1, "getPreAppinfoModel from memory"

    .line 26
    .line 27
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->getAppId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->getAppModelFromPre(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v2, 0x0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move-object v3, v2

    .line 48
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v5, "get preAppModel,appVersion:"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const-string v4, "Subpackage::"

    .line 66
    .line 67
    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    sget-object v3, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 73
    .line 74
    invoke-virtual {v3, v0}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->isShellType(Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-nez v6, :cond_3

    .line 79
    .line 80
    invoke-virtual {v3, p1, v0}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->checkZipDownloadStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-nez v6, :cond_3

    .line 85
    .line 86
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_2

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v3, p1, v6, v7}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->checkZipDownloadStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    new-instance v7, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v3, ",downloaded"

    .line 120
    .line 121
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    if-nez v6, :cond_3

    .line 132
    .line 133
    move-object v0, v2

    .line 134
    :cond_3
    if-nez v0, :cond_5

    .line 135
    .line 136
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->getAppId()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-eqz v0, :cond_4

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    goto :goto_1

    .line 151
    :cond_4
    move-object v3, v2

    .line 152
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v6, "get usedAppModel,appVersion:"

    .line 158
    .line 159
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_5
    if-eqz v0, :cond_6

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->isTestVersion()Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_6

    .line 179
    .line 180
    const-string p1, "\u5f53\u524d\u4f7f\u7528\u7684\u975e\u6b63\u5f0f\u7248\u672c\uff0c\u4e0d\u542f\u7528\u66ff\u6362\u5185\u7f6e\u548c cdn\u3001config \u80fd\u529b"

    .line 181
    .line 182
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    return-object v0

    .line 186
    :cond_6
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->getAppId()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {p0, p1, v1}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->getAppModelFromPackage(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    const-string v3, "0"

    .line 195
    .line 196
    if-eqz v1, :cond_a

    .line 197
    .line 198
    sget-object v5, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 199
    .line 200
    invoke-virtual {v5, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    if-nez v6, :cond_7

    .line 205
    .line 206
    move-object v6, v3

    .line 207
    :cond_7
    invoke-virtual {v5, v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    if-nez v7, :cond_8

    .line 212
    .line 213
    move-object v7, v3

    .line 214
    :cond_8
    invoke-virtual {v5, v6, v7}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    if-eqz v0, :cond_9

    .line 219
    .line 220
    if-eqz v5, :cond_a

    .line 221
    .line 222
    :cond_9
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->getAppId()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->resetAppPreModel(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    move-object v0, v1

    .line 230
    :cond_a
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->getAppId()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    const-string v5, "100000"

    .line 235
    .line 236
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-nez v1, :cond_d

    .line 241
    .line 242
    if-eqz v0, :cond_b

    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    const-string v5, "getAppModel,appVersion:"

    .line 254
    .line 255
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-static {v4, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->getAppId()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 273
    .line 274
    invoke-virtual {v2, v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    if-nez v2, :cond_c

    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_c
    move-object v3, v2

    .line 282
    :goto_2
    invoke-virtual {p0, p1, v1, v3}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->getAppModelFromOffline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    if-eqz v1, :cond_d

    .line 287
    .line 288
    move-object v0, v1

    .line 289
    :cond_d
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->getAppId()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {p0, p1, v1, v0}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    if-eqz v1, :cond_e

    .line 298
    .line 299
    move-object v0, v1

    .line 300
    :cond_e
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->getAppId()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    invoke-virtual {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->OooO00o(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    if-eqz p1, :cond_f

    .line 309
    .line 310
    move-object v0, p1

    .line 311
    :cond_f
    return-object v0
.end method

.method public getAppModelFromCDN(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppInfoModel;
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "_cdn"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 p2, 0x0

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    .line 43
    .line 44
    const-class v1, Lcom/cloud/tmc/integration/model/AppInfoModel;

    .line 45
    .line 46
    invoke-virtual {v0, p1, v1}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/cloud/tmc/integration/model/AppInfoModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    move-object p2, p1

    .line 53
    :catch_0
    :cond_1
    :goto_0
    return-object p2
.end method

.method public getAppModelFromConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppInfoModel;
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "_config"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 p2, 0x0

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    .line 43
    .line 44
    const-class v1, Lcom/cloud/tmc/integration/model/AppInfoModel;

    .line 45
    .line 46
    invoke-virtual {v0, p1, v1}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/cloud/tmc/integration/model/AppInfoModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    move-object p2, p1

    .line 53
    :catch_0
    :cond_1
    :goto_0
    return-object p2
.end method

.method public getAppModelFromDev(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getDEV_MODE()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "_dev"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :try_start_0
    sget-object p2, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    .line 50
    .line 51
    const-class v0, Lcom/cloud/tmc/integration/model/AppModel;

    .line 52
    .line 53
    invoke-virtual {p2, p1, v0}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/cloud/tmc/integration/model/AppModel;

    .line 58
    .line 59
    const/4 p2, 0x1

    .line 60
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/model/AppModel;->setFromCacheType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    move-object v1, p1

    .line 64
    :catch_0
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getAppModelFromOffline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "appId"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "currentVersion"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const-string v0, "TmcAppInfoManagerImpl"

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    const-string p1, "getAppModelFromOffline failed! current process is not miniProcess"

    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "getAppModelFromOffline,appVersion:"

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v3, "Subpackage::"

    .line 49
    .line 50
    invoke-static {v3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p2}, Lcom/cloud/tmc/offline/download/OfflineManager;->getOfflinePkgFwCachePath(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_a

    .line 58
    .line 59
    sget-object v4, Lcom/cloud/tmc/offline/download/utils/Utils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/Utils;

    .line 60
    .line 61
    invoke-virtual {v4, p1}, Lcom/cloud/tmc/offline/download/utils/Utils;->getAppVersionFromOfflinePkgCache(Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-nez v4, :cond_1

    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, ",offlineAppVersion:"

    .line 80
    .line 81
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v4, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    const-string v3, ":"

    .line 99
    .line 100
    if-nez v2, :cond_3

    .line 101
    .line 102
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 103
    .line 104
    invoke-virtual {v2, v4, p3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string p2, " \u79bb\u7ebf\u5305\u7248\u672c\u53f7\u672a\u5927\u4e8e\u6216\u7b49\u4e8e\u5f53\u524d\u8d44\u6e90\u5305 "

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p2, " ,\u4e0d\u4f7f\u7528\u79bb\u7ebf\u5305"

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_6

    .line 146
    .line 147
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;->getZipFileInfo()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-eqz p1, :cond_4

    .line 152
    .line 153
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    move-object p1, v1

    .line 161
    :goto_1
    if-eqz p1, :cond_5

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    if-eqz p3, :cond_5

    .line 168
    .line 169
    invoke-virtual {p3}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getAppInfo()Lcom/cloud/tmc/integration/model/AppInfoModel;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    goto :goto_2

    .line 174
    :cond_5
    move-object p3, v1

    .line 175
    :goto_2
    if-eqz p3, :cond_6

    .line 176
    .line 177
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 178
    .line 179
    invoke-virtual {v2, p3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->generateAppModel(Lcom/cloud/tmc/integration/model/AppInfoModel;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    goto :goto_3

    .line 184
    :cond_6
    move-object p3, v1

    .line 185
    :goto_3
    if-nez p3, :cond_7

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_7
    if-eqz p1, :cond_8

    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->getZipUnCompressPath()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    goto :goto_4

    .line 195
    :cond_8
    move-object p1, v1

    .line 196
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string p1, "/"

    .line 205
    .line 206
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string p1, ".zip"

    .line 213
    .line 214
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p3, p1}, Lcom/cloud/tmc/integration/model/AppModel;->setZipPath(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    :goto_5
    if-eqz p3, :cond_9

    .line 225
    .line 226
    const/4 p1, 0x4

    .line 227
    invoke-virtual {p3, p1}, Lcom/cloud/tmc/integration/model/AppModel;->setFromCacheType(I)V

    .line 228
    .line 229
    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string p2, " -> \u547d\u4e2d\u79bb\u7ebf\u5305"

    .line 245
    .line 246
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    return-object p3

    .line 257
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string p2, " -> offlineModel \u4e3a\u7a7a,\u4e0d\u4f7f\u7528\u79bb\u7ebf\u5305"

    .line 272
    .line 273
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :cond_a
    :goto_6
    return-object v1
.end method

.method public getAppModelFromOld(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "_old"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :try_start_0
    sget-object p2, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    .line 50
    .line 51
    const-class v0, Lcom/cloud/tmc/integration/model/AppModel;

    .line 52
    .line 53
    invoke-virtual {p2, p1, v0}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/cloud/tmc/integration/model/AppModel;

    .line 58
    .line 59
    const/4 p2, 0x2

    .line 60
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/model/AppModel;->setFromCacheType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    move-object v1, p1

    .line 64
    :catch_0
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getAppModelFromPackage(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;
    .locals 12

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/model/AppModel;

    .line 2
    .line 3
    const-string v1, "_native_"

    .line 4
    .line 5
    const-string v2, "context"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "appId"

    .line 11
    .line 12
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    const/4 v4, 0x0

    .line 19
    :try_start_0
    sget-object v5, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->Companion:Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;

    .line 20
    .line 21
    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;->getSDK_DEV_VERSION()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {p0, p1, p2, v5}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-lez v5, :cond_0

    .line 54
    .line 55
    sget-object v5, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    .line 56
    .line 57
    invoke-virtual {v5, v2, v0}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Lcom/cloud/tmc/integration/model/AppModel;

    .line 62
    .line 63
    invoke-virtual {v5, v3}, Lcom/cloud/tmc/integration/model/AppModel;->setFromCacheType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v5

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    move-object v5, v4

    .line 70
    :goto_0
    if-eqz v5, :cond_1

    .line 71
    .line 72
    return-object v5

    .line 73
    :goto_1
    const-string v6, "TmcAppInfoManagerImpl"

    .line 74
    .line 75
    const-string v7, "getAppModelFromPackage"

    .line 76
    .line 77
    invoke-static {v6, v7, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    const-class v5, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 81
    .line 82
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    check-cast v6, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 87
    .line 88
    sget-object v7, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->Companion:Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;

    .line 89
    .line 90
    invoke-virtual {v7}, Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;->getSDK_DEV_VERSION()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    new-instance v9, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v10, "isReadAssets_"

    .line 100
    .line 101
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v11, "_"

    .line 108
    .line 109
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    const/4 v9, 0x0

    .line 120
    invoke-interface {v6, p1, p2, v8, v9}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-eqz v6, :cond_2

    .line 125
    .line 126
    return-object v4

    .line 127
    :cond_2
    const/4 v6, 0x1

    .line 128
    if-eqz v2, :cond_3

    .line 129
    .line 130
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-nez v8, :cond_4

    .line 135
    .line 136
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v8, "mini_offline/"

    .line 142
    .line 143
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v8, "/"

    .line 150
    .line 151
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v8, ".json"

    .line 158
    .line 159
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/ResourceUtils;->readAssets2String(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    move v9, v6

    .line 171
    :cond_4
    :try_start_1
    sget-object v8, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    .line 172
    .line 173
    invoke-virtual {v8, v2, v0}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Lcom/cloud/tmc/integration/model/AppModel;

    .line 178
    .line 179
    invoke-virtual {v0, v3}, Lcom/cloud/tmc/integration/model/AppModel;->setFromCacheType(I)V

    .line 180
    .line 181
    .line 182
    if-eqz v9, :cond_5

    .line 183
    .line 184
    invoke-virtual {v7}, Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;->getSDK_DEV_VERSION()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {p0, p1, v0, v1}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->updateAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 214
    .line 215
    invoke-virtual {v7}, Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;->getSDK_DEV_VERSION()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-interface {v1, p1, p2, v2, v6}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    .line 242
    .line 243
    :cond_5
    move-object v4, v0

    .line 244
    :catch_0
    return-object v4
.end method

.method public getAppModelFromPre(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "_pre"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 p2, 0x0

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    .line 43
    .line 44
    const-class v1, Lcom/cloud/tmc/integration/model/AppModel;

    .line 45
    .line 46
    invoke-virtual {v0, p1, v1}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/cloud/tmc/integration/model/AppModel;

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/AppModel;->setFromCacheType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    move-object p2, p1

    .line 57
    :catch_0
    :cond_1
    :goto_0
    return-object p2
.end method

.method public getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "_used"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :try_start_0
    sget-object v2, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    .line 50
    .line 51
    const-class v3, Lcom/cloud/tmc/integration/model/AppModel;

    .line 52
    .line 53
    invoke-virtual {v2, v0, v3}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/cloud/tmc/integration/model/AppModel;

    .line 58
    .line 59
    const/4 v2, 0x2

    .line 60
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/model/AppModel;->setFromCacheType(I)V

    .line 61
    .line 62
    .line 63
    sget-object v2, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v2, p1, p2, v3}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->checkZipDownloadStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-nez p2, :cond_2

    .line 74
    .line 75
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v2, p1, p2, v3}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->checkZipDownloadStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    const-string p1, "Subpackage::"

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v5, "get AppModelFromUsed,appVersion:"

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v3, ",downloaded:"

    .line 113
    .line 114
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-static {p1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_2
    if-nez p2, :cond_3

    .line 128
    .line 129
    invoke-virtual {v2, v0}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->isShellType(Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 130
    .line 131
    .line 132
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    if-eqz p1, :cond_4

    .line 134
    .line 135
    :cond_3
    move-object v1, v0

    .line 136
    :catch_0
    :cond_4
    :goto_0
    return-object v1
.end method

.method public getAppModelHasNotOffline(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppModel;
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "query"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->getAppId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->getAppModelFromPre(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->isShellType(Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1, p1, v0}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->checkZipDownloadStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    :cond_0
    if-nez v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->getAppId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_1
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->getAppId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p0, p1, v1}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->getAppModelFromPackage(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const-string v4, "0"

    .line 63
    .line 64
    if-nez v3, :cond_2

    .line 65
    .line 66
    move-object v3, v4

    .line 67
    :cond_2
    invoke-virtual {v2, v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    if-nez v5, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    move-object v4, v5

    .line 75
    :goto_0
    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    :cond_4
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->getAppId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->resetAppPreModel(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    move-object v0, v1

    .line 91
    :cond_5
    return-object v0
.end method

.method public getAppWarmupModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppModel;
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "query"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

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
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->getAppId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery;->getAppId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p2, "_warmup"

    .line 36
    .line 37
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-interface {v0, p1, v1, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 p2, 0x0

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    .line 59
    .line 60
    const-class v1, Lcom/cloud/tmc/integration/model/AppModel;

    .line 61
    .line 62
    invoke-virtual {v0, p1, v1}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/cloud/tmc/integration/model/AppModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    move-object p2, p1

    .line 69
    :catch_0
    :cond_1
    :goto_0
    return-object p2
.end method

.method public getLastUpdateTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

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
    sget-object v1, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->Companion:Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;->getSDK_DEV_VERSION()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "APP_LAST_UPDATE_TIME_"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, p1, p2, v1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    return-wide p1
.end method

.method public getPreUnzipStatus(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "_preunzip"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public getSubpackageAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "_used"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :try_start_0
    sget-object p2, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    .line 50
    .line 51
    const-class v0, Lcom/cloud/tmc/integration/model/AppModel;

    .line 52
    .line 53
    invoke-virtual {p2, p1, v0}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/cloud/tmc/integration/model/AppModel;

    .line 58
    .line 59
    const/4 p2, 0x2

    .line 60
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/model/AppModel;->setFromCacheType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    move-object v1, p1

    .line 64
    :catch_0
    :cond_2
    :goto_0
    return-object v1
.end method

.method public refreshUpdateTime(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

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
    move-object v1, v0

    .line 18
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 19
    .line 20
    sget-object v0, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->Companion:Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;->getSDK_DEV_VERSION()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, "APP_LAST_UPDATE_TIME_"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    move-object v2, p1

    .line 44
    move-object v3, p2

    .line 45
    move-wide v5, p3

    .line 46
    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public resetAppPreModel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "_pre"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, ""

    .line 37
    .line 38
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public updateAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "key"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v1, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    .line 20
    .line 21
    invoke-virtual {v1, p2}, Lcom/cloud/tmc/integration/utils/JsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 32
    .line 33
    invoke-interface {v1, p1, v0, p3, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public updateAppModelByOffline(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "key"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->updateAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public updateAppWarmupModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v1, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    .line 15
    .line 16
    invoke-virtual {v1, p2}, Lcom/cloud/tmc/integration/utils/JsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p2, "_warmup"

    .line 41
    .line 42
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-interface {v2, p1, v0, p2, v1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public updateOldVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appModel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-nez p3, :cond_2

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    const-string p2, ""

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->getSubpackageAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p3, "_old"

    .line 46
    .line 47
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/prepare/impl/TmcAppInfoManagerImpl;->updateAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sget-object p3, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 62
    .line 63
    invoke-virtual {p3, p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v2, "appID:"

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p1, " updateAppModel version:"

    .line 81
    .line 82
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, " to old"

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v3, "TmcAppInfoManagerImpl"

    .line 98
    .line 99
    invoke-static {v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {p3, p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    new-instance p3, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string p2, "Subpackage::"

    .line 135
    .line 136
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_2
    return-void
.end method

.method public updatePreUnzipStatus(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "_preunzip"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v0, p1, p2, v1, p3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
