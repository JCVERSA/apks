.class public Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/Oooo0;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic OooO0OO:Ljava/lang/String;

.field public final synthetic OooO0Oo:Ljava/lang/String;

.field public final synthetic OooO0o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

.field public final synthetic OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;Lcom/cloud/tmc/miniapp/dialog/Oooo0;Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/Oooo0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0OO:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0Oo:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_DOWNLOAD_USER_EXIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    .line 18
    .line 19
    iget-boolean v1, v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;->OooO0oo:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string v1, "sync"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v1, "async"

    .line 27
    .line 28
    :goto_0
    const-string v2, "mpu_download_type"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "mpu_appId"

    .line 35
    .line 36
    const-string v2, "100000"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0OO:Ljava/lang/String;

    .line 43
    .line 44
    const-string v2, "mpu_old_v"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0Oo:Ljava/lang/String;

    .line 51
    .line 52
    const-string v2, "mpu_new_v"

    .line 53
    .line 54
    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "mpu_result"

    .line 59
    .line 60
    const-string v2, "IOException"

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "mpu_error_code"

    .line 67
    .line 68
    const-string v2, "D006"

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v1, "mpu_error_msg"

    .line 75
    .line 76
    const-string v2, "Canceled"

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 83
    .line 84
    const-string v2, "-1"

    .line 85
    .line 86
    const-string v3, "mpu_chain_uniqueId"

    .line 87
    .line 88
    const-string v4, "uniqueChainID"

    .line 89
    .line 90
    invoke-static {v1, v4, v2, v0, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v1, ""

    .line 95
    .line 96
    invoke-interface {p1, p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    .line 100
    .line 101
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 102
    .line 103
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 104
    .line 105
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catchall_0
    move-exception p1

    .line 114
    const-string p2, "Tmc"

    .line 115
    .line 116
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    :goto_1
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/Oooo0;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 9
    .line 10
    iget-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 11
    .line 12
    invoke-virtual {p5}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p5

    .line 16
    invoke-virtual {p1, p5}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->showErrorDialog(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 20
    .line 21
    iget-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 22
    .line 23
    invoke-virtual {p5}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p5

    .line 27
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p5

    .line 31
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, p5, v0, v1}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 40
    .line 41
    new-instance p5, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v0, "Step_FW_Download_\u8d44\u6e90\u5305\u4e0b\u8f7d\u5931\u8d25\uff0c"

    .line 47
    .line 48
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p5

    .line 58
    invoke-static {p1, p5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p5

    .line 67
    check-cast p5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_DOWNLOAD_FAILED:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    .line 78
    .line 79
    iget-boolean v2, v2, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;->OooO0oo:Z

    .line 80
    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    const-string v2, "sync"

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const-string v2, "async"

    .line 87
    .line 88
    :goto_0
    const-string v3, "mpu_download_type"

    .line 89
    .line 90
    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "100000"

    .line 95
    .line 96
    const-string v3, "mpu_appId"

    .line 97
    .line 98
    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0OO:Ljava/lang/String;

    .line 103
    .line 104
    const-string v4, "mpu_old_v"

    .line 105
    .line 106
    invoke-virtual {v1, v4, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0Oo:Ljava/lang/String;

    .line 111
    .line 112
    const-string v5, "mpu_new_v"

    .line 113
    .line 114
    invoke-virtual {v1, v5, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    const-string v6, "mpu_result"

    .line 127
    .line 128
    invoke-virtual {v1, v6, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const-string v2, "mpu_error_code"

    .line 133
    .line 134
    invoke-virtual {v1, v2, p2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p4

    .line 142
    const-string v1, "mpu_error_msg"

    .line 143
    .line 144
    invoke-virtual {p2, v1, p4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 149
    .line 150
    const-string v1, "uniqueChainID"

    .line 151
    .line 152
    const-string v2, "-1"

    .line 153
    .line 154
    const-string v7, "mpu_chain_uniqueId"

    .line 155
    .line 156
    invoke-static {p4, v1, v2, p2, v7}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    const-string p4, ""

    .line 161
    .line 162
    invoke-interface {p5, v0, p2, p4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :try_start_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    .line 166
    .line 167
    iget-object p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 168
    .line 169
    iget-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 170
    .line 171
    invoke-virtual {p5}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p5

    .line 175
    invoke-interface {p2, p5}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :catchall_0
    move-exception p2

    .line 180
    const-string p5, "Tmc"

    .line 181
    .line 182
    invoke-static {p5, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    :goto_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    .line 186
    .line 187
    iget-boolean p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;->OooO0oo:Z

    .line 188
    .line 189
    if-eqz p2, :cond_3

    .line 190
    .line 191
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0OO:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    if-nez p2, :cond_2

    .line 198
    .line 199
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0Oo:Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    if-nez p2, :cond_2

    .line 206
    .line 207
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 208
    .line 209
    iget-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0OO:Ljava/lang/String;

    .line 210
    .line 211
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0Oo:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {p2, p5, v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkFwVersionUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    if-eqz p2, :cond_2

    .line 218
    .line 219
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 224
    .line 225
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 226
    .line 227
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    sget-object p5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 232
    .line 233
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {p5, v3, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 240
    .line 241
    .line 242
    move-result-object p5

    .line 243
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0OO:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {p5, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 246
    .line 247
    .line 248
    move-result-object p5

    .line 249
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0Oo:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {p5, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 252
    .line 253
    .line 254
    move-result-object p5

    .line 255
    const-string v0, "DOWNLOAD_FAIL"

    .line 256
    .line 257
    invoke-virtual {p5, v6, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 258
    .line 259
    .line 260
    move-result-object p5

    .line 261
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 262
    .line 263
    invoke-static {v0, v1, v2, p5, v7}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 264
    .line 265
    .line 266
    move-result-object p5

    .line 267
    invoke-interface {p1, p2, p5, p4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 271
    .line 272
    new-instance p2, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 273
    .line 274
    new-instance p4, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    const-string p5, "download error:"

    .line 280
    .line 281
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string p3, "   url:"

    .line 288
    .line 289
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 293
    .line 294
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p3

    .line 298
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p3

    .line 305
    const-string p4, "4"

    .line 306
    .line 307
    invoke-direct {p2, p4, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 311
    .line 312
    .line 313
    :cond_3
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p1, "Tmc"

    .line 2
    .line 3
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "Step_FW_Download_\u8d44\u6e90\u5305\u4e0b\u8f7d\u5b8c\u6210"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O$OooO00o;

    .line 13
    .line 14
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    sget-object p2, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {p2, v0, v1, v2}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->setFrameWorkModel(Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 43
    .line 44
    .line 45
    const-class p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 46
    .line 47
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_DOWNLOAD_SUCCESS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    .line 62
    .line 63
    iget-boolean v2, v2, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;->OooO0oo:Z

    .line 64
    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    const-string v2, "sync"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const-string v2, "async"

    .line 71
    .line 72
    :goto_0
    const-string v3, "mpu_download_type"

    .line 73
    .line 74
    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v2, "mpu_appId"

    .line 79
    .line 80
    const-string v3, "100000"

    .line 81
    .line 82
    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0OO:Ljava/lang/String;

    .line 87
    .line 88
    const-string v3, "mpu_old_v"

    .line 89
    .line 90
    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0Oo:Ljava/lang/String;

    .line 95
    .line 96
    const-string v3, "mpu_new_v"

    .line 97
    .line 98
    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 103
    .line 104
    const-string v3, "-1"

    .line 105
    .line 106
    const-string v4, "mpu_chain_uniqueId"

    .line 107
    .line 108
    const-string v5, "uniqueChainID"

    .line 109
    .line 110
    invoke-static {v2, v5, v3, v1, v4}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const-string v2, ""

    .line 115
    .line 116
    invoke-interface {p2, v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :try_start_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    .line 120
    .line 121
    iget-object p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-interface {p2, v0}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catchall_0
    move-exception p2

    .line 134
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    :goto_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    .line 138
    .line 139
    iget-boolean v0, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;->OooO0oo:Z

    .line 140
    .line 141
    if-eqz v0, :cond_1

    .line 142
    .line 143
    iget-object p1, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 144
    .line 145
    const-string p2, "Step_FW_Download_\u8df3\u8f6c\u5230\u4e0b\u4e00\u6d41\u7a0b"

    .line 146
    .line 147
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 151
    .line 152
    invoke-interface {p1, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->unlock(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 156
    .line 157
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_1
    :try_start_1
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
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0;

    .line 170
    .line 171
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 172
    .line 173
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 178
    .line 179
    const-string p2, "context"

    .line 180
    .line 181
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const-string p2, "appModel"

    .line 185
    .line 186
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const/4 v4, 0x0

    .line 190
    const/16 v5, 0xc

    .line 191
    .line 192
    const/4 v3, 0x0

    .line 193
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o(Lcom/cloud/tmc/miniapp/utils/OooOO0;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ZZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :catchall_1
    move-exception p2

    .line 198
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    .line 200
    .line 201
    :cond_2
    :goto_2
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
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    .line 2
    .line 3
    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;->OooO0oo:Z

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/Oooo0;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO00o(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    rem-int/lit8 p1, p2, 0x5

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 21
    .line 22
    new-instance p3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v0, "Step_FW_Download_\u4e0b\u8f7d\u8d44\u6e90\u5305"

    .line 28
    .line 29
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
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
