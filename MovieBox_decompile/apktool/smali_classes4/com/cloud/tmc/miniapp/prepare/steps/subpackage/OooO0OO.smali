.class public final Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;
.super Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0O0;
.source "source.java"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public OooO:Ljava/lang/String;

.field public final OooOO0:Ljava/lang/Integer;

.field public final OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

.field public OooOO0o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0O0;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooO:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0:Ljava/lang/Integer;

    .line 7
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0o:Z

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
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    :try_start_0
    const-class v0, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    .line 4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 5
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0OO:Ljava/lang/String;

    const/4 v2, 0x2

    .line 6
    invoke-interface {v0, p1, p2, v2, v1}, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;->createSubpackagePrepareController(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;ILjava/lang/String;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)V
    .locals 4

    .line 9
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getVirtualStart()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_APP_MODE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 13
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_INSERT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v3, ""

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14
    :cond_0
    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Z)V
    .locals 25

    move-object/from16 v11, p0

    move-object/from16 v6, p2

    move-object/from16 v3, p4

    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getVirtualStart()Z

    move-result v1

    const-string v4, ""

    const-class v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v7, "-1"

    const-string v8, "uniqueChainID"

    if-nez v1, :cond_1

    .line 16
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17
    sget-object v10, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v12, "app"

    invoke-virtual {v1, v10, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object v10, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    invoke-static {v6, v8, v7, v1, v10}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    const/4 v10, 0x2

    goto :goto_0

    :cond_0
    const/4 v10, 0x1

    .line 19
    :goto_0
    sget-object v12, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_APP_MODE:Ljava/lang/String;

    invoke-virtual {v1, v12, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 21
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_INSERT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {v10, v12, v13, v4, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 22
    :cond_1
    iget-object v1, v11, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_2

    .line 23
    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrl()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_5

    :cond_3
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o:Lcom/cloud/tmc/integration/model/SubPackageInfo;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_d

    .line 24
    :cond_5
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 25
    iget-object v12, v11, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 26
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v13

    .line 27
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v14

    .line 28
    invoke-interface {v12, v13, v14}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getSubpackageAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v12

    .line 29
    invoke-virtual {v1, v12}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v12

    .line 30
    iget-object v13, v11, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v14

    .line 32
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v15

    .line 33
    invoke-interface {v13, v14, v15}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromPre(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v13

    .line 34
    invoke-virtual {v1, v13}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "mpu_chain_uniqueId"

    const-string v15, "mpu_new_v"

    const-string v2, "mpu_old_v"

    const-string v10, "mpu_appId"

    if-eqz p6, :cond_6

    .line 35
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    if-eqz v13, :cond_6

    if-eqz v12, :cond_6

    .line 36
    invoke-virtual {v1, v13, v12}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 37
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 38
    invoke-static {v3, v1, v10, v2, v12}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v15, v13}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v1

    .line 40
    invoke-static {v6, v8, v7, v1, v14}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v1

    .line 41
    const-string v0, "POINT_PACKAGE_UPDATE_STA\u2026                        )"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 43
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v17, v5

    .line 44
    iget-object v5, v11, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-virtual {v5, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v1

    .line 45
    invoke-interface {v0, v9, v1, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object/from16 v17, v5

    .line 46
    :goto_3
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_DOWNLOAD_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    if-eqz p6, :cond_7

    .line 47
    const-string v1, "sync"

    goto :goto_4

    :cond_7
    const-string v1, "async"

    :goto_4
    const-string v5, "mpu_download_type"

    invoke-virtual {v0, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    .line 48
    invoke-static {v3, v0, v10, v2, v12}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v15, v13}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    .line 50
    invoke-static {v6, v8, v7, v0, v14}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    .line 51
    const-string v1, "POINT_PACKAGE_DOWNLOAD_S\u2026N_ID, \"-1\")\n            )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static/range {v17 .. v17}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 53
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v11, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-virtual {v5, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    .line 54
    invoke-interface {v1, v2, v0, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    if-eqz p6, :cond_8

    const/16 v22, 0x2

    goto :goto_5

    :cond_8
    const/16 v22, 0x1

    .line 55
    :goto_5
    iget-object v0, v11, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 56
    iget-boolean v1, v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0:Z

    if-eqz v1, :cond_a

    .line 57
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o:Lcom/cloud/tmc/integration/model/SubPackageInfo;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrl()Ljava/lang/String;

    move-result-object v0

    :goto_6
    move-object v14, v0

    goto :goto_7

    :cond_9
    const/4 v14, 0x0

    goto :goto_7

    .line 58
    :cond_a
    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :goto_7
    if-eqz v14, :cond_d

    .line 59
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_a

    :cond_b
    iget-object v0, v11, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 60
    iget-boolean v0, v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0:Z

    if-eqz v0, :cond_d

    .line 61
    iget-object v0, v11, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v1

    .line 63
    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-interface {v0, v1, v2, v14}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->isDownloaded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 65
    sget-object v0, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    .line 66
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v1

    .line 67
    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-virtual {v0, v1, v2, v14}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->checkTarUnCompressStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 69
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 70
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 71
    iget-object v1, v11, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0()Lcom/cloud/tmc/integration/model/SubPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    move-result-object v1

    :goto_8
    const/4 v2, 0x1

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    goto :goto_8

    :goto_9
    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 72
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v4, "subpackage_decompression_count_url_%s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "format(format, *args)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v4

    .line 74
    const-string v5, "miniapp_business_subpackage_record"

    invoke-interface {v0, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gt v0, v2, :cond_d

    .line 75
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    return-void

    .line 76
    :cond_d
    :goto_a
    iget-object v15, v11, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 77
    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v18

    .line 78
    iget-object v0, v11, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 79
    iget-boolean v1, v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0:Z

    if-eqz v1, :cond_f

    .line 80
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o:Lcom/cloud/tmc/integration/model/SubPackageInfo;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubZipPath()Ljava/lang/String;

    move-result-object v10

    :goto_b
    move-object/from16 v21, v10

    goto :goto_c

    :cond_e
    const/16 v21, 0x0

    goto :goto_c

    .line 81
    :cond_f
    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageZipPath()Ljava/lang/String;

    move-result-object v10

    goto :goto_b

    .line 82
    :goto_c
    new-instance v24, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;

    move-object/from16 v0, v24

    move/from16 v1, p6

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object v10, v14

    invoke-direct/range {v0 .. v10}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;-><init>(ZLcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Ljava/lang/String;)V

    const/16 v23, 0x1

    move-object/from16 v17, v15

    move-object/from16 v19, v14

    move-object/from16 v20, p5

    .line 83
    invoke-interface/range {v17 .. v24}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->downloadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;)V

    return-void

    :cond_10
    :goto_d
    if-nez p6, :cond_11

    move-object/from16 v0, p3

    const/4 v1, 0x0

    .line 84
    invoke-interface {v0, v3, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 85
    :cond_11
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string v1, "11"

    const-string v2, "packageUrl is null or empty"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    .line 86
    invoke-interface {v1, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    return-void
.end method

.method public OooO0OO(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 22

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    const-string v1, "controller"

    .line 10
    .line 11
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "context"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "callback"

    .line 20
    .line 21
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 29
    .line 30
    iget-object v2, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooO:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0:Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v1, v5, v2, v0, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/Integer;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 38
    .line 39
    invoke-virtual {v1, v5}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    if-eqz v5, :cond_2a

    .line 44
    .line 45
    if-eqz v6, :cond_2a

    .line 46
    .line 47
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_0

    .line 52
    .line 53
    goto/16 :goto_16

    .line 54
    .line 55
    :cond_0
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 56
    .line 57
    iget-boolean v2, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0:Z

    .line 58
    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o:Lcom/cloud/tmc/integration/model/SubPackageInfo;

    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    sget-object v1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 66
    .line 67
    new-instance v2, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/b;

    .line 68
    .line 69
    invoke-direct {v2, v8, v0, v4}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/b;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto/16 :goto_17

    .line 78
    .line 79
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getDevStatus()Z

    .line 80
    .line 81
    .line 82
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    const-string v10, ""

    .line 84
    .line 85
    const-class v11, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 86
    .line 87
    const/4 v12, 0x2

    .line 88
    const/4 v2, 0x0

    .line 89
    const/4 v3, 0x1

    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    :try_start_1
    iput-boolean v3, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0o:Z

    .line 93
    .line 94
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 95
    .line 96
    invoke-interface {v1, v5, v6}, Lcom/cloud/tmc/integration/proxy/FileProxy;->deleteAllFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 100
    .line 101
    invoke-interface {v1, v5}, Lcom/cloud/tmc/integration/proxy/FileProxy;->createBaseDirectory(Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 102
    .line 103
    .line 104
    sget-object v1, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    .line 105
    .line 106
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v1, v3, v7, v6, v2}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    .line 116
    .line 117
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v1, v3, v7, v6, v2}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->changeZipUnCompressStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-virtual {v1, v3, v7, v6, v2}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->changeTarUnCompressStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v9, v9}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->lock(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iget-boolean v7, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0o:Z

    .line 143
    .line 144
    move-object/from16 v1, p0

    .line 145
    .line 146
    move-object/from16 v2, p1

    .line 147
    .line 148
    move-object/from16 v3, p2

    .line 149
    .line 150
    move-object/from16 v4, p3

    .line 151
    .line 152
    invoke-virtual/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Z)V

    .line 153
    .line 154
    .line 155
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getVirtualStart()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-nez v1, :cond_2

    .line 160
    .line 161
    new-instance v1, Landroid/os/Bundle;

    .line 162
    .line 163
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 164
    .line 165
    .line 166
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_APP_MODE:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v1, v2, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 176
    .line 177
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_INSERT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 182
    .line 183
    invoke-interface {v2, v0, v3, v10, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 184
    .line 185
    .line 186
    :cond_2
    return-void

    .line 187
    :cond_3
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 188
    .line 189
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    invoke-interface {v1, v7, v13, v6}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->isDownloaded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    iget-object v7, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 202
    .line 203
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 204
    .line 205
    .line 206
    move-result-object v13

    .line 207
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v14

    .line 211
    invoke-interface {v7, v13, v14}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromPre(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    if-eqz v7, :cond_4

    .line 216
    .line 217
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrl()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    goto :goto_1

    .line 222
    :cond_4
    const/4 v14, 0x0

    .line 223
    :goto_1
    const-string v15, "Subpackage::"

    .line 224
    .line 225
    if-eqz v14, :cond_5

    .line 226
    .line 227
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 228
    .line 229
    .line 230
    move-result v14

    .line 231
    if-nez v14, :cond_6

    .line 232
    .line 233
    :cond_5
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    new-instance v14, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v13, "subpackageDownload Step \u68c0\u67e5\u662f preAppinfo \u5426\u4e3a\u5168\u91cf\u5305\uff1atrue\uff08appInfo\u4e3b\u5305\u5730\u5740\u4e3a\u7a7a\uff09\uff0cappVersion\uff1a"

    .line 243
    .line 244
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    invoke-static {v15, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    move-object v7, v5

    .line 258
    :cond_6
    iget-object v13, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 259
    .line 260
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 261
    .line 262
    .line 263
    move-result-object v14

    .line 264
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    invoke-interface {v13, v14, v12}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getSubpackageAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 269
    .line 270
    .line 271
    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    const-string v13, "\u5220\u9664\u5b50\u5305"

    .line 273
    .line 274
    const-string v14, "Step_FW_Download_\u8d44\u6e90\u5305\u5df2\u4e0b\u8f7d\uff0c\u8df3\u8f6c\u5230\u89e3\u538b\u6b65\u9aa4"

    .line 275
    .line 276
    const-string v3, ",usedAppVersion:"

    .line 277
    .line 278
    const-string v2, "\uff0cpreAppVersion\uff1a"

    .line 279
    .line 280
    const-string v4, ",currentAppVersion:"

    .line 281
    .line 282
    if-eqz v1, :cond_8

    .line 283
    .line 284
    :try_start_3
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 285
    .line 286
    invoke-static {v1, v14}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    const/4 v1, 0x0

    .line 290
    iput-boolean v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0o:Z

    .line 291
    .line 292
    :cond_7
    move-object/from16 v18, v12

    .line 293
    .line 294
    goto/16 :goto_6

    .line 295
    .line 296
    :cond_8
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0:Ljava/lang/Integer;

    .line 297
    .line 298
    if-nez v1, :cond_9

    .line 299
    .line 300
    goto :goto_2

    .line 301
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    const/4 v0, 0x1

    .line 306
    if-eq v1, v0, :cond_a

    .line 307
    .line 308
    :goto_2
    invoke-interface {v9, v9}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->lock(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    const-string v0, "usedModel"

    .line 312
    .line 313
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-boolean v7, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0o:Z

    .line 317
    .line 318
    move-object/from16 v1, p0

    .line 319
    .line 320
    move-object/from16 v2, p1

    .line 321
    .line 322
    move-object/from16 v3, p2

    .line 323
    .line 324
    move-object/from16 v4, p3

    .line 325
    .line 326
    move-object v5, v12

    .line 327
    invoke-virtual/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Z)V

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :cond_a
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    const/4 v1, 0x3

    .line 336
    if-eq v0, v1, :cond_b

    .line 337
    .line 338
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    const/4 v1, 0x4

    .line 343
    if-ne v0, v1, :cond_7

    .line 344
    .line 345
    :cond_b
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    if-eqz v7, :cond_c

    .line 350
    .line 351
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    goto :goto_3

    .line 356
    :cond_c
    const/4 v1, 0x0

    .line 357
    :goto_3
    if-eqz v12, :cond_d

    .line 358
    .line 359
    invoke-virtual {v12}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 363
    move-object/from16 v21, v18

    .line 364
    .line 365
    move-object/from16 v18, v12

    .line 366
    .line 367
    move-object/from16 v12, v21

    .line 368
    .line 369
    goto :goto_4

    .line 370
    :cond_d
    move-object/from16 v18, v12

    .line 371
    .line 372
    const/4 v12, 0x0

    .line 373
    :goto_4
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-static {v15, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 410
    .line 411
    invoke-interface {v0, v5, v6}, Lcom/cloud/tmc/integration/proxy/FileProxy;->deleteAllFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 415
    .line 416
    invoke-interface {v0, v5}, Lcom/cloud/tmc/integration/proxy/FileProxy;->createBaseDirectory(Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 417
    .line 418
    .line 419
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    const/4 v1, 0x3

    .line 424
    if-ne v0, v1, :cond_e

    .line 425
    .line 426
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 427
    .line 428
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-interface {v0, v1, v5}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->getNativeCache(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    goto :goto_5

    .line 437
    :catchall_1
    move-exception v0

    .line 438
    move-object/from16 v9, p1

    .line 439
    .line 440
    goto/16 :goto_17

    .line 441
    .line 442
    :cond_e
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 443
    .line 444
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-interface {v0, v1, v5}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->getOfflineCache(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    :goto_5
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 453
    .line 454
    invoke-static {v1, v14}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    const/4 v1, 0x1

    .line 458
    xor-int/2addr v0, v1

    .line 459
    iput-boolean v0, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0o:Z

    .line 460
    .line 461
    :goto_6
    if-eqz v7, :cond_f

    .line 462
    .line 463
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    goto :goto_7

    .line 468
    :cond_f
    const/4 v0, 0x0

    .line 469
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .line 473
    .line 474
    const-string v9, "appModelFromPre:"

    .line 475
    .line 476
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-static {v15, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    if-eqz v7, :cond_23

    .line 490
    .line 491
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 492
    .line 493
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v9

    .line 501
    iget-object v12, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 502
    .line 503
    iget-boolean v14, v12, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0:Z

    .line 504
    .line 505
    if-nez v14, :cond_10

    .line 506
    .line 507
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v12

    .line 511
    goto :goto_b

    .line 512
    :cond_10
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/model/AppModel;->getSubPackagePages()Ljava/util/List;

    .line 513
    .line 514
    .line 515
    move-result-object v14

    .line 516
    if-eqz v14, :cond_15

    .line 517
    .line 518
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 519
    .line 520
    .line 521
    move-result-object v14

    .line 522
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 523
    .line 524
    .line 525
    move-result v17

    .line 526
    if-eqz v17, :cond_15

    .line 527
    .line 528
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v17

    .line 532
    check-cast v17, Lcom/cloud/tmc/integration/model/SubPackageInfo;

    .line 533
    .line 534
    invoke-virtual/range {v17 .. v17}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getRoot()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v19

    .line 538
    if-eqz v19, :cond_11

    .line 539
    .line 540
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    .line 541
    .line 542
    .line 543
    move-result v19

    .line 544
    if-nez v19, :cond_12

    .line 545
    .line 546
    :cond_11
    move-object/from16 v20, v12

    .line 547
    .line 548
    move-object/from16 v19, v14

    .line 549
    .line 550
    goto :goto_a

    .line 551
    :cond_12
    move-object/from16 v19, v14

    .line 552
    .line 553
    iget-object v14, v12, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o:Lcom/cloud/tmc/integration/model/SubPackageInfo;

    .line 554
    .line 555
    if-eqz v14, :cond_13

    .line 556
    .line 557
    invoke-virtual {v14}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getRoot()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v14

    .line 561
    move-object/from16 v20, v12

    .line 562
    .line 563
    goto :goto_9

    .line 564
    :cond_13
    move-object/from16 v20, v12

    .line 565
    .line 566
    const/4 v14, 0x0

    .line 567
    :goto_9
    invoke-virtual/range {v17 .. v17}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getRoot()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v12

    .line 571
    invoke-static {v14, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 572
    .line 573
    .line 574
    move-result v12

    .line 575
    if-eqz v12, :cond_14

    .line 576
    .line 577
    invoke-virtual/range {v17 .. v17}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v12

    .line 581
    goto :goto_b

    .line 582
    :cond_14
    :goto_a
    move-object/from16 v14, v19

    .line 583
    .line 584
    move-object/from16 v12, v20

    .line 585
    .line 586
    goto :goto_8

    .line 587
    :cond_15
    const/4 v12, 0x0

    .line 588
    :goto_b
    invoke-interface {v0, v1, v9, v12}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->isDownloaded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 589
    .line 590
    .line 591
    move-result v0

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    .line 593
    .line 594
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    .line 596
    .line 597
    const-string v9, "appModelFromPre preDownloaded:"

    .line 598
    .line 599
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    invoke-static {v15, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    if-eqz v0, :cond_19

    .line 613
    .line 614
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 615
    .line 616
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 617
    .line 618
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getSubpackageAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    invoke-virtual {v0, v7}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    if-eqz v1, :cond_18

    .line 639
    .line 640
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 641
    .line 642
    .line 643
    move-result v3

    .line 644
    if-nez v3, :cond_16

    .line 645
    .line 646
    goto :goto_c

    .line 647
    :cond_16
    if-eqz v2, :cond_18

    .line 648
    .line 649
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 650
    .line 651
    .line 652
    move-result v3

    .line 653
    if-nez v3, :cond_17

    .line 654
    .line 655
    goto :goto_c

    .line 656
    :cond_17
    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 657
    .line 658
    .line 659
    move-result v3

    .line 660
    if-eqz v3, :cond_18

    .line 661
    .line 662
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 663
    .line 664
    const-string v4, "mpu_appId"

    .line 665
    .line 666
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v5

    .line 670
    invoke-virtual {v3, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 671
    .line 672
    .line 673
    move-result-object v3

    .line 674
    const-string v4, "mpu_old_v"

    .line 675
    .line 676
    invoke-virtual {v3, v4, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    const-string v3, "mpu_new_v"

    .line 681
    .line 682
    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    const-string v2, "mpu_chain_uniqueId"

    .line 687
    .line 688
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    .line 689
    .line 690
    .line 691
    move-result-object v3

    .line 692
    const-string v4, "uniqueChainID"

    .line 693
    .line 694
    const-string v5, "-1"

    .line 695
    .line 696
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v3

    .line 700
    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    const-string v2, "POINT_PACKAGE_UPDATE_STA\u2026                        )"

    .line 705
    .line 706
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v2

    .line 713
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 714
    .line 715
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v3

    .line 719
    iget-object v4, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 720
    .line 721
    invoke-virtual {v4, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    invoke-interface {v2, v3, v1, v10}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    :cond_18
    :goto_c
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 729
    .line 730
    invoke-virtual {v0, v7}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    .line 735
    .line 736
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 737
    .line 738
    .line 739
    const-string v3, "Download_step_\u5f53\u524d\u7248\u672c\u5df2\u6709\u7f13\u5b58"

    .line 740
    .line 741
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    .line 759
    .line 760
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    .line 762
    .line 763
    const-string v2, "appModelFromPre set:"

    .line 764
    .line 765
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    invoke-static {v15, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    move-object/from16 v0, p2

    .line 779
    .line 780
    invoke-virtual {v0, v7}, Lcom/cloud/tmc/integration/model/PrepareContext;->setAppModel(Lcom/cloud/tmc/integration/model/AppModel;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 781
    .line 782
    .line 783
    move-object/from16 v9, p1

    .line 784
    .line 785
    :try_start_5
    invoke-virtual {v8, v0, v9}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)V

    .line 786
    .line 787
    .line 788
    return-void

    .line 789
    :cond_19
    move-object/from16 v9, p1

    .line 790
    .line 791
    move-object/from16 v0, p2

    .line 792
    .line 793
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 794
    .line 795
    const-string v12, "Step_Download_\u5220\u9664\u5f53\u524d\u6240\u6709\u7f13\u5b58"

    .line 796
    .line 797
    invoke-static {v1, v12}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 801
    .line 802
    iget-boolean v1, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0:Z

    .line 803
    .line 804
    if-eqz v1, :cond_1d

    .line 805
    .line 806
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/model/AppModel;->getSubPackagePages()Ljava/util/List;

    .line 807
    .line 808
    .line 809
    move-result-object v1

    .line 810
    if-eqz v1, :cond_1c

    .line 811
    .line 812
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    :cond_1a
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 817
    .line 818
    .line 819
    move-result v5

    .line 820
    if-eqz v5, :cond_1c

    .line 821
    .line 822
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object v5

    .line 826
    check-cast v5, Lcom/cloud/tmc/integration/model/SubPackageInfo;

    .line 827
    .line 828
    iget-object v12, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooO:Ljava/lang/String;

    .line 829
    .line 830
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getRoot()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v14

    .line 834
    invoke-static {v12, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 835
    .line 836
    .line 837
    move-result v12

    .line 838
    if-eqz v12, :cond_1a

    .line 839
    .line 840
    iget-object v12, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 841
    .line 842
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v14

    .line 846
    invoke-interface {v12, v7, v14}, Lcom/cloud/tmc/integration/proxy/FileProxy;->deleteAllFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v5

    .line 853
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v12

    .line 857
    if-eqz v18, :cond_1b

    .line 858
    .line 859
    invoke-virtual/range {v18 .. v18}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v14

    .line 863
    move-object/from16 v17, v1

    .line 864
    .line 865
    goto :goto_e

    .line 866
    :cond_1b
    move-object/from16 v17, v1

    .line 867
    .line 868
    const/4 v14, 0x0

    .line 869
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 870
    .line 871
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    .line 897
    .line 898
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v1

    .line 902
    invoke-static {v15, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    move-object/from16 v1, v17

    .line 906
    .line 907
    goto :goto_d

    .line 908
    :cond_1c
    move-object/from16 v16, v6

    .line 909
    .line 910
    goto :goto_10

    .line 911
    :cond_1d
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 912
    .line 913
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object v12

    .line 917
    invoke-interface {v1, v7, v12}, Lcom/cloud/tmc/integration/proxy/FileProxy;->deleteAllFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v1

    .line 924
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v5

    .line 928
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v12

    .line 932
    if-eqz v18, :cond_1e

    .line 933
    .line 934
    invoke-virtual/range {v18 .. v18}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 935
    .line 936
    .line 937
    move-result-object v13

    .line 938
    goto :goto_f

    .line 939
    :cond_1e
    const/4 v13, 0x0

    .line 940
    :goto_f
    new-instance v14, Ljava/lang/StringBuilder;

    .line 941
    .line 942
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 943
    .line 944
    .line 945
    move-object/from16 v16, v6

    .line 946
    .line 947
    const-string v6, "\u5220\u9664\u4e3b\u5305"

    .line 948
    .line 949
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    .line 951
    .line 952
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    .line 954
    .line 955
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    .line 957
    .line 958
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    .line 963
    .line 964
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    .line 966
    .line 967
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    .line 969
    .line 970
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    .line 972
    .line 973
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v1

    .line 977
    invoke-static {v15, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    .line 979
    .line 980
    :goto_10
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 981
    .line 982
    invoke-interface {v1, v7}, Lcom/cloud/tmc/integration/proxy/FileProxy;->createBaseDirectory(Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 983
    .line 984
    .line 985
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 986
    .line 987
    const/4 v2, 0x2

    .line 988
    invoke-virtual {v1, v7, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkFocusUpdateMyByteApp(Lcom/cloud/tmc/integration/model/AppModel;I)Z

    .line 989
    .line 990
    .line 991
    move-result v3

    .line 992
    if-eqz v3, :cond_21

    .line 993
    .line 994
    iget-object v3, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 995
    .line 996
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 997
    .line 998
    .line 999
    move-result-object v4

    .line 1000
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v5

    .line 1004
    invoke-interface {v3, v4, v5}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getSubpackageAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v3

    .line 1008
    if-eqz v3, :cond_21

    .line 1009
    .line 1010
    invoke-virtual {v1, v3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v4

    .line 1014
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/model/AppModel;->getLowestOpenedVersion()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1018
    const-string v6, "\u53c2\u4e0e\u6bd4\u5bf9\u7684\u7248\u672c\u53f7:"

    .line 1019
    .line 1020
    if-eqz v5, :cond_22

    .line 1021
    .line 1022
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1023
    .line 1024
    .line 1025
    move-result v12

    .line 1026
    if-nez v12, :cond_1f

    .line 1027
    .line 1028
    goto :goto_11

    .line 1029
    :cond_1f
    if-eqz v4, :cond_22

    .line 1030
    .line 1031
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1032
    .line 1033
    .line 1034
    move-result v12

    .line 1035
    if-nez v12, :cond_20

    .line 1036
    .line 1037
    goto :goto_11

    .line 1038
    :cond_20
    invoke-virtual {v1, v5, v4}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1039
    .line 1040
    .line 1041
    move-result v12

    .line 1042
    if-eqz v12, :cond_22

    .line 1043
    .line 1044
    iget-object v12, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 1045
    .line 1046
    invoke-virtual {v1, v3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v1

    .line 1050
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1053
    .line 1054
    .line 1055
    const-string v14, "Download_step_\u5f53\u524d\u7248\u672c\u7f13\u5b58\u7b26\u5408\u53ef\u6253\u5f00\u7248\u672c\u53f7"

    .line 1056
    .line 1057
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    .line 1063
    const-string v1, "\u6700\u4f4e\u53ef\u6253\u5f00\u7248\u672c\u53f7:"

    .line 1064
    .line 1065
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v1

    .line 1081
    invoke-static {v12, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    .line 1083
    .line 1084
    const/4 v1, 0x0

    .line 1085
    iput-boolean v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0o:Z

    .line 1086
    .line 1087
    invoke-virtual {v0, v3}, Lcom/cloud/tmc/integration/model/PrepareContext;->setAppModel(Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 1088
    .line 1089
    .line 1090
    :cond_21
    const/4 v1, 0x1

    .line 1091
    goto :goto_12

    .line 1092
    :cond_22
    :goto_11
    const/4 v1, 0x1

    .line 1093
    iput-boolean v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0o:Z

    .line 1094
    .line 1095
    iget-object v3, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 1096
    .line 1097
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1098
    .line 1099
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1100
    .line 1101
    .line 1102
    const-string v13, "Download_step_\u5f53\u524d\u7248\u672c\u7f13\u5b58\u4e0d\u7b26\u5408\u53ef\u6253\u5f00\u7248\u672c\u53f7\uff0c\u5f3a\u5236\u66f4\u65b0\u6700\u4f4e\u53ef\u6253\u5f00\u7248\u672c:"

    .line 1103
    .line 1104
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v4

    .line 1120
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    .line 1122
    .line 1123
    goto :goto_12

    .line 1124
    :cond_23
    move-object/from16 v9, p1

    .line 1125
    .line 1126
    move-object/from16 v0, p2

    .line 1127
    .line 1128
    move-object/from16 v16, v6

    .line 1129
    .line 1130
    const/4 v1, 0x1

    .line 1131
    const/4 v2, 0x2

    .line 1132
    iget-boolean v3, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0o:Z

    .line 1133
    .line 1134
    if-nez v3, :cond_24

    .line 1135
    .line 1136
    invoke-virtual {v8, v0, v9}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)V

    .line 1137
    .line 1138
    .line 1139
    return-void

    .line 1140
    :cond_24
    :goto_12
    iget-boolean v3, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0o:Z

    .line 1141
    .line 1142
    if-eqz v3, :cond_25

    .line 1143
    .line 1144
    invoke-interface {v9, v9}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->lock(Ljava/lang/Object;)V

    .line 1145
    .line 1146
    .line 1147
    :cond_25
    iget-object v3, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 1148
    .line 1149
    const-string v4, "Step_Download_\u5f00\u59cb\u4e0b\u8f7d\u8d44\u6e90\u5305"

    .line 1150
    .line 1151
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    .line 1153
    .line 1154
    if-eqz v7, :cond_28

    .line 1155
    .line 1156
    iget-boolean v3, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0o:Z

    .line 1157
    .line 1158
    if-eqz v3, :cond_26

    .line 1159
    .line 1160
    move v12, v2

    .line 1161
    goto :goto_13

    .line 1162
    :cond_26
    move v12, v1

    .line 1163
    :goto_13
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getVirtualStart()Z

    .line 1164
    .line 1165
    .line 1166
    move-result v1

    .line 1167
    if-nez v1, :cond_27

    .line 1168
    .line 1169
    new-instance v1, Landroid/os/Bundle;

    .line 1170
    .line 1171
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1172
    .line 1173
    .line 1174
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_APP_MODE:Ljava/lang/String;

    .line 1175
    .line 1176
    invoke-virtual {v1, v2, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1177
    .line 1178
    .line 1179
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v2

    .line 1183
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 1184
    .line 1185
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v3

    .line 1189
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_INSERT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 1190
    .line 1191
    invoke-interface {v2, v3, v4, v10, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1192
    .line 1193
    .line 1194
    :cond_27
    iget-boolean v10, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0o:Z

    .line 1195
    .line 1196
    move-object/from16 v1, p0

    .line 1197
    .line 1198
    move-object/from16 v2, p1

    .line 1199
    .line 1200
    move-object/from16 v3, p2

    .line 1201
    .line 1202
    move-object/from16 v4, p3

    .line 1203
    .line 1204
    move-object v5, v7

    .line 1205
    move-object/from16 v6, v16

    .line 1206
    .line 1207
    move v7, v10

    .line 1208
    invoke-virtual/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Z)V

    .line 1209
    .line 1210
    .line 1211
    goto :goto_15

    .line 1212
    :cond_28
    iget-boolean v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0o:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1213
    .line 1214
    if-eqz v1, :cond_29

    .line 1215
    .line 1216
    :try_start_7
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 1217
    .line 1218
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v1

    .line 1222
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 1223
    .line 1224
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v2

    .line 1228
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v3

    .line 1232
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v4

    .line 1236
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1237
    .line 1238
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1239
    .line 1240
    .line 1241
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    .line 1243
    .line 1244
    const-string v4, "_pre"

    .line 1245
    .line 1246
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v4

    .line 1253
    invoke-interface {v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    .line 1255
    .line 1256
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 1257
    .line 1258
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v2

    .line 1262
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v0

    .line 1266
    const-wide/16 v3, 0x0

    .line 1267
    .line 1268
    invoke-interface {v1, v2, v0, v3, v4}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->refreshUpdateTime(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1269
    .line 1270
    .line 1271
    goto :goto_14

    .line 1272
    :catchall_2
    move-exception v0

    .line 1273
    :try_start_8
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 1274
    .line 1275
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1276
    .line 1277
    .line 1278
    :goto_14
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 1279
    .line 1280
    const-string v1, "appModelFromPre is not exist"

    .line 1281
    .line 1282
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    invoke-interface {v9, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 1286
    .line 1287
    .line 1288
    return-void

    .line 1289
    :cond_29
    :goto_15
    iget-boolean v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0o:Z

    .line 1290
    .line 1291
    if-nez v1, :cond_2b

    .line 1292
    .line 1293
    invoke-virtual {v8, v0, v9}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1294
    .line 1295
    .line 1296
    goto :goto_18

    .line 1297
    :cond_2a
    :goto_16
    return-void

    .line 1298
    :goto_17
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 1299
    .line 1300
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1301
    .line 1302
    .line 1303
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 1304
    .line 1305
    const-string v1, "download error"

    .line 1306
    .line 1307
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;)V

    .line 1308
    .line 1309
    .line 1310
    invoke-interface {v9, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 1311
    .line 1312
    .line 1313
    :cond_2b
    :goto_18
    return-void
.end method
