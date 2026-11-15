.class public final Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;

.field public final synthetic OooO0O0:Ljava/lang/String;

.field public final synthetic OooO0OO:Ljava/lang/String;

.field public final synthetic OooO0Oo:Ljava/lang/String;

.field public final synthetic OooO0o0:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0O0:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0OO:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0Oo:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0o0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0O0:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0OO:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "errorCode"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "errorMsg"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "e"

    .line 12
    .line 13
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;

    .line 17
    .line 18
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0O0:Ljava/lang/String;

    .line 19
    .line 20
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0OO:Ljava/lang/String;

    .line 21
    .line 22
    const-string p4, ""

    .line 23
    .line 24
    const/4 p5, 0x0

    .line 25
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object p1, Lcom/cloud/tmc/integration/utils/FilePathUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/FilePathUtils;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0O0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/utils/FilePathUtils;->getDowngradeStatus(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    const-string p2, "1000886706715795456"

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    :try_start_1
    const-class p1, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0Oo:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0o0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 24
    .line 25
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {p1, v0, p2, v1}, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;->generateVUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "manager.generateVUrl(downloadPath, MC_APPID, name)"

    .line 34
    .line 35
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const-class p1, Lcom/cloud/tmc/kernel/resource/IFileResourceManager;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/cloud/tmc/kernel/resource/IFileResourceManager;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0Oo:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0o0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 52
    .line 53
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Ljava/lang/String;

    .line 56
    .line 57
    const-string v2, "temp_data"

    .line 58
    .line 59
    invoke-interface {p1, v0, p2, v1, v2}, Lcom/cloud/tmc/kernel/resource/IFileResourceManager;->generateVUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string p2, "manager.generateVUrl(dow\u2026Constants.TEMP_DATA_PATH)"

    .line 64
    .line 65
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0O0:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0OO:Ljava/lang/String;

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    invoke-interface {p2, v0, v1, p1, v2}, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :goto_1
    const-string p2, "IconDownloadManager"

    .line 80
    .line 81
    const-string v0, "[downloadIcon] error"

    .line 82
    .line 83
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;

    .line 87
    .line 88
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0O0:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO0OO;->OooO0OO:Ljava/lang/String;

    .line 91
    .line 92
    const-string v1, ""

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0$OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    .line 97
    .line 98
    :goto_2
    return-void
.end method

.method public onPrepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "url1"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "callbackId1"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "url1"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "callbackId1"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public progressUpdate(Ljava/lang/String;ILjava/lang/String;JJ)V
    .locals 0

    .line 1
    const-string p2, "url1"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "callbackId1"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
