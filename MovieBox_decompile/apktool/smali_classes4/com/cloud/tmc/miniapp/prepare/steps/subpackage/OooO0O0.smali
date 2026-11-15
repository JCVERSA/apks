.class public final Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;
.super Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO00o;
.source "source.java"


# instance fields
.field public final OooO:Ljava/lang/String;

.field public final OooOO0:Ljava/lang/Integer;

.field public final OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

.field public OooOO0o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO00o;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooOO0:Ljava/lang/Integer;

    .line 7
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 1

    and-int/lit8 p2, p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    const-string p6, "this$0"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$controller"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$context"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$appModel"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$identificationEncryptionUrl"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 12
    iget-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string p6, "Step_LoadStep: zip \u5305\u89e3\u538b\u5b8c\u6210"

    invoke-static {p5, p6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_0
    sget-object p4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 15
    const-string p5, "INSTALL_ZIP_FAIL"

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "unzip error"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 17
    const-string v4, "5"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)V
    .locals 5

    .line 64
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 65
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 66
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v2

    .line 67
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getSubpackageAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 71
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v3

    .line 72
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-interface {v2, v3, v4}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromPre(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 76
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 77
    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    const-string v0, "mpu_appId"

    const-string v3, "mpu_old_v"

    invoke-static {p2, p3, v0, v3, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    .line 79
    const-string v0, "mpu_new_v"

    invoke-virtual {p2, v0, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    if-eqz p4, :cond_1

    .line 80
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    const-string p2, "mpu_result"

    invoke-virtual {p3, p2, p4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 82
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    move-result-object p2

    const-string p4, "uniqueChainID"

    const-string v0, "-1"

    invoke-virtual {p2, p4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 83
    const-string p4, "mpu_chain_uniqueId"

    invoke-virtual {p3, p4, p2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 84
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-virtual {p2, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 85
    const-class p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 86
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string p4, ""

    invoke-interface {p2, p1, p3, p4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V
    .locals 13

    move-object v6, p0

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v2, "app"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    const-string v2, "uniqueChainID"

    const-string v3, "-1"

    move-object v4, p1

    invoke-static {p1, v2, v3, v0, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->ZIP_APP_MODE:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 5
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 6
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v2

    .line 7
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_INSERT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 8
    const-string v5, ""

    invoke-interface {v1, v2, v3, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    iget-object v7, v6, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 10
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v8

    iget-object v0, v6, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0()Lcom/cloud/tmc/integration/model/SubPackageInfo;

    move-result-object v11

    .line 11
    new-instance v12, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    const/4 v10, 0x0

    move-object/from16 v9, p3

    invoke-interface/range {v7 .. v12}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->installZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ZLcom/cloud/tmc/integration/model/SubPackageInfo;Lcom/cloud/tmc/integration/callback/PackageInstallCallback;)V

    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    const-string v1, "miniapp_business_subpackage_record"

    if-eqz p3, :cond_3

    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 37
    iget-boolean v2, v2, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "decompressionFailed,clearAll"

    if-eqz v2, :cond_2

    .line 38
    :try_start_1
    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 39
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 40
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 41
    const-string v4, "subpackage_decompression_count_url_%s"

    .line 42
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0()Lcom/cloud/tmc/integration/model/SubPackageInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    new-array v6, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 43
    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "format(format, *args)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v5

    .line 45
    invoke-interface {v2, v5, v1, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 46
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decompressionFailed,tryCount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gt v5, v0, :cond_1

    add-int/2addr v5, v0

    .line 47
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object p1

    .line 48
    invoke-interface {v2, p1, v1, v4, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    invoke-interface {v2, v0, v1, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    .line 52
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object p1

    .line 53
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooOO0o:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, p1, p3, v1}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 56
    :cond_2
    sget-object v0, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    .line 57
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object p1

    .line 58
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooOO0o:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, p1, p3, v1}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 61
    :goto_1
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p3, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :cond_3
    :goto_2
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    invoke-direct {p1, p4, p5}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-interface {p2, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V
    .locals 10

    .line 18
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v4

    .line 19
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v1, "Step_LoadStep: sha256 \u6821\u9a8c"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    .line 21
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0()Lcom/cloud/tmc/integration/model/SubPackageInfo;

    move-result-object v1

    .line 22
    invoke-virtual {v0, p3, v1}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->checkSHA256(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 24
    const-string v2, "SIGN_FAIL"

    invoke-virtual {p0, p2, p3, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v1, "Step_LoadStep: sha256 \u6821\u9a8c\u4e0d\u4e00\u81f4\uff0c\u5220\u9664\u6240\u6709\u7f13\u5b58"

    invoke-static {p2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v4, p3, p4}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 27
    new-instance p2, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 28
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sign error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "   "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 29
    const-string p4, "7"

    invoke-direct {p2, p4, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v1, "Step_LoadStep: sha256 \u6821\u9a8c\u6b63\u786e\uff0c\u89e3\u538b tar \u5305"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 33
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0()Lcom/cloud/tmc/integration/model/SubPackageInfo;

    move-result-object v8

    .line 34
    new-instance v9, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;)V

    const/4 p1, 0x0

    .line 35
    invoke-interface {v7, p3, p1, v8, v9}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->installApp(Lcom/cloud/tmc/integration/model/AppModel;ZLcom/cloud/tmc/integration/model/SubPackageInfo;Lcom/cloud/tmc/integration/callback/PackageInstallCallback;)V

    return-void
.end method

.method public OooO0OO(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 8

    .line 1
    const-string v0, "unzip error"

    .line 2
    .line 3
    const-string v1, "controller"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "context"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "callback"

    .line 14
    .line 15
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooOO0:Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v1, v5, v2, p2, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/Integer;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 32
    .line 33
    invoke-virtual {v1, v5}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooOO0o:Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_0
    sget-object v2, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v2, v3, v4, v1}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->checkTarUnCompressStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_SUCCESS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-virtual {p0, p2, v5, p3, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    .line 72
    .line 73
    :try_start_1
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 74
    .line 75
    iget-boolean p3, p3, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0:Z

    .line 76
    .line 77
    if-nez p3, :cond_1

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v2, p3, v3, v1}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->checkLatestBackgroundDownloadStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    if-eqz p3, :cond_1

    .line 92
    .line 93
    const-string p3, "Subpackage::"

    .line 94
    .line 95
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

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
    const-string v6, "delete latest download pkg,appVersion:"

    .line 105
    .line 106
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-static {p3, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    const/4 v4, 0x1

    .line 126
    invoke-interface {p3, v3, v5, v4}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->deleteOldVersionFiles(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v2, p3, v3, v1}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->clearLatestBackgroundDownloadStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :catchall_0
    move-exception p3

    .line 142
    :try_start_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 143
    .line 144
    const-string v2, ""

    .line 145
    .line 146
    invoke-static {v1, v2, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 150
    .line 151
    const-string v1, "Step_LoadStep:tar\u5305\u5df2\u89e3\u538b\uff0c\u8df3\u8f6c\u5230 startStep"

    .line 152
    .line 153
    invoke-static {p3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {p1, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->unlock(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :catchall_1
    move-exception p3

    .line 164
    goto :goto_2

    .line 165
    :cond_2
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 166
    .line 167
    const-string v3, "Step_LoadStep:\u5220\u9664\u65e7\u7684\u5df2\u89e3\u538b\u6587\u4ef6"

    .line 168
    .line 169
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 173
    .line 174
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0Oo:Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 175
    .line 176
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-interface {v3, v4, v1}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getZipUnCompressPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-interface {v2, v3}, Lcom/cloud/tmc/integration/proxy/FileProxy;->deleteFile(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 188
    .line 189
    const-string v3, "Step_LoadStep:\u89e3\u538b zip \u5305"

    .line 190
    .line 191
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    .line 193
    .line 194
    :try_start_3
    invoke-virtual {p0, p2, p1, v5, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    sget-object v1, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_DECOMPRESS:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    .line 198
    .line 199
    invoke-interface {p3, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->updateStepProgress(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :catchall_2
    move-exception p3

    .line 204
    :try_start_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 205
    .line 206
    invoke-static {v1, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    const-string v6, "5"

    .line 210
    .line 211
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    move-object v2, p0

    .line 231
    move-object v3, p2

    .line 232
    move-object v4, p1

    .line 233
    invoke-virtual/range {v2 .. v7}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_3
    :goto_1
    return-void

    .line 238
    :goto_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v1, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p3

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    const/4 v5, 0x0

    .line 263
    const-string v6, "5"

    .line 264
    .line 265
    move-object v2, p0

    .line 266
    move-object v3, p2

    .line 267
    move-object v4, p1

    .line 268
    invoke-virtual/range {v2 .. v7}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    :goto_3
    return-void
.end method
