.class public Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/AppModel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Z

.field public final synthetic OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic OooO0Oo:Ljava/lang/String;

.field public final synthetic OooO0o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

.field public final synthetic OooO0o0:Ljava/lang/String;

.field public final synthetic OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

.field public final synthetic OooO0oo:Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;ZLcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO00o:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0Oo:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0o0:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
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
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

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
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO00o:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, "sync"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v1, "async"

    .line 25
    .line 26
    :goto_0
    const-string v2, "mpu_download_type"

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "mpu_appId"

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0Oo:Ljava/lang/String;

    .line 45
    .line 46
    const-string v2, "mpu_old_v"

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0o0:Ljava/lang/String;

    .line 53
    .line 54
    const-string v2, "mpu_new_v"

    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "mpu_result"

    .line 61
    .line 62
    const-string v2, "IOException"

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "mpu_error_code"

    .line 69
    .line 70
    const-string v2, "D006"

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v1, "mpu_error_msg"

    .line 77
    .line 78
    const-string v2, "Canceled"

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 85
    .line 86
    const-string v2, "-1"

    .line 87
    .line 88
    const-string v3, "mpu_chain_uniqueId"

    .line 89
    .line 90
    const-string v4, "uniqueChainID"

    .line 91
    .line 92
    invoke-static {v1, v4, v2, v0, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-string v1, ""

    .line 97
    .line 98
    invoke-interface {p1, p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 104
    .line 105
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :catchall_0
    move-exception p1

    .line 116
    const-string p2, "Tmc"

    .line 117
    .line 118
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    :goto_1
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 2
    .line 3
    iget-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 4
    .line 5
    invoke-virtual {p5}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p5

    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, p5, v0, v1}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 13
    .line 14
    .line 15
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p5

    .line 21
    check-cast p5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_DOWNLOAD_FAILED:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 30
    .line 31
    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO00o:Z

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    const-string v3, "sync"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v3, "async"

    .line 39
    .line 40
    :goto_0
    const-string v4, "mpu_download_type"

    .line 41
    .line 42
    invoke-virtual {v2, v4, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "mpu_appId"

    .line 53
    .line 54
    invoke-virtual {v2, v4, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0Oo:Ljava/lang/String;

    .line 59
    .line 60
    const-string v5, "mpu_old_v"

    .line 61
    .line 62
    invoke-virtual {v2, v5, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0o0:Ljava/lang/String;

    .line 67
    .line 68
    const-string v6, "mpu_new_v"

    .line 69
    .line 70
    invoke-virtual {v2, v6, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const-string v7, "mpu_result"

    .line 83
    .line 84
    invoke-virtual {v2, v7, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const-string v3, "mpu_error_code"

    .line 89
    .line 90
    invoke-virtual {v2, v3, p2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p4

    .line 98
    const-string v2, "mpu_error_msg"

    .line 99
    .line 100
    invoke-virtual {p2, v2, p4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 105
    .line 106
    const-string v2, "uniqueChainID"

    .line 107
    .line 108
    const-string v3, "-1"

    .line 109
    .line 110
    const-string v8, "mpu_chain_uniqueId"

    .line 111
    .line 112
    invoke-static {p4, v2, v3, p2, v8}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    const-string p4, ""

    .line 117
    .line 118
    invoke-interface {p5, v0, p2, p4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :try_start_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;

    .line 122
    .line 123
    iget-object p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 124
    .line 125
    iget-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 126
    .line 127
    invoke-virtual {p5}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p5

    .line 131
    invoke-interface {p2, p5}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :catchall_0
    move-exception p2

    .line 136
    const-string p5, "Tmc"

    .line 137
    .line 138
    invoke-static {p5, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    :goto_1
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO00o:Z

    .line 142
    .line 143
    if-eqz p2, :cond_2

    .line 144
    .line 145
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0Oo:Ljava/lang/String;

    .line 146
    .line 147
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-nez p2, :cond_1

    .line 152
    .line 153
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0o0:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    if-nez p2, :cond_1

    .line 160
    .line 161
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 162
    .line 163
    iget-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0o0:Ljava/lang/String;

    .line 164
    .line 165
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0Oo:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {p2, p5, v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    if-eqz p2, :cond_1

    .line 172
    .line 173
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 178
    .line 179
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 180
    .line 181
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    sget-object p5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 186
    .line 187
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {p5, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 194
    .line 195
    .line 196
    move-result-object p5

    .line 197
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0Oo:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {p5, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 200
    .line 201
    .line 202
    move-result-object p5

    .line 203
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0o0:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {p5, v6, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 206
    .line 207
    .line 208
    move-result-object p5

    .line 209
    const-string v0, "DOWNLOAD_FAIL"

    .line 210
    .line 211
    invoke-virtual {p5, v7, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 212
    .line 213
    .line 214
    move-result-object p5

    .line 215
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 216
    .line 217
    invoke-static {v0, v2, v3, p5, v8}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 218
    .line 219
    .line 220
    move-result-object p5

    .line 221
    invoke-interface {p1, p2, p5, p4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;

    .line 225
    .line 226
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 227
    .line 228
    new-instance p2, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string p4, "Step_Download_\u8d44\u6e90\u5305\u4e0b\u8f7d\u5931\u8d25\uff0c"

    .line 234
    .line 235
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 249
    .line 250
    new-instance p2, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 251
    .line 252
    new-instance p4, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    const-string p5, "download error:"

    .line 258
    .line 259
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string p3, "   url:"

    .line 266
    .line 267
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 271
    .line 272
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p3

    .line 276
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p3

    .line 283
    const-string p4, "4"

    .line 284
    .line 285
    invoke-direct {p2, p4, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 289
    .line 290
    .line 291
    goto :goto_2

    .line 292
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 293
    .line 294
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 295
    .line 296
    invoke-interface {p1, p2, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 297
    .line 298
    .line 299
    :goto_2
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "Tmc"

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "Step_Download_\u8d44\u6e90\u5305\u4e0b\u8f7d\u5b8c\u6210\uff0c\u8fdb\u884c\u89e3\u538b"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "SinglePkgDownloadStep Finish:changeZipDownloadStatus true:downloadUrl:"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ";appInfo:appId:"

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, ";deployVersion:"

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, ";mainPkgUrl:"

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrl()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, ";fullPkgUrl:"

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string v0, "Subpackage::"

    .line 100
    .line 101
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 111
    .line 112
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_DOWNLOAD_SUCCESS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 119
    .line 120
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO00o:Z

    .line 121
    .line 122
    if-eqz v2, :cond_0

    .line 123
    .line 124
    const-string v2, "sync"

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_0
    const-string v2, "async"

    .line 128
    .line 129
    :goto_0
    const-string v4, "mpu_download_type"

    .line 130
    .line 131
    invoke-virtual {v1, v4, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const-string v4, "mpu_appId"

    .line 142
    .line 143
    invoke-virtual {v1, v4, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0Oo:Ljava/lang/String;

    .line 148
    .line 149
    const-string v4, "mpu_old_v"

    .line 150
    .line 151
    invoke-virtual {v1, v4, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0o0:Ljava/lang/String;

    .line 156
    .line 157
    const-string v4, "mpu_new_v"

    .line 158
    .line 159
    invoke-virtual {v1, v4, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 164
    .line 165
    const-string v4, "-1"

    .line 166
    .line 167
    const-string v5, "mpu_chain_uniqueId"

    .line 168
    .line 169
    const-string v6, "uniqueChainID"

    .line 170
    .line 171
    invoke-static {v2, v6, v4, v1, v5}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    const-string v2, ""

    .line 176
    .line 177
    invoke-interface {p1, v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;

    .line 181
    .line 182
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 183
    .line 184
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :catchall_0
    move-exception p1

    .line 195
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    :goto_1
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO00o:Z

    .line 199
    .line 200
    if-eqz p1, :cond_1

    .line 201
    .line 202
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 203
    .line 204
    invoke-interface {p1, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->unlock(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 208
    .line 209
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_1
    :try_start_1
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkEnableBackgroundUnzip()Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-eqz p1, :cond_2

    .line 220
    .line 221
    sget-object v4, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0;

    .line 222
    .line 223
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 230
    .line 231
    const-string p1, "context"

    .line 232
    .line 233
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const-string p1, "appModel"

    .line 237
    .line 238
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const/4 v8, 0x0

    .line 242
    const/16 v9, 0xc

    .line 243
    .line 244
    const/4 v7, 0x0

    .line 245
    invoke-static/range {v4 .. v9}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o(Lcom/cloud/tmc/miniapp/utils/OooOO0;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ZZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 246
    .line 247
    .line 248
    goto :goto_2

    .line 249
    :catchall_1
    move-exception p1

    .line 250
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    .line 252
    .line 253
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 254
    .line 255
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 256
    .line 257
    invoke-interface {p1, p2, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 258
    .line 259
    .line 260
    :goto_3
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
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO00o:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;

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
