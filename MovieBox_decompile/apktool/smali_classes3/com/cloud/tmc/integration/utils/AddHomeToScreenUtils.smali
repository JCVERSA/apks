.class public final Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ<\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0007J2\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00042\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016J \u0010\u0018\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J \u0010\u0019\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u0004H\u0002J>\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00042\u0008\u0008\u0002\u0010!\u001a\u00020\u00082\u0008\u0008\u0002\u0010\"\u001a\u00020\u00082\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ&\u0010#\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010%H\u0002J*\u0010&\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\'\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\u00042\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0002J\u001a\u0010)\u001a\u00020\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J<\u0010*\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\n\u0010+\u001a\u0006\u0012\u0002\u0008\u00030,2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u0008H\u0003J<\u0010.\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010-\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\n\u0010+\u001a\u0006\u0012\u0002\u0008\u00030,2\u0006\u0010\"\u001a\u00020\u0008H\u0002JB\u0010/\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u00100\u001a\u0002012\u0006\u0010\u0014\u001a\u00020\u00042\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0003J\u001a\u00102\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0002J\u0018\u00103\u001a\u00020\u000e2\u0006\u00104\u001a\u0002052\u0006\u0010\u0011\u001a\u00020\u0004H\u0002J0\u00106\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;",
        "",
        "()V",
        "TAG",
        "",
        "miniAppIconSet",
        "",
        "checkAddhomeShowStatus",
        "",
        "type",
        "",
        "app",
        "Lcom/cloud/tmc/integration/structure/App;",
        "checkAndDownloadIcon",
        "",
        "context",
        "Landroid/content/Context;",
        "appId",
        "appName",
        "appLogoUrl",
        "currentLogoUrlMd5",
        "callback",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "checkAndUpdateScreenIcon",
        "checkAppLogoIsChanged",
        "checkAppNameIsChanged",
        "createIconBitmap",
        "Landroid/graphics/Bitmap;",
        "path",
        "createShortcutByLogoUrl",
        "bean",
        "Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;",
        "fromLocation",
        "showConfirmDialog",
        "showSuccessToast",
        "downloadMiniAppIconFile",
        "miniAppIconCallback",
        "Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;",
        "downloadMiniAppLogo",
        "appModel",
        "miniAppIconPath",
        "getBadgeLogo",
        "postApi26CreateShortcut",
        "scClass",
        "Ljava/lang/Class;",
        "addHomeType",
        "requestAddHome",
        "requestUpdateAddhomeIcon",
        "sm",
        "Landroid/content/pm/ShortcutManager;",
        "saveAddHomeStatus",
        "setExtra",
        "intent",
        "Landroid/content/Intent;",
        "updateAddHomeNameAndIcon",
        "appLogoMd5",
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
.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;

.field private static final TAG:Ljava/lang/String;

.field private static final miniAppIconSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;

    .line 7
    .line 8
    const-string v0, "AddHomeToScreenUtils"

    .line 9
    .line 10
    sput-object v0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->miniAppIconSet:Ljava/util/Set;

    .line 18
    .line 19
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

.method public static synthetic a(Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->downloadMiniAppIconFile$lambda$6(Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$createIconBitmap(Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->createIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getBadgeLogo(Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->getBadgeLogo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$requestAddHome(Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/Class;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->requestAddHome(Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/Class;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$requestUpdateAddhomeIcon(Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutManager;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->requestUpdateAddhomeIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutManager;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->updateAddHomeNameAndIcon$lambda$14(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->downloadMiniAppLogo$lambda$9(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic checkAndDownloadIcon$default(Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p7, 0x20

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p6, 0x0

    .line 6
    :cond_0
    move-object v6, p6

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p4

    .line 12
    move-object v5, p5

    .line 13
    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->checkAndDownloadIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic checkAndUpdateScreenIcon$default(Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x10

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p5, 0x0

    .line 6
    :cond_0
    move-object v5, p5

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p4

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->checkAndUpdateScreenIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final checkAppLogoIsChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 9
    .line 10
    const-string v2, "miniKeyStorageAddHome"

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v4, "addHomeLogo_"

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-interface {v1, p1, v2, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    const-string p1, ""

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    xor-int/lit8 p1, p1, 0x1

    .line 45
    .line 46
    sget-object p2, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    new-instance p3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v1, "checkAppLogoIsChanged return "

    .line 54
    .line 55
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    return p1

    .line 69
    :goto_1
    sget-object p2, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    const-string p3, "checkAppLogoIsChanged:"

    .line 72
    .line 73
    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    return v0
.end method

.method private final checkAppNameIsChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 9
    .line 10
    const-string v2, "miniKeyStorageAddHome"

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v4, "addHomeName_"

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-interface {v1, p1, v2, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    const-string p1, ""

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    xor-int/lit8 p1, p1, 0x1

    .line 45
    .line 46
    sget-object p2, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    new-instance p3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v1, "checkAppNameIsChanged -> return "

    .line 54
    .line 55
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    return p1

    .line 69
    :goto_1
    sget-object p2, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    const-string p3, "checkAppNameIsChanged"

    .line 72
    .line 73
    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    return v0
.end method

.method private final createIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/ImageUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public static synthetic createShortcutByLogoUrl$default(Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;ZZLcom/cloud/tmc/integration/structure/App;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p8, p7, 0x8

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    move v4, p4

    .line 7
    and-int/lit8 p4, p7, 0x10

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const/4 p5, 0x1

    .line 12
    :cond_1
    move v5, p5

    .line 13
    and-int/lit8 p4, p7, 0x20

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    const/4 p6, 0x0

    .line 18
    :cond_2
    move-object v6, p6

    .line 19
    move-object v0, p0

    .line 20
    move-object v1, p1

    .line 21
    move-object v2, p2

    .line 22
    move-object v3, p3

    .line 23
    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->createShortcutByLogoUrl(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;ZZLcom/cloud/tmc/integration/structure/App;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private final downloadMiniAppIconFile(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)V
    .locals 5

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onFail()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppLogoUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-class v1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getBaseMiniAppPath(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v1, Ljava/io/File;

    .line 62
    .line 63
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    if-eqz p3, :cond_2

    .line 73
    .line 74
    invoke-interface {p3, v0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onSuccess(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void

    .line 78
    :cond_3
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_5

    .line 87
    .line 88
    if-eqz p3, :cond_4

    .line 89
    .line 90
    invoke-interface {p3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onFail()V

    .line 91
    .line 92
    .line 93
    :cond_4
    return-void

    .line 94
    :cond_5
    sget-object v1, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->miniAppIconSet:Ljava/util/Set;

    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_6

    .line 105
    .line 106
    return-void

    .line 107
    :cond_6
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 115
    .line 116
    const-string v2, "enableAddHomeUseAssets"

    .line 117
    .line 118
    const/4 v3, 0x1

    .line 119
    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_7

    .line 124
    .line 125
    sget-object v1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 126
    .line 127
    new-instance v2, Lcom/cloud/tmc/integration/utils/e;

    .line 128
    .line 129
    invoke-direct {v2, p2, v0, p3, p1}, Lcom/cloud/tmc/integration/utils/e;-><init>(Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Landroid/content/Context;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_7
    sget-object v1, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v4, "Not the default appId, download icon ->"

    .line 148
    .line 149
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->downloadMiniAppLogo(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :goto_1
    sget-object p2, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 167
    .line 168
    const-string v0, "Download icon file fail"

    .line 169
    .line 170
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    .line 172
    .line 173
    if-eqz p3, :cond_8

    .line 174
    .line 175
    invoke-interface {p3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onFail()V

    .line 176
    .line 177
    .line 178
    :cond_8
    :goto_2
    return-void
.end method

.method static synthetic downloadMiniAppIconFile$default(Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->downloadMiniAppIconFile(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final downloadMiniAppIconFile$lambda$6(Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, "$miniAppIconPath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$context"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppLogoUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "encryptMD5ToString(bean.appLogoUrl)"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getKEY_ADD_HOME_FILE_PREFIX()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "mini_offline/miniapp_addhome/"

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, ".png"

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0, p1}, Lcom/cloud/tmc/miniutils/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    sget-object v0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v3, "use assets icon ->"

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    sget-object v0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->miniAppIconSet:Ljava/util/Set;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    if-eqz p2, :cond_0

    .line 108
    .line 109
    invoke-interface {p2, p1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    goto :goto_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 116
    :goto_1
    sget-object v1, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    :cond_1
    sget-object v0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v3, "download icon ->"

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sget-object v0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;

    .line 148
    .line 149
    invoke-direct {v0, p3, p0, p1, p2}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->downloadMiniAppLogo(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method private final downloadMiniAppLogo(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->NETWORK:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/tmc/integration/utils/d;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p4, p3}, Lcom/cloud/tmc/integration/utils/d;-><init>(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final downloadMiniAppLogo$lambda$9(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "downloadMiniAppIconFile"

    .line 2
    .line 3
    const-string v1, "$context"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "$appModel"

    .line 9
    .line 10
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "$miniAppIconPath"

    .line 14
    .line 15
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppLogoUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, ""

    .line 25
    .line 26
    invoke-static {v2, v3}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, p0, v2, p2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->useDefaultAddScreenLogo(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    :try_start_0
    const-class v2, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppLogoUrl()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v4, v3}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-interface {v2, p0, v3}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    new-instance v5, Ljava/io/File;

    .line 57
    .line 58
    invoke-direct {v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 v8, 0x6

    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v7, 0x0

    .line 65
    invoke-static/range {v4 .. v9}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->moveTo$default(Ljava/io/File;Ljava/io/File;ZZILjava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    if-eqz p0, :cond_0

    .line 72
    .line 73
    if-eqz p2, :cond_1

    .line 74
    .line 75
    invoke-interface {p2, p3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onSuccess(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_2

    .line 81
    :cond_0
    if-eqz p2, :cond_1

    .line 82
    .line 83
    invoke-interface {p2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onFail()V

    .line 84
    .line 85
    .line 86
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const/4 p0, 0x0

    .line 90
    :goto_1
    if-nez p0, :cond_3

    .line 91
    .line 92
    if-nez v1, :cond_3

    .line 93
    .line 94
    if-eqz p2, :cond_3

    .line 95
    .line 96
    invoke-interface {p2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onFail()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    :cond_3
    :try_start_1
    sget-object p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->miniAppIconSet:Ljava/util/Set;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-eqz p2, :cond_5

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :catchall_1
    move-exception p0

    .line 120
    sget-object p1, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {p1, v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :goto_2
    :try_start_2
    sget-object p3, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {p3, v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    if-nez v1, :cond_4

    .line 132
    .line 133
    if-eqz p2, :cond_4

    .line 134
    .line 135
    invoke-interface {p2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onFail()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :catchall_2
    move-exception p0

    .line 140
    goto :goto_5

    .line 141
    :cond_4
    :goto_3
    :try_start_3
    sget-object p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->miniAppIconSet:Ljava/util/Set;

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-eqz p2, :cond_5

    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 158
    .line 159
    .line 160
    :cond_5
    :goto_4
    return-void

    .line 161
    :goto_5
    :try_start_4
    sget-object p2, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->miniAppIconSet:Ljava/util/Set;

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p3

    .line 171
    if-eqz p3, :cond_6

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 178
    .line 179
    .line 180
    goto :goto_6

    .line 181
    :catchall_3
    move-exception p1

    .line 182
    sget-object p2, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    :cond_6
    :goto_6
    throw p0
.end method

.method private final getBadgeLogo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    return-object p2
.end method

.method private final postApi26CreateShortcut(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;ILjava/lang/String;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;",
            "I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v12, p1

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual/range {p3 .. p3}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v4, 0x1a

    .line 11
    .line 12
    if-lt v2, v4, :cond_2

    .line 13
    .line 14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/a;->a()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/api/init/b;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    if-eqz v7, :cond_2

    .line 27
    .line 28
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/api/init/c;->a(Landroid/content/pm/ShortcutManager;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    sget-object v2, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 35
    .line 36
    invoke-virtual {v2, p1, v3}, Lcom/cloud/tmc/integration/utils/AppUtils;->queytShortcutBySystemApi(Landroid/content/Context;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    const-class v2, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    sget v4, Lcom/cloud/tmc/integration/R$string;->smallapp_already_exist:I

    .line 55
    .line 56
    invoke-virtual/range {p3 .. p3}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    const/4 v6, 0x1

    .line 61
    new-array v6, v6, [Ljava/lang/Object;

    .line 62
    .line 63
    aput-object v5, v6, v1

    .line 64
    .line 65
    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v2, v1}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->toast(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-object v1, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual/range {p3 .. p3}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lcom/cloud/tmc/integration/structure/App;

    .line 87
    .line 88
    if-eqz v1, :cond_0

    .line 89
    .line 90
    const-class v2, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    .line 91
    .line 92
    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    .line 97
    .line 98
    if-eqz v1, :cond_0

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;->getStore()Ljava/util/HashMap;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_0

    .line 105
    .line 106
    invoke-virtual/range {p3 .. p3}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 115
    .line 116
    if-eqz v1, :cond_0

    .line 117
    .line 118
    new-instance v2, Lcom/google/gson/JsonObject;

    .line 119
    .line 120
    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 121
    .line 122
    .line 123
    sget-object v3, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 124
    .line 125
    const-string v4, "\u53d1\u9001 addHomeToScreen callback received"

    .line 126
    .line 127
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 131
    .line 132
    const-string v4, "isExist"

    .line 133
    .line 134
    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 138
    .line 139
    .line 140
    :cond_0
    return-void

    .line 141
    :cond_1
    new-instance v6, Landroid/content/Intent;

    .line 142
    .line 143
    const-string v4, "com.cloud.tmc.miniapp.shortcut"

    .line 144
    .line 145
    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    new-instance v4, Landroid/content/ComponentName;

    .line 149
    .line 150
    const-class v5, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;

    .line 151
    .line 152
    invoke-direct {v4, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    const-string v4, "msg"

    .line 159
    .line 160
    const-string v5, "approve"

    .line 161
    .line 162
    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    const-string v4, "miniAppId"

    .line 166
    .line 167
    invoke-virtual/range {p3 .. p3}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    const/4 v4, 0x2

    .line 175
    const/4 v5, 0x0

    .line 176
    invoke-static {v2, p1, v1, v4, v5}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkShowCustomAddhomeDialog$default(Lcom/cloud/tmc/integration/utils/AppUtils;Landroid/content/Context;ZILjava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    new-instance v5, Landroid/content/Intent;

    .line 181
    .line 182
    move-object/from16 v1, p2

    .line 183
    .line 184
    invoke-direct {v5, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    .line 189
    .line 190
    invoke-virtual/range {p3 .. p3}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-direct {p0, v5, v1}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->setExtra(Landroid/content/Intent;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    new-instance v13, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;

    .line 198
    .line 199
    move-object v1, v13

    .line 200
    move-object v2, p1

    .line 201
    move-object/from16 v4, p3

    .line 202
    .line 203
    move/from16 v8, p6

    .line 204
    .line 205
    move/from16 v9, p4

    .line 206
    .line 207
    move-object/from16 v11, p5

    .line 208
    .line 209
    invoke-direct/range {v1 .. v11}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ShortcutManager;ZIZLjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    move-object/from16 v1, p3

    .line 213
    .line 214
    invoke-direct {p0, p1, v1, v13}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->downloadMiniAppIconFile(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)V

    .line 215
    .line 216
    .line 217
    :cond_2
    return-void
.end method

.method private final requestAddHome(Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/Class;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_SHORT_CUT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 14
    .line 15
    const-string v3, ""

    .line 16
    .line 17
    new-instance v4, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v5, "object_id"

    .line 23
    .line 24
    const-string v6, "14"

    .line 25
    .line 26
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v5, "location"

    .line 30
    .line 31
    invoke-virtual {v4, v5, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v1, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAddHomeData()Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Lcom/cloud/tmc/integration/model/MiniAddHomeModel;

    .line 50
    .line 51
    invoke-direct {v2, p2, p3, p6}, Lcom/cloud/tmc/integration/model/MiniAddHomeModel;-><init>(Ljava/lang/String;IZ)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/cloud/tmc/integration/model/MiniAddHomeModel;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {p0, p4, v0}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->saveAddHomeStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    const/16 v1, 0x1a

    .line 70
    .line 71
    if-lt v0, v1, :cond_0

    .line 72
    .line 73
    move-object v0, p0

    .line 74
    move-object v1, p4

    .line 75
    move-object v2, p5

    .line 76
    move-object v3, p1

    .line 77
    move v4, p3

    .line 78
    move-object v5, p2

    .line 79
    move v6, p6

    .line 80
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->postApi26CreateShortcut(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    sget-object p2, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 86
    .line 87
    new-instance p3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string p4, "createShortcut ->"

    .line 93
    .line 94
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_0
    :goto_0
    return-void
.end method

.method private final requestUpdateAddhomeIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutManager;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 8

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;->getLauncherShortCutActivity()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "get(StartActivityProxy::\u2026.launcherShortCutActivity"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroid/content/Intent;

    .line 19
    .line 20
    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v1, p2}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->setExtra(Landroid/content/Intent;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/z4;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0, p3}, Lcom/cloud/hisavana/sdk/h5;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p0, p4}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->createIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    invoke-static {p4}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    invoke-static {v0, p4}, Lcom/cloud/hisavana/sdk/j5;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    invoke-direct {p0, p1, p3}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->getBadgeLogo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p4, v0}, Lcom/cloud/tmc/integration/utils/a;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object p4

    .line 57
    invoke-static {p4, v1}, Lcom/cloud/hisavana/sdk/g5;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p4

    .line 61
    new-instance v0, Landroid/os/PersistableBundle;

    .line 62
    .line 63
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v1, "appId"

    .line 67
    .line 68
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v1, "scene_id"

    .line 72
    .line 73
    const-string v2, "200008"

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v1, "extraAddHomeShowDialog"

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    invoke-static {p4, v0}, Lcom/cloud/hisavana/sdk/i5;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object p4

    .line 88
    invoke-static {p4}, Lcom/cloud/hisavana/sdk/k5;->a(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/pm/ShortcutInfo;

    .line 89
    .line 90
    .line 91
    move-result-object p4

    .line 92
    const-string v0, "Builder(context, appId)\n\u2026 )\n            }).build()"

    .line 93
    .line 94
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 98
    .line 99
    const/16 v1, 0x1a

    .line 100
    .line 101
    if-lt v0, v1, :cond_0

    .line 102
    .line 103
    const/4 v0, 0x1

    .line 104
    new-array v0, v0, [Landroid/content/pm/ShortcutInfo;

    .line 105
    .line 106
    aput-object p4, v0, v2

    .line 107
    .line 108
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object p4

    .line 112
    invoke-static {p5, p4}, Lcom/cloud/tmc/integration/utils/b;->a(Landroid/content/pm/ShortcutManager;Ljava/util/List;)Z

    .line 113
    .line 114
    .line 115
    const/16 v6, 0x10

    .line 116
    .line 117
    const/4 v7, 0x0

    .line 118
    const/4 v5, 0x0

    .line 119
    move-object v0, p0

    .line 120
    move-object v1, p1

    .line 121
    move-object v2, p2

    .line 122
    move-object v3, p3

    .line 123
    move-object v4, p6

    .line 124
    invoke-static/range {v0 .. v7}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->updateAddHomeNameAndIcon$default(Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    if-eqz p7, :cond_0

    .line 128
    .line 129
    invoke-interface {p7}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 130
    .line 131
    .line 132
    :cond_0
    return-void
.end method

.method private final saveAddHomeStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLauncher(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p2, :cond_2

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 26
    .line 27
    const-string v1, "showAddHome"

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    sget-object p2, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    return-void
.end method

.method private final setExtra(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    const-string p2, "scene_id"

    .line 7
    .line 8
    const-string v0, "200008"

    .line 9
    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic updateAddHomeNameAndIcon$default(Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x10

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
    move-object v2, p2

    .line 11
    move-object v3, p3

    .line 12
    move-object v4, p4

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->updateAddHomeNameAndIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final updateAddHomeNameAndIcon$lambda$14(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "miniKeyStorageAddHome"

    .line 2
    .line 3
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 4
    .line 5
    const-string v2, "$appId"

    .line 6
    .line 7
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "$appLogoMd5"

    .line 11
    .line 12
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "$appName"

    .line 16
    .line 17
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "$context"

    .line 21
    .line 22
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v2, "$appLogoUrl"

    .line 26
    .line 27
    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    sget-object p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    const-string p1, "updateAddHomeNameAndIcon appId is empty"

    .line 39
    .line 40
    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    invoke-static {p4}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :cond_1
    sget-object p4, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v3, "updateAddHomeNameAndIcon -> appid: "

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v3, ",appName:"

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v3, ",appLogoMd5:"

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {p4, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p4

    .line 98
    check-cast p4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 99
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v3, "addHomeName_"

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-interface {p4, p3, v0, v2, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    check-cast p2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 125
    .line 126
    new-instance p4, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v1, "addHomeLogo_"

    .line 132
    .line 133
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-interface {p2, p3, v0, p0, p1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :goto_0
    sget-object p1, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 148
    .line 149
    const-string p2, "updateAddHomeNameAndIcon"

    .line 150
    .line 151
    invoke-static {p1, p2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    :goto_1
    return-void
.end method


# virtual methods
.method public final checkAddhomeShowStatus(ILcom/cloud/tmc/integration/structure/App;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/16 v1, 0x64

    .line 6
    .line 7
    if-gt p1, v1, :cond_1

    .line 8
    .line 9
    invoke-interface {p2, v1}, Lcom/cloud/tmc/integration/structure/App;->getAddHomeShowStatus(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v1, v0

    .line 15
    :goto_0
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    return v2

    .line 19
    :cond_2
    const/16 v3, 0x5a

    .line 20
    .line 21
    if-gt p1, v3, :cond_3

    .line 22
    .line 23
    invoke-interface {p2, v3}, Lcom/cloud/tmc/integration/structure/App;->getAddHomeShowStatus(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    :cond_3
    if-eqz v1, :cond_4

    .line 28
    .line 29
    return v2

    .line 30
    :cond_4
    const/16 v3, 0x53

    .line 31
    .line 32
    if-gt p1, v3, :cond_5

    .line 33
    .line 34
    invoke-interface {p2, v3}, Lcom/cloud/tmc/integration/structure/App;->getAddHomeShowStatus(I)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    :cond_5
    if-eqz v1, :cond_6

    .line 39
    .line 40
    return v2

    .line 41
    :cond_6
    const/16 v3, 0x52

    .line 42
    .line 43
    if-gt p1, v3, :cond_7

    .line 44
    .line 45
    invoke-interface {p2, v3}, Lcom/cloud/tmc/integration/structure/App;->getAddHomeShowStatus(I)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    :cond_7
    if-eqz v1, :cond_8

    .line 50
    .line 51
    return v2

    .line 52
    :cond_8
    const/16 v4, 0x51

    .line 53
    .line 54
    if-gt p1, v4, :cond_9

    .line 55
    .line 56
    invoke-interface {p2, v3}, Lcom/cloud/tmc/integration/structure/App;->getAddHomeShowStatus(I)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    :cond_9
    if-eqz v1, :cond_a

    .line 61
    .line 62
    return v2

    .line 63
    :cond_a
    return v0
.end method

.method public final checkAndDownloadIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 11

    .line 1
    move-object v7, p1

    .line 2
    move-object v2, p2

    .line 3
    move-object v3, p3

    .line 4
    move-object v0, p4

    .line 5
    const-string v1, "context"

    .line 6
    .line 7
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "appId"

    .line 11
    .line 12
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "appName"

    .line 16
    .line 17
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "appLogoUrl"

    .line 21
    .line 22
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "currentLogoUrlMd5"

    .line 26
    .line 27
    move-object/from16 v6, p5

    .line 28
    .line 29
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/a;->a()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/api/init/b;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/api/init/c;->a(Landroid/content/pm/ShortcutManager;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    :cond_0
    move-object v0, p0

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-class v4, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 63
    .line 64
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 69
    .line 70
    invoke-interface {v4, p2}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getBaseMiniAppPath(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    .line 75
    .line 76
    new-instance v9, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    new-instance v1, Ljava/io/File;

    .line 95
    .line 96
    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    move-object v0, p0

    .line 106
    move-object v1, p1

    .line 107
    move-object v2, p2

    .line 108
    move-object v3, p3

    .line 109
    move-object v4, v8

    .line 110
    move-object/from16 v6, p5

    .line 111
    .line 112
    move-object/from16 v7, p6

    .line 113
    .line 114
    invoke-direct/range {v0 .. v7}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->requestUpdateAddhomeIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutManager;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_2
    new-instance v9, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    .line 119
    .line 120
    invoke-direct {v9, p2, p3, p4}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    new-instance v10, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$checkAndDownloadIcon$1;

    .line 124
    .line 125
    move-object v0, v10

    .line 126
    move-object v1, p1

    .line 127
    move-object v2, p2

    .line 128
    move-object v3, p3

    .line 129
    move-object v4, v5

    .line 130
    move-object/from16 v5, p5

    .line 131
    .line 132
    move-object/from16 v6, p6

    .line 133
    .line 134
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$checkAndDownloadIcon$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutManager;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 135
    .line 136
    .line 137
    move-object v0, p0

    .line 138
    invoke-direct {p0, p1, v9, v8, v10}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->downloadMiniAppLogo(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :goto_0
    sget-object v1, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 143
    .line 144
    const-string v2, "checkAndUpdateScreenIcon: not support"

    .line 145
    .line 146
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    if-eqz p6, :cond_3

    .line 150
    .line 151
    invoke-interface/range {p6 .. p6}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 152
    .line 153
    .line 154
    :cond_3
    return-void
.end method

.method public final checkAndUpdateScreenIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 7

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
    const-string v0, "appName"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "appLogoUrl"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v1, 0x1a

    .line 24
    .line 25
    if-ge v0, v1, :cond_1

    .line 26
    .line 27
    sget-object p1, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    const-string p2, "checkAndUpdateScreenIcon: api < 26"

    .line 30
    .line 31
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    if-eqz p5, :cond_0

    .line 35
    .line 36
    invoke-interface {p5}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    sget-object v2, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 45
    .line 46
    invoke-virtual {v2, p1, p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->queytShortcutBySystemApi(Landroid/content/Context;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    const-string v3, "addHomeStatus_"

    .line 51
    .line 52
    const-string v4, "miniKeyStorageAddHome"

    .line 53
    .line 54
    const-class v5, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 55
    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    :try_start_1
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    check-cast p3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 63
    .line 64
    new-instance p4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-interface {p3, p1, v4, p4, v0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    if-eqz p5, :cond_2

    .line 84
    .line 85
    invoke-interface {p5}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 86
    .line 87
    .line 88
    :cond_2
    sget-object p1, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    new-instance p3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string p4, "checkAndUpdateScreenIcon -> "

    .line 96
    .line 97
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p2, " is not add to home screen"

    .line 104
    .line 105
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_3
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 121
    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    const/4 v5, 0x1

    .line 138
    invoke-interface {v2, p1, v4, v3, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 139
    .line 140
    .line 141
    sget-object v2, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 142
    .line 143
    const-string v3, "enableUpdateAddHome"

    .line 144
    .line 145
    invoke-virtual {v2, v3, v5}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-nez v2, :cond_5

    .line 150
    .line 151
    sget-object p1, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 152
    .line 153
    const-string p2, "updateScreenIcon: enable is false, return"

    .line 154
    .line 155
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    if-eqz p5, :cond_4

    .line 159
    .line 160
    invoke-interface {p5}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 161
    .line 162
    .line 163
    :cond_4
    return-void

    .line 164
    :cond_5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-nez v2, :cond_7

    .line 169
    .line 170
    if-eqz p5, :cond_6

    .line 171
    .line 172
    invoke-interface {p5}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 173
    .line 174
    .line 175
    :cond_6
    sget-object p1, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 176
    .line 177
    const-string p2, "checkAndUpdateScreenIcon -> appId is null"

    .line 178
    .line 179
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_7
    invoke-static {p4}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-nez v2, :cond_8

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_8
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-nez v2, :cond_a

    .line 199
    .line 200
    :goto_1
    sget-object p1, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 201
    .line 202
    new-instance p2, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    const-string v0, "checkAndUpdateScreenIcon -> appName or logo is null,appName->"

    .line 208
    .line 209
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string p3, ",appLogoUrl->"

    .line 216
    .line 217
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    if-eqz p5, :cond_9

    .line 231
    .line 232
    invoke-interface {p5}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 233
    .line 234
    .line 235
    :cond_9
    return-void

    .line 236
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->checkAppNameIsChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    const-string v3, "currentLogoUrlMd5"

    .line 241
    .line 242
    if-nez v2, :cond_b

    .line 243
    .line 244
    :try_start_2
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-direct {p0, p1, p2, v5}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->checkAppLogoIsChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-eqz v2, :cond_c

    .line 252
    .line 253
    :cond_b
    if-lt v0, v1, :cond_c

    .line 254
    .line 255
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    move-object v0, p0

    .line 259
    move-object v1, p1

    .line 260
    move-object v2, p2

    .line 261
    move-object v3, p3

    .line 262
    move-object v4, p4

    .line 263
    move-object v6, p5

    .line 264
    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->checkAndDownloadIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    .line 266
    .line 267
    goto :goto_3

    .line 268
    :goto_2
    sget-object p2, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 269
    .line 270
    const-string p3, "checkAndUpdateScreenIcon"

    .line 271
    .line 272
    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    .line 274
    .line 275
    :cond_c
    :goto_3
    return-void
.end method

.method public final createShortcutByLogoUrl(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;ZZLcom/cloud/tmc/integration/structure/App;)V
    .locals 17

    .line 1
    move-object/from16 v7, p1

    .line 2
    .line 3
    move-object/from16 v8, p6

    .line 4
    .line 5
    const-string v0, "context"

    .line 6
    .line 7
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "bean"

    .line 11
    .line 12
    move-object/from16 v1, p2

    .line 13
    .line 14
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "fromLocation"

    .line 18
    .line 19
    move-object/from16 v9, p3

    .line 20
    .line 21
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 25
    .line 26
    move/from16 v2, p4

    .line 27
    .line 28
    invoke-virtual {v0, v7, v2}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkShowCustomAddhomeDialog(Landroid/content/Context;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    sget-object v3, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v5, "showAddHomeCustomDialog = "

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-class v4, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    .line 55
    .line 56
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    .line 61
    .line 62
    invoke-interface {v4}, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;->getLauncherShortCutActivity()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const-string v4, "get(StartActivityProxy::\u2026.launcherShortCutActivity"

    .line 67
    .line 68
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 v4, -0x1

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    const/16 v10, 0x5a

    .line 75
    .line 76
    move-object/from16 v11, p0

    .line 77
    .line 78
    invoke-virtual {v11, v10, v8}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->checkAddhomeShowStatus(ILcom/cloud/tmc/integration/structure/App;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    sget-object v2, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Lcom/cloud/tmc/integration/structure/App;

    .line 99
    .line 100
    if-eqz v2, :cond_0

    .line 101
    .line 102
    const-class v4, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    .line 103
    .line 104
    invoke-interface {v2, v4}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    .line 109
    .line 110
    if-eqz v2, :cond_0

    .line 111
    .line 112
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;->getStore()Ljava/util/HashMap;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    if-eqz v2, :cond_0

    .line 117
    .line 118
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 127
    .line 128
    if-eqz v2, :cond_0

    .line 129
    .line 130
    new-instance v4, Lcom/google/gson/JsonObject;

    .line 131
    .line 132
    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v5, "\u53d1\u9001 addHomeToScreen callback received"

    .line 136
    .line 137
    invoke-static {v3, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v7, v1}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const-string v1, "isExist"

    .line 153
    .line 154
    invoke-virtual {v4, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v2, v4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 158
    .line 159
    .line 160
    :cond_0
    return-void

    .line 161
    :cond_1
    const-class v0, Lcom/cloud/tmc/integration/proxy/DialogProxy;

    .line 162
    .line 163
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    move-object v12, v0

    .line 168
    check-cast v12, Lcom/cloud/tmc/integration/proxy/DialogProxy;

    .line 169
    .line 170
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v13

    .line 174
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppLogoUrl()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v14

    .line 178
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v15

    .line 182
    new-instance v16, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;

    .line 183
    .line 184
    move-object/from16 v0, v16

    .line 185
    .line 186
    move-object/from16 v1, p2

    .line 187
    .line 188
    move-object/from16 v2, p3

    .line 189
    .line 190
    move v3, v4

    .line 191
    move-object/from16 v4, p1

    .line 192
    .line 193
    move/from16 v6, p5

    .line 194
    .line 195
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;-><init>(Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/Class;Z)V

    .line 196
    .line 197
    .line 198
    move-object v0, v12

    .line 199
    move-object/from16 v1, p1

    .line 200
    .line 201
    move-object v2, v13

    .line 202
    move-object v3, v14

    .line 203
    move-object v4, v15

    .line 204
    move-object/from16 v5, p3

    .line 205
    .line 206
    move-object/from16 v6, v16

    .line 207
    .line 208
    invoke-interface/range {v0 .. v6}, Lcom/cloud/tmc/integration/proxy/DialogProxy;->showAddHomeConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;)V

    .line 209
    .line 210
    .line 211
    if-eqz v8, :cond_3

    .line 212
    .line 213
    invoke-interface {v8, v10}, Lcom/cloud/tmc/integration/structure/App;->updateAddHomeShowStatus(I)V

    .line 214
    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_2
    move-object/from16 v11, p0

    .line 218
    .line 219
    move-object/from16 v0, p0

    .line 220
    .line 221
    move-object/from16 v1, p2

    .line 222
    .line 223
    move-object/from16 v2, p3

    .line 224
    .line 225
    move v3, v4

    .line 226
    move-object/from16 v4, p1

    .line 227
    .line 228
    move/from16 v6, p5

    .line 229
    .line 230
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->requestAddHome(Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/Class;Z)V

    .line 231
    .line 232
    .line 233
    :cond_3
    :goto_0
    return-void
.end method

.method public final updateAddHomeNameAndIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

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
    const-string v0, "appName"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "appLogoMd5"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "appLogoUrl"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 27
    .line 28
    new-instance v7, Lcom/cloud/tmc/integration/utils/c;

    .line 29
    .line 30
    move-object v1, v7

    .line 31
    move-object v2, p2

    .line 32
    move-object v3, p4

    .line 33
    move-object v4, p3

    .line 34
    move-object v5, p1

    .line 35
    move-object v6, p5

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/integration/utils/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v7}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    sget-object p2, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p3, "updateAddHomeNameAndIcon"

    .line 47
    .line 48
    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method
