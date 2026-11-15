.class public Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;
.super Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO00o;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO00o;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;ZLjava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "MANIFEST_FAIL"

    const-string v6, "manifest error"

    const-string v7, "8"

    const-string v8, "mpu_result"

    const-string v9, ""

    const-string v10, "-1"

    const-string v11, "uniqueChainID"

    const-string v12, "mpu_chain_uniqueId"

    const-string v13, "mpu_new_v"

    const-string v14, "mpu_old_v"

    const-string v15, "mpu_appId"

    const-class v16, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz p5, :cond_4

    .line 44
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    move-object/from16 p6, v9

    const-string v9, "Step_LoadStep: tar \u5305\u89e3\u538b\u5b8c\u6210"

    invoke-static {v4, v9}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :try_start_0
    sget-object v4, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v4, v1}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->getManifestJson(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move-object/from16 v17, v12

    .line 46
    :try_start_1
    sget-object v12, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-object/from16 v18, v10

    :try_start_2
    const-string v10, "appId"

    invoke-virtual {v12, v9, v10}, Lcom/cloud/tmc/integration/utils/JsonUtil;->getValueFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-nez v9, :cond_1

    .line 48
    :try_start_3
    invoke-virtual {v4, v2, v1}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 49
    new-instance v4, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    invoke-direct {v4, v7, v6}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 50
    sget-object v4, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    iget-object v9, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v10, v12}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v9

    .line 51
    iget-object v10, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object/from16 v19, v6

    :try_start_4
    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v12, v6}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromPre(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v6

    .line 52
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 53
    invoke-virtual {v4, v6, v9}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    invoke-static/range {v16 .. v16}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 55
    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v20, v7

    .line 56
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v15, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v7

    .line 57
    invoke-virtual {v7, v14, v9}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v7

    .line 58
    invoke-virtual {v7, v13, v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v6

    .line 59
    invoke-virtual {v6, v8, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v6

    .line 60
    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v9, v18

    :try_start_6
    invoke-virtual {v7, v11, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v12, v17

    :try_start_7
    invoke-virtual {v6, v12, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v7, p6

    .line 61
    :try_start_8
    invoke-interface {v4, v10, v6, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catchall_0
    :goto_0
    move-object/from16 v6, p4

    goto/16 :goto_5

    :catchall_1
    :goto_1
    move-object/from16 v7, p6

    goto :goto_0

    :catchall_2
    move-object/from16 v7, p6

    move-object/from16 v12, v17

    goto :goto_0

    :catchall_3
    move-object/from16 v7, p6

    move-object/from16 v12, v17

    move-object/from16 v9, v18

    goto :goto_0

    :catchall_4
    :goto_2
    move-object/from16 v20, v7

    move-object/from16 v12, v17

    move-object/from16 v9, v18

    goto :goto_1

    :cond_0
    :goto_3
    return-void

    :catchall_5
    move-object/from16 v19, v6

    goto :goto_2

    :cond_1
    move-object/from16 v7, p6

    move-object/from16 v12, v17

    move-object/from16 v9, v18

    .line 62
    sget-object v5, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    iget-object v6, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v10}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v6

    .line 63
    iget-object v8, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v10, v3}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromPre(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 65
    invoke-virtual {v5, v3, v6}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 66
    invoke-static/range {v16 .. v16}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 67
    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_SUCCESS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 68
    invoke-static {v1, v10, v15, v14, v6}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v6

    .line 69
    invoke-virtual {v6, v13, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v3

    move-object/from16 v6, p4

    .line 70
    invoke-static {v6, v11, v9, v3, v12}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v3

    .line 71
    invoke-interface {v5, v8, v3, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 72
    :cond_2
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v5, "Step_LoadStep: manifest \u5185\u5bb9\u6821\u9a8c\u6210\u529f"

    invoke-static {v3, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 73
    invoke-virtual {v4, v2, v1, v3}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->changeTarUnCompressStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 74
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    invoke-interface {v3, v1}, Lcom/cloud/tmc/integration/proxy/FileProxy;->delectDownloadFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 75
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-interface {v3, v2, v1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->delectOldVersionFilesAndUpdate(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    move-object/from16 v3, p3

    .line 76
    invoke-interface {v3, v3}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->unlock(Ljava/lang/Object;)V

    .line 77
    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    goto/16 :goto_6

    :catchall_6
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v12, v17

    move-object/from16 v9, v18

    :goto_4
    move-object/from16 v6, p4

    move-object/from16 v7, p6

    goto :goto_5

    :catchall_7
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object v9, v10

    move-object/from16 v12, v17

    goto :goto_4

    :catchall_8
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object v9, v10

    goto :goto_4

    .line 78
    :goto_5
    sget-object v4, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    iget-object v10, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v3, v2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v2

    .line 79
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v10, v0}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromPre(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 81
    invoke-virtual {v4, v0, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    invoke-static/range {v16 .. v16}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 83
    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v4

    sget-object v10, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 84
    invoke-static {v1, v10, v15, v14, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v2

    .line 85
    invoke-virtual {v2, v13, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v8, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    .line 87
    invoke-static {v6, v11, v9, v0, v12}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    .line 88
    invoke-interface {v3, v4, v0, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 89
    :cond_3
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 90
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v2, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p3

    invoke-interface {v3, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    return-void

    :cond_4
    move-object v6, v4

    move-object v7, v9

    move-object v9, v10

    .line 91
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v5, "Step_LoadStep: tar \u5305\u89e3\u538b\u5931\u8d25\uff0c\u5220\u9664\u6570\u636e"

    invoke-static {v4, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v4, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    iget-object v5, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v10, v3}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v3

    .line 93
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v10, v0}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromPre(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 95
    invoke-virtual {v4, v0, v3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 96
    invoke-static/range {v16 .. v16}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 97
    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v5

    sget-object v10, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 98
    invoke-static {v1, v10, v15, v14, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v3

    .line 99
    invoke-virtual {v3, v13, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    .line 100
    const-string v3, "INSTALL_APP_FAIL"

    invoke-virtual {v0, v8, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    .line 101
    invoke-static {v6, v11, v9, v0, v12}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    .line 102
    invoke-interface {v4, v5, v0, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 103
    :cond_5
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 104
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string v2, "unzip error"

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "5"

    invoke-direct {v0, v2, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :goto_6
    return-void
.end method

.method private synthetic OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;ZLjava/lang/String;)V
    .locals 5

    if-eqz p4, :cond_0

    .line 7
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string p5, "Step_LoadStep: zip \u5305\u89e3\u538b\u5b8c\u6210"

    invoke-static {p4, p5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;)V

    goto/16 :goto_0

    .line 9
    :cond_0
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string p5, "Step_LoadStep: zip \u5305\u89e3\u538b\u5931\u8d25"

    invoke-static {p4, p5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object p4, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    iget-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v0, v1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object p5

    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromPre(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    invoke-virtual {p4, v0, p5}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 14
    const-class p4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 15
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 16
    const-string v3, "mpu_appId"

    const-string v4, "mpu_old_v"

    invoke-static {p3, v2, v3, v4, p5}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p5

    .line 17
    const-string v2, "mpu_new_v"

    invoke-virtual {p5, v2, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p5

    .line 18
    const-string v0, "mpu_result"

    const-string v2, "INSTALL_ZIP_FAIL"

    invoke-virtual {p5, v0, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p5

    .line 19
    const-string v0, "-1"

    const-string v2, "mpu_chain_uniqueId"

    const-string v3, "uniqueChainID"

    invoke-static {p2, v3, v0, p5, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p5

    .line 20
    const-string v0, ""

    invoke-interface {p4, v1, p5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 21
    :cond_1
    sget-object p4, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p4, p2, p3}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 22
    new-instance p2, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string p4, "unzip error"

    invoke-static {p4}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "5"

    invoke-direct {p2, p4, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;ZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;ZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 5

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

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_INSERT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v4, ""

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/b;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/b;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;)V

    invoke-interface {v0, v1, p3, v2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->installZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/callback/PackageInstallCallback;)V

    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 9

    .line 23
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v3

    .line 24
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v1, "Step_LoadStep: sha256 \u6821\u9a8c"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v0, p3}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->checkSHA256(Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 26
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v2

    .line 27
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromPre(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 29
    invoke-virtual {v1, v4, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 31
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 32
    const-string v7, "mpu_appId"

    const-string v8, "mpu_old_v"

    invoke-static {p3, v6, v7, v8, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v2

    .line 33
    const-string v6, "mpu_new_v"

    invoke-virtual {v2, v6, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v2

    .line 34
    const-string v4, "mpu_result"

    const-string v6, "SIGN_FAIL"

    invoke-virtual {v2, v4, v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v2

    .line 35
    const-string v4, "-1"

    const-string v6, "mpu_chain_uniqueId"

    const-string v7, "uniqueChainID"

    invoke-static {p2, v7, v4, v2, v6}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    .line 36
    const-string v2, ""

    invoke-interface {v1, v5, p2, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 37
    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v1, "Step_LoadStep: sha256 \u6821\u9a8c\u4e0d\u4e00\u81f4\uff0c\u5220\u9664\u6240\u6709\u7f13\u5b58"

    invoke-static {p2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v3, p3}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 39
    new-instance p2, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string v0, "sign error"

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "7"

    invoke-direct {p2, v0, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v1, "Step_LoadStep: sha256 \u6821\u9a8c\u6b63\u786e\uff0c\u89e3\u538b tar \u5305"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    new-instance v7, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/a;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/a;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;)V

    invoke-interface {v6, p3, v7}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->installApp(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/callback/PackageInstallCallback;)V

    return-void
.end method

.method public OooO0OO(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2, v0}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->checkTarUnCompressStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    sget-object p3, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p3, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-interface {v2, v3, v4}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromPre(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p3, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_0

    .line 60
    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-nez v3, :cond_0

    .line 66
    .line 67
    invoke-virtual {p3, v2, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-eqz p3, :cond_0

    .line 72
    .line 73
    const-class p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 74
    .line 75
    invoke-static {p3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    check-cast p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_SUCCESS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 86
    .line 87
    const-string v5, "mpu_appId"

    .line 88
    .line 89
    const-string v6, "mpu_old_v"

    .line 90
    .line 91
    invoke-static {v0, v4, v5, v6, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v1, "mpu_new_v"

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "-1"

    .line 102
    .line 103
    const-string v2, "mpu_chain_uniqueId"

    .line 104
    .line 105
    const-string v4, "uniqueChainID"

    .line 106
    .line 107
    invoke-static {p2, v4, v1, v0, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    const-string v0, ""

    .line 112
    .line 113
    invoke-interface {p3, v3, p2, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 117
    .line 118
    const-string p3, "Step_LoadStep:tar\u5305\u5df2\u89e3\u538b\uff0c\u8df3\u8f6c\u5230 startStep"

    .line 119
    .line 120
    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {p1, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->unlock(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 131
    .line 132
    const-string v2, "Step_LoadStep:\u5220\u9664\u65e7\u7684\u5df2\u89e3\u538b\u6587\u4ef6"

    .line 133
    .line 134
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 138
    .line 139
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0Oo:Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 140
    .line 141
    invoke-interface {v2, v0}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getZipUnCompressPath(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/proxy/FileProxy;->deleteFile(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 149
    .line 150
    const-string v2, "Step_LoadStep:\u89e3\u538b zip \u5305"

    .line 151
    .line 152
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :try_start_0
    invoke-virtual {p0, p2, p1, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 156
    .line 157
    .line 158
    sget-object p2, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_DECOMPRESS:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    .line 159
    .line 160
    invoke-interface {p3, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->updateStepProgress(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :catchall_0
    move-exception p2

    .line 165
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    new-instance p3, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 171
    .line 172
    const-string v0, "unzip error"

    .line 173
    .line 174
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    const-string v0, "5"

    .line 190
    .line 191
    invoke-direct {p3, v0, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-interface {p1, p3}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 195
    .line 196
    .line 197
    :goto_0
    return-void
.end method
