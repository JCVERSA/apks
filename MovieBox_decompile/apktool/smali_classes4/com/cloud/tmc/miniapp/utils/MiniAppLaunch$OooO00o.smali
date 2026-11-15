.class public final Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->backgroundDownloadSinglePackageZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic OooO0Oo:Landroid/content/Context;

.field public final synthetic OooO0o:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/IOException;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic OooO0o0:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/io/IOException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO00o:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0Oo:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0o0:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0o:Lkotlin/jvm/functions/Function3;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO00o:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "errorCode"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "e"

    .line 7
    .line 8
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance p5, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "Step_APP_Download_\u8d44\u6e90\u5305\u540e\u53f0\u4e0b\u8f7d\u5931\u8d25\uff0c"

    .line 21
    .line 22
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p5

    .line 32
    invoke-static {p1, p5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0o:Lkotlin/jvm/functions/Function3;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-interface {p1, p2, p3, p4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 43
    .line 44
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "Step_APP_Download_\u8d44\u6e90\u5305\u540e\u53f0\u4e0b\u8f7d\u5b8c\u6210\uff0c\u8fdb\u884c\u89e3\u538b"

    .line 6
    .line 7
    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v4, "backgroundDownFullPkgZip Finish:changeZipDownloadStatus:true downloadUrl:"

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, ";appInfo:appId:"

    .line 48
    .line 49
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, ";deployVersion:"

    .line 56
    .line 57
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, ";mainPkgUrl:"

    .line 64
    .line 65
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, ";fullPkgUrl:"

    .line 72
    .line 73
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string p2, "Subpackage::"

    .line 84
    .line 85
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 89
    .line 90
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0Oo:Landroid/content/Context;

    .line 91
    .line 92
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    invoke-virtual {p1, p2, v0, v1}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0o0:Lkotlin/jvm/functions/Function0;

    .line 99
    .line 100
    if-eqz p1, :cond_0

    .line 101
    .line 102
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    :cond_0
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkEnableBackgroundUnzip()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_1

    .line 112
    .line 113
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0;

    .line 114
    .line 115
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0Oo:Landroid/content/Context;

    .line 116
    .line 117
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 118
    .line 119
    const/4 v4, 0x0

    .line 120
    const/16 v5, 0x8

    .line 121
    .line 122
    const/4 v3, 0x0

    .line 123
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o(Lcom/cloud/tmc/miniapp/utils/OooOO0;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ZZI)V

    .line 124
    .line 125
    .line 126
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 127
    .line 128
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 129
    .line 130
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :catchall_0
    move-exception p1

    .line 139
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    :goto_0
    return-void
.end method

.method public onPrepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
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
