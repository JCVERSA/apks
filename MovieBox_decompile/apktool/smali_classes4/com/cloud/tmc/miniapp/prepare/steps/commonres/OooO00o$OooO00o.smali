.class public final Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/AppModel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Z

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic OooO0Oo:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

.field public final synthetic OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;


# direct methods
.method public constructor <init>(ZLcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO00o:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

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
    const-string p2, "url"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

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
    :catchall_0
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p5, "url"

    .line 2
    .line 3
    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "errorCode"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "errorMsg"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "e"

    .line 17
    .line 18
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 30
    .line 31
    const/4 p5, 0x0

    .line 32
    invoke-virtual {p1, p2, p4, p5}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    :catchall_0
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO00o:Z

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 55
    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string p4, "Step_Download_\u8d44\u6e90\u5305\u4e0b\u8f7d\u5931\u8d25\uff0c"

    .line 62
    .line 63
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 77
    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    new-instance p2, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 81
    .line 82
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 83
    .line 84
    invoke-virtual {p4}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p4

    .line 88
    new-instance p5, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v0, "download error:"

    .line 94
    .line 95
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p3, "   url:"

    .line 102
    .line 103
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    const-string p4, "4"

    .line 114
    .line 115
    invoke-direct {p2, p4, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 123
    .line 124
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 125
    .line 126
    invoke-interface {p1, p2, p5}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 127
    .line 128
    .line 129
    :cond_1
    :goto_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 4
    .line 5
    const-string p2, "Step_Download_\u8d44\u6e90\u5305\u4e0b\u8f7d\u5b8c\u6210\uff0c\u8fdb\u884c\u89e3\u538b"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {p1, p2, v0, v1}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :catchall_0
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO00o:Z

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-interface {p1, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->unlock(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    :try_start_1
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkEnableBackgroundUnzip()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0;

    .line 65
    .line 66
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 73
    .line 74
    const/4 v6, 0x0

    .line 75
    const/16 v7, 0xc

    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o(Lcom/cloud/tmc/miniapp/utils/OooOO0;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ZZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    .line 80
    .line 81
    :catchall_1
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 82
    .line 83
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 84
    .line 85
    invoke-interface {p1, p2, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_0
    return-void
.end method

.method public onPrepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "url"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string p3, "url"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO00o:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "Step_Download_\u4e0b\u8f7d\u8d44\u6e90\u5305"

    .line 20
    .line 21
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
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
