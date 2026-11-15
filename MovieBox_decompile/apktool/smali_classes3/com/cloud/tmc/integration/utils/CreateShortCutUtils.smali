.class public final Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001DB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001e\u001a\u00020\u0004H\u0002J6\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u00042\u0008\u0008\u0002\u0010(\u001a\u00020\u001dH\u0007JJ\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030$2\u0006\u0010)\u001a\u00020\u00162\u0006\u0010\'\u001a\u00020\u00042\u0008\u0008\u0002\u0010(\u001a\u00020\u001d2\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010,\u001a\u00020+H\u0007J0\u0010-\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0008\u0010%\u001a\u0004\u0018\u00010.2\u0008\u0010/\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u00100\u001a\u0004\u0018\u000101H\u0002J&\u0010-\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0008\u0010%\u001a\u0004\u0018\u00010&2\n\u0008\u0002\u00100\u001a\u0004\u0018\u000101H\u0002J*\u00102\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010%\u001a\u00020.2\u0006\u00103\u001a\u00020\u00042\u0008\u00100\u001a\u0004\u0018\u000101H\u0002J\u0018\u00104\u001a\u00020+2\u0006\u0010!\u001a\u00020\"2\u0008\u00105\u001a\u0004\u0018\u00010\u0004J\u001a\u00106\u001a\u00020\u00042\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u00107\u001a\u00020\u0004H\u0002J \u00108\u001a\u00020 2\u0008\u00105\u001a\u0004\u0018\u00010\u00042\u0006\u00109\u001a\u00020\u001d2\u0006\u0010:\u001a\u00020\u0004J6\u0010;\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030$2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010(\u001a\u00020\u001d2\u0006\u0010\'\u001a\u00020\u0004H\u0003J4\u0010;\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030$2\u0006\u0010)\u001a\u00020\u00162\u0006\u0010(\u001a\u00020\u001d2\u0006\u0010\'\u001a\u00020\u0004H\u0003J&\u0010<\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030$2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0002J$\u0010<\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030$2\u0006\u0010)\u001a\u00020\u0016H\u0002J<\u0010=\u001a\u00020 2\u0006\u0010)\u001a\u00020\u00162\u0006\u0010\'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\"2\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030$2\u0006\u0010,\u001a\u00020+H\u0002J\u001a\u0010>\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0008\u00105\u001a\u0004\u0018\u00010\u0004H\u0002J\u001a\u0010?\u001a\u00020 2\u0006\u0010@\u001a\u00020A2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0002J\u0018\u0010?\u001a\u00020 2\u0006\u0010@\u001a\u00020A2\u0006\u0010)\u001a\u00020\u0016H\u0002J \u0010B\u001a\u00020+2\u0006\u0010!\u001a\u00020\"2\u0006\u0010C\u001a\u00020\u00042\u0008\u00100\u001a\u0004\u0018\u000101R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001d\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00120\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001d\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00160\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006E"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;",
        "",
        "()V",
        "KEY_ADD_HOME_FILE_PREFIX",
        "",
        "getKEY_ADD_HOME_FILE_PREFIX",
        "()Ljava/lang/String;",
        "KEY_APP_ID_MINIAPP_CENTER",
        "getKEY_APP_ID_MINIAPP_CENTER",
        "KEY_APP_ID_SHARP_NEWS",
        "getKEY_APP_ID_SHARP_NEWS",
        "TAG",
        "addHomeAppIdList",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "getAddHomeAppIdList",
        "()Ljava/util/concurrent/CopyOnWriteArrayList;",
        "addHomeData",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/cloud/tmc/integration/model/MiniAddHomeModel;",
        "getAddHomeData",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "appMap",
        "Lcom/cloud/tmc/integration/structure/App;",
        "getAppMap",
        "miniAppIconSet",
        "",
        "createIconBitmap",
        "Landroid/graphics/Bitmap;",
        "resId",
        "",
        "path",
        "createShortcut",
        "",
        "context",
        "Landroid/content/Context;",
        "scClass",
        "Ljava/lang/Class;",
        "appModel",
        "Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;",
        "fromLocation",
        "addHomeType",
        "app",
        "showConfirmDialog",
        "",
        "showSuccessToast",
        "downloadMiniAppIconFile",
        "Lcom/cloud/tmc/integration/model/AppModel;",
        "addhomeIconPath",
        "miniAppIconCallback",
        "Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;",
        "downloadMiniAppLogo",
        "miniAppIconPath",
        "getAddHomeStatus",
        "appId",
        "getBadgeLogo",
        "appName",
        "mobCreateShortcutEvent",
        "status",
        "desc",
        "postApi26CreateShortcut",
        "preApi26CreateShortcut",
        "requestAddHome",
        "saveAddHomeStatus",
        "setExtra",
        "intent",
        "Landroid/content/Intent;",
        "useDefaultAddScreenLogo",
        "logoUrl",
        "MiniAppIconCallback",
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
.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

.field private static final KEY_ADD_HOME_FILE_PREFIX:Ljava/lang/String;

.field private static final KEY_APP_ID_MINIAPP_CENTER:Ljava/lang/String;

.field private static final KEY_APP_ID_SHARP_NEWS:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CreateShortCutUtils"

.field private static final addHomeAppIdList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final addHomeData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/model/MiniAddHomeModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final appMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/structure/App;",
            ">;"
        }
    .end annotation
.end field

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
    new-instance v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->appMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->addHomeAppIdList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->miniAppIconSet:Ljava/util/Set;

    .line 28
    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->addHomeData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    const-string v0, "1000886706715795456"

    .line 37
    .line 38
    sput-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->KEY_APP_ID_MINIAPP_CENTER:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "1000497027976413184"

    .line 41
    .line 42
    sput-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->KEY_APP_ID_SHARP_NEWS:Ljava/lang/String;

    .line 43
    .line 44
    const-string v0, "miniapp_"

    .line 45
    .line 46
    sput-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->KEY_ADD_HOME_FILE_PREFIX:Ljava/lang/String;

    .line 47
    .line 48
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

.method public static synthetic a(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->downloadMiniAppIconFile$lambda$14(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$createIconBitmap(Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->createIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createIconBitmap(Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->createIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->downloadMiniAppIconFile$lambda$6(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->downloadMiniAppLogo$lambda$9(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final createIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/ImageUtils;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private final createIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/ImageUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static final createShortcut(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromLocation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->createShortcut$default(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public static final createShortcut(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    const-string p4, "context"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "scClass"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "appModel"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fromLocation"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final createShortcut(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/cloud/tmc/integration/structure/App;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 3
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromLocation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x70

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v9}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->createShortcut$default(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;IZZILjava/lang/Object;)V

    return-void
.end method

.method public static final createShortcut(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/cloud/tmc/integration/structure/App;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 4
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromLocation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x60

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v1 .. v9}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->createShortcut$default(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;IZZILjava/lang/Object;)V

    return-void
.end method

.method public static final createShortcut(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;IZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/cloud/tmc/integration/structure/App;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 5
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromLocation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v9}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->createShortcut$default(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;IZZILjava/lang/Object;)V

    return-void
.end method

.method public static final createShortcut(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/cloud/tmc/integration/structure/App;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 6
    const-string p4, "context"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "scClass"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "app"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fromLocation"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic createShortcut$default(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->createShortcut(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic createShortcut$default(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;IZZILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    and-int/lit8 v0, p7, 0x40

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v8, v0

    goto :goto_2

    :cond_2
    move v8, p6

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1
    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->createShortcut(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;IZZ)V

    return-void
.end method

.method private final downloadMiniAppIconFile(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)V
    .locals 11

    .line 1
    const-string v0, "CreateShortCutUtils"

    if-nez p2, :cond_1

    if-eqz p4, :cond_0

    :try_start_0
    invoke-interface {p4}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onFail()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 3
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 4
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getBaseMiniAppPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p4, :cond_2

    .line 6
    invoke-interface {p4, v8}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onSuccess(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 7
    :cond_3
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    sget-object v1, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->miniAppIconSet:Ljava/util/Set;

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    .line 9
    :cond_5
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 10
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_6
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 12
    const-string v2, "enableAddHomeUseAssets"

    const/4 v3, 0x1

    .line 13
    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    sget-object v1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v2, Lcom/cloud/tmc/integration/utils/h;

    move-object v5, v2

    move-object v6, p3

    move-object v7, p2

    move-object v9, p4

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/cloud/tmc/integration/utils/h;-><init>(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    goto :goto_3

    .line 15
    :cond_7
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not the default appId, download icon ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2, v8, p4}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->downloadMiniAppLogo(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)V

    goto :goto_3

    :cond_8
    :goto_1
    if-eqz p4, :cond_9

    .line 17
    invoke-interface {p4}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onFail()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-void

    .line 18
    :goto_2
    const-string p2, "Download icon file fail"

    invoke-static {v0, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p4, :cond_a

    .line 19
    invoke-interface {p4}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onFail()V

    :cond_a
    :goto_3
    return-void
.end method

.method private final downloadMiniAppIconFile(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)V
    .locals 4

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    .line 20
    :try_start_0
    invoke-interface {p3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onFail()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 22
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 23
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getBaseMiniAppPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p3, :cond_2

    .line 25
    invoke-interface {p3, v0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onSuccess(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 26
    :cond_3
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 27
    :cond_4
    sget-object v1, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->miniAppIconSet:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    .line 28
    :cond_5
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getAppId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 29
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_6
    sget-object v1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->NETWORK:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v2, Lcom/cloud/tmc/integration/utils/g;

    invoke-direct {v2, p1, p2, p3, v0}, Lcom/cloud/tmc/integration/utils/g;-><init>(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_7
    :goto_1
    if-eqz p3, :cond_8

    .line 31
    invoke-interface {p3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onFail()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-void

    .line 32
    :goto_2
    const-string p2, "CreateShortCutUtils"

    const-string v0, "Download icon file fail"

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p3, :cond_9

    .line 33
    invoke-interface {p3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onFail()V

    :cond_9
    :goto_3
    return-void
.end method

.method static synthetic downloadMiniAppIconFile$default(Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->downloadMiniAppIconFile(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)V

    return-void
.end method

.method static synthetic downloadMiniAppIconFile$default(Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->downloadMiniAppIconFile(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)V

    return-void
.end method

.method private static final downloadMiniAppIconFile$lambda$14(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "downloadMiniAppIconFile"

    .line 2
    .line 3
    const-string v1, "CreateShortCutUtils"

    .line 4
    .line 5
    const-string v2, "$context"

    .line 6
    .line 7
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "$miniAppIconPath"

    .line 11
    .line 12
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getLogoUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, ""

    .line 22
    .line 23
    invoke-static {v3, v4}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, p0, v3, p2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->useDefaultAddScreenLogo(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    :try_start_0
    const-class v3, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 32
    .line 33
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getLogoUrl()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {v5, v4}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-interface {v3, p0, v4}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    new-instance v6, Ljava/io/File;

    .line 54
    .line 55
    invoke-direct {v6, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 v9, 0x6

    .line 59
    const/4 v10, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    invoke-static/range {v5 .. v10}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->moveTo$default(Ljava/io/File;Ljava/io/File;ZZILjava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    if-eqz p0, :cond_0

    .line 69
    .line 70
    if-eqz p2, :cond_1

    .line 71
    .line 72
    invoke-interface {p2, p3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onSuccess(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_2

    .line 78
    :cond_0
    if-eqz p2, :cond_1

    .line 79
    .line 80
    invoke-interface {p2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onFail()V

    .line 81
    .line 82
    .line 83
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const/4 p0, 0x0

    .line 87
    :goto_1
    if-nez p0, :cond_3

    .line 88
    .line 89
    if-nez v2, :cond_3

    .line 90
    .line 91
    if-eqz p2, :cond_3

    .line 92
    .line 93
    invoke-interface {p2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onFail()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :cond_3
    :try_start_1
    sget-object p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->miniAppIconSet:Ljava/util/Set;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getAppId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_5

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getAppId()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    .line 114
    .line 115
    goto :goto_4

    .line 116
    :catchall_1
    move-exception p0

    .line 117
    invoke-static {v1, v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :goto_2
    :try_start_2
    invoke-static {v1, v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    if-nez v2, :cond_4

    .line 125
    .line 126
    if-eqz p2, :cond_4

    .line 127
    .line 128
    invoke-interface {p2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onFail()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :catchall_2
    move-exception p0

    .line 133
    goto :goto_5

    .line 134
    :cond_4
    :goto_3
    :try_start_3
    sget-object p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->miniAppIconSet:Ljava/util/Set;

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getAppId()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-eqz p2, :cond_5

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getAppId()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    .line 152
    .line 153
    :cond_5
    :goto_4
    return-void

    .line 154
    :goto_5
    :try_start_4
    sget-object p2, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->miniAppIconSet:Ljava/util/Set;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getAppId()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p3

    .line 164
    if-eqz p3, :cond_6

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getAppId()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 171
    .line 172
    .line 173
    goto :goto_6

    .line 174
    :catchall_3
    move-exception p1

    .line 175
    invoke-static {v1, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    :cond_6
    :goto_6
    throw p0
.end method

.method private static final downloadMiniAppIconFile$lambda$6(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, "$miniAppIconPath"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$context"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->takeIfNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "CreateShortCutUtils"

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    new-instance v1, Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string p4, "use miniapp package resouces icon ->"

    .line 40
    .line 41
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    if-eqz p3, :cond_0

    .line 55
    .line 56
    invoke-interface {p3, p0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onSuccess(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string v1, "encryptMD5ToString(appModel.logo)"

    .line 69
    .line 70
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string v1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    .line 80
    .line 81
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->KEY_ADD_HOME_FILE_PREFIX:Ljava/lang/String;

    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v3, "mini_offline/miniapp_addhome/"

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p0, ".png"

    .line 103
    .line 104
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {p0, p2}, Lcom/cloud/tmc/miniutils/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-eqz p0, :cond_3

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v2, "use assets icon ->"

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    sget-object p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->miniAppIconSet:Ljava/util/Set;

    .line 142
    .line 143
    check-cast p0, Ljava/util/Collection;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->a(Ljava/lang/Object;)Ljava/util/Collection;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-interface {p0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    if-eqz p3, :cond_2

    .line 157
    .line 158
    invoke-interface {p3, p2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :catchall_0
    move-exception p0

    .line 163
    goto :goto_1

    .line 164
    :cond_2
    :goto_0
    return-void

    .line 165
    :goto_1
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    :cond_3
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v2, "download icon ->"

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    sget-object p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 193
    .line 194
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->downloadMiniAppLogo(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method private final downloadMiniAppLogo(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->NETWORK:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/tmc/integration/utils/i;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p4, p3}, Lcom/cloud/tmc/integration/utils/i;-><init>(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final downloadMiniAppLogo$lambda$9(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "downloadMiniAppIconFile"

    .line 2
    .line 3
    const-string v1, "CreateShortCutUtils"

    .line 4
    .line 5
    const-string v2, "$context"

    .line 6
    .line 7
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "$appModel"

    .line 11
    .line 12
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "$miniAppIconPath"

    .line 16
    .line 17
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v4, ""

    .line 27
    .line 28
    invoke-static {v3, v4}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, p0, v3, p2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->useDefaultAddScreenLogo(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    :try_start_0
    const-class v3, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-static {v5, v4}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-interface {v3, p0, v4}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-eqz v5, :cond_2

    .line 57
    .line 58
    new-instance v6, Ljava/io/File;

    .line 59
    .line 60
    invoke-direct {v6, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v9, 0x6

    .line 64
    const/4 v10, 0x0

    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v8, 0x0

    .line 67
    invoke-static/range {v5 .. v10}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->moveTo$default(Ljava/io/File;Ljava/io/File;ZZILjava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-nez v2, :cond_1

    .line 72
    .line 73
    if-eqz p0, :cond_0

    .line 74
    .line 75
    if-eqz p2, :cond_1

    .line 76
    .line 77
    invoke-interface {p2, p3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onSuccess(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_2

    .line 83
    :cond_0
    if-eqz p2, :cond_1

    .line 84
    .line 85
    invoke-interface {p2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onFail()V

    .line 86
    .line 87
    .line 88
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    const/4 p0, 0x0

    .line 92
    :goto_1
    if-nez p0, :cond_3

    .line 93
    .line 94
    if-nez v2, :cond_3

    .line 95
    .line 96
    if-eqz p2, :cond_3

    .line 97
    .line 98
    invoke-interface {p2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onFail()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    :cond_3
    :try_start_1
    sget-object p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->miniAppIconSet:Ljava/util/Set;

    .line 102
    .line 103
    move-object p2, p0

    .line 104
    check-cast p2, Ljava/lang/Iterable;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-eqz p2, :cond_5

    .line 115
    .line 116
    check-cast p0, Ljava/util/Collection;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->a(Ljava/lang/Object;)Ljava/util/Collection;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :catchall_1
    move-exception p0

    .line 131
    invoke-static {v1, v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :goto_2
    :try_start_2
    invoke-static {v1, v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    if-nez v2, :cond_4

    .line 139
    .line 140
    if-eqz p2, :cond_4

    .line 141
    .line 142
    invoke-interface {p2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;->onFail()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :catchall_2
    move-exception p0

    .line 147
    goto :goto_5

    .line 148
    :cond_4
    :goto_3
    :try_start_3
    sget-object p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->miniAppIconSet:Ljava/util/Set;

    .line 149
    .line 150
    move-object p2, p0

    .line 151
    check-cast p2, Ljava/lang/Iterable;

    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-eqz p2, :cond_5

    .line 162
    .line 163
    check-cast p0, Ljava/util/Collection;

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->a(Ljava/lang/Object;)Ljava/util/Collection;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    .line 175
    .line 176
    :cond_5
    :goto_4
    return-void

    .line 177
    :goto_5
    :try_start_4
    sget-object p2, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->miniAppIconSet:Ljava/util/Set;

    .line 178
    .line 179
    move-object p3, p2

    .line 180
    check-cast p3, Ljava/lang/Iterable;

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-static {p3, v2}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p3

    .line 190
    if-eqz p3, :cond_6

    .line 191
    .line 192
    check-cast p2, Ljava/util/Collection;

    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-static {p2}, Lkotlin/jvm/internal/TypeIntrinsics;->a(Ljava/lang/Object;)Ljava/util/Collection;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-interface {p2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 203
    .line 204
    .line 205
    goto :goto_6

    .line 206
    :catchall_3
    move-exception p1

    .line 207
    invoke-static {v1, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    .line 209
    .line 210
    :cond_6
    :goto_6
    throw p0
.end method

.method private final getBadgeLogo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    return-object p2
.end method

.method private final postApi26CreateShortcut(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method private final postApi26CreateShortcut(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/structure/App;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/cloud/tmc/integration/structure/App;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    return-void
.end method

.method private final preApi26CreateShortcut(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;",
            ")V"
        }
    .end annotation

    .line 12
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 13
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x4000000

    .line 14
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    invoke-direct {p0, v0, p3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->setExtra(Landroid/content/Intent;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;)V

    .line 16
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 17
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    .line 18
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const-string v0, "duplicate"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 21
    new-instance v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;

    invoke-direct {v0, p2, p1, p3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$2;-><init>(Landroid/content/Intent;Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;)V

    invoke-direct {p0, p1, p3, v0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->downloadMiniAppIconFile(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)V

    return-void
.end method

.method private final preApi26CreateShortcut(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/structure/App;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/cloud/tmc/integration/structure/App;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appInfo"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/AppModel;

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 3
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x4000000

    .line 4
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    invoke-direct {p0, v1, p3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->setExtra(Landroid/content/Intent;Lcom/cloud/tmc/integration/structure/App;)V

    .line 6
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 7
    const-string p3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    const-string p3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    const-string p3, "duplicate"

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11
    new-instance p3, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$1;

    invoke-direct {p3, p2, p1, v0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$1;-><init>(Landroid/content/Intent;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    const-string p2, ""

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->downloadMiniAppIconFile(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)V

    return-void
.end method

.method private final requestAddHome(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/Class;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/App;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    :try_start_0
    const-class p5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    invoke-static {p5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p5

    .line 7
    check-cast p5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_SHORT_CUT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    new-instance v3, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v4, "object_id"

    .line 23
    .line 24
    const-string v5, "14"

    .line 25
    .line 26
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v4, "location"

    .line 30
    .line 31
    invoke-virtual {v3, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    invoke-interface {p5, v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p5

    .line 43
    if-eqz p5, :cond_0

    .line 44
    .line 45
    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->addHomeData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    .line 47
    new-instance v1, Lcom/cloud/tmc/integration/model/MiniAddHomeModel;

    .line 48
    .line 49
    invoke-direct {v1, p2, p3, p6}, Lcom/cloud/tmc/integration/model/MiniAddHomeModel;-><init>(Ljava/lang/String;IZ)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Lcom/cloud/tmc/integration/model/MiniAddHomeModel;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p4, p1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->saveAddHomeStatus(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string p3, "createShortcut ->"

    .line 75
    .line 76
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string p2, "CreateShortCutUtils"

    .line 87
    .line 88
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_2
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
    const-string p2, "CreateShortCutUtils"

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

.method private final setExtra(Landroid/content/Intent;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;->getAppId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    const-string p2, ""

    :cond_1
    const-string v0, "appId"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    const-string p2, "scene_id"

    const-string v0, "200008"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private final setExtra(Landroid/content/Intent;Lcom/cloud/tmc/integration/structure/App;)V
    .locals 1

    .line 1
    const-string v0, "appId"

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    const-string p2, "scene_id"

    const-string v0, "200008"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final getAddHomeAppIdList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->addHomeAppIdList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAddHomeData()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/model/MiniAddHomeModel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->addHomeData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAddHomeStatus(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLauncher(Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v3, "addHomeStatus_"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const-string v2, "miniKeyStorageAddHome"

    .line 50
    .line 51
    invoke-interface {v1, p1, v2, p2, v0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 61
    .line 62
    const-string v2, "showAddHome"

    .line 63
    .line 64
    invoke-interface {v1, p1, p2, v2, v0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    :goto_0
    return p1

    .line 69
    :cond_2
    :goto_1
    return v0
.end method

.method public final getAppMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/structure/App;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->appMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKEY_ADD_HOME_FILE_PREFIX()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->KEY_ADD_HOME_FILE_PREFIX:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKEY_APP_ID_MINIAPP_CENTER()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->KEY_APP_ID_MINIAPP_CENTER:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKEY_APP_ID_SHARP_NEWS()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->KEY_APP_ID_SHARP_NEWS:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final mobCreateShortcutEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "desc"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 13
    .line 14
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->ADD_MINI_APP_TO_DESKTOP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 15
    .line 16
    new-instance v2, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "add_mini_app_to_desktop_status"

    .line 22
    .line 23
    invoke-virtual {v2, v3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const-string p2, "add_mini_app_to_desktop_desc"

    .line 27
    .line 28
    invoke-virtual {v2, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    const-string p2, ""

    .line 34
    .line 35
    invoke-interface {v0, p1, v1, p2, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final useDefaultAddScreenLogo(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;)Z
    .locals 0

    .line 1
    const-string p3, "context"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "logoUrl"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1
.end method
