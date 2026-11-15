.class public final Lcom/cloud/tmc/miniapp/utils/OooOOO0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO0;

.field public static final OooO0O0:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OooO0OO:Lcom/cloud/tmc/integration/proxy/PathProxy;

.field public static final OooO0Oo:Lcom/cloud/tmc/integration/proxy/FileProxy;

.field public static final OooO0o0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/OooOOO0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/OooOOO0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO0;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO0O0:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    const-class v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 22
    .line 23
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO0OO:Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 24
    .line 25
    const-class v0, Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 32
    .line 33
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO0Oo:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 34
    .line 35
    const-class v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 42
    .line 43
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 44
    .line 45
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

.method public static final OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lcom/cloud/tmc/integration/model/SubPackageInfo;ZZZLjava/lang/String;)V
    .locals 6

    const-string p6, "$appModel"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$context"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "SubpackagePreUnzipUtil"

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pre unzip :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " zip \u5305\u89e3\u538b\u5b8c\u6210"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p6, p5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO0;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;ZZ)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " unzip error "

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p6, p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " unzip retry"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p6, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p3, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO0O0:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/utils/AppUtils;->getPackageUniqueSign$default(Lcom/cloud/tmc/integration/utils/AppUtils;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 7
    invoke-virtual {p3, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object p3, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO0;

    invoke-virtual {p3, p1, p0, p2}, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Landroid/content/Context;ZZZLjava/lang/String;)V
    .locals 8

    const-string p6, "$appModel"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$context"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object p6, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/utils/AppUtils;->getCurrentPackageUniqueName$default(Lcom/cloud/tmc/integration/utils/AppUtils;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/utils/AppUtils;->getCurrentPackageEncryptionUrl$default(Lcom/cloud/tmc/integration/utils/AppUtils;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/utils/AppUtils;->getPackageUniqueSign$default(Lcom/cloud/tmc/integration/utils/AppUtils;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    if-eqz p5, :cond_3

    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, ":"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ": tar \u5305\u89e3\u538b\u5b8c\u6210"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "SubpackagePreUnzipUtil"

    invoke-static {p5, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :try_start_0
    sget-object p3, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    invoke-virtual {p3, p0, v7}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->getManifestJson(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    sget-object v1, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    const-string v2, "appId"

    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/integration/utils/JsonUtil;->getValueFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    sget-object p3, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO0;

    invoke-virtual {p3, p2, p0, p1}, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": manifest \u5185\u5bb9\u6821\u9a8c\u6210\u529f"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p5, p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p3, p2, p4, v7, v0}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->changeTarUnCompressStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    sget-object p4, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO0Oo:Lcom/cloud/tmc/integration/proxy/FileProxy;

    invoke-interface {p4, p0, v7}, Lcom/cloud/tmc/integration/proxy/FileProxy;->deleteDownloadFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 27
    sget-object p4, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    const/4 v1, 0x0

    invoke-interface {p4, p2, p0, v1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->deleteOldVersionFiles(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getRoot()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 29
    :goto_0
    invoke-interface {p4, p2, p0, p1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->updateOldVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 30
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {p1, p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b58\u5165 \u7684 used"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrl()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backgroundUnZip:finish update used;deployVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";mainPkgUrl:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";fullPkgUrl:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 32
    const-string p5, "Subpackage::"

    invoke-static {p5, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_used"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p2, p0, p1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->updateAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 35
    invoke-interface {p4, p2, p6, v0}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->updatePreUnzipStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 36
    :cond_2
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO0O0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p0

    .line 38
    invoke-virtual {p3, p2, p0, v7, v0}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->changeLatestBackgroundDownloadStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 39
    :catchall_0
    sget-object p3, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO0;

    invoke-virtual {p3, p2, p0, p1}, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;)V

    return-void

    :cond_3
    if-nez p3, :cond_4

    .line 40
    sget-object p3, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO0O0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3, p6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p4, :cond_5

    .line 41
    sget-object p3, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO0;

    invoke-virtual {p3, p2, p0, p1}, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lcom/cloud/tmc/integration/model/SubPackageInfo;ZZZLjava/lang/String;)V
    .locals 6

    const-string p6, "$appModel"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$context"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "SubpackagePreUnzipUtil"

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pre unzip :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " zip \u5305\u89e3\u538b\u5b8c\u6210"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p6, p5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO0;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;ZZ)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " unzip error "

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p6, p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " unzip retry"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p6, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p3, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO0O0:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/utils/AppUtils;->getPackageUniqueSign$default(Lcom/cloud/tmc/integration/utils/AppUtils;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 7
    invoke-virtual {p3, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object p3, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO0;

    invoke-virtual {p3, p1, p0, p2}, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;)V
    .locals 8

    .line 42
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 43
    :try_start_0
    sget-object v2, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/utils/AppUtils;->getCurrentPackageEncryptionUrl$default(Lcom/cloud/tmc/integration/utils/AppUtils;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 44
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 45
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 46
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    .line 47
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getSDK_VERSION()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isReadAssets_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-interface {v2, v3, v1, v5, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 50
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    .line 51
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getSDK_VERSION()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_native_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    const-string v5, ""

    .line 53
    invoke-interface {v0, v2, v1, v3, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    invoke-virtual {v0, p1, v1, p3, v4}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->changeZipUnCompressStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    invoke-virtual {v0, p1, v1, p3, v4}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->changeTarUnCompressStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO0OO:Lcom/cloud/tmc/integration/proxy/PathProxy;

    invoke-interface {p1, p2, p3}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getTarUnCompressPath(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/FileUtils;->delete(Ljava/lang/String;)Z

    .line 57
    invoke-interface {p1, v1, p3}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getZipUnCompressPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->delete(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "native assets remove error "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SubpackagePreUnzipUtil"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_1
    :goto_0
    return-void
.end method

.method public final OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;ZZ)V
    .locals 9

    .line 9
    sget-object v0, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    invoke-virtual {v0, p2, p3}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->checkSHA256(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;)Z

    move-result v1

    const-string v2, "SubpackagePreUnzipUtil"

    if-nez v1, :cond_0

    .line 10
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " :"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " sha256 \u6821\u9a8c\u4e0d\u4e00\u81f4\uff0c\u5220\u9664\u6240\u6709\u7f13\u5b58"

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v3, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/utils/AppUtils;->getCurrentPackageEncryptionUrl$default(Lcom/cloud/tmc/integration/utils/AppUtils;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 12
    invoke-virtual {v0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_0
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sha256 \u6821\u9a8c\u6b63\u786e\uff0c\u89e3\u538b tar \u5305"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO0OO(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;ZZ)V

    return-void
.end method

.method public final OooO0O0(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;ZZ)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    const-class v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 10
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/p;

    move-object v2, v0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/miniapp/utils/p;-><init>(Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lcom/cloud/tmc/integration/model/SubPackageInfo;ZZ)V

    const/4 v4, 0x0

    move-object v2, p1

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->installZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ZLcom/cloud/tmc/integration/model/SubPackageInfo;Lcom/cloud/tmc/integration/callback/PackageInstallCallback;)V

    return-void
.end method

.method public final OooO0OO(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;ZZ)V
    .locals 8

    .line 1
    const-class v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 8
    .line 9
    new-instance v7, Lcom/cloud/tmc/miniapp/utils/o;

    .line 10
    .line 11
    move-object v1, v7

    .line 12
    move-object v2, p2

    .line 13
    move-object v3, p3

    .line 14
    move-object v4, p1

    .line 15
    move v5, p4

    .line 16
    move v6, p5

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/utils/o;-><init>(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Landroid/content/Context;ZZ)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-interface {v0, p2, p1, p3, v7}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->installApp(Lcom/cloud/tmc/integration/model/AppModel;ZLcom/cloud/tmc/integration/model/SubPackageInfo;Lcom/cloud/tmc/integration/callback/PackageInstallCallback;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final OooO0Oo(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;ZZ)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

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
    const-class v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

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
    check-cast v1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 19
    .line 20
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/n;

    .line 21
    .line 22
    move-object v2, v0

    .line 23
    move-object v3, p2

    .line 24
    move-object v4, p1

    .line 25
    move-object v5, p3

    .line 26
    move v6, p4

    .line 27
    move v7, p5

    .line 28
    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/miniapp/utils/n;-><init>(Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lcom/cloud/tmc/integration/model/SubPackageInfo;ZZ)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    move-object v2, p1

    .line 33
    move-object v6, v0

    .line 34
    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->installZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ZLcom/cloud/tmc/integration/model/SubPackageInfo;Lcom/cloud/tmc/integration/callback/PackageInstallCallback;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
