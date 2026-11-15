.class public final Lcom/cloud/tmc/integration/utils/AppUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0007J\u0008\u0010\u001b\u001a\u00020\u0006H\u0002J&\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00062\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010 \u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u000bJ\u0010\u0010!\u001a\u00020\u00062\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000bJ\u0018\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020$2\u0008\u0008\u0002\u0010%\u001a\u00020\u0006J\u0015\u0010&\u001a\u00020\u00062\u0008\u0010\'\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010(J\u0008\u0010)\u001a\u00020\u0006H\u0007J\u0010\u0010*\u001a\u00020\u000b2\u0008\u0010#\u001a\u0004\u0018\u00010$J\u000e\u0010+\u001a\u00020\u00082\u0006\u0010,\u001a\u00020-J\u000e\u0010.\u001a\u00020\u00082\u0006\u0010,\u001a\u00020-J+\u0010/\u001a\u0004\u0018\u00010\u000b2\u0006\u00100\u001a\u0002012\u0008\u00102\u001a\u0004\u0018\u0001032\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u00105J+\u00106\u001a\u0004\u0018\u00010\u000b2\u0006\u00100\u001a\u0002012\u0008\u00102\u001a\u0004\u0018\u0001032\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u00105J\u0010\u00107\u001a\u00020\u000b2\u0008\u00100\u001a\u0004\u0018\u000101J+\u00108\u001a\u0004\u0018\u00010\u000b2\u0006\u00100\u001a\u0002012\u0008\u00102\u001a\u0004\u0018\u0001032\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u00105J\u0012\u00109\u001a\u00020\u00172\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0002J\u0012\u0010:\u001a\u00020\u00062\u0008\u0010;\u001a\u0004\u0018\u00010\u0019H\u0007J\u0010\u0010<\u001a\u00020\u00062\u0008\u0010#\u001a\u0004\u0018\u00010$J\u001c\u0010=\u001a\u00020\u00062\u0008\u0010>\u001a\u0004\u0018\u00010?2\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0007J\u0010\u0010B\u001a\u00020\u00062\u0008\u0010#\u001a\u0004\u0018\u00010$J\u001c\u0010C\u001a\u00020\u00062\u0008\u0010;\u001a\u0004\u0018\u00010\u00192\u0008\u0010D\u001a\u0004\u0018\u00010\u000bH\u0007J\u0010\u0010E\u001a\u00020\u00062\u0008\u0010#\u001a\u0004\u0018\u00010$J\u0010\u0010F\u001a\u00020\u00062\u0008\u00100\u001a\u0004\u0018\u000101J\u0010\u0010G\u001a\u00020\u00062\u0008\u0010#\u001a\u0004\u0018\u00010$J\u0010\u0010H\u001a\u00020\u000b2\u0008\u0010#\u001a\u0004\u0018\u00010$J\u001a\u0010H\u001a\u00020\u000b2\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0008\u0010@\u001a\u0004\u0018\u00010AJ&\u0010I\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\u0010J0\u0010I\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\u00102\u0008\u0010@\u001a\u0004\u0018\u00010AJ\u0008\u0010J\u001a\u0004\u0018\u00010\u0014J\u0012\u0010J\u001a\u0004\u0018\u00010\u00142\u0008\u0010@\u001a\u0004\u0018\u00010AJ\u001a\u0010K\u001a\u00020\u00062\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000bJ\u0018\u0010L\u001a\u00020\u00062\u0006\u0010#\u001a\u00020$2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000bJ*\u0010M\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u000b2\u0006\u0010N\u001a\u00020O2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010P\u001a\u00020\u000bJJ\u0010Q\u001a\u00020\u00172\u0008\u0010>\u001a\u0004\u0018\u00010?2\u0008\u0010R\u001a\u0004\u0018\u00010\u000b2\u0018\u0008\u0002\u0010S\u001a\u0012\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010T2\u0008\u0008\u0002\u0010U\u001a\u00020\u00062\u0008\u0008\u0002\u0010V\u001a\u00020\u0006H\u0007J4\u0010W\u001a\u00020\u00172\u0008\u0010>\u001a\u0004\u0018\u00010?2\u0006\u0010R\u001a\u00020\u000b2\u0018\u0008\u0002\u0010S\u001a\u0012\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010TH\u0007J>\u0010X\u001a\u00020\u00172\u0008\u0010>\u001a\u0004\u0018\u00010?2\u0008\u0010R\u001a\u0004\u0018\u00010\u000b2\u0006\u0010Y\u001a\u00020\u00062\u0018\u0008\u0002\u0010S\u001a\u0012\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010TH\u0007J4\u0010Z\u001a\u00020\u00172\u0006\u0010[\u001a\u00020\\2\u0008\u0010R\u001a\u0004\u0018\u00010\u000b2\u0018\u0008\u0002\u0010S\u001a\u0012\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010TH\u0007J\u0008\u0010]\u001a\u00020\u0006H\u0007J\u000e\u0010^\u001a\u00020\u00172\u0006\u0010_\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R.\u0010\r\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R.\u0010\u0012\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006`"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/AppUtils;",
        "",
        "()V",
        "DENSITY",
        "",
        "ISGET",
        "",
        "SCREEN_HEIGHT",
        "",
        "SCREEN_WIDTH",
        "TAG",
        "",
        "customDarkConfig",
        "customDarkLaunchParams",
        "Ljava/util/HashMap;",
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;",
        "Lkotlin/collections/HashMap;",
        "customLightConfig",
        "customLightLaunchParams",
        "customTabBar",
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;",
        "miniappCustomConfig",
        "checkAndRemoveExtraPage",
        "",
        "mStartParams",
        "Landroid/os/Bundle;",
        "mSceneParams",
        "checkAndroidVersionShowAddhomeDialog",
        "checkEnableSyncToPs",
        "enableCheckFromPs",
        "appId",
        "from",
        "checkGoHomeToHomePage",
        "checkMiniAppPrivacyAgreementDialogWhiteList",
        "checkShowCustomAddhomeDialog",
        "context",
        "Landroid/content/Context;",
        "showConfirmDialog",
        "checkUesCommonresApp",
        "miniappType",
        "(Ljava/lang/Integer;)Z",
        "enableWebViewDebugger",
        "getConfigKey",
        "getContainerHeight",
        "pageContext",
        "Lcom/cloud/tmc/integration/structure/PageContext;",
        "getContainerWidth",
        "getCurrentPackageEncryptionUrl",
        "appModel",
        "Lcom/cloud/tmc/integration/model/AppModel;",
        "subPackageInfo",
        "Lcom/cloud/tmc/integration/model/SubPackageInfo;",
        "isFullPackage",
        "(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;)Ljava/lang/String;",
        "getCurrentPackageUniqueName",
        "getPackageDownloadUrl",
        "getPackageUniqueSign",
        "initWidthAndHeight",
        "isExitPage",
        "bundle",
        "isHolaBrowser",
        "isHomepage",
        "page",
        "Lcom/cloud/tmc/integration/structure/Page;",
        "appLoadResult",
        "Lcom/cloud/tmc/integration/structure/AppLoadResult;",
        "isLauncher",
        "isLegalPath",
        "path",
        "isMovieBox",
        "isSubPackageApp",
        "isTspotBrowser",
        "queryMiniappCustomConfig",
        "queryMiniappCustomLaunchParams",
        "queryMiniappCustomTabBar",
        "queryShortcutExist",
        "queytShortcutBySystemApi",
        "reportStartTime",
        "startUsageTime",
        "",
        "startType",
        "sendApiCallbackToWorker",
        "eventName",
        "ext",
        "",
        "keepCallback",
        "closeKeepCallback",
        "sendAppOrPageReadyToRender",
        "sendEventOrLifecycleToWorker",
        "lifecycle",
        "sendToApp",
        "app",
        "Lcom/cloud/tmc/integration/structure/App;",
        "subpackageIsEnable",
        "updateMiniappCustomConfig",
        "config",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field private static DENSITY:F = 0.0f

.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

.field private static ISGET:Z = false

.field private static SCREEN_HEIGHT:I = 0x0

.field private static SCREEN_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AppUtils"

.field private static customDarkConfig:Ljava/lang/String;

.field private static customDarkLaunchParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;",
            ">;"
        }
    .end annotation
.end field

.field private static customLightConfig:Ljava/lang/String;

.field private static customLightLaunchParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;",
            ">;"
        }
    .end annotation
.end field

.field private static customTabBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

.field private static miniappCustomConfig:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/AppUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    sput-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->miniappCustomConfig:Ljava/lang/String;

    .line 11
    .line 12
    sput-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkConfig:Ljava/lang/String;

    .line 13
    .line 14
    sput-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightConfig:Ljava/lang/String;

    .line 15
    .line 16
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

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/utils/AppUtils;->reportStartTime$lambda$11(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final checkAndRemoveExtraPage(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "page"

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_3

    .line 13
    :cond_0
    move-object v2, v0

    .line 14
    :goto_0
    const-string v3, ""

    .line 15
    .line 16
    const-string v4, "pageCopy"

    .line 17
    .line 18
    const-string v5, "usedPage"

    .line 19
    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    :try_start_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-nez v6, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-static {p1, v2}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLegalPath(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move-object v2, v3

    .line 45
    :cond_3
    invoke-virtual {p0, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_5
    if-eqz v0, :cond_9

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_6

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_6
    invoke-static {p1, v0}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLegalPath(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_7

    .line 71
    .line 72
    invoke-virtual {p1, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-nez p0, :cond_8

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_8
    move-object v3, p0

    .line 83
    :goto_2
    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_4

    .line 90
    :goto_3
    const-string p1, "AppUtils"

    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {p1, v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    :cond_9
    :goto_4
    return-void
.end method

.method private final checkAndroidVersionShowAddhomeDialog()Z
    .locals 3

    .line 1
    const/16 v0, 0x23

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 4
    .line 5
    const-string v2, "showAddHomeCustomDialog"

    .line 6
    .line 7
    invoke-virtual {v1, v2, v0}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetInt(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :catchall_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public static synthetic checkEnableSyncToPs$default(Lcom/cloud/tmc/integration/utils/AppUtils;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    move-object p2, v0

    .line 8
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 9
    .line 10
    if-eqz p4, :cond_1

    .line 11
    .line 12
    move-object p3, v0

    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkEnableSyncToPs(ZLjava/lang/String;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static synthetic checkShowCustomAddhomeDialog$default(Lcom/cloud/tmc/integration/utils/AppUtils;Landroid/content/Context;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkShowCustomAddhomeDialog(Landroid/content/Context;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static final enableWebViewDebugger()Z
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "AppUtils"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "miniapp.webviewdebug"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "enableWebViewDebugger -> "

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    const-string v2, "enableWebViewDebugger"

    .line 33
    .line 34
    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    :goto_0
    return v1
.end method

.method public static synthetic getCurrentPackageEncryptionUrl$default(Lcom/cloud/tmc/integration/utils/AppUtils;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/AppUtils;->getCurrentPackageEncryptionUrl(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static synthetic getCurrentPackageUniqueName$default(Lcom/cloud/tmc/integration/utils/AppUtils;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/AppUtils;->getCurrentPackageUniqueName(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static synthetic getPackageUniqueSign$default(Lcom/cloud/tmc/integration/utils/AppUtils;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/AppUtils;->getPackageUniqueSign(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private final initWidthAndHeight(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-boolean v0, Lcom/cloud/tmc/integration/utils/AppUtils;->ISGET:Z

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 17
    .line 18
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 19
    .line 20
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 21
    .line 22
    sput p1, Lcom/cloud/tmc/integration/utils/AppUtils;->DENSITY:F

    .line 23
    .line 24
    if-ge v0, v1, :cond_1

    .line 25
    .line 26
    sput v0, Lcom/cloud/tmc/integration/utils/AppUtils;->SCREEN_WIDTH:I

    .line 27
    .line 28
    sput v1, Lcom/cloud/tmc/integration/utils/AppUtils;->SCREEN_HEIGHT:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sput v1, Lcom/cloud/tmc/integration/utils/AppUtils;->SCREEN_WIDTH:I

    .line 32
    .line 33
    sput v0, Lcom/cloud/tmc/integration/utils/AppUtils;->SCREEN_HEIGHT:I

    .line 34
    .line 35
    :goto_0
    const/4 p1, 0x1

    .line 36
    sput-boolean p1, Lcom/cloud/tmc/integration/utils/AppUtils;->ISGET:Z

    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public static final isExitPage(Landroid/os/Bundle;)Z
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const-string v1, "extraExitPageData"

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return v0
.end method

.method public static final isHomepage(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/AppLoadResult;)Z
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    iget-object v1, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 5
    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    iget-object v1, v1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    check-cast v1, Ljava/util/Collection;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    xor-int/2addr v1, v2

    .line 20
    if-ne v1, v2, :cond_3

    .line 21
    .line 22
    iget-object p1, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/String;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object p1, v1

    .line 39
    :goto_0
    if-eqz p0, :cond_1

    .line 40
    .line 41
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move-object v3, v1

    .line 47
    :goto_1
    const/4 v4, 0x2

    .line 48
    invoke-static {v3, p1, v0, v4, v1}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-ne p0, v2, :cond_3

    .line 61
    .line 62
    :cond_2
    move v0, v2

    .line 63
    :cond_3
    return v0
.end method

.method public static final isLegalPath(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "appLoadResult"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/tmc/integration/utils/AppUtils;->subpackageIsEnable()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    if-eqz p0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-object v0, v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->subPackages:Ljava/util/List;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    check-cast v0, Ljava/lang/Iterable;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/cloud/tmc/integration/model/Subpackage;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/Subpackage;->getPages()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ljava/util/Collection;

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/Subpackage;->getPages()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    check-cast v3, Ljava/lang/Iterable;

    .line 66
    .line 67
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_0

    .line 76
    .line 77
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/Subpackage;->getRoot()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v5, "/"

    .line 96
    .line 97
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_2

    .line 112
    .line 113
    return v1

    .line 114
    :cond_3
    if-eqz p0, :cond_7

    .line 115
    .line 116
    iget-object p0, p0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 117
    .line 118
    if-eqz p0, :cond_7

    .line 119
    .line 120
    iget-object p0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    .line 121
    .line 122
    if-eqz p0, :cond_7

    .line 123
    .line 124
    check-cast p0, Ljava/lang/Iterable;

    .line 125
    .line 126
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_7

    .line 135
    .line 136
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_4

    .line 147
    .line 148
    return v1

    .line 149
    :cond_5
    if-eqz p0, :cond_7

    .line 150
    .line 151
    iget-object p0, p0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 152
    .line 153
    if-eqz p0, :cond_7

    .line 154
    .line 155
    iget-object p0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    .line 156
    .line 157
    if-eqz p0, :cond_7

    .line 158
    .line 159
    check-cast p0, Ljava/lang/Iterable;

    .line 160
    .line 161
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_7

    .line 170
    .line 171
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    return v1

    .line 184
    :cond_7
    const/4 p0, 0x0

    .line 185
    const/4 v0, 0x2

    .line 186
    const/4 v2, 0x0

    .line 187
    if-eqz p1, :cond_8

    .line 188
    .line 189
    const-string v3, "http://"

    .line 190
    .line 191
    invoke-static {p1, v3, v2, v0, p0}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-ne v3, v1, :cond_8

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_8
    if-eqz p1, :cond_9

    .line 199
    .line 200
    const-string v3, "https://"

    .line 201
    .line 202
    invoke-static {p1, v3, v2, v0, p0}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    if-ne p0, v1, :cond_9

    .line 207
    .line 208
    :goto_1
    return v1

    .line 209
    :cond_9
    return v2
.end method

.method public static synthetic reportStartTime$default(Lcom/cloud/tmc/integration/utils/AppUtils;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x8

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const-string p5, ""

    .line 6
    .line 7
    :cond_0
    move-object v5, p5

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-wide v2, p2

    .line 11
    move-object v4, p4

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/cloud/tmc/integration/utils/AppUtils;->reportStartTime(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static final reportStartTime$lambda$11(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "$appId"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$startType"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1, p0, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkEnableSyncToPs(ZLjava/lang/String;Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const-class p1, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;

    .line 27
    .line 28
    invoke-interface {p1, p0, p2, p3, p4}, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;->reportMiniAppStartTime(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :catchall_0
    :cond_0
    return-void
.end method

.method public static final sendApiCallbackToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/16 v5, 0x1c

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendApiCallbackToWorker$default(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;ZZILjava/lang/Object;)V

    return-void
.end method

.method public static final sendApiCallbackToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/Page;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    const/16 v5, 0x18

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendApiCallbackToWorker$default(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;ZZILjava/lang/Object;)V

    return-void
.end method

.method public static final sendApiCallbackToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/Page;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 3
    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendApiCallbackToWorker$default(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;ZZILjava/lang/Object;)V

    return-void
.end method

.method public static final sendApiCallbackToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/Page;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_5

    .line 4
    const-class v0, Lcom/cloud/tmc/integration/model/WorkerStore;

    invoke-interface {p0, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/WorkerStore;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/cloud/tmc/integration/model/WorkerStore;->workerId:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getWorkerById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    .line 7
    const-string v2, "url"

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    .line 8
    const-string v2, "renderId"

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p0

    const-string v1, "create()\n            .ad\u2026Y_RENDER_ID, page.pageId)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 9
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    goto :goto_0

    .line 11
    :cond_2
    const-string p2, "action"

    if-eqz p3, :cond_3

    .line 12
    const-string p3, "keepalive_active"

    invoke-virtual {p0, p2, p3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    .line 13
    const-string p3, "keepalive_close"

    invoke-virtual {p0, p2, p3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 14
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/cloud/tmc/integration/event/EventHelper;->dispatchApiCallbackToWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static synthetic sendApiCallbackToWorker$default(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;ZZILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p6, p5, 0x8

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    move p3, v0

    .line 12
    :cond_1
    and-int/lit8 p5, p5, 0x10

    .line 13
    .line 14
    if-eqz p5, :cond_2

    .line 15
    .line 16
    move p4, v0

    .line 17
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendApiCallbackToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;ZZ)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static final sendAppOrPageReadyToRender(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendAppOrPageReadyToRender$default(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public static final sendAppOrPageReadyToRender(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/Page;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v0, "sendAppOrPageReadyToRender"

    const-string v1, "subPkg"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_1

    return-void

    .line 4
    :cond_1
    const-string v3, "sendAppOrPageReadyToRender 01"

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-eqz v3, :cond_d

    const-class v4, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    invoke-interface {v3, v4}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    if-nez v3, :cond_2

    goto/16 :goto_8

    .line 6
    :cond_2
    const-string v4, "sendAppOrPageReadyToRender 02"

    invoke-static {v1, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v4, v3, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz v4, :cond_d

    invoke-static {v4}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto/16 :goto_8

    .line 8
    :cond_3
    const-string v5, "sendAppOrPageReadyToRender 03"

    invoke-static {v1, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {v4}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v0

    .line 10
    :goto_1
    iget-object v5, v3, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    const-string v6, ""

    if-eqz v5, :cond_6

    iget-object v5, v5, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    if-eqz v5, :cond_6

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    const/4 v7, 0x1

    xor-int/2addr v5, v7

    if-ne v5, v7, :cond_6

    iget-object v3, v3, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    if-eqz v3, :cond_5

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v3, v0

    goto :goto_2

    :cond_6
    move-object v3, v6

    .line 11
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendAppOrPageReadyToRender firstPage:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v5

    .line 13
    const-string v7, "url"

    invoke-virtual {v5, v7, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v3

    .line 14
    const-string v5, "renderId"

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v3

    .line 15
    const-string v5, "appPath"

    invoke-virtual {v3, v5, v6}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v3

    .line 16
    const-string v5, "pagePath"

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v3

    .line 17
    const-string v5, "appJson"

    invoke-virtual {v3, v5, v4}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v3

    const-string v4, "create()\n            .ad\u2026EY_APP_JSON, appConfigJo)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    :try_start_0
    const-string v4, "miniappId"

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_7
    move-object v5, v0

    :goto_3
    invoke-virtual {v3, v4, v5}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 19
    sget-object v4, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getMiniappSubtype()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_4

    :cond_8
    move-object v5, v0

    :goto_4
    invoke-virtual {v4, v5}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkUesCommonresApp(Ljava/lang/Integer;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 20
    const-string v4, "commonresId"

    .line 21
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateMiniappId()Ljava/lang/String;

    move-result-object v0

    .line 22
    :cond_9
    invoke-virtual {v3, v4, v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    .line 23
    :goto_5
    const-string v0, "AppUtils"

    invoke-static {v0, v6, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    if-eqz p2, :cond_b

    .line 24
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v3, v0, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    goto :goto_7

    .line 26
    :cond_b
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    move-result-object p0

    if-eqz p0, :cond_c

    const-string p2, "__appReady"

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Lcom/cloud/tmc/kernel/bridge/RenderBridge;->setGlobalObject(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 27
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendAppOrPageReadyToRender dispatchEventToRender eventName:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-static {v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lcom/cloud/tmc/integration/event/EventHelper;->dispatchEventToRender(Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    :cond_d
    :goto_8
    return-void
.end method

.method public static synthetic sendAppOrPageReadyToRender$default(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
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
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendAppOrPageReadyToRender(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final sendEventOrLifecycleToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Z)V
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendEventOrLifecycleToWorker$default(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;ZLjava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public static final sendEventOrLifecycleToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/Page;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_5

    .line 2
    const-class v0, Lcom/cloud/tmc/integration/model/WorkerStore;

    invoke-interface {p0, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/WorkerStore;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/cloud/tmc/integration/model/WorkerStore;->workerId:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getWorkerById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 4
    :try_start_0
    invoke-static {p3}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, v1

    :goto_0
    invoke-static {p3}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :catchall_0
    :cond_3
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p3

    .line 6
    const-string v1, "url"

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p3

    .line 7
    const-string v1, "renderId"

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, v1, p0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p0

    const-string p3, "create(extParams)\n      \u2026Y_RENDER_ID, page.pageId)"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/cloud/tmc/integration/event/EventHelper;->dispatchLifecycleToWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/cloud/tmc/integration/event/EventHelper;->dispatchEventToWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static synthetic sendEventOrLifecycleToWorker$default(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;ZLjava/util/Map;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x8

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendEventOrLifecycleToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;ZLjava/util/Map;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final sendToApp(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendToApp$default(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public static final sendToApp(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/App;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-static {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendEventOrLifecycleToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;ZLjava/util/Map;)V

    return-void
.end method

.method public static synthetic sendToApp$default(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
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
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendToApp(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/util/Map;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final subpackageIsEnable()Z
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 2
    .line 3
    const-string v1, "enableMiniSubPackage"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method


# virtual methods
.method public final checkEnableSyncToPs(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final checkGoHomeToHomePage(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 7
    .line 8
    const-string v1, "miniGoHomeAllowId"

    .line 9
    .line 10
    const-string v2, "[\"1000616124851466240\"]"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-class v1, Ljava/util/List;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Ljava/util/List;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    check-cast v0, Ljava/util/List;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    goto :goto_2

    .line 44
    :goto_1
    const-string v0, "AppUtils"

    .line 45
    .line 46
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    :goto_2
    return p1
.end method

.method public final checkMiniAppPrivacyAgreementDialogWhiteList(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "AppUtils"

    .line 2
    .line 3
    const-string v1, "[]"

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    :try_start_0
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
    const-string v3, "privacyAgreementDialogWhiteListV4"

    .line 23
    .line 24
    invoke-interface {v2, v3, v1}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v2

    .line 30
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    move-object v2, v1

    .line 34
    :goto_0
    :try_start_1
    const-string v3, "privacyAgreementDialogWhiteListStr"

    .line 35
    .line 36
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lcom/cloud/tmc/integration/utils/AppUtils$checkMiniAppPrivacyAgreementDialogWhiteList$whiteList$1;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/cloud/tmc/integration/utils/AppUtils$checkMiniAppPrivacyAgreementDialogWhiteList$whiteList$1;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, "object :\n               \u2026ayList<String>>() {}.type"

    .line 49
    .line 50
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_1
    move-exception v2

    .line 61
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :try_start_2
    new-instance v2, Lcom/cloud/tmc/integration/utils/AppUtils$checkMiniAppPrivacyAgreementDialogWhiteList$whiteList$2;

    .line 65
    .line 66
    invoke-direct {v2}, Lcom/cloud/tmc/integration/utils/AppUtils$checkMiniAppPrivacyAgreementDialogWhiteList$whiteList$2;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string v3, "object : TypeToken<ArrayList<String>>() {}.type"

    .line 74
    .line 75
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 83
    .line 84
    move-object v2, v1

    .line 85
    goto :goto_1

    .line 86
    :catchall_2
    move-exception v1

    .line 87
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    move-object v2, v0

    .line 96
    :goto_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    return p1

    .line 101
    :cond_1
    :goto_2
    const/4 p1, 0x0

    .line 102
    return p1
.end method

.method public final checkShowCustomAddhomeDialog(Landroid/content/Context;Z)Z
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 10
    .line 11
    const-string v1, "showAddHomeCustomDialog"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLauncher(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkAndroidVersionShowAddhomeDialog()Z

    .line 26
    .line 27
    .line 28
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p2, 0x0

    .line 33
    :catchall_0
    :goto_0
    return p2
.end method

.method public final checkUesCommonresApp(Ljava/lang/Integer;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final getConfigKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    const-string p1, ""

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const-string v1, "com.community.oneroom"

    .line 25
    .line 26
    sparse-switch v0, :sswitch_data_0

    .line 27
    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :sswitch_0
    const-string v0, "com.yomobigroup.chat"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :sswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :sswitch_2
    const-string v0, "com.vskit.lite"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :sswitch_3
    const-string v0, "com.community.moviebox"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :sswitch_4
    const-string v0, "com.community.mbox.sa"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :sswitch_5
    const-string v0, "com.community.mbox.ru"

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_2

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :sswitch_6
    const-string v0, "com.community.mbox.ph"

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_2

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :sswitch_7
    const-string v0, "com.community.mbox.ng"

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_2

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :sswitch_8
    const-string v0, "com.community.mbox.mb"

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_2

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :sswitch_9
    const-string v0, "com.community.mbox.ke"

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_2

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :sswitch_a
    const-string v0, "com.community.mbox.in"

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_2

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :sswitch_b
    const-string v0, "com.community.mbox.id"

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_2

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :sswitch_c
    const-string v0, "com.community.mbox.ar"

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_3

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :sswitch_d
    const-string v0, "com.community.mbox.affr"

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_2

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :sswitch_e
    const-string v0, "com.community.mbox.afen"

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-nez v0, :cond_2

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_2
    :goto_1
    move-object p1, v1

    .line 169
    :cond_3
    :goto_2
    return-object p1

    .line 170
    nop

    .line 171
    :sswitch_data_0
    .sparse-switch
        -0x7e4bc674 -> :sswitch_e
        -0x7e4bc651 -> :sswitch_d
        -0x5a6ff651 -> :sswitch_c
        -0x5a6ff567 -> :sswitch_b
        -0x5a6ff55d -> :sswitch_a
        -0x5a6ff528 -> :sswitch_9
        -0x5a6ff4ed -> :sswitch_8
        -0x5a6ff4c9 -> :sswitch_7
        -0x5a6ff48a -> :sswitch_6
        -0x5a6ff43f -> :sswitch_5
        -0x5a6ff434 -> :sswitch_4
        -0x38a64173 -> :sswitch_3
        -0x19de8af0 -> :sswitch_2
        0x2347f80f -> :sswitch_1
        0x68f2bcf3 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getContainerHeight(Lcom/cloud/tmc/integration/structure/PageContext;)I
    .locals 1

    .line 1
    const-string v0, "pageContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-gtz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/PageContext;->getActivity()Landroid/app/Activity;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->initWidthAndHeight(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    sget p1, Lcom/cloud/tmc/integration/utils/AppUtils;->SCREEN_HEIGHT:I

    .line 35
    .line 36
    return p1
.end method

.method public final getContainerWidth(Lcom/cloud/tmc/integration/structure/PageContext;)I
    .locals 1

    .line 1
    const-string v0, "pageContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-gtz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/PageContext;->getActivity()Landroid/app/Activity;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->initWidthAndHeight(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    sget p1, Lcom/cloud/tmc/integration/utils/AppUtils;->SCREEN_WIDTH:I

    .line 35
    .line 36
    return p1
.end method

.method public final getCurrentPackageEncryptionUrl(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "appModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    return-object p1
.end method

.method public final getCurrentPackageUniqueName(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "appModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getRoot()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string p1, "mainPkg"

    .line 27
    .line 28
    :goto_0
    return-object p1
.end method

.method public final getPackageDownloadUrl(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getMiniappSubtype()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkUesCommonresApp(Ljava/lang/Integer;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "AppUtils"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getCompatiblePackageUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "getPackageDownloadUrl: commonPackageUrl = "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getCompatiblePackageUrl()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v3, "getPackageDownloadUrl: packageUrl = "

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_0
    if-nez p1, :cond_2

    .line 75
    .line 76
    :cond_1
    const-string p1, ""

    .line 77
    .line 78
    :cond_2
    return-object p1
.end method

.method public final getPackageUniqueSign(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    const-string v3, ""

    .line 5
    .line 6
    const-string v4, "appModel"

    .line 7
    .line 8
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {v4, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :goto_0
    move-object v3, p1

    .line 24
    goto :goto_2

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const-string p3, "format(format, *args)"

    .line 28
    .line 29
    const-string v4, "%s|%s"

    .line 30
    .line 31
    if-eqz p2, :cond_3

    .line 32
    .line 33
    :try_start_1
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    move-object p1, v3

    .line 42
    :cond_1
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getRoot()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p2, :cond_2

    .line 47
    .line 48
    move-object p2, v3

    .line 49
    :cond_2
    new-array v5, v2, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object p1, v5, v1

    .line 52
    .line 53
    aput-object p2, v5, v0

    .line 54
    .line 55
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-nez p1, :cond_4

    .line 74
    .line 75
    move-object p1, v3

    .line 76
    :cond_4
    new-array p2, v2, [Ljava/lang/Object;

    .line 77
    .line 78
    aput-object p1, p2, v1

    .line 79
    .line 80
    const-string p1, "mainPkg"

    .line 81
    .line 82
    aput-object p1, p2, v0

    .line 83
    .line 84
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :goto_1
    invoke-static {v3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    :goto_2
    return-object v3
.end method

.method public final isHolaBrowser(Landroid/content/Context;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    const-string v0, "com.talpa.hibrowser"

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public final isLauncher(Landroid/content/Context;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public final isMovieBox(Landroid/content/Context;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p1, v0

    .line 16
    :goto_0
    const-string v1, "com.community.oneroom"

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    const-string v1, "com.community.moviebox"

    .line 26
    .line 27
    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    const-string v1, "com.community.mbox.afen"

    .line 34
    .line 35
    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    const-string v1, "com.community.mbox.affr"

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-static {p1, v1, v4, v3, v0}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    const-string v0, "com.community.mbox.ar"

    .line 52
    .line 53
    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    const-string v0, "com.community.mbox.id"

    .line 60
    .line 61
    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    const-string v0, "com.community.mbox.in"

    .line 68
    .line 69
    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    const-string v0, "com.community.mbox.ke"

    .line 76
    .line 77
    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    const-string v0, "com.community.mbox.mb"

    .line 84
    .line 85
    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_2

    .line 90
    .line 91
    const-string v0, "com.community.mbox.ng"

    .line 92
    .line 93
    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_2

    .line 98
    .line 99
    const-string v0, "com.community.mbox.ph"

    .line 100
    .line 101
    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_2

    .line 106
    .line 107
    const-string v0, "com.community.mbox.ru"

    .line 108
    .line 109
    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_2

    .line 114
    .line 115
    const-string v0, "com.community.mbox.sa"

    .line 116
    .line 117
    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_2

    .line 122
    .line 123
    const-string v0, "com.yomobigroup.chat"

    .line 124
    .line 125
    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_2

    .line 130
    .line 131
    const-string v0, "com.vskit.lite"

    .line 132
    .line 133
    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_1
    move v2, v4

    .line 141
    :cond_2
    :goto_1
    return v2
.end method

.method public final isSubPackageApp(Lcom/cloud/tmc/integration/model/AppModel;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/integration/utils/AppUtils;->subpackageIsEnable()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getSubPackageUrls()Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-lez p1, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    :catchall_0
    :cond_1
    return v0
.end method

.method public final isTspotBrowser(Landroid/content/Context;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    const-string v0, "com.transsion.tecnospot"

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public final queryMiniappCustomConfig(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 17
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 18
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppUtils;->miniappCustomConfig:Ljava/lang/String;

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 19
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 20
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkConfig:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 21
    const-string p1, "dark"

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "jsonObject.getAsJsonObject(\"dark\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkConfig:Ljava/lang/String;

    .line 22
    :cond_0
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkConfig:Ljava/lang/String;

    return-object p1

    .line 23
    :cond_1
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightConfig:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    .line 24
    const-string p1, "light"

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "jsonObject.getAsJsonObject(\"light\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightConfig:Ljava/lang/String;

    .line 25
    :cond_2
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightConfig:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 26
    :catchall_0
    const-string p1, ""

    return-object p1
.end method

.method public final queryMiniappCustomConfig(Landroid/content/Context;Lcom/cloud/tmc/integration/structure/AppLoadResult;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkConfig:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_2

    .line 4
    iget-object p1, p2, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pkgExts:Ljava/util/List;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;

    .line 6
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getDark()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "toJson(it.dark)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p2, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkConfig:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkConfig:Ljava/lang/String;

    return-object p1

    .line 9
    :cond_3
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightConfig:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_6

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-eqz p2, :cond_6

    .line 11
    iget-object p1, p2, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pkgExts:Ljava/util/List;

    if-eqz p1, :cond_6

    check-cast p1, Ljava/lang/Iterable;

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;

    .line 13
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getLight()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "toJson(it.light)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p2, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightConfig:Ljava/lang/String;

    goto :goto_1

    .line 15
    :cond_6
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightConfig:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 16
    :catchall_0
    const-string p1, ""

    return-object p1
.end method

.method public final queryMiniappCustomLaunchParams()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;",
            ">;"
        }
    .end annotation

    .line 16
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "launchParams"

    const-class v2, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_1

    .line 17
    :try_start_1
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkLaunchParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 19
    sget-object v3, Lcom/cloud/tmc/integration/utils/AppUtils;->miniappCustomConfig:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    .line 20
    const-string v3, "dark"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 21
    new-instance v2, Lcom/cloud/tmc/integration/utils/AppUtils$queryMiniappCustomLaunchParams$type$1;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/utils/AppUtils$queryMiniappCustomLaunchParams$type$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkLaunchParams:Ljava/util/HashMap;

    .line 23
    :cond_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkLaunchParams:Ljava/util/HashMap;

    return-object v0

    .line 24
    :cond_1
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightLaunchParams:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 25
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 26
    sget-object v3, Lcom/cloud/tmc/integration/utils/AppUtils;->miniappCustomConfig:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    .line 27
    const-string v3, "light"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 28
    new-instance v2, Lcom/cloud/tmc/integration/utils/AppUtils$queryMiniappCustomLaunchParams$type$2;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/utils/AppUtils$queryMiniappCustomLaunchParams$type$2;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightLaunchParams:Ljava/util/HashMap;

    .line 30
    :cond_2
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightLaunchParams:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final queryMiniappCustomLaunchParams(Lcom/cloud/tmc/integration/structure/AppLoadResult;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/AppLoadResult;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkLaunchParams:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 3
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pkgExts:Ljava/util/List;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;

    .line 6
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getPkg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getDark()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;->getLaunchParams()Ljava/util/HashMap;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    sput-object v2, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkLaunchParams:Ljava/util/HashMap;

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkLaunchParams:Ljava/util/HashMap;

    return-object p1

    .line 9
    :cond_3
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightLaunchParams:Ljava/util/HashMap;

    if-nez v1, :cond_6

    .line 10
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_6

    .line 11
    iget-object p1, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pkgExts:Ljava/util/List;

    if-eqz p1, :cond_6

    check-cast p1, Ljava/lang/Iterable;

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;

    .line 13
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getPkg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 14
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getLight()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;->getLaunchParams()Ljava/util/HashMap;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    sput-object v2, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightLaunchParams:Ljava/util/HashMap;

    goto :goto_2

    .line 15
    :cond_6
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightLaunchParams:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    return-object v0
.end method

.method public final queryMiniappCustomTabBar()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    .locals 3

    .line 8
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customTabBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 10
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppUtils;->miniappCustomConfig:Ljava/lang/String;

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 11
    const-string v2, "tabBar"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 12
    new-instance v2, Lcom/cloud/tmc/integration/utils/AppUtils$queryMiniappCustomTabBar$type$1;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/utils/AppUtils$queryMiniappCustomTabBar$type$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    sput-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customTabBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    .line 14
    :cond_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customTabBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final queryMiniappCustomTabBar(Lcom/cloud/tmc/integration/structure/AppLoadResult;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customTabBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pkgExts:Ljava/util/List;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;

    .line 5
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getPkg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getTarBar()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    move-result-object v1

    sput-object v1, Lcom/cloud/tmc/integration/utils/AppUtils;->customTabBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customTabBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    if-eqz p2, :cond_3

    .line 5
    .line 6
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x1a

    .line 16
    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLauncher(Landroid/content/Context;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    const-class p1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 33
    .line 34
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "miniKeyStorageAddHome"

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v4, "addHomeStatus_"

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-interface {p1, v1, v2, p2, v0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->queytShortcutBySystemApi(Landroid/content/Context;Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    goto :goto_1

    .line 69
    :goto_0
    const-string p2, "apputils"

    .line 70
    .line 71
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_1
    return v0
.end method

.method public final queytShortcutBySystemApi(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1a

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-lt v0, v1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/a;->a()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/init/b;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/init/c;->a(Landroid/content/pm/ShortcutManager;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/d5;->a(Landroid/content/pm/ShortcutManager;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "sm.pinnedShortcuts"

    .line 38
    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    move v0, v2

    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-ge v2, v1, :cond_0

    .line 48
    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/e5;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/f5;->a(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move v2, v0

    .line 71
    :cond_1
    return v2
.end method

.method public final reportStartTime(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "startType"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 12
    .line 13
    new-instance v7, Lcom/cloud/tmc/integration/utils/f;

    .line 14
    .line 15
    move-object v1, v7

    .line 16
    move-object v2, p1

    .line 17
    move-object v3, p4

    .line 18
    move-wide v4, p2

    .line 19
    move-object v6, p5

    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/integration/utils/f;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v7}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final updateMiniappCustomConfig(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->miniappCustomConfig:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
