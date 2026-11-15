.class public final Lcom/cloud/tmc/integration/bridge/ShareBridge;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/bridge/ShareBridge$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J\"\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J\u0008\u0010\u000e\u001a\u00020\u0004H\u0016J\u0008\u0010\u000f\u001a\u00020\u0004H\u0016J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J4\u0010\u0012\u001a\u00020\u00042\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0001\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0001\u0010\u0015\u001a\u00020\r2\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\nH\u0007\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/bridge/ShareBridge;",
        "Lcom/cloud/tmc/kernel/extension/BridgeExtension;",
        "()V",
        "doShareFile",
        "",
        "context",
        "Landroid/content/Context;",
        "shareFile",
        "Ljava/io/File;",
        "callback",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "doShareText",
        "shareContent",
        "",
        "onFinalized",
        "onInitialized",
        "permit",
        "Lcom/cloud/tmc/kernel/security/Permission;",
        "systemShare",
        "app",
        "Lcom/cloud/tmc/integration/structure/App;",
        "shareFilePath",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/bridge/ShareBridge$Companion;

.field private static final TAG:Ljava/lang/String; = "ShareBridge"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/bridge/ShareBridge$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/bridge/ShareBridge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/bridge/ShareBridge;->Companion:Lcom/cloud/tmc/integration/bridge/ShareBridge$Companion;

    .line 8
    .line 9
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

.method private final doShareFile(Landroid/content/Context;Ljava/io/File;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2

    .line 1
    const-string v0, "STORAGE_WRITE"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permissionGroup([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/cloud/tmc/integration/bridge/ShareBridge$doShareFile$1;

    .line 12
    .line 13
    invoke-direct {v1, p1, p2, p3}, Lcom/cloud/tmc/integration/bridge/ShareBridge$doShareFile$1;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final doShareText(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 6

    .line 1
    new-instance v3, Lcom/cloud/tmc/integration/bridge/ShareBridge$doShareText$1;

    .line 2
    .line 3
    invoke-direct {v3, p3}, Lcom/cloud/tmc/integration/bridge/ShareBridge$doShareText$1;-><init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 4
    .line 5
    .line 6
    const/4 v4, 0x4

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    move-object v0, p1

    .line 10
    move-object v1, p2

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->shareText$default(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/share/OnShareListener;ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public synthetic callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/kernel/extension/a;->a(Lcom/cloud/tmc/kernel/extension/BridgeExtension;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onFinalized()V
    .locals 2

    .line 1
    const-string v0, "ShareBridge"

    .line 2
    .line 3
    const-string v1, "onFinalized"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onInitialized()V
    .locals 2

    .line 1
    const-string v0, "ShareBridge"

    .line 2
    .line 3
    const-string v1, "onInitialized"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final systemShare(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "shareContent"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "shareFilePath"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "shareContent"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "shareFilePath"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    const-string v1, "errMsg"

    .line 26
    .line 27
    if-eqz v0, :cond_5

    .line 28
    .line 29
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-lez v2, :cond_2

    .line 47
    .line 48
    invoke-static {p1, p3}, Lcom/cloud/tmc/integration/utils/FileUtil;->getFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    if-eqz p3, :cond_2

    .line 59
    .line 60
    invoke-direct {p0, v0, p1, p4}, Lcom/cloud/tmc/integration/bridge/ShareBridge;->doShareFile(Landroid/content/Context;Ljava/io/File;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-lez p1, :cond_3

    .line 69
    .line 70
    invoke-direct {p0, v0, p2, p4}, Lcom/cloud/tmc/integration/bridge/ShareBridge;->doShareText(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    if-eqz p4, :cond_4

    .line 75
    .line 76
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 77
    .line 78
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string p2, "ShareContent is empty: S10003"

    .line 82
    .line 83
    invoke-virtual {p1, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p4, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    return-void

    .line 90
    :cond_5
    :goto_1
    if-eqz p4, :cond_6

    .line 91
    .line 92
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 93
    .line 94
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string p2, "Parameter error: S10001"

    .line 98
    .line 99
    invoke-virtual {p1, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {p4, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 103
    .line 104
    .line 105
    :cond_6
    return-void
.end method
