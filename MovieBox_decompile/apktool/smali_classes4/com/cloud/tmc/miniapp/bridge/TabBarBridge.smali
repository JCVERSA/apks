.class public final Lcom/cloud/tmc/miniapp/bridge/TabBarBridge;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/bridge/TabBarBridge$OooO00o;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/bridge/TabBarBridge$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/bridge/TabBarBridge$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/bridge/TabBarBridge$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/bridge/TabBarBridge;->Companion:Lcom/cloud/tmc/miniapp/bridge/TabBarBridge$OooO00o;

    .line 7
    .line 8
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

.method public final hideTabBar(Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "animation"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const-string v0, "errMsg"

    .line 10
    .line 11
    if-nez p1, :cond_2

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    const-string p1, "Parameter error: T10001"

    .line 16
    .line 17
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void

    .line 21
    :cond_2
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_4

    .line 26
    .line 27
    if-eqz p3, :cond_3

    .line 28
    .line 29
    const-string p1, "set tab item failed,it\'s not tab page: T10002"

    .line 30
    .line 31
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 32
    .line 33
    .line 34
    :cond_3
    return-void

    .line 35
    :cond_4
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/node/TabBarNode;->hideTabBar(Z)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_5

    .line 40
    .line 41
    const-string p2, "isApiShowTabBarEnabled"

    .line 42
    .line 43
    const-string v1, "hideTabBar"

    .line 44
    .line 45
    invoke-interface {p1, p2, v1}, Lcom/cloud/tmc/kernel/node/ValueStore;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    if-eqz p3, :cond_6

    .line 49
    .line 50
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 51
    .line 52
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string p2, "ok"

    .line 56
    .line 57
    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_5
    if-eqz p3, :cond_6

    .line 65
    .line 66
    const-string p1, "set tab item failed,please check the config: T10003"

    .line 67
    .line 68
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 69
    .line 70
    .line 71
    :cond_6
    :goto_1
    return-void
.end method

.method public final hideTabBarRedDot(Lcom/cloud/tmc/integration/structure/App;ILcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            intDefault = -0x1
            value = {
                "index"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const-string v0, "errMsg"

    .line 10
    .line 11
    if-eqz p1, :cond_6

    .line 12
    .line 13
    if-gez p2, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    if-eqz p3, :cond_2

    .line 23
    .line 24
    const-string p1, "set tab item failed,it\'s not tab page: T10002"

    .line 25
    .line 26
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    return-void

    .line 30
    :cond_3
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/node/TabBarNode;->hideTabBarRedDot(I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    if-eqz p3, :cond_5

    .line 37
    .line 38
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 39
    .line 40
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string p2, "ok"

    .line 44
    .line 45
    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    if-eqz p3, :cond_5

    .line 53
    .line 54
    const-string p1, "set tab item failed,please check the config: T10003"

    .line 55
    .line 56
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 57
    .line 58
    .line 59
    :cond_5
    :goto_1
    return-void

    .line 60
    :cond_6
    :goto_2
    if-eqz p3, :cond_7

    .line 61
    .line 62
    const-string p1, "Parameter error: T10001"

    .line 63
    .line 64
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 65
    .line 66
    .line 67
    :cond_7
    return-void
.end method

.method public final hideTabBarUnreadIcon(Lcom/cloud/tmc/integration/structure/App;ILcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            intDefault = -0x1
            value = {
                "index"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const-string v0, "errMsg"

    .line 10
    .line 11
    if-eqz p1, :cond_6

    .line 12
    .line 13
    if-gez p2, :cond_1

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    if-eqz p3, :cond_2

    .line 23
    .line 24
    const-string p1, "set tab item failed,it\'s not tab page: T10002"

    .line 25
    .line 26
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    return-void

    .line 30
    :cond_3
    :try_start_0
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/node/TabBarNode;->hideTabBarUnreadIcon(I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    if-eqz p3, :cond_5

    .line 37
    .line 38
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 39
    .line 40
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string p2, "ok"

    .line 44
    .line 45
    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    if-eqz p3, :cond_5

    .line 55
    .line 56
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 57
    .line 58
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string p2, "set tab item failed,please check the config: T10003"

    .line 62
    .line 63
    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :goto_1
    const-string p2, "TabBarBridge"

    .line 71
    .line 72
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    if-eqz p3, :cond_5

    .line 76
    .line 77
    const-string p1, "load tab bar fail, please check the config: T10005"

    .line 78
    .line 79
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 80
    .line 81
    .line 82
    :cond_5
    :goto_2
    return-void

    .line 83
    :cond_6
    :goto_3
    if-eqz p3, :cond_7

    .line 84
    .line 85
    const-string p1, "Parameter error: T10001"

    .line 86
    .line 87
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 88
    .line 89
    .line 90
    :cond_7
    return-void
.end method

.method public final loadTabBar(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 9
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "tabBarConfig"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "tabBarConfig"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v0

    .line 20
    :goto_0
    const-string v2, "Parameter error: T10001"

    .line 21
    .line 22
    const-string v3, "errMsg"

    .line 23
    .line 24
    if-eqz v1, :cond_f

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    goto/16 :goto_a

    .line 33
    .line 34
    :cond_1
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/4 v5, 0x0

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    iget-object v4, v4, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->tabBarManual()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v4, v5

    .line 51
    :goto_1
    if-nez v4, :cond_3

    .line 52
    .line 53
    const-string p1, "load tab bar fail, app.json is not config handleTabBarLoad as manual: T10004"

    .line 54
    .line 55
    invoke-static {v3, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v6, "load tab config: "

    .line 65
    .line 66
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const-string v6, "TabBarBridge"

    .line 77
    .line 78
    invoke-static {v6, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :try_start_0
    new-instance v4, Lcom/cloud/tmc/miniapp/bridge/TabBarBridge$loadTabBar$tabBar$1;

    .line 82
    .line 83
    invoke-direct {v4}, Lcom/cloud/tmc/miniapp/bridge/TabBarBridge$loadTabBar$tabBar$1;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    const-string v7, "object :\n               \u2026del.TabBarBean>() {}.type"

    .line 91
    .line 92
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p2, v4}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catchall_0
    move-exception p2

    .line 103
    const-string v4, "tabBarConfig json parse error"

    .line 104
    .line 105
    invoke-static {v6, v4, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    move-object p2, v0

    .line 109
    :goto_2
    if-nez p2, :cond_4

    .line 110
    .line 111
    const-string p1, "load tab bar fail, please check the config: T10005"

    .line 112
    .line 113
    invoke-static {v3, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_4
    iget-object v4, p2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->list:Ljava/util/List;

    .line 118
    .line 119
    const/4 v7, 0x1

    .line 120
    if-nez v4, :cond_5

    .line 121
    .line 122
    :goto_3
    move v4, v5

    .line 123
    goto :goto_5

    .line 124
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    const/4 v8, 0x2

    .line 129
    if-gt v8, v4, :cond_6

    .line 130
    .line 131
    const/4 v8, 0x6

    .line 132
    if-ge v4, v8, :cond_6

    .line 133
    .line 134
    move v4, v7

    .line 135
    goto :goto_4

    .line 136
    :cond_6
    move v4, v5

    .line 137
    :goto_4
    if-nez v4, :cond_7

    .line 138
    .line 139
    const-string v4, "The number of tabBarConfig list is not between 2 and 5"

    .line 140
    .line 141
    invoke-static {v6, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_7
    move v4, v7

    .line 146
    :goto_5
    if-nez v4, :cond_8

    .line 147
    .line 148
    const-string p1, "load tab bar fail, The number of dynamic configurations is not between 2 and 5: T10006"

    .line 149
    .line 150
    invoke-static {v3, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_8
    instance-of v4, p1, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 155
    .line 156
    if-eqz v4, :cond_9

    .line 157
    .line 158
    move-object v4, p1

    .line 159
    check-cast v4, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_9
    move-object v4, v0

    .line 163
    :goto_6
    if-eqz v4, :cond_a

    .line 164
    .line 165
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getmAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    :cond_a
    invoke-static {p2, v0, v7}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getTabBar(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/structure/AppLoadResult;Z)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    new-instance v4, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;

    .line 174
    .line 175
    invoke-direct {v4, v0}, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;-><init>(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)V

    .line 176
    .line 177
    .line 178
    const-class v8, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;

    .line 179
    .line 180
    invoke-interface {p1, v8, v4}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->list:Ljava/util/List;

    .line 184
    .line 185
    const/4 p2, -0x1

    .line 186
    if-eqz p1, :cond_c

    .line 187
    .line 188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_c

    .line 197
    .line 198
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    check-cast v4, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;

    .line 203
    .line 204
    iget-object v4, v4, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->pagePath:Ljava/lang/String;

    .line 205
    .line 206
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-eqz v4, :cond_b

    .line 215
    .line 216
    goto :goto_8

    .line 217
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_c
    move v5, p2

    .line 221
    :goto_8
    if-eq v5, p2, :cond_e

    .line 222
    .line 223
    invoke-interface {v1, v7}, Lcom/cloud/tmc/integration/structure/Page;->setTabPage(Z)V

    .line 224
    .line 225
    .line 226
    invoke-interface {v1, v0}, Lcom/cloud/tmc/integration/structure/Page;->loadTabBar(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)Z

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    new-instance p2, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v0, "load tab bar result: "

    .line 236
    .line 237
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-static {v6, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    if-eqz p1, :cond_d

    .line 251
    .line 252
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 253
    .line 254
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 255
    .line 256
    .line 257
    const-string p2, "ok"

    .line 258
    .line 259
    invoke-virtual {p1, v3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 263
    .line 264
    .line 265
    goto :goto_9

    .line 266
    :cond_d
    invoke-static {v3, v2, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 267
    .line 268
    .line 269
    :goto_9
    return-void

    .line 270
    :cond_e
    const-string p1, "lazy load tab bar"

    .line 271
    .line 272
    invoke-static {v6, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 276
    .line 277
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 278
    .line 279
    .line 280
    const-string p2, "lazy load tab bar: T10007"

    .line 281
    .line 282
    invoke-virtual {p1, v3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :cond_f
    :goto_a
    invoke-static {v3, v2, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 290
    .line 291
    .line 292
    return-void
.end method

.method public final offTabReselected(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

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
    const-string v1, "errMsg"

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    const-string p1, "Parameter error: T10001"

    .line 16
    .line 17
    invoke-static {v1, p1, p2}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void

    .line 21
    :cond_2
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_4

    .line 26
    .line 27
    if-eqz p2, :cond_3

    .line 28
    .line 29
    const-string p1, "set tab item failed,it\'s not tab page: T10002"

    .line 30
    .line 31
    invoke-static {v1, p1, p2}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 32
    .line 33
    .line 34
    :cond_3
    return-void

    .line 35
    :cond_4
    const-class v1, Lcom/cloud/tmc/integration/model/TabReSelectedStore;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-interface {p1, v1, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/cloud/tmc/integration/model/TabReSelectedStore;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    new-instance p1, Ljava/util/WeakHashMap;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_5
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/TabReSelectedStore;->getPageCache()Ljava/util/WeakHashMap;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_1
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 65
    .line 66
    if-eqz p1, :cond_6

    .line 67
    .line 68
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 69
    .line 70
    .line 71
    :cond_6
    if-eqz p2, :cond_7

    .line 72
    .line 73
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 74
    .line 75
    .line 76
    :cond_7
    return-void
.end method

.method public onFinalized()V
    .locals 2

    .line 1
    const-string v0, "TabBarBridge"

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
    const-string v0, "TabBarBridge"

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

.method public final onTabReselected(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

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
    const-string v1, "errMsg"

    .line 10
    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    const-string p1, "Parameter error: T10001"

    .line 16
    .line 17
    invoke-static {v1, p1, p2}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    if-eqz p2, :cond_2

    .line 21
    .line 22
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void

    .line 26
    :cond_3
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_6

    .line 31
    .line 32
    if-eqz p2, :cond_4

    .line 33
    .line 34
    const-string p1, "set tab item failed,it\'s not tab page: T10002"

    .line 35
    .line 36
    invoke-static {v1, p1, p2}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 37
    .line 38
    .line 39
    :cond_4
    if-eqz p2, :cond_5

    .line 40
    .line 41
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 42
    .line 43
    .line 44
    :cond_5
    return-void

    .line 45
    :cond_6
    const-class v1, Lcom/cloud/tmc/integration/model/TabReSelectedStore;

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    invoke-interface {p1, v1, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/cloud/tmc/integration/model/TabReSelectedStore;

    .line 53
    .line 54
    if-nez p1, :cond_7

    .line 55
    .line 56
    new-instance p1, Ljava/util/WeakHashMap;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_7
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/TabReSelectedStore;->getPageCache()Ljava/util/WeakHashMap;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_1
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 75
    .line 76
    if-eqz v1, :cond_8

    .line 77
    .line 78
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 79
    .line 80
    .line 81
    :cond_8
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final removeTabBarBadge(Lcom/cloud/tmc/integration/structure/App;ILcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            intDefault = -0x1
            value = {
                "index"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const-string v0, "errMsg"

    .line 10
    .line 11
    if-eqz p1, :cond_6

    .line 12
    .line 13
    if-gez p2, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    if-eqz p3, :cond_2

    .line 23
    .line 24
    const-string p1, "set tab item failed,it\'s not tab page: T10002"

    .line 25
    .line 26
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    return-void

    .line 30
    :cond_3
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/node/TabBarNode;->removeTabBarBadge(I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    if-eqz p3, :cond_5

    .line 37
    .line 38
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 39
    .line 40
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string p2, "ok"

    .line 44
    .line 45
    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    if-eqz p3, :cond_5

    .line 53
    .line 54
    const-string p1, "set tab item failed,please check the config: T10003"

    .line 55
    .line 56
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 57
    .line 58
    .line 59
    :cond_5
    :goto_1
    return-void

    .line 60
    :cond_6
    :goto_2
    if-eqz p3, :cond_7

    .line 61
    .line 62
    const-string p1, "Parameter error: T10001"

    .line 63
    .line 64
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 65
    .line 66
    .line 67
    :cond_7
    return-void
.end method

.method public final setTabBarBadge(Lcom/cloud/tmc/integration/structure/App;ILjava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            intDefault = -0x1
            value = {
                "index"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "text"
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
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    const-string v0, "errMsg"

    .line 15
    .line 16
    if-eqz p1, :cond_6

    .line 17
    .line 18
    if-ltz p2, :cond_6

    .line 19
    .line 20
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    if-eqz p4, :cond_2

    .line 34
    .line 35
    const-string p1, "set tab item failed,it\'s not tab page: T10002"

    .line 36
    .line 37
    invoke-static {v0, p1, p4}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void

    .line 41
    :cond_3
    invoke-interface {p1, p2, p3}, Lcom/cloud/tmc/kernel/node/TabBarNode;->setTabBarBadge(ILjava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    if-eqz p4, :cond_5

    .line 48
    .line 49
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 50
    .line 51
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string p2, "ok"

    .line 55
    .line 56
    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p4, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    if-eqz p4, :cond_5

    .line 64
    .line 65
    const-string p1, "set tab item failed,please check the config: T10003"

    .line 66
    .line 67
    invoke-static {v0, p1, p4}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 68
    .line 69
    .line 70
    :cond_5
    :goto_1
    return-void

    .line 71
    :cond_6
    :goto_2
    if-eqz p4, :cond_7

    .line 72
    .line 73
    const-string p1, "Parameter error: T10001"

    .line 74
    .line 75
    invoke-static {v0, p1, p4}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 76
    .line 77
    .line 78
    :cond_7
    return-void
.end method

.method public final setTabBarItem(Lcom/cloud/tmc/integration/structure/App;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "index"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "text"
            }
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "iconPath"
            }
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "selectedIconPath"
            }
        .end annotation
    .end param
    .param p6    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const-string v0, "errMsg"

    .line 10
    .line 11
    if-eqz p1, :cond_6

    .line 12
    .line 13
    if-gez p2, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    if-eqz p6, :cond_2

    .line 23
    .line 24
    const-string p1, "set tab item failed,it\'s not tab page: T10002"

    .line 25
    .line 26
    invoke-static {v0, p1, p6}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    return-void

    .line 30
    :cond_3
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/cloud/tmc/kernel/node/TabBarNode;->setTabBarItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    if-eqz p6, :cond_5

    .line 37
    .line 38
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 39
    .line 40
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string p2, "ok"

    .line 44
    .line 45
    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p6, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    if-eqz p6, :cond_5

    .line 53
    .line 54
    const-string p1, "set tab item failed,please check the config: T10003"

    .line 55
    .line 56
    invoke-static {v0, p1, p6}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 57
    .line 58
    .line 59
    :cond_5
    :goto_1
    return-void

    .line 60
    :cond_6
    :goto_2
    if-eqz p6, :cond_7

    .line 61
    .line 62
    const-string p1, "Parameter error: T10001"

    .line 63
    .line 64
    invoke-static {v0, p1, p6}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 65
    .line 66
    .line 67
    :cond_7
    return-void
.end method

.method public final setTabBarItems(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonArray;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/JsonArray;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "tabs"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const-string v0, "errMsg"

    .line 10
    .line 11
    if-eqz p1, :cond_6

    .line 12
    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    if-eqz p3, :cond_2

    .line 23
    .line 24
    const-string p1, "set tab item failed,it\'s not tab page: T10002"

    .line 25
    .line 26
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    return-void

    .line 30
    :cond_3
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/node/TabBarNode;->setTabBarItems(Lcom/google/gson/JsonArray;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    if-eqz p3, :cond_5

    .line 37
    .line 38
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 39
    .line 40
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string p2, "ok"

    .line 44
    .line 45
    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    if-eqz p3, :cond_5

    .line 53
    .line 54
    const-string p1, "set tab item failed,please check the config: T10003"

    .line 55
    .line 56
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 57
    .line 58
    .line 59
    :cond_5
    :goto_1
    return-void

    .line 60
    :cond_6
    :goto_2
    if-eqz p3, :cond_7

    .line 61
    .line 62
    const-string p1, "Parameter error: T10001"

    .line 63
    .line 64
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 65
    .line 66
    .line 67
    :cond_7
    return-void
.end method

.method public final setTabBarStyle(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "color"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "selectedColor"
            }
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "backgroundColor"
            }
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "borderStyle"
            }
        .end annotation
    .end param
    .param p6    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "color"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "selectedColor"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "backgroundColor"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "borderStyle"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    const-string v0, "errMsg"

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    if-eqz p6, :cond_1

    .line 34
    .line 35
    const-string p1, "Parameter error: T10001"

    .line 36
    .line 37
    invoke-static {v0, p1, p6}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void

    .line 41
    :cond_2
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_4

    .line 46
    .line 47
    if-eqz p6, :cond_3

    .line 48
    .line 49
    const-string p1, "set tab item failed,it\'s not tab page: T10002"

    .line 50
    .line 51
    invoke-static {v0, p1, p6}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    return-void

    .line 55
    :cond_4
    invoke-static {p2}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->takeIfNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {p3}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->takeIfNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-static {p4}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->takeIfNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p4

    .line 67
    invoke-static {p5}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->takeIfNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p5

    .line 71
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/cloud/tmc/kernel/node/TabBarNode;->setTabBarStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    if-eqz p6, :cond_6

    .line 78
    .line 79
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 80
    .line 81
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string p2, "ok"

    .line 85
    .line 86
    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p6, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    if-eqz p6, :cond_6

    .line 94
    .line 95
    const-string p1, "set tab item failed,please check the config: T10003"

    .line 96
    .line 97
    invoke-static {v0, p1, p6}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 98
    .line 99
    .line 100
    :cond_6
    :goto_1
    return-void
.end method

.method public final showTabBar(Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "animation"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const-string v0, "errMsg"

    .line 10
    .line 11
    if-nez p1, :cond_2

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    const-string p1, "Parameter error: T10001"

    .line 16
    .line 17
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void

    .line 21
    :cond_2
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_4

    .line 26
    .line 27
    if-eqz p3, :cond_3

    .line 28
    .line 29
    const-string p1, "set tab item failed,it\'s not tab page: T10002"

    .line 30
    .line 31
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 32
    .line 33
    .line 34
    :cond_3
    return-void

    .line 35
    :cond_4
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/node/TabBarNode;->showTabBar(Z)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_5

    .line 40
    .line 41
    const-string p2, "isApiShowTabBarEnabled"

    .line 42
    .line 43
    const-string v1, "showTabBar"

    .line 44
    .line 45
    invoke-interface {p1, p2, v1}, Lcom/cloud/tmc/kernel/node/ValueStore;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    if-eqz p3, :cond_6

    .line 49
    .line 50
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 51
    .line 52
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string p2, "ok"

    .line 56
    .line 57
    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_5
    if-eqz p3, :cond_6

    .line 65
    .line 66
    const-string p1, "set tab item failed,please check the config: T10003"

    .line 67
    .line 68
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 69
    .line 70
    .line 71
    :cond_6
    :goto_1
    return-void
.end method

.method public final showTabBarRedDot(Lcom/cloud/tmc/integration/structure/App;ILcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            intDefault = -0x1
            value = {
                "index"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const-string v0, "errMsg"

    .line 10
    .line 11
    if-eqz p1, :cond_6

    .line 12
    .line 13
    if-gez p2, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    if-eqz p3, :cond_2

    .line 23
    .line 24
    const-string p1, "set tab item failed,it\'s not tab page: T10002"

    .line 25
    .line 26
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    return-void

    .line 30
    :cond_3
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/node/TabBarNode;->showTabBarRedDot(I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    if-eqz p3, :cond_5

    .line 37
    .line 38
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 39
    .line 40
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string p2, "ok"

    .line 44
    .line 45
    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    if-eqz p3, :cond_5

    .line 53
    .line 54
    const-string p1, "set tab item failed,please check the config: T10003"

    .line 55
    .line 56
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 57
    .line 58
    .line 59
    :cond_5
    :goto_1
    return-void

    .line 60
    :cond_6
    :goto_2
    if-eqz p3, :cond_7

    .line 61
    .line 62
    const-string p1, "Parameter error: T10001"

    .line 63
    .line 64
    invoke-static {v0, p1, p3}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 65
    .line 66
    .line 67
    :cond_7
    return-void
.end method

.method public final showTabBarUnreadIcon(Lcom/cloud/tmc/integration/structure/App;ILjava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            intDefault = -0x1
            value = {
                "index"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "iconPath"
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
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const-string v0, "Parameter error: T10001"

    .line 10
    .line 11
    const-string v1, "errMsg"

    .line 12
    .line 13
    if-eqz p1, :cond_8

    .line 14
    .line 15
    if-gez p2, :cond_1

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_3

    .line 23
    .line 24
    if-eqz p4, :cond_2

    .line 25
    .line 26
    const-string p1, "set tab item failed,it\'s not tab page: T10002"

    .line 27
    .line 28
    invoke-static {v1, p1, p4}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void

    .line 32
    :cond_3
    if-eqz p3, :cond_6

    .line 33
    .line 34
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_4

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_4
    :try_start_0
    new-instance v0, Lcom/cloud/tmc/miniapp/bridge/TabBarBridge$OooO0O0;

    .line 42
    .line 43
    invoke-direct {v0, p4}, Lcom/cloud/tmc/miniapp/bridge/TabBarBridge$OooO0O0;-><init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, p2, p3, v0}, Lcom/cloud/tmc/kernel/node/TabBarNode;->showTabBarUnreadIcon(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    const-string p2, "TabBarBridge"

    .line 52
    .line 53
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    if-eqz p4, :cond_5

    .line 57
    .line 58
    const-string p1, "load tab bar fail, please check the config: T10005"

    .line 59
    .line 60
    invoke-static {v1, p1, p4}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 61
    .line 62
    .line 63
    :cond_5
    :goto_1
    return-void

    .line 64
    :cond_6
    :goto_2
    if-eqz p4, :cond_7

    .line 65
    .line 66
    invoke-static {v1, v0, p4}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 67
    .line 68
    .line 69
    :cond_7
    return-void

    .line 70
    :cond_8
    :goto_3
    if-eqz p4, :cond_9

    .line 71
    .line 72
    invoke-static {v1, v0, p4}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 73
    .line 74
    .line 75
    :cond_9
    return-void
.end method
