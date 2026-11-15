.class public final Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

.field private static final TAG:Ljava/lang/String;

.field private static final commonResIdList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final commonResLaunchList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 7
    .line 8
    const-string v0, "MiniAppLaunch"

    .line 9
    .line 10
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->commonResLaunchList:Ljava/util/Map;

    .line 18
    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->commonResIdList:Ljava/util/Map;

    .line 25
    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->showErrorDialog$lambda$37(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$checkOpenBrowser(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkOpenBrowser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$launchMiniActivity(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->launchMiniActivity(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$showProgressDialog(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->showProgressDialog(Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/miniapp/dialog/Oooo0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->showProgressDialog$lambda$39(Lcom/cloud/tmc/miniapp/dialog/Oooo0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic backgroundDownZip$default(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 9

    .line 1
    and-int/lit8 v0, p7, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v6, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v6, p4

    .line 9
    :goto_0
    and-int/lit8 v0, p7, 0x10

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v7, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v7, p5

    .line 16
    :goto_1
    and-int/lit8 v0, p7, 0x20

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    move-object v8, v1

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move-object v8, p6

    .line 23
    :goto_2
    move-object v2, p0

    .line 24
    move-object v3, p1

    .line 25
    move-object v4, p2

    .line 26
    move v5, p3

    .line 27
    invoke-virtual/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->backgroundDownZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final backgroundDownloadOfflineCheck(Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkOfflinePkg(Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-class v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "_pre"

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v0, p2, p1, v1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->updateAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "Step_APP_Download_\u8d44\u6e90\u5305\u540e\u53f0\u4ece\u79bb\u7ebf\u6846\u67b6\u83b7\u53d6\u6210\u529f\uff0c\u8fdb\u884c\u89e3\u538b"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, p2, p1, v1}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrl()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v4, "backgroundDownloadOfflineCheck:changeZipDownloadStatus true:appInfo:appId:"

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p2, ";deployVersion:"

    .line 82
    .line 83
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p2, ";mainPkgUrl:"

    .line 90
    .line 91
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p2, ";fullPkgUrl:"

    .line 98
    .line 99
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string p2, "Subpackage::"

    .line 110
    .line 111
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    if-eqz p3, :cond_0

    .line 115
    .line 116
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    :cond_0
    return v1

    .line 120
    :cond_1
    const/4 p1, 0x0

    .line 121
    return p1
.end method

.method public static synthetic backgroundDownloadSinglePackageZip$default(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 9

    .line 1
    and-int/lit8 v0, p7, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v6, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v6, p4

    .line 9
    :goto_0
    and-int/lit8 v0, p7, 0x10

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v7, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v7, p5

    .line 16
    :goto_1
    and-int/lit8 v0, p7, 0x20

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    move-object v8, v1

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move-object v8, p6

    .line 23
    :goto_2
    move-object v2, p0

    .line 24
    move-object v3, p1

    .line 25
    move-object v4, p2

    .line 26
    move v5, p3

    .line 27
    invoke-virtual/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->backgroundDownloadSinglePackageZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static synthetic backgroundDownloadSubPackageZip$default(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 9

    .line 1
    and-int/lit8 v0, p7, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v6, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v6, p4

    .line 9
    :goto_0
    and-int/lit8 v0, p7, 0x10

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v7, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v7, p5

    .line 16
    :goto_1
    and-int/lit8 v0, p7, 0x20

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    move-object v8, v1

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move-object v8, p6

    .line 23
    :goto_2
    move-object v2, p0

    .line 24
    move-object v3, p1

    .line 25
    move-object v4, p2

    .line 26
    move v5, p3

    .line 27
    invoke-virtual/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->backgroundDownloadSubPackageZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static synthetic buildShareUrl$default(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string p2, ""

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->buildShareUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->showUpdateFwZipDialog$lambda$38(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final checkEnableAppQuickModel(ZLjava/lang/String;)Z
    .locals 5

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 8
    .line 9
    const-string v1, "miniEnableQuickModeLaunch"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "checkEnableAppQuickModel->"

    .line 27
    .line 28
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v1

    .line 42
    :cond_0
    const-string v0, "https://"

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static {p2, v0, v1, v3, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    const-string v0, "http://"

    .line 53
    .line 54
    invoke-static {p2, v0, v1, v3, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    :cond_1
    if-eqz p1, :cond_2

    .line 61
    .line 62
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v1, "checkEnableAppQuickModel extQuickMode->"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return v2

    .line 85
    :cond_2
    return v1
.end method

.method public static final checkOfflinePkg(Lcom/cloud/tmc/integration/model/AppModel;)Z
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "appModel"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    const-string v2, "100000"

    .line 29
    .line 30
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    return v1

    .line 37
    :cond_3
    invoke-static {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->getOfflinePkgFwCachePath(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    return v1

    .line 44
    :cond_4
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/Utils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/Utils;

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Lcom/cloud/tmc/offline/download/utils/Utils;->getAppVersionFromOfflinePkgCache(Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_5

    .line 51
    .line 52
    return v1

    .line 53
    :cond_5
    sget-object v3, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 54
    .line 55
    invoke-virtual {v3, p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v5, 0x1

    .line 64
    if-nez v4, :cond_8

    .line 65
    .line 66
    invoke-virtual {v3, p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    if-nez v4, :cond_6

    .line 71
    .line 72
    const-string v4, "0"

    .line 73
    .line 74
    :cond_6
    invoke-virtual {v3, v2, v4}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_7

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_7
    move v4, v1

    .line 82
    goto :goto_1

    .line 83
    :cond_8
    :goto_0
    move v4, v5

    .line 84
    :goto_1
    sget-object v6, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v3, p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    new-instance v7, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v8, "isUpdate->"

    .line 96
    .line 97
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v8, ",offlineVersion-> "

    .line 104
    .line 105
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v2, ",appVersion:"

    .line 112
    .line 113
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {v6, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    if-nez v4, :cond_9

    .line 127
    .line 128
    return v1

    .line 129
    :cond_9
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;->getZipFileInfo()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_a

    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_a

    .line 140
    .line 141
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->getZipUnCompressPath()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v0, "/"

    .line 164
    .line 165
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v0, ".zip"

    .line 172
    .line 173
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/FileUtils;->isFileExists(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_a

    .line 185
    .line 186
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/model/AppModel;->setZipPath(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return v5

    .line 190
    :cond_a
    return v1
.end method

.method private final checkOpenBrowser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_7

    .line 3
    .line 4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    const-class v1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 26
    .line 27
    sget-object v2, Lcom/cloud/tmc/integration/model/AppInfoQuery;->Companion:Lcom/cloud/tmc/integration/model/AppInfoQuery$Companion;

    .line 28
    .line 29
    invoke-virtual {v2, p2}, Lcom/cloud/tmc/integration/model/AppInfoQuery$Companion;->make(Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppInfoQuery;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v1, p1, v2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    return v0

    .line 40
    :cond_2
    sget-object v2, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    if-eqz p3, :cond_3

    .line 44
    .line 45
    const-string v4, "scene_id"

    .line 46
    .line 47
    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move-object v4, v3

    .line 55
    :goto_0
    invoke-virtual {v2, p1, p2, v4}, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_4

    .line 60
    .line 61
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 62
    .line 63
    const-string p2, "checkOpenBrowser failed. PreStrategyManager.checkEnableOpenBrowser is false."

    .line 64
    .line 65
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return v0

    .line 69
    :cond_4
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_5

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/ExtendModel;->getH5Url()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    :cond_5
    invoke-static {v3, p3}, Lcom/cloud/tmc/kernel/utils/KUrlUtils;->generateShellUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_6

    .line 88
    .line 89
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 90
    .line 91
    const-string p2, "checkOpenBrowser failed. url is null."

    .line 92
    .line 93
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return v0

    .line 97
    :cond_6
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    new-instance v1, Landroid/content/Intent;

    .line 102
    .line 103
    const-string v2, "android.intent.action.VIEW"

    .line 104
    .line 105
    invoke-direct {v1, v2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    .line 107
    .line 108
    const/high16 p3, 0x10000000

    .line 109
    .line 110
    invoke-virtual {v1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    .line 115
    .line 116
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 123
    .line 124
    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_OPEN_BROWSER:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 125
    .line 126
    const-string v1, ""

    .line 127
    .line 128
    invoke-interface {p1, p2, p3, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    .line 131
    const/4 p1, 0x1

    .line 132
    return p1

    .line 133
    :goto_1
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    return v0

    .line 139
    :cond_7
    :goto_2
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 140
    .line 141
    const-string p2, "checkOpenBrowser failed. appId is null."

    .line 142
    .line 143
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return v0
.end method

.method private final checkTarget(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "android.intent.action.VIEW"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_7

    .line 5
    .line 6
    const-string v2, "target"

    .line 7
    .line 8
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_7

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    if-lez v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v2, v4

    .line 23
    :goto_0
    if-nez v2, :cond_1

    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getShareTargetMap()Ljava/util/HashMap;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/lang/String;

    .line 46
    .line 47
    :cond_2
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    if-nez v4, :cond_4

    .line 55
    .line 56
    :goto_1
    return v1

    .line 57
    :cond_4
    const/high16 v1, 0x10000000

    .line 58
    .line 59
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const-string v5, "supportVersion"

    .line 64
    .line 65
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v5, "0"

    .line 70
    .line 71
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    const-string v6, "dlt"

    .line 76
    .line 77
    if-eqz v5, :cond_5

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_5
    if-nez p1, :cond_6

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_6
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v5, "://miniapp?"

    .line 107
    .line 108
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-direct {p0, v3, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getKey(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    new-instance v3, Landroid/content/Intent;

    .line 123
    .line 124
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    .line 142
    .line 143
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance p1, Landroid/content/Intent;

    .line 160
    .line 161
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    const-string p2, "android.intent.category.BROWSABLE"

    .line 178
    .line 179
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 187
    .line 188
    .line 189
    :goto_3
    const/4 p1, 0x1

    .line 190
    return p1

    .line 191
    :cond_7
    :goto_4
    return v1
.end method

.method public static synthetic d(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->jumpPalmStore$lambda$36(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->jumpGooglePlayStore$lambda$35(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getAllOfDigit(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "builder.toString()"

    .line 38
    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object p1
.end method

.method public static final getCloseSdkSwitch()Z
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v2, "closeMiniAppSDK"

    .line 13
    .line 14
    invoke-interface {v1, v2, v0}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :catchall_0
    :cond_0
    return v0
.end method

.method private final getKey(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x0

    .line 41
    :goto_0
    return-object v1
.end method

.method public static final getMiniAppLaunchActivity(Landroid/content/Intent;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "startBundle"

    .line 11
    .line 12
    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const-string v0, "targetProcess"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getDEFAULT_TARGET_PROCESS()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->isPreInit()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->otherProcessInit()V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getDEFAULT_TARGET_PROCESS()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    const-class p0, Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniAppMiniProcessActivity;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const-class p0, Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniAppMainProcessActivity;

    .line 71
    .line 72
    :goto_1
    return-object p0
.end method

.method private final getShareTargetMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 8
    .line 9
    const-string v1, "shareTarget"

    .line 10
    .line 11
    const-string v2, "{\"com.cloud.tmc.miniapp\":\"byte\",\"com.talpa.image.encryption\":\"ms\",\"com.transsion.hilauncher\":\"hi\"}"

    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-class v1, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    return-object v0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    return-object v0
.end method

.method public static final getTargetProcess()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, ":mini"

    .line 2
    .line 3
    return-object v0
.end method

.method private static final jumpGooglePlayStore$lambda$35(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "$context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 7
    .line 8
    const-string v1, "jumpStoreDeeplink"

    .line 9
    .line 10
    const-string v2, "market://details?id="

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Landroid/content/Intent;

    .line 40
    .line 41
    const-string v2, "android.intent.action.VIEW"

    .line 42
    .line 43
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 44
    .line 45
    .line 46
    const/high16 v0, 0x10000000

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private static final jumpPalmStore$lambda$36(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, "$context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/AppUtils;->getAppName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "palmplay://thirdlauncher.com/?entryType=AppDetail&detailType=SOFT&utm_source=pushsdk&_source=miniApp&packageName="

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, "&name="

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Landroid/content/Intent;

    .line 44
    .line 45
    const-string v2, "android.intent.action.VIEW"

    .line 46
    .line 47
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 48
    .line 49
    .line 50
    const/high16 v0, 0x10000000

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static final killActivity(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    :try_start_0
    instance-of v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->killActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_2
    return-void
.end method

.method public static final launchAdLandingPage(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOo0:Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$OooO00o;

    .line 17
    .line 18
    const-string v1, "ad_web_form_url"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    :cond_0
    instance-of p1, p0, Landroid/app/Activity;

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    const/high16 p1, 0x10000000

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    :cond_1
    const-class p1, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;

    .line 38
    .line 39
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 43
    .line 44
    invoke-virtual {p1, v0, p0}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->addCommonIntentParameter(Landroid/content/Intent;Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static synthetic launchAdLandingPage$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->launchAdLandingPage(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final launchMiniActivity(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance p3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v0, "current process not allowed to start! processName:"

    .line 19
    .line 20
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    const-string v2, "quickMode"

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v2, v1

    .line 50
    :goto_0
    const-string v3, ""

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    const-string v4, "page"

    .line 55
    .line 56
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-nez v4, :cond_3

    .line 61
    .line 62
    :cond_2
    move-object v4, v3

    .line 63
    :cond_3
    invoke-direct {p0, v2, v4}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkEnableAppQuickModel(ZLjava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const-string v4, "enableQuickMode"

    .line 68
    .line 69
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    new-instance v5, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;

    .line 73
    .line 74
    invoke-direct {v5}, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-static {v5, v1}, Lcom/cloud/tmc/integration/ActivityHelper;->createFastStartClient(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;I)Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v5, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 82
    .line 83
    if-eqz v5, :cond_4

    .line 84
    .line 85
    invoke-virtual {v5, v4, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    :cond_4
    iget-object v5, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    .line 89
    .line 90
    if-eqz v5, :cond_5

    .line 91
    .line 92
    invoke-virtual {v5, v4, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    :cond_5
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getTargetProcess()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    iget-object v4, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 100
    .line 101
    const-string v5, "targetProcess"

    .line 102
    .line 103
    if-eqz v4, :cond_6

    .line 104
    .line 105
    invoke-virtual {v4, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    iget-object v4, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    .line 109
    .line 110
    if-eqz v4, :cond_7

    .line 111
    .line 112
    invoke-virtual {v4, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_7
    if-eqz p1, :cond_9

    .line 116
    .line 117
    iget-object v2, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 118
    .line 119
    if-eqz v2, :cond_8

    .line 120
    .line 121
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 122
    .line 123
    .line 124
    :cond_8
    iget-object v2, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    .line 125
    .line 126
    if-eqz v2, :cond_9

    .line 127
    .line 128
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 129
    .line 130
    .line 131
    :cond_9
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 132
    .line 133
    const-string v2, "startBundle"

    .line 134
    .line 135
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    const-string v1, "miniAppId"

    .line 139
    .line 140
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    .line 142
    .line 143
    const-string p2, "mode"

    .line 144
    .line 145
    if-eqz p1, :cond_a

    .line 146
    .line 147
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    if-nez v1, :cond_b

    .line 152
    .line 153
    :cond_a
    move-object v1, v3

    .line 154
    :cond_b
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    .line 156
    .line 157
    const-string p2, "sign"

    .line 158
    .line 159
    if-eqz p1, :cond_c

    .line 160
    .line 161
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    if-nez v1, :cond_d

    .line 166
    .line 167
    :cond_c
    move-object v1, v3

    .line 168
    :cond_d
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    .line 170
    .line 171
    const-string p2, "version"

    .line 172
    .line 173
    if-eqz p1, :cond_f

    .line 174
    .line 175
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    if-nez v1, :cond_e

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_e
    move-object v3, v1

    .line 183
    :cond_f
    :goto_1
    invoke-virtual {v0, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    .line 185
    .line 186
    instance-of p2, p3, Landroid/app/Activity;

    .line 187
    .line 188
    if-nez p2, :cond_10

    .line 189
    .line 190
    const/high16 p2, 0x10000000

    .line 191
    .line 192
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 193
    .line 194
    .line 195
    :cond_10
    const-class p2, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    .line 196
    .line 197
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    check-cast p2, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    .line 202
    .line 203
    invoke-interface {p2, p3, v0, p1}, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;->startClient(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    return-void
.end method

.method public static synthetic launchMiniApp$default(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const-string p3, ""

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->launchMiniApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final launchMiniAppForId(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "launchMiniAppForId:appid:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    new-instance p2, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    :cond_0
    const-string v0, "massid"

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v1, v2}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefaultAndCheckEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const-string v3, "miniappId"

    .line 67
    .line 68
    const/16 v4, 0xeab

    .line 69
    .line 70
    const-string v5, "start_main_first_time"

    .line 71
    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v6

    .line 78
    invoke-virtual {p2, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 79
    .line 80
    .line 81
    :try_start_0
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    .line 82
    .line 83
    const-string v5, "miniapp_main_start"

    .line 84
    .line 85
    new-instance v6, Landroid/os/Bundle;

    .line 86
    .line 87
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 97
    .line 98
    invoke-virtual {v2, v5, v4, v6}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO0O0(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    const-wide/16 v6, 0x0

    .line 103
    .line 104
    invoke-virtual {p2, v5, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 105
    .line 106
    .line 107
    move-result-wide v8

    .line 108
    cmp-long v2, v8, v6

    .line 109
    .line 110
    if-nez v2, :cond_3

    .line 111
    .line 112
    invoke-virtual {p2, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 113
    .line 114
    .line 115
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 116
    .line 117
    .line 118
    move-result-wide v5

    .line 119
    const-string v2, "start_mini_first_time"

    .line 120
    .line 121
    invoke-virtual {p2, v2, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 122
    .line 123
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    .line 126
    .line 127
    move-result-wide v5

    .line 128
    sget-object v2, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getMiniProcessTimeStamp()J

    .line 131
    .line 132
    .line 133
    move-result-wide v7

    .line 134
    sub-long/2addr v5, v7

    .line 135
    const-wide/16 v7, 0x3a98

    .line 136
    .line 137
    cmp-long v2, v5, v7

    .line 138
    .line 139
    if-lez v2, :cond_4

    .line 140
    .line 141
    const-string v2, "mini_process_alive"

    .line 142
    .line 143
    const/4 v5, 0x1

    .line 144
    invoke-virtual {p2, v2, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    .line 146
    .line 147
    :cond_4
    :try_start_1
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    .line 148
    .line 149
    const-string v5, "miniapp_mini_start"

    .line 150
    .line 151
    new-instance v6, Landroid/os/Bundle;

    .line 152
    .line 153
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 163
    .line 164
    invoke-virtual {v2, v5, v4, v6}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO0O0(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .line 166
    .line 167
    :catchall_0
    :goto_0
    sget-object v0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o;

    .line 168
    .line 169
    new-instance v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0o;

    .line 170
    .line 171
    invoke-direct {v1, p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0o;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o;->OooO00o(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/cloud/tmc/miniapp/ipc/OooO0O0;)V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method public static synthetic launchMiniAppForId$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->launchMiniAppForId(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final openBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Landroid/content/Intent;

    .line 6
    .line 7
    const-string v1, "android.intent.action.VIEW"

    .line 8
    .line 9
    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10
    .line 11
    .line 12
    const/high16 p2, 0x10000000

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    const-string p1, "openBrowser failed"

    .line 22
    .line 23
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method private static final showErrorDialog$lambda$37(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/Oooo000;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo000;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final showProgressDialog(Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/Oooo0;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/Oooo0;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/cloud/tmc/miniapp/utils/b;

    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/cloud/tmc/miniapp/utils/b;-><init>(Lcom/cloud/tmc/miniapp/dialog/Oooo0;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-interface {p2, v0}, Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/Oooo0;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method private static final showProgressDialog$lambda$39(Lcom/cloud/tmc/miniapp/dialog/Oooo0;)V
    .locals 1

    .line 1
    const-string v0, "$dialog"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final showUpdateFwZipDialog$lambda$38(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    new-instance v2, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;

    .line 4
    .line 5
    invoke-direct {v2, p0}, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO0Oo()Landroid/widget/TextView;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_update_title:I

    .line 16
    .line 17
    invoke-virtual {v2, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO0OO()Landroid/widget/TextView;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_fw_update_content:I

    .line 32
    .line 33
    invoke-virtual {v2, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO00o()Landroid/widget/TextView;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_update_cancel:I

    .line 48
    .line 49
    invoke-virtual {v2, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    :goto_2
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO0O0()Landroid/widget/TextView;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-nez v3, :cond_3

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_fw_update_now:I

    .line 64
    .line 65
    invoke-virtual {v2, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    :goto_3
    if-eqz p1, :cond_4

    .line 73
    .line 74
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v3

    .line 78
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_4

    .line 83
    :catch_0
    move-exception p1

    .line 84
    goto :goto_6

    .line 85
    :cond_4
    const/4 p1, 0x0

    .line 86
    :goto_4
    iget-object v3, v2, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO0o0:Lkotlin/Lazy;

    .line 87
    .line 88
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Landroid/widget/TextView;

    .line 93
    .line 94
    if-nez v3, :cond_5

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_5
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    :goto_5
    if-eqz p1, :cond_7

    .line 101
    .line 102
    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_download_size:I

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    if-eqz v3, :cond_7

    .line 109
    .line 110
    iget-object v4, v2, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO0o0:Lkotlin/Lazy;

    .line 111
    .line 112
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    check-cast v4, Landroid/widget/TextView;

    .line 117
    .line 118
    if-nez v4, :cond_6

    .line 119
    .line 120
    goto :goto_7

    .line 121
    :cond_6
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 124
    .line 125
    .line 126
    move-result-wide v5

    .line 127
    invoke-virtual {v2, v5, v6}, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO00o(J)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    new-array v5, v0, [Ljava/lang/Object;

    .line 132
    .line 133
    aput-object p1, v5, v1

    .line 134
    .line 135
    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const-string v0, "format(format, *args)"

    .line 144
    .line 145
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    .line 151
    goto :goto_7

    .line 152
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_7
    :goto_7
    new-instance p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO;

    .line 160
    .line 161
    invoke-direct {p1, p0, v2, p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO;-><init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/dialog/o000oOoO;Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;)V

    .line 162
    .line 163
    .line 164
    const-string p0, "listener"

    .line 165
    .line 166
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iput-object p1, v2, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/o0OoOo0;

    .line 170
    .line 171
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method public static final showUpdateStepErrorMsg(Ljava/lang/String;ILjava/lang/String;)Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/16 v0, 0x7534

    .line 2
    .line 3
    const-string v1, "appid:"

    .line 4
    .line 5
    if-eq p1, v0, :cond_3

    .line 6
    .line 7
    const/16 v0, 0x7535

    .line 8
    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    const/16 v0, 0x7539

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x7546

    .line 16
    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, ", "

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string p2, "4"

    .line 45
    .line 46
    invoke-direct {p1, p2, p0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 51
    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p0, ", Version error"

    .line 64
    .line 65
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string p2, "30022"

    .line 73
    .line 74
    invoke-direct {p1, p2, p0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 79
    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p0, ", The byteapp version has expired"

    .line 92
    .line 93
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const-string p2, "30009"

    .line 101
    .line 102
    invoke-direct {p1, p2, p0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 107
    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p0, ",  AppInfo Version not exist"

    .line 120
    .line 121
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    const-string p2, "30005"

    .line 129
    .line 130
    invoke-direct {p1, p2, p0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_3
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 135
    .line 136
    new-instance p2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string p0, ", AppInfo not exist"

    .line 148
    .line 149
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    const-string p2, "30004"

    .line 157
    .line 158
    invoke-direct {p1, p2, p0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :goto_0
    return-object p1
.end method

.method private final updateCDNConfig(Lcom/cloud/tmc/integration/model/CDNConfigBean;Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 8
    .line 9
    const-string v1, "minisdk_storage"

    .line 10
    .line 11
    const-string v2, "appInfoCDNConfig"

    .line 12
    .line 13
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, p2, v1, v2, p1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method private final updateWarmUpConfig(Lcom/cloud/tmc/integration/model/WarmUpEntranceConfigBean;Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 8
    .line 9
    const-string v1, "minisdk_storage"

    .line 10
    .line 11
    const-string v2, "warmUpEntranceConfig"

    .line 12
    .line 13
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, p2, v1, v2, p1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method private final useCDNCloudStorage(Lcom/cloud/tmc/integration/model/CDNConfigBean;Landroid/content/Context;)Z
    .locals 8

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/CDNConfigBean;->getEnableCdnRequest()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string p2, "cdn request is closed"

    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    new-instance v0, Ljava/security/SecureRandom;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/CDNConfigBean;->getGrayScale()Ljava/lang/Float;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 49
    .line 50
    :goto_1
    cmpg-float v4, v3, v0

    .line 51
    .line 52
    const-string v5, ",[randomFloat]->"

    .line 53
    .line 54
    if-gez v4, :cond_4

    .line 55
    .line 56
    sget-object v4, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v7, "not in the gray range: [grayScale]->"

    .line 64
    .line 65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    if-nez p1, :cond_3

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/integration/model/CDNConfigBean;->setEnableCdnRequest(Ljava/lang/Boolean;)V

    .line 88
    .line 89
    .line 90
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->updateCDNConfig(Lcom/cloud/tmc/integration/model/CDNConfigBean;Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    return v2

    .line 94
    :cond_4
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 95
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v4, "in the gray range: [grayScale]->"

    .line 102
    .line 103
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    if-nez p1, :cond_5

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/CDNConfigBean;->setEnableCdnRequest(Ljava/lang/Boolean;)V

    .line 128
    .line 129
    .line 130
    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->updateCDNConfig(Lcom/cloud/tmc/integration/model/CDNConfigBean;Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    const/4 p1, 0x1

    .line 134
    return p1
.end method

.method private final useWarmUpCloudStorage(Lcom/cloud/tmc/integration/model/WarmUpEntranceConfigBean;Landroid/content/Context;)Z
    .locals 8

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/WarmUpEntranceConfigBean;->getEnableWarmUp()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, "warmup entrance is closed"

    .line 21
    .line 22
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/integration/model/WarmUpEntranceConfigBean;->setEnableWarmUp(Ljava/lang/Boolean;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->updateWarmUpConfig(Lcom/cloud/tmc/integration/model/WarmUpEntranceConfigBean;Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    new-instance v0, Ljava/security/SecureRandom;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/WarmUpEntranceConfigBean;->getGrayScale()Ljava/lang/Float;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 55
    .line 56
    :goto_1
    cmpg-float v4, v3, v0

    .line 57
    .line 58
    const-string v5, ",[randomFloat]->"

    .line 59
    .line 60
    if-gez v4, :cond_4

    .line 61
    .line 62
    sget-object v4, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v7, "warmup entrance not in the gray range: [grayScale]->"

    .line 70
    .line 71
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    if-nez p1, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/integration/model/WarmUpEntranceConfigBean;->setEnableWarmUp(Ljava/lang/Boolean;)V

    .line 94
    .line 95
    .line 96
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->updateWarmUpConfig(Lcom/cloud/tmc/integration/model/WarmUpEntranceConfigBean;Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    return v2

    .line 100
    :cond_4
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 101
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v4, "warmup entrance in the gray range: [grayScale]->"

    .line 108
    .line 109
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    if-nez p1, :cond_5

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/WarmUpEntranceConfigBean;->setEnableWarmUp(Ljava/lang/Boolean;)V

    .line 134
    .line 135
    .line 136
    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->updateWarmUpConfig(Lcom/cloud/tmc/integration/model/WarmUpEntranceConfigBean;Landroid/content/Context;)V

    .line 137
    .line 138
    .line 139
    const/4 p1, 0x1

    .line 140
    return p1
.end method


# virtual methods
.method public final backgroundDownZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;I)V
    .locals 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "appModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x38

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->backgroundDownZip$default(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final backgroundDownZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "appModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->backgroundDownZip$default(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final backgroundDownZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "I",
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

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 3
    const-string v0, "appModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->backgroundDownZip$default(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final backgroundDownZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "I",
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
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "appModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v0

    const-string v1, "Subpackage::"

    const-string v2, ";deployVersion:"

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual/range {p0 .. p6}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->backgroundDownloadSubPackageZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V

    .line 6
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "backgroundDownSubPkgZip:appInfo:appId:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual/range {p0 .. p6}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->backgroundDownloadSinglePackageZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V

    .line 9
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "backgroundDownWholePkgZip:appInfo:appId:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final backgroundDownloadSinglePackageZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;I)V
    .locals 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "appModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x38

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->backgroundDownloadSinglePackageZip$default(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final backgroundDownloadSinglePackageZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "appModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->backgroundDownloadSinglePackageZip$default(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final backgroundDownloadSinglePackageZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "I",
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

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 3
    const-string v0, "appModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->backgroundDownloadSinglePackageZip$default(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final backgroundDownloadSinglePackageZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "I",
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
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "appModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p2, p1, p4}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->backgroundDownloadOfflineCheck(Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    const-class v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 6
    new-instance v8, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;

    move-object v1, v8

    move-object v2, p6

    move-object v3, v0

    move-object v4, p2

    move-object v5, p1

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO00o;-><init>(Lkotlin/jvm/functions/Function0;Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V

    const/4 p1, 0x1

    invoke-interface {v0, p2, p3, p1, v8}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->downloadApp(Lcom/cloud/tmc/integration/model/AppModel;IZLcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;)V

    return-void
.end method

.method public final backgroundDownloadSubPackageZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;I)V
    .locals 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "appModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x38

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->backgroundDownloadSubPackageZip$default(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final backgroundDownloadSubPackageZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "appModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->backgroundDownloadSubPackageZip$default(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final backgroundDownloadSubPackageZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "I",
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

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 3
    const-string v0, "appModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->backgroundDownloadSubPackageZip$default(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final backgroundDownloadSubPackageZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "I",
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
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    const-string v1, "appModel"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object/from16 v9, p0

    move-object/from16 v7, p4

    .line 4
    :try_start_0
    invoke-direct {v9, v5, v0, v7}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->backgroundDownloadOfflineCheck(Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    const-class v1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 6
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    move-result-object v13

    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v11

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrl()Ljava/lang/String;

    move-result-object v12

    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageZipPath()Ljava/lang/String;

    move-result-object v14

    .line 11
    new-instance v17, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;

    move-object/from16 v1, v17

    move-object/from16 v2, p6

    move-object v3, v10

    move-object v4, v13

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;-><init>(Lkotlin/jvm/functions/Function0;Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V

    const/16 v16, 0x1

    move/from16 v15, p3

    .line 12
    invoke-interface/range {v10 .. v17}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->downloadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 13
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final buildDownloadPath(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 5

    .line 1
    const-string v0, "appmodel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 13
    .line 14
    const-class v1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 21
    .line 22
    sget-object v2, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 23
    .line 24
    sget-object v3, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 25
    .line 26
    invoke-virtual {v3, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->getPackageDownloadUrl(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->urlToSHA256(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p1, v2}, Lcom/cloud/tmc/integration/model/AppModel;->setPackageUrl_MD5(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, p1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->creatBaseDirectory(Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getZipPath(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setZipPath(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getZipUnCompressPath(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/AppModel;->setUnzipFilePath(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final buildShareUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 8
    .line 9
    const-string v1, "sharePrefixUrl"

    .line 10
    .line 11
    const-string v2, "https://h5.dlight-app.com/outside"

    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getShareTargetMap()Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, ""

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/String;

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    :cond_0
    move-object v1, v2

    .line 42
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-lez v3, :cond_2

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v4, "&target="

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    move-object v1, v2

    .line 67
    :goto_0
    if-eqz p2, :cond_3

    .line 68
    .line 69
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_4

    .line 74
    .line 75
    :cond_3
    move-object p2, v2

    .line 76
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, "?appId="

    .line 85
    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-class p2, Lcom/cloud/tmc/kernel/intf/ISDKConfig;

    .line 100
    .line 101
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Lcom/cloud/tmc/kernel/intf/ISDKConfig;

    .line 106
    .line 107
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/intf/ISDKConfig;->openShareTarget()Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-eqz p2, :cond_5

    .line 112
    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    :cond_5
    return-object p1
.end method

.method public final byteAppInit$com_cloud_tmc_miniapp_sdk(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0OO;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->init(Landroid/app/Application;Lkotlin/jvm/functions/Function0;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final checkAppInfoEnableCDNRequest(Landroid/content/Context;)Z
    .locals 6

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/model/CDNConfigBean;

    .line 2
    .line 3
    const-string v1, "appInfoCDNConfig"

    .line 4
    .line 5
    const-string v2, "context"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    const-class v3, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 12
    .line 13
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 18
    .line 19
    const-string v4, "{\"enableCdnRequest\":true,\"cdnConfigToken\":\"1\",\"grayScale\":0.5}"

    .line 20
    .line 21
    invoke-interface {v3, v1, v4}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->getGson()Lcom/google/gson/Gson;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4, v3, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/cloud/tmc/integration/model/CDNConfigBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v3

    .line 37
    sget-object v4, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    move-object v3, v2

    .line 43
    :goto_0
    :try_start_1
    const-class v4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 44
    .line 45
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 50
    .line 51
    const-string v5, "minisdk_storage"

    .line 52
    .line 53
    invoke-interface {v4, p1, v5, v1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->getGson()Lcom/google/gson/Gson;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/cloud/tmc/integration/model/CDNConfigBean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :catchall_1
    move-exception v0

    .line 71
    goto :goto_2

    .line 72
    :cond_0
    :goto_1
    move-object v0, v2

    .line 73
    goto :goto_3

    .line 74
    :goto_2
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :goto_3
    if-eqz v0, :cond_5

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/CDNConfigBean;->getCdnConfigToken()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-eqz v3, :cond_1

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/CDNConfigBean;->getCdnConfigToken()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    goto :goto_4

    .line 93
    :cond_1
    move-object v4, v2

    .line 94
    :goto_4
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_3

    .line 99
    .line 100
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/CDNConfigBean;->getCdnConfigToken()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v3, :cond_2

    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/CDNConfigBean;->getCdnConfigToken()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v5, "cdn request token changed:[nativeToken]->"

    .line 118
    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v0, ",[cloudToken]->"

    .line 126
    .line 127
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 141
    .line 142
    invoke-direct {v0, v3, p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->useCDNCloudStorage(Lcom/cloud/tmc/integration/model/CDNConfigBean;Landroid/content/Context;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    return p1

    .line 147
    :cond_3
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/CDNConfigBean;->getEnableCdnRequest()Ljava/lang/Boolean;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v3, "storage cdn request status:"

    .line 159
    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/CDNConfigBean;->getEnableCdnRequest()Ljava/lang/Boolean;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    if-eqz p1, :cond_4

    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    goto :goto_5

    .line 184
    :cond_4
    const/4 p1, 0x1

    .line 185
    :goto_5
    return p1

    .line 186
    :cond_5
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 187
    .line 188
    invoke-direct {v0, v3, p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->useCDNCloudStorage(Lcom/cloud/tmc/integration/model/CDNConfigBean;Landroid/content/Context;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    return p1
.end method

.method public final checkEnableBackgroundUnzip()Z
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 2
    .line 3
    const-string v1, "enableBackgroundUnzipV3"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final checkFocusUpdateMyByteApp(Lcom/cloud/tmc/integration/model/AppModel;I)Z
    .locals 6

    .line 1
    const-string v0, "appModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const-class v2, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 21
    .line 22
    const-string v3, "miniEnableForceUpdateModelList"

    .line 23
    .line 24
    const-string v4, "[]"

    .line 25
    .line 26
    invoke-interface {v2, v3, v4}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    new-instance v4, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$checkFocusUpdateMyByteApp$enableForceUpdateList$1$1;

    .line 34
    .line 35
    invoke-direct {v4}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$checkFocusUpdateMyByteApp$enableForceUpdateList$1$1;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v2, v4}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    instance-of v4, v2, Ljava/util/List;

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    check-cast v2, Ljava/util/List;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :cond_1
    move-object v2, v3

    .line 57
    :goto_0
    if-nez v2, :cond_3

    .line 58
    .line 59
    new-instance v2, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_5

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    move-object v5, v4

    .line 85
    check-cast v5, Lcom/cloud/tmc/integration/model/ForceUpdateModel;

    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/ForceUpdateModel;->getAppId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_4

    .line 96
    .line 97
    move-object v3, v4

    .line 98
    :cond_5
    check-cast v3, Lcom/cloud/tmc/integration/model/ForceUpdateModel;

    .line 99
    .line 100
    if-eqz v3, :cond_a

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    if-eq p2, v1, :cond_7

    .line 104
    .line 105
    const/4 p1, 0x2

    .line 106
    if-eq p2, p1, :cond_6

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_6
    return v1

    .line 110
    :cond_7
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/ForceUpdateModel;->getVersion()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    const-string v2, ""

    .line 117
    .line 118
    if-nez v1, :cond_8

    .line 119
    .line 120
    move-object v1, v2

    .line 121
    :cond_8
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-nez p1, :cond_9

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_9
    move-object v2, p1

    .line 129
    :goto_2
    invoke-virtual {p2, v1, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 134
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v2, "appinfo \u9700\u8981\u5f3a\u5236\u66f4\u65b0"

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-static {p2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .line 154
    .line 155
    move v0, p1

    .line 156
    :cond_a
    :goto_3
    return v0

    .line 157
    :goto_4
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    return v0
.end method

.method public final checkFwVersionUpdate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .line 1
    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableList<kotlin.String>"

    .line 2
    .line 3
    const-string v1, "."

    .line 4
    .line 5
    const-string v2, "oldFwVersion"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "newFwVersion"

    .line 11
    .line 12
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-class v2, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 22
    .line 23
    const-string v3, "updateCompareVersion"

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    invoke-interface {v2, v3, v4}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigBoolean(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    return v4

    .line 33
    :cond_0
    :try_start_0
    filled-new-array {v1}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    const/4 v9, 0x6

    .line 38
    const/4 v10, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    move-object v5, p1

    .line 42
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->c(Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    filled-new-array {v1}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    const/4 v9, 0x6

    .line 58
    const/4 v10, 0x0

    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    move-object v5, p2

    .line 62
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p2}, Lkotlin/jvm/internal/TypeIntrinsics;->c(Ljava/lang/Object;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/4 v1, 0x3

    .line 78
    if-le v0, v1, :cond_1

    .line 79
    .line 80
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->J(Ljava/util/List;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-le v0, v1, :cond_2

    .line 91
    .line 92
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->J(Ljava/util/List;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    :cond_2
    const/4 v0, 0x0

    .line 96
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-le v1, v2, :cond_3

    .line 117
    .line 118
    return v4

    .line 119
    :cond_3
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    check-cast p2, Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    if-le p2, p1, :cond_4

    .line 140
    .line 141
    return v4

    .line 142
    :cond_4
    return v0

    .line 143
    :goto_1
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    return v4
.end method

.method public final checkH5UrlInBlackList(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    const-string v1, "[]"

    .line 11
    .line 12
    const-string v2, "hybridUrlBlackList"

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    :try_start_1
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    new-instance v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$checkH5UrlInBlackList$blackList$1;

    .line 32
    .line 33
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$checkH5UrlInBlackList$blackList$1;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    instance-of v1, v0, Ljava/util/List;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    check-cast v0, Ljava/util/List;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move-object v0, v2

    .line 53
    :goto_1
    if-nez v0, :cond_2

    .line 54
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->getHost(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Ljava/lang/String;

    .line 79
    .line 80
    const-string v4, "host"

    .line 81
    .line 82
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    const/4 v5, 0x2

    .line 87
    invoke-static {v1, v3, v4, v5, v2}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v3, "url in blackList return "

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    return-object v2

    .line 116
    :cond_4
    return-object p1

    .line 117
    :goto_2
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    return-object p1
.end method

.method public final checkLowSupportVersion(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :try_start_0
    sget-object v2, Lcom/cloud/tmc/miniapp/GlobalPackageConfig;->Companion:Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/GlobalPackageConfig$Companion;->getSDK_DEV_VERSION()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getVersionPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getVersionPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const-string v3, "nec"

    .line 35
    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v5, "<checkLowSupportVersion> currentV:"

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v5, ",lowV:"

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    if-lt v2, p1, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move v0, v1

    .line 68
    :goto_0
    return v0

    .line 69
    :catchall_0
    return v1

    .line 70
    :cond_2
    :goto_1
    return v0
.end method

.method public final checkShowDownloadTips(Ljava/lang/String;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    const-class p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 28
    .line 29
    const-string v3, "packageSize"

    .line 30
    .line 31
    const/16 v4, 0x226

    .line 32
    .line 33
    invoke-interface {p1, v3, v4}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->isWifiConnected()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    const/16 v3, 0x3e8

    .line 44
    .line 45
    int-to-long v3, v3

    .line 46
    div-long/2addr v1, v3

    .line 47
    int-to-long v3, p1

    .line 48
    cmp-long p1, v1, v3

    .line 49
    .line 50
    if-lez p1, :cond_1

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    :cond_1
    :goto_0
    return v0
.end method

.method public final clearLaunchMap(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->commonResLaunchList:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->commonResIdList:Ljava/util/Map;

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    :catchall_0
    return-void
.end method

.method public final commonResTrack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    :try_start_0
    const-string v0, "u_s"

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->commonResIdList:Ljava/util/Map;

    .line 17
    .line 18
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getCommonResLaunch(Ljava/lang/String;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    :catchall_0
    :cond_1
    return-void
.end method

.method public final compareVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;

    .line 2
    .line 3
    const-string v1, "nativePackageVersion"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "networkVersion"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    return v3

    .line 22
    :cond_0
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;

    .line 27
    .line 28
    invoke-interface {v2, p1}, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;->getMiniAppVersion(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;

    .line 37
    .line 38
    invoke-interface {v0, p2}, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;->getMiniAppVersion(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    move v4, v1

    .line 51
    move v5, v4

    .line 52
    :cond_1
    if-lt v4, v0, :cond_2

    .line 53
    .line 54
    if-ge v5, v2, :cond_6

    .line 55
    .line 56
    :cond_2
    move v6, v1

    .line 57
    :goto_0
    const/16 v7, 0x2e

    .line 58
    .line 59
    if-ge v4, v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eq v8, v7, :cond_3

    .line 66
    .line 67
    mul-int/lit8 v6, v6, 0xa

    .line 68
    .line 69
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    add-int/2addr v6, v7

    .line 74
    add-int/lit8 v6, v6, -0x30

    .line 75
    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 82
    .line 83
    move v8, v1

    .line 84
    :goto_1
    if-ge v5, v2, :cond_4

    .line 85
    .line 86
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-eq v9, v7, :cond_4

    .line 91
    .line 92
    mul-int/lit8 v8, v8, 0xa

    .line 93
    .line 94
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    .line 95
    .line 96
    .line 97
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    add-int/2addr v8, v9

    .line 99
    add-int/lit8 v8, v8, -0x30

    .line 100
    .line 101
    add-int/lit8 v5, v5, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 105
    .line 106
    if-eq v6, v8, :cond_1

    .line 107
    .line 108
    if-le v6, v8, :cond_5

    .line 109
    .line 110
    move v1, v3

    .line 111
    :cond_5
    return v1

    .line 112
    :goto_2
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    :cond_6
    return v1
.end method

.method public final enableCheckBackgroundDownloadZipStatus()Z
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 2
    .line 3
    const-string v1, "enableCheckDownloadZip"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final enableWebViewMask()Z
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 2
    .line 3
    const-string v1, "enableWebViewMask"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final generateAppModel(Lcom/cloud/tmc/integration/model/AppInfoModel;)Lcom/cloud/tmc/integration/model/AppModel;
    .locals 10

    .line 1
    const-string v0, "appInfoModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/cloud/tmc/integration/model/AppModel;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/cloud/tmc/integration/model/AppModel;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getAppId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setAppId(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getLogo()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setLogo(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getDesc()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setDesc(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setName(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getDeveloper()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setDeveloper(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getPackageUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setPackageUrl(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getDeployVersion()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setDeployVersion(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getDeveloperVersion()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setDeveloperVersion(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getMiniappSubtype()Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setMiniappSubtype(Ljava/lang/Integer;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getTemplateMiniappId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setTemplateMiniappId(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getTemplatePackageUrl()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setTemplatePackageUrl(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getTemplateDeployVersion()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setTemplateDeployVersion(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getLowestSupportTemplateVersion()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setLowestSupportTemplateVersion(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getCompatiblePackageUrl()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setCompatiblePackageUrl(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setPermissions(Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getExpiresTime()J

    .line 117
    .line 118
    .line 119
    move-result-wide v1

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/model/AppModel;->setExpiresTime(J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getReleaseTime()J

    .line 124
    .line 125
    .line 126
    move-result-wide v1

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/model/AppModel;->setReleaseTime(J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getLowestSupportVersion()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setLowestSupportVersion(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getPackageSize()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setPackageSize(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getClassificationNames()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setClassificationNames(Ljava/util/List;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getRegisterType()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setRegisterType(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setExtend(Lcom/cloud/tmc/integration/model/ExtendModel;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getAppinfoCategoryType()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setAppinfoCategoryType(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getLowestOpenedVersion()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setLowestOpenedVersion(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getForceUpdate()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setForceUpdate(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->isTestVersion()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setTestVersion(Z)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getMainPackageUrl()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setMainPackageUrl(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getSubPackageUrls()Ljava/util/HashMap;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setSubPackageUrls(Ljava/util/HashMap;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getSubPackagePages()Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setSubPackagePages(Ljava/util/List;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getMainPackagePages()Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setMainPackagePages(Ljava/util/List;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getClassification()Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setClassification(Ljava/util/List;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getUserAgreement()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setUserAgreement(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getUserAgreementVersion()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setUserAgreementVersion(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getUserAgreementUrl()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setUserAgreementUrl(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getPrivacyPolicyUrl()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setPrivacyPolicyUrl(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getLinkAndButtonColor()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setLinkAndButtonColor(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getProcessingMethod()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setProcessingMethod(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getPopupStyle()Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/model/AppModel;->setPopupStyle(Ljava/lang/Integer;)V

    .line 275
    .line 276
    .line 277
    const-class p1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 278
    .line 279
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    check-cast p1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrl()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    const-string v2, "/unzip"

    .line 290
    .line 291
    const-string v3, ".zip"

    .line 292
    .line 293
    const-string v4, "/"

    .line 294
    .line 295
    if-eqz v1, :cond_1

    .line 296
    .line 297
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    if-nez v1, :cond_0

    .line 302
    .line 303
    goto :goto_0

    .line 304
    :cond_0
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 305
    .line 306
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrl()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    invoke-virtual {v1, v5}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->urlToSHA256(Ljava/lang/String;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setMainPackageUrlEncryption(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-interface {p1, v1}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getAppBaseDownloadPath(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    new-instance v7, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setMainPackageZipPath(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-interface {p1, v1}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getAppBaseDownloadPath(Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    new-instance v6, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel;->setMainPackageUnZipFilePath(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getSubPackagePages()Ljava/util/List;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    if-eqz v1, :cond_5

    .line 416
    .line 417
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    if-eqz v5, :cond_5

    .line 426
    .line 427
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    check-cast v5, Lcom/cloud/tmc/integration/model/SubPackageInfo;

    .line 432
    .line 433
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getSubPackageUrls()Ljava/util/HashMap;

    .line 434
    .line 435
    .line 436
    move-result-object v6

    .line 437
    if-eqz v6, :cond_3

    .line 438
    .line 439
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getRoot()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v7

    .line 443
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    check-cast v6, Ljava/lang/String;

    .line 448
    .line 449
    goto :goto_2

    .line 450
    :cond_3
    const/4 v6, 0x0

    .line 451
    :goto_2
    if-eqz v6, :cond_2

    .line 452
    .line 453
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 454
    .line 455
    .line 456
    move-result v7

    .line 457
    if-nez v7, :cond_4

    .line 458
    .line 459
    goto :goto_1

    .line 460
    :cond_4
    invoke-virtual {v5, v6}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->setSubPackageUrl(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    sget-object v7, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 464
    .line 465
    invoke-virtual {v7, v6}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->urlToSHA256(Ljava/lang/String;)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v6

    .line 469
    invoke-virtual {v5, v6}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->setSubPackageUrlMD5(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getRoot()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v6

    .line 476
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v7

    .line 480
    new-instance v8, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .line 484
    .line 485
    const-string v9, "root:"

    .line 486
    .line 487
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    const-string v6, ",encUrl:"

    .line 494
    .line 495
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v6

    .line 505
    const-string v7, "Subpackage::"

    .line 506
    .line 507
    invoke-static {v7, v6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v6

    .line 514
    invoke-interface {p1, v6}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getAppBaseDownloadPath(Ljava/lang/String;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v6

    .line 518
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v7

    .line 522
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v8

    .line 526
    new-instance v9, Ljava/lang/StringBuilder;

    .line 527
    .line 528
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v6

    .line 553
    invoke-virtual {v5, v6}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->setSubZipPath(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v6

    .line 560
    invoke-interface {p1, v6}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getAppBaseDownloadPath(Ljava/lang/String;)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v6

    .line 564
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v7

    .line 568
    new-instance v8, Ljava/lang/StringBuilder;

    .line 569
    .line 570
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v6

    .line 589
    invoke-virtual {v5, v6}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->setSubUnzipFilePath(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    goto/16 :goto_1

    .line 593
    .line 594
    :cond_5
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 595
    .line 596
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->buildDownloadPath(Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 597
    .line 598
    .line 599
    return-object v0
.end method

.method public final generateEntryInfo(Lcom/cloud/tmc/integration/model/AppInfoModel;)Lcom/cloud/tmc/integration/model/EntryInfo;
    .locals 2

    .line 1
    const-string v0, "appInfoModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/cloud/tmc/integration/model/EntryInfo;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/cloud/tmc/integration/model/EntryInfo;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getAppId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Lcom/cloud/tmc/integration/model/EntryInfo;->appId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getDesc()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, v0, Lcom/cloud/tmc/integration/model/EntryInfo;->desc:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getLogo()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, v0, Lcom/cloud/tmc/integration/model/EntryInfo;->iconUrl:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, v0, Lcom/cloud/tmc/integration/model/EntryInfo;->title:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getDesc()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v0, Lcom/cloud/tmc/integration/model/EntryInfo;->desc:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getSlogan()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, v0, Lcom/cloud/tmc/integration/model/EntryInfo;->slogan:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getDeveloper()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, v0, Lcom/cloud/tmc/integration/model/EntryInfo;->developer:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getClassificationNames()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/EntryInfo;->setClassificationNames(Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/ExtendModel;->getExclusiveLogoUrl()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const/4 p1, 0x0

    .line 72
    :goto_0
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/model/EntryInfo;->setExclusiveLogoUrl(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object v0
.end method

.method public final getAppInfoCDNPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getMINI_APPINFO_CDN_URL()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v0, "platform/appinfo/releaseInfo/"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, ".json"

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public final getCommonResLaunch(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->commonResLaunchList:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/util/Map;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    const/4 v1, 0x0

    .line 26
    :cond_0
    :goto_0
    return-object v1
.end method

.method public final getConfigCdnUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "defaultUrl"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 7
    .line 8
    const-string v1, "preManagerConfigUrl"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final getLaunchContext(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Context;
    .locals 3

    .line 1
    const-string v0, "1000391591855976448"

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 15
    .line 16
    const-string v2, "miniFeedbackId"

    .line 17
    .line 18
    invoke-interface {v1, v2, v0}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :catchall_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string p1, "{\n            context.applicationContext\n        }"

    .line 33
    .line 34
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-object p2
.end method

.method public final getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getDeveloperVersion()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    return-object v0
.end method

.method public final getStartLoadingH5AnimDelayTime()J
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 2
    .line 3
    const-string v1, "hideLoadingH5Time"

    .line 4
    .line 5
    const/16 v2, 0x1388

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetInt(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    int-to-long v0, v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v0, 0x1388

    .line 20
    .line 21
    :goto_0
    return-wide v0
.end method

.method public final getStartLoadingNativeAnimDelayTime()J
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 2
    .line 3
    const-string v1, "hideLoadingNativeTime"

    .line 4
    .line 5
    const/16 v2, 0x1388

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetInt(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    int-to-long v0, v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v0, 0x1388

    .line 20
    .line 21
    :goto_0
    return-wide v0
.end method

.method public final getVersionPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "."

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p1, v0, v2, v1, v2}, Lkotlin/text/StringsKt;->h1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    :cond_0
    const-string p1, ""

    .line 14
    .line 15
    :cond_1
    return-object p1
.end method

.method public final isNeedUpdate(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    const-class v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 18
    .line 19
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromPre(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-nez p2, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v1, "It\'s need update? update: "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    return p1

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 87
    return p1
.end method

.method public final jumpGooglePlayStore(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/d;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/utils/d;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    const-string v0, "jump GooglePlay failed"

    .line 16
    .line 17
    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->jumpPalmStore(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public final jumpPalmStore(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance p2, Lcom/cloud/tmc/miniapp/utils/f;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Lcom/cloud/tmc/miniapp/utils/f;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    const-string p1, "jump jumpPalmStore failed"

    .line 16
    .line 17
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public final launchMiniApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 33

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "ps"

    .line 10
    .line 11
    const-string v5, "massid"

    .line 12
    .line 13
    const-string v6, "mfah"

    .line 14
    .line 15
    const-string v7, "fis_type"

    .line 16
    .line 17
    const-string v8, "scene_id"

    .line 18
    .line 19
    const-string v9, "sign"

    .line 20
    .line 21
    const-string v10, "extraMiniBackToUrl"

    .line 22
    .line 23
    const-string v11, "extraMiniClearAllPages"

    .line 24
    .line 25
    const-string v12, "h5Path"

    .line 26
    .line 27
    const-string v13, "query"

    .line 28
    .line 29
    const-string v14, "mode"

    .line 30
    .line 31
    const-string v15, "page"

    .line 32
    .line 33
    move-object/from16 v16, v4

    .line 34
    .line 35
    const-string v4, "version"

    .line 36
    .line 37
    move-object/from16 v17, v5

    .line 38
    .line 39
    const-string v5, "context"

    .line 40
    .line 41
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v5, "url"

    .line 45
    .line 46
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v5, "from"

    .line 50
    .line 51
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :try_start_0
    sget-object v5, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v0, "Step_\u89e3\u6790url->"

    .line 62
    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v5, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 77
    .line 78
    const-string v3, "fixEncodeUrl"

    .line 79
    .line 80
    const/4 v5, 0x1

    .line 81
    invoke-virtual {v0, v3, v5}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    sget-object v3, Lcom/cloud/tmc/integration/utils/UrlUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/UrlUtil;

    .line 86
    .line 87
    invoke-virtual {v3, v2, v0}, Lcom/cloud/tmc/integration/utils/UrlUtil;->fixEncodeUrl(Ljava/lang/String;Z)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-direct {v1, v3, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkTarget(Landroid/net/Uri;Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    if-eqz v18, :cond_0

    .line 100
    .line 101
    return-void

    .line 102
    :cond_0
    if-eqz v3, :cond_1

    .line 103
    .line 104
    :try_start_1
    const-string v5, "miniapp_deeplink"

    .line 105
    .line 106
    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    goto :goto_0

    .line 111
    :cond_1
    const/4 v5, 0x0

    .line 112
    :goto_0
    if-eqz v5, :cond_2

    .line 113
    .line 114
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 115
    .line 116
    .line 117
    move-result v19

    .line 118
    if-lez v19, :cond_2

    .line 119
    .line 120
    invoke-static {v5}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 125
    .line 126
    .line 127
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :catchall_0
    :cond_2
    :try_start_2
    const-string v5, "appId"

    .line 129
    .line 130
    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    move-object/from16 v19, v2

    .line 135
    .line 136
    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v3, v15}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v20

    .line 144
    move-object/from16 v21, v4

    .line 145
    .line 146
    invoke-virtual {v3, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    move-object/from16 v22, v2

    .line 151
    .line 152
    sget-object v2, Lcom/cloud/tmc/integration/utils/UrlUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/UrlUtil;

    .line 153
    .line 154
    invoke-virtual {v3, v13}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v23
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 158
    const-string v24, ""

    .line 159
    .line 160
    if-eqz v23, :cond_3

    .line 161
    .line 162
    :try_start_3
    invoke-static/range {v23 .. v23}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v23

    .line 166
    if-eqz v23, :cond_3

    .line 167
    .line 168
    move-object/from16 v32, v23

    .line 169
    .line 170
    move-object/from16 v23, v13

    .line 171
    .line 172
    move-object/from16 v13, v32

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    goto/16 :goto_d

    .line 177
    .line 178
    :cond_3
    move-object/from16 v23, v13

    .line 179
    .line 180
    move-object/from16 v13, v24

    .line 181
    .line 182
    :goto_1
    invoke-virtual {v2, v13, v0}, Lcom/cloud/tmc/integration/utils/UrlUtil;->getFixDecodeUrl(Ljava/lang/String;Z)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v13

    .line 186
    invoke-virtual {v3, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v25

    .line 190
    if-eqz v25, :cond_4

    .line 191
    .line 192
    invoke-static/range {v25 .. v25}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v25

    .line 196
    if-eqz v25, :cond_4

    .line 197
    .line 198
    move-object/from16 v32, v25

    .line 199
    .line 200
    move-object/from16 v25, v12

    .line 201
    .line 202
    move-object/from16 v12, v32

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_4
    move-object/from16 v25, v12

    .line 206
    .line 207
    move-object/from16 v12, v24

    .line 208
    .line 209
    :goto_2
    invoke-virtual {v2, v12, v0}, Lcom/cloud/tmc/integration/utils/UrlUtil;->getFixDecodeUrl(Ljava/lang/String;Z)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v12

    .line 213
    move-object/from16 v26, v12

    .line 214
    .line 215
    const-string v12, "hybridPath"

    .line 216
    .line 217
    invoke-virtual {v3, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    if-eqz v12, :cond_5

    .line 222
    .line 223
    invoke-static {v12}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    if-eqz v12, :cond_5

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_5
    move-object/from16 v12, v24

    .line 231
    .line 232
    :goto_3
    invoke-virtual {v2, v12, v0}, Lcom/cloud/tmc/integration/utils/UrlUtil;->getFixDecodeUrl(Ljava/lang/String;Z)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 236
    const-string v2, "quickMode"

    .line 237
    .line 238
    if-eqz v0, :cond_7

    .line 239
    .line 240
    :try_start_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 241
    .line 242
    .line 243
    move-result v12

    .line 244
    if-lez v12, :cond_7

    .line 245
    .line 246
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkH5UrlInBlackList(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v20
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 250
    :try_start_5
    invoke-virtual {v3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    if-eqz v0, :cond_6

    .line 255
    .line 256
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    goto :goto_4

    .line 261
    :cond_6
    const/4 v0, 0x1

    .line 262
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 263
    .line 264
    .line 265
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 266
    goto :goto_5

    .line 267
    :catchall_1
    :try_start_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 268
    .line 269
    :goto_5
    move-object/from16 v12, v20

    .line 270
    .line 271
    move-object/from16 v20, v0

    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_7
    move-object/from16 v12, v20

    .line 275
    .line 276
    const/16 v20, 0x0

    .line 277
    .line 278
    :goto_6
    const-string v0, "http://"

    .line 279
    .line 280
    move-object/from16 v24, v13

    .line 281
    .line 282
    const-string v13, "https://"

    .line 283
    .line 284
    move-object/from16 v27, v14

    .line 285
    .line 286
    const/4 v14, 0x0

    .line 287
    if-eqz v12, :cond_a

    .line 288
    .line 289
    :try_start_7
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    .line 290
    .line 291
    .line 292
    move-result v29

    .line 293
    if-lez v29, :cond_a

    .line 294
    .line 295
    move-object/from16 v29, v4

    .line 296
    .line 297
    move-object/from16 v30, v15

    .line 298
    .line 299
    const/4 v4, 0x0

    .line 300
    const/4 v15, 0x2

    .line 301
    invoke-static {v12, v13, v14, v15, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v28

    .line 305
    if-nez v28, :cond_8

    .line 306
    .line 307
    invoke-static {v12, v0, v14, v15, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v31

    .line 311
    if-eqz v31, :cond_b

    .line 312
    .line 313
    :cond_8
    invoke-virtual {v1, v12}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkH5UrlInBlackList(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 317
    :try_start_8
    invoke-virtual {v3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    if-eqz v4, :cond_9

    .line 322
    .line 323
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    goto :goto_7

    .line 328
    :cond_9
    const/4 v4, 0x1

    .line 329
    :goto_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 330
    .line 331
    .line 332
    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 333
    goto :goto_8

    .line 334
    :catchall_2
    :try_start_9
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 335
    .line 336
    goto :goto_8

    .line 337
    :cond_a
    move-object/from16 v29, v4

    .line 338
    .line 339
    move-object/from16 v30, v15

    .line 340
    .line 341
    :cond_b
    move-object/from16 v4, v20

    .line 342
    .line 343
    :goto_8
    if-eqz v12, :cond_e

    .line 344
    .line 345
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    .line 346
    .line 347
    .line 348
    move-result v15

    .line 349
    if-lez v15, :cond_e

    .line 350
    .line 351
    move-object/from16 p2, v4

    .line 352
    .line 353
    const/4 v4, 0x2

    .line 354
    const/4 v15, 0x0

    .line 355
    invoke-static {v12, v13, v14, v4, v15}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v13

    .line 359
    if-nez v13, :cond_c

    .line 360
    .line 361
    invoke-static {v12, v0, v14, v4, v15}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-eqz v0, :cond_f

    .line 366
    .line 367
    :cond_c
    invoke-virtual {v1, v12}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkH5UrlInBlackList(Ljava/lang/String;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v12
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 371
    :try_start_a
    invoke-virtual {v3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    if-eqz v0, :cond_d

    .line 376
    .line 377
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    goto :goto_9

    .line 382
    :cond_d
    const/4 v0, 0x1

    .line 383
    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 384
    .line 385
    .line 386
    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 387
    :goto_a
    move-object v4, v0

    .line 388
    goto :goto_b

    .line 389
    :catchall_3
    :try_start_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 390
    .line 391
    goto :goto_a

    .line 392
    :cond_e
    move-object/from16 p2, v4

    .line 393
    .line 394
    const/4 v15, 0x0

    .line 395
    :cond_f
    move-object/from16 v4, p2

    .line 396
    .line 397
    :goto_b
    :try_start_c
    invoke-virtual {v3, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    if-eqz v0, :cond_10

    .line 402
    .line 403
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 408
    .line 409
    .line 410
    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 411
    move-object v15, v0

    .line 412
    :catchall_4
    :cond_10
    :try_start_d
    invoke-virtual {v3, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-virtual {v3, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v13

    .line 420
    invoke-virtual {v3, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v14

    .line 424
    move-object/from16 v18, v8

    .line 425
    .line 426
    invoke-virtual {v3, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v8

    .line 430
    move-object/from16 v20, v7

    .line 431
    .line 432
    invoke-virtual {v3, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    move-object/from16 v28, v6

    .line 437
    .line 438
    move-object/from16 v6, v17

    .line 439
    .line 440
    invoke-virtual {v3, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    move-object/from16 v17, v6

    .line 445
    .line 446
    move-object/from16 v6, p1

    .line 447
    .line 448
    invoke-virtual {v1, v5, v6}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getLaunchContext(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Context;

    .line 449
    .line 450
    .line 451
    move-result-object v6

    .line 452
    new-instance v1, Landroid/os/Bundle;

    .line 453
    .line 454
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 455
    .line 456
    .line 457
    if-eqz v12, :cond_11

    .line 458
    .line 459
    move-object/from16 p2, v5

    .line 460
    .line 461
    move-object/from16 v5, v30

    .line 462
    .line 463
    invoke-virtual {v1, v5, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    goto :goto_c

    .line 467
    :cond_11
    move-object/from16 p2, v5

    .line 468
    .line 469
    :goto_c
    if-eqz v29, :cond_12

    .line 470
    .line 471
    move-object/from16 v5, v27

    .line 472
    .line 473
    move-object/from16 v12, v29

    .line 474
    .line 475
    invoke-virtual {v1, v5, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    :cond_12
    if-eqz v24, :cond_13

    .line 479
    .line 480
    move-object/from16 v5, v23

    .line 481
    .line 482
    move-object/from16 v12, v24

    .line 483
    .line 484
    invoke-virtual {v1, v5, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    :cond_13
    if-eqz v26, :cond_14

    .line 488
    .line 489
    move-object/from16 v5, v25

    .line 490
    .line 491
    move-object/from16 v12, v26

    .line 492
    .line 493
    invoke-virtual {v1, v5, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    :cond_14
    if-eqz v4, :cond_15

    .line 497
    .line 498
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 499
    .line 500
    .line 501
    move-result v4

    .line 502
    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 503
    .line 504
    .line 505
    :cond_15
    if-eqz v22, :cond_16

    .line 506
    .line 507
    move-object/from16 v2, v21

    .line 508
    .line 509
    move-object/from16 v4, v22

    .line 510
    .line 511
    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    :cond_16
    if-eqz v15, :cond_17

    .line 515
    .line 516
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 517
    .line 518
    .line 519
    move-result v2

    .line 520
    invoke-virtual {v1, v11, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 521
    .line 522
    .line 523
    :cond_17
    if-eqz v0, :cond_18

    .line 524
    .line 525
    invoke-virtual {v1, v10, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    :cond_18
    if-eqz v13, :cond_19

    .line 529
    .line 530
    invoke-virtual {v1, v9, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    :cond_19
    const-string v0, "100000"

    .line 534
    .line 535
    invoke-static {v14, v0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    move-object/from16 v2, v18

    .line 540
    .line 541
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    if-eqz v8, :cond_1a

    .line 545
    .line 546
    move-object/from16 v0, v20

    .line 547
    .line 548
    invoke-virtual {v1, v0, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    :cond_1a
    const-string v0, "entranceUrl"

    .line 552
    .line 553
    move-object/from16 v2, v19

    .line 554
    .line 555
    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    if-eqz v7, :cond_1b

    .line 559
    .line 560
    move-object/from16 v0, v28

    .line 561
    .line 562
    invoke-virtual {v1, v0, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    :cond_1b
    if-eqz v3, :cond_1c

    .line 566
    .line 567
    move-object/from16 v0, v17

    .line 568
    .line 569
    invoke-virtual {v1, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    :cond_1c
    move-object/from16 v0, p3

    .line 573
    .line 574
    move-object/from16 v2, v16

    .line 575
    .line 576
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    move-result v0

    .line 580
    if-eqz v0, :cond_1d

    .line 581
    .line 582
    const-string v0, "miniapp_frm_start"

    .line 583
    .line 584
    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    :cond_1d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 588
    .line 589
    move-object/from16 v0, p2

    .line 590
    .line 591
    invoke-static {v6, v0, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->launchMiniAppForId(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 592
    .line 593
    .line 594
    goto :goto_e

    .line 595
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    :goto_e
    return-void
.end method

.method public final reportMiniAppLauncherFailedTrack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "close_type"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "auto_close_app_status"

    .line 17
    .line 18
    sget-object v2, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 34
    .line 35
    const-string v2, "miniapp_auto_close_record"

    .line 36
    .line 37
    invoke-interface {v1, p1, v2, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v1, "miniappLauncherFailed->"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method

.method public final showErrorDialog(Landroid/content/Context;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/e;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/utils/e;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final showFwUpdateTipsDialog(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 1

    .line 1
    const-string v0, "prepareCallback"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/cloud/tmc/miniapp/proxy/platform/IUpgradeProxy;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/cloud/tmc/miniapp/proxy/platform/IUpgradeProxy;

    .line 13
    .line 14
    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/proxy/platform/IUpgradeProxy;->showFwUpdateTipsDialog(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final showUpdateFwZipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/c;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/utils/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final trackCommonResPoint(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    :try_start_0
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->commonResIdList:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_a

    .line 18
    .line 19
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->commonResLaunchList:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/util/Map;

    .line 26
    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    const-string v5, "u_e"

    .line 32
    .line 33
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Ljava/lang/Long;

    .line 38
    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-wide v5, v3

    .line 47
    :goto_0
    if-eqz v2, :cond_1

    .line 48
    .line 49
    const-string v7, "u_s"

    .line 50
    .line 51
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    check-cast v7, Ljava/lang/Long;

    .line 56
    .line 57
    if-eqz v7, :cond_1

    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 60
    .line 61
    .line 62
    move-result-wide v7

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move-wide v7, v3

    .line 65
    :goto_1
    sub-long/2addr v5, v7

    .line 66
    cmp-long v7, v5, v3

    .line 67
    .line 68
    const-wide/16 v8, -0x1

    .line 69
    .line 70
    if-gez v7, :cond_2

    .line 71
    .line 72
    move-wide v5, v8

    .line 73
    :cond_2
    if-eqz v2, :cond_3

    .line 74
    .line 75
    const-string v7, "d_e"

    .line 76
    .line 77
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Ljava/lang/Long;

    .line 82
    .line 83
    if-eqz v7, :cond_3

    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 86
    .line 87
    .line 88
    move-result-wide v10

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    move-wide v10, v3

    .line 91
    :goto_2
    if-eqz v2, :cond_4

    .line 92
    .line 93
    const-string v7, "d_s"

    .line 94
    .line 95
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    check-cast v7, Ljava/lang/Long;

    .line 100
    .line 101
    if-eqz v7, :cond_4

    .line 102
    .line 103
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 104
    .line 105
    .line 106
    move-result-wide v12

    .line 107
    goto :goto_3

    .line 108
    :cond_4
    move-wide v12, v3

    .line 109
    :goto_3
    sub-long/2addr v10, v12

    .line 110
    cmp-long v7, v10, v3

    .line 111
    .line 112
    if-gez v7, :cond_5

    .line 113
    .line 114
    move-wide v10, v8

    .line 115
    :cond_5
    if-eqz v2, :cond_6

    .line 116
    .line 117
    const-string v7, "l_e"

    .line 118
    .line 119
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    check-cast v7, Ljava/lang/Long;

    .line 124
    .line 125
    if-eqz v7, :cond_6

    .line 126
    .line 127
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 128
    .line 129
    .line 130
    move-result-wide v12

    .line 131
    goto :goto_4

    .line 132
    :cond_6
    move-wide v12, v3

    .line 133
    :goto_4
    if-eqz v2, :cond_7

    .line 134
    .line 135
    const-string v7, "l_s"

    .line 136
    .line 137
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Ljava/lang/Long;

    .line 142
    .line 143
    if-eqz v2, :cond_7

    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 146
    .line 147
    .line 148
    move-result-wide v14

    .line 149
    goto :goto_5

    .line 150
    :cond_7
    move-wide v14, v3

    .line 151
    :goto_5
    sub-long/2addr v12, v14

    .line 152
    cmp-long v2, v12, v3

    .line 153
    .line 154
    if-gez v2, :cond_8

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_8
    move-wide v8, v12

    .line 158
    :goto_6
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    const-string v3, "u_t"

    .line 163
    .line 164
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    const-string v3, "d_t"

    .line 173
    .line 174
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    const-string v3, "l_t"

    .line 183
    .line 184
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    const-string v3, "create().addProperty(\"u_\u2026rty(\"l_t\", step3).build()"

    .line 197
    .line 198
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-static {v2}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    if-eqz v1, :cond_9

    .line 206
    .line 207
    const-string v3, "m_c_p"

    .line 208
    .line 209
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->clearLaunchMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .line 214
    .line 215
    :catchall_0
    :cond_a
    return-void
.end method

.method public final warmUpWorker()V
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "warmUpWorker"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-class v0, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;->createWorker(Z)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final warmupEntrance(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooOO0;

    .line 13
    .line 14
    invoke-direct {v1, p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooOO0;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, v1}, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o;->OooO00o(Landroid/content/Context;ZLcom/cloud/tmc/miniapp/ipc/OooO0O0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public final warmupRender()V
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "warmupRender"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-class v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;->createRender(Z)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
