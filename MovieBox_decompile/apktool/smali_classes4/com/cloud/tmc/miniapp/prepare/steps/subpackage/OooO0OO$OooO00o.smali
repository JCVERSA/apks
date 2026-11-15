.class public final Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

.field public final synthetic OooO00o:Z

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic OooO0Oo:Ljava/lang/String;

.field public final synthetic OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic OooO0o0:Ljava/lang/String;

.field public final synthetic OooO0oO:Ljava/lang/String;

.field public final synthetic OooO0oo:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

.field public final synthetic OooOO0:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO00o:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0Oo:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o0:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oO:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 18
    .line 19
    iput-object p10, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooOO0:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p1, "Tmc"

    .line 2
    .line 3
    :try_start_0
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_DOWNLOAD_USER_EXIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 4
    .line 5
    const-string v0, "mpu_download_type"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO00o:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v1, "sync"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p2

    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    const-string v1, "async"

    .line 18
    .line 19
    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string v0, "mpu_appId"

    .line 24
    .line 25
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const-string v0, "mpu_old_v"

    .line 36
    .line 37
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0Oo:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const-string v0, "mpu_new_v"

    .line 44
    .line 45
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o0:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const-string v0, "mpu_result"

    .line 52
    .line 53
    const-string v1, "IOException"

    .line 54
    .line 55
    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const-string v0, "mpu_error_code"

    .line 60
    .line 61
    const-string v1, "D006"

    .line 62
    .line 63
    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const-string v0, "mpu_error_msg"

    .line 68
    .line 69
    const-string v1, "Canceled"

    .line 70
    .line 71
    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    const-string v0, "mpu_chain_uniqueId"

    .line 76
    .line 77
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "uniqueChainID"

    .line 84
    .line 85
    const-string v3, "-1"

    .line 86
    .line 87
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    const-string v0, "POINT_PACKAGE_DOWNLOAD_U\u2026                        )"

    .line 96
    .line 97
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    .line 115
    .line 116
    iget-object v2, v2, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 117
    .line 118
    invoke-virtual {v2, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    const-string v2, ""

    .line 123
    .line 124
    invoke-interface {v0, v1, p2, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    .line 127
    :try_start_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    .line 128
    .line 129
    iget-object p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 130
    .line 131
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oO:Ljava/lang/String;

    .line 132
    .line 133
    invoke-interface {p2, v0}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :catchall_1
    move-exception p2

    .line 138
    :try_start_2
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :goto_1
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    :goto_2
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    const-string v3, "Tmc"

    .line 6
    .line 7
    const-string v4, ""

    .line 8
    .line 9
    const-class v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 10
    .line 11
    const-string v6, "-1"

    .line 12
    .line 13
    const-string v7, "uniqueChainID"

    .line 14
    .line 15
    const-string v8, "mpu_chain_uniqueId"

    .line 16
    .line 17
    const-string v9, "mpu_result"

    .line 18
    .line 19
    const-string v10, "mpu_new_v"

    .line 20
    .line 21
    const-string v11, "mpu_old_v"

    .line 22
    .line 23
    const-string v12, "mpu_appId"

    .line 24
    .line 25
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    .line 26
    .line 27
    iget-object v13, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 28
    .line 29
    invoke-virtual {v13}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v13

    .line 33
    iget-object v14, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 34
    .line 35
    invoke-virtual {v14}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v14

    .line 39
    iget-object v15, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oO:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v13, v14, v15, v2}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_DOWNLOAD_FAILED:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 46
    .line 47
    const-string v13, "mpu_download_type"

    .line 48
    .line 49
    iget-boolean v14, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO00o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 50
    .line 51
    if-eqz v14, :cond_0

    .line 52
    .line 53
    :try_start_1
    const-string v14, "sync"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    move-object v2, v3

    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :cond_0
    :try_start_2
    const-string v14, "async"

    .line 61
    .line 62
    :goto_0
    invoke-virtual {v0, v13, v14}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v13, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 67
    .line 68
    invoke-virtual {v13}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    invoke-virtual {v0, v12, v13}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v13, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0Oo:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v11, v13}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v13, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o0:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v10, v13}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 85
    .line 86
    .line 87
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 88
    const/4 v13, 0x0

    .line 89
    if-eqz p4, :cond_1

    .line 90
    .line 91
    :try_start_3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    move-result-object v14

    .line 95
    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    move-object v14, v13

    .line 101
    :goto_1
    :try_start_4
    invoke-virtual {v0, v9, v14}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v14, "mpu_error_code"

    .line 106
    .line 107
    move-object/from16 v15, p2

    .line 108
    .line 109
    invoke-virtual {v0, v14, v15}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v14, "mpu_error_msg"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 114
    .line 115
    if-eqz p4, :cond_2

    .line 116
    .line 117
    :try_start_5
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 121
    :cond_2
    :try_start_6
    invoke-virtual {v0, v14, v13}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iget-object v13, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 126
    .line 127
    invoke-virtual {v13}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    .line 128
    .line 129
    .line 130
    move-result-object v13

    .line 131
    invoke-virtual {v13, v7, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    invoke-virtual {v0, v8, v13}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const-string v13, "POINT_PACKAGE_DOWNLOAD_F\u2026                        )"

    .line 140
    .line 141
    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v13

    .line 148
    check-cast v13, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 149
    .line 150
    iget-object v14, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 151
    .line 152
    invoke-virtual {v14}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v14

    .line 156
    iget-object v15, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    .line 157
    .line 158
    iget-object v15, v15, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 159
    .line 160
    invoke-virtual {v15, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-interface {v13, v14, v0, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 165
    .line 166
    .line 167
    :try_start_7
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    .line 168
    .line 169
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 170
    .line 171
    iget-object v13, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oO:Ljava/lang/String;

    .line 172
    .line 173
    invoke-interface {v0, v13}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :catchall_1
    move-exception v0

    .line 178
    :try_start_8
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    :goto_2
    iget-boolean v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO00o:Z

    .line 182
    .line 183
    if-eqz v0, :cond_5

    .line 184
    .line 185
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0Oo:Ljava/lang/String;

    .line 186
    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_3

    .line 192
    .line 193
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o0:Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-nez v0, :cond_3

    .line 200
    .line 201
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o0:Ljava/lang/String;

    .line 202
    .line 203
    if-eqz v0, :cond_3

    .line 204
    .line 205
    iget-object v2, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0Oo:Ljava/lang/String;

    .line 206
    .line 207
    iget-object v13, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 208
    .line 209
    iget-object v14, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 210
    .line 211
    iget-object v15, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 212
    .line 213
    if-eqz v2, :cond_3

    .line 214
    .line 215
    move-object/from16 p1, v3

    .line 216
    .line 217
    :try_start_9
    sget-object v3, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 218
    .line 219
    invoke-virtual {v3, v0, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-eqz v3, :cond_4

    .line 224
    .line 225
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 226
    .line 227
    invoke-virtual {v13}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v13

    .line 231
    invoke-virtual {v3, v12, v13}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-virtual {v3, v11, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v2, v10, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    const-string v2, "DOWNLOAD_FAIL"

    .line 244
    .line 245
    invoke-virtual {v0, v9, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v14}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {v2, v7, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v0, v8, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    const-string v2, "POINT_PACKAGE_UPDATE_FAI\u2026                        )"

    .line 262
    .line 263
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 271
    .line 272
    invoke-virtual {v14}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    iget-object v5, v15, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 277
    .line 278
    invoke-virtual {v5, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-interface {v2, v3, v0, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    goto :goto_4

    .line 286
    :catchall_2
    move-exception v0

    .line 287
    :goto_3
    move-object/from16 v2, p1

    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_3
    move-object/from16 p1, v3

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :catchall_3
    move-exception v0

    .line 294
    move-object/from16 p1, v3

    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_4
    :goto_4
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    .line 298
    .line 299
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 300
    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    const-string v3, "Step_Download_\u8d44\u6e90\u5305\u4e0b\u8f7d\u5931\u8d25\uff0c"

    .line 307
    .line 308
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    move-object/from16 v3, p3

    .line 312
    .line 313
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 324
    .line 325
    new-instance v2, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 326
    .line 327
    const-string v4, "4"

    .line 328
    .line 329
    iget-object v5, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooOO0:Ljava/lang/String;

    .line 330
    .line 331
    new-instance v6, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .line 335
    .line 336
    const-string v7, "download error:"

    .line 337
    .line 338
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string v3, "   url:"

    .line 345
    .line 346
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    invoke-direct {v2, v4, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-interface {v0, v2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 360
    .line 361
    .line 362
    goto :goto_6

    .line 363
    :cond_5
    move-object/from16 p1, v3

    .line 364
    .line 365
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 366
    .line 367
    iget-object v3, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 368
    .line 369
    invoke-interface {v0, v3, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 370
    .line 371
    .line 372
    goto :goto_6

    .line 373
    :goto_5
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    .line 375
    .line 376
    iget-boolean v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO00o:Z

    .line 377
    .line 378
    if-eqz v0, :cond_6

    .line 379
    .line 380
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 381
    .line 382
    new-instance v2, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 383
    .line 384
    const-string v3, "download error"

    .line 385
    .line 386
    invoke-direct {v2, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-interface {v0, v2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 390
    .line 391
    .line 392
    :cond_6
    :goto_6
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string p1, "Tmc"

    .line 2
    .line 3
    :try_start_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "Step_Download_\u8d44\u6e90\u5305\u4e0b\u8f7d\u5b8c\u6210\uff0c\u8fdb\u884c\u89e3\u538b"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p2, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oO:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_DOWNLOAD_SUCCESS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 33
    .line 34
    const-string v0, "mpu_download_type"

    .line 35
    .line 36
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO00o:Z

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    const-string v1, "sync"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p2

    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_0
    const-string v1, "async"

    .line 47
    .line 48
    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const-string v0, "mpu_appId"

    .line 53
    .line 54
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    const-string v0, "mpu_old_v"

    .line 65
    .line 66
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0Oo:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    const-string v0, "mpu_new_v"

    .line 73
    .line 74
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o0:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    const-string v0, "mpu_chain_uniqueId"

    .line 81
    .line 82
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v2, "uniqueChainID"

    .line 89
    .line 90
    const-string v4, "-1"

    .line 91
    .line 92
    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    const-string v0, "POINT_PACKAGE_DOWNLOAD_S\u2026                        )"

    .line 101
    .line 102
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    .line 120
    .line 121
    iget-object v2, v2, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 122
    .line 123
    invoke-virtual {v2, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    const-string v2, ""

    .line 128
    .line 129
    invoke-interface {v0, v1, p2, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    .line 132
    :try_start_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    .line 133
    .line 134
    iget-object p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 135
    .line 136
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oO:Ljava/lang/String;

    .line 137
    .line 138
    invoke-interface {p2, v0}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :catchall_1
    move-exception p2

    .line 143
    :try_start_2
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    :goto_1
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO00o:Z

    .line 147
    .line 148
    if-eqz p2, :cond_1

    .line 149
    .line 150
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 151
    .line 152
    invoke-interface {p2, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->unlock(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 156
    .line 157
    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_1
    :try_start_3
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 162
    .line 163
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkEnableBackgroundUnzip()Z

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    if-eqz p2, :cond_2

    .line 168
    .line 169
    sget-object v4, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO0;

    .line 170
    .line 171
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 172
    .line 173
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 178
    .line 179
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    .line 180
    .line 181
    iget-object p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 182
    .line 183
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0()Lcom/cloud/tmc/integration/model/SubPackageInfo;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    const/4 v9, 0x1

    .line 188
    const/4 v8, 0x0

    .line 189
    invoke-virtual/range {v4 .. v9}, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO0O0(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :catchall_2
    move-exception p2

    .line 194
    :try_start_4
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    .line 196
    .line 197
    :cond_2
    :goto_2
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 198
    .line 199
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 200
    .line 201
    invoke-interface {p2, v0, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :goto_3
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    .line 207
    .line 208
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO00o:Z

    .line 209
    .line 210
    if-eqz p1, :cond_3

    .line 211
    .line 212
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 213
    .line 214
    new-instance p2, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 215
    .line 216
    const-string v0, "download error"

    .line 217
    .line 218
    invoke-direct {p2, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 222
    .line 223
    .line 224
    :cond_3
    :goto_4
    return-void
.end method

.method public onPrepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO00o:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "Step_Download_\u4e0b\u8f7d\u8d44\u6e90\u5305"

    .line 15
    .line 16
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public synthetic progressUpdate(Ljava/lang/String;ILjava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/cloud/tmc/kernel/proxy/network/a;->a(Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
