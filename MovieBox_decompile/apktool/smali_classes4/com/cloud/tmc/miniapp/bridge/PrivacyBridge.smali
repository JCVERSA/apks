.class public final Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge$OooO00o;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge$OooO00o;

.field public static final OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;",
            ">;"
        }
    .end annotation
.end field

.field public static final OooO0OO:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/dialog/o0O0O00;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final OooO00o:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->Companion:Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge$OooO00o;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO0OO:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "PrivacyBridge"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO00o:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic access$getPrivacyDialogMap$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPrivacySimpleDialogMap$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO0OO:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
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

.method public final checkEnableMfah(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const/4 v0, 0x1

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
    const-string v2, "enableForceAddHome"

    .line 11
    .line 12
    invoke-interface {v1, v2, v0}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :catchall_0
    if-eqz p1, :cond_0

    .line 17
    .line 18
    :try_start_1
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "status"

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_1
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-interface {p0, p1, v0, v1}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    return-void
.end method

.method public final checkLoadingSuccess(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
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
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

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
    if-nez p2, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO00o:Ljava/lang/String;

    .line 12
    .line 13
    const-string p2, "checkLoadingSuccess callback is null"

    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    if-eqz v0, :cond_4

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getHideMiniAppLoadingStatus()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO00o:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "checkLoadingSuccesshide MiniAppLoadingStatus is true"

    .line 37
    .line 38
    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    .line 42
    .line 43
    invoke-virtual {p1, v0, p2}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->notifyHideLoading(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO00o:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v2, "checkLoadingSuccess appId: "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    .line 70
    .line 71
    invoke-virtual {p1, v0, p2}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->addHideLoadingCallback(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_4
    :goto_1
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 76
    .line 77
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v0, "error"

    .line 81
    .line 82
    const-string v1, "appid is null"

    .line 83
    .line 84
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final getForceAddHomeList(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "appId"
            }
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "[]"

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_0
    const-class p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 19
    .line 20
    const-string v1, "mfahList"

    .line 21
    .line 22
    invoke-interface {p1, v1, v0}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :catchall_0
    if-eqz p2, :cond_1

    .line 27
    .line 28
    :try_start_1
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "forceList"

    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_1
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-interface {p0, p2, p1, v0}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 58
    .line 59
    const-string v0, "appId is null or empty"

    .line 60
    .line 61
    invoke-interface {p0, p2, v0, p1}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final getPrivacyWhiteList(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "appId"
            }
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "[]"

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_0
    const-class p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 19
    .line 20
    const-string v1, "privacyAgreementDialogWhiteListV4"

    .line 21
    .line 22
    invoke-interface {p1, v1, v0}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :catchall_0
    if-eqz p2, :cond_1

    .line 27
    .line 28
    :try_start_1
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "privacyWhiteList"

    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_1
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-interface {p0, p2, p1, v0}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 58
    .line 59
    const-string v0, "appId is null or empty"

    .line 60
    .line 61
    invoke-interface {p0, p2, v0, p1}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final isAutoAgreePrivacy(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 5
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
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "autoAgree"

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 18
    .line 19
    const-string v2, "autoAgreePrivacy"

    .line 20
    .line 21
    sget-object v3, Lcom/cloud/tmc/miniapp/CommonAppUtils;->INSTANCE:Lcom/cloud/tmc/miniapp/CommonAppUtils;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/CommonAppUtils;->getDefaultAutoAgreePrivacy()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v1, v2, v4}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3, p1}, Lcom/cloud/tmc/miniapp/CommonAppUtils;->isTargetApp(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void

    .line 59
    :cond_1
    if-eqz p2, :cond_2

    .line 60
    .line 61
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    :catchall_0
    :cond_2
    return-void
.end method

.method public onFinalized()V
    .locals 0

    .line 1
    return-void
.end method

.method public onInitialized()V
    .locals 0

    .line 1
    return-void
.end method

.method public permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final privacyAgreementDialogHide(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 5
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
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    sget-object v0, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    sget-object v0, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    .line 54
    .line 55
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/4 v1, 0x0

    .line 67
    :goto_1
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->noticeClickAllowBtn(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-class v0, Lcom/cloud/tmc/integration/point/PermissionDialogPoint;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/cloud/tmc/integration/point/PermissionDialogPoint;

    .line 81
    .line 82
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-string v2, "app.appId"

    .line 87
    .line 88
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getStartToken()J

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/point/PermissionDialogPoint;->privacyDialogDismiss(Ljava/lang/String;J)V

    .line 96
    .line 97
    .line 98
    if-eqz p2, :cond_2

    .line 99
    .line 100
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 101
    .line 102
    .line 103
    :cond_2
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 110
    .line 111
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const-string v2, "appstart_add_click"

    .line 116
    .line 117
    new-instance v3, Landroid/os/Bundle;

    .line 118
    .line 119
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v4, "miniappid"

    .line 123
    .line 124
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string p1, "type"

    .line 132
    .line 133
    const-string v4, "3"

    .line 134
    .line 135
    invoke-virtual {v3, p1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 139
    .line 140
    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v1, "appId:"

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string p1, " cant foud privacyDialog exist"

    .line 162
    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    goto :goto_3

    .line 171
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    goto :goto_3

    .line 180
    :cond_4
    const-string p1, "app error"

    .line 181
    .line 182
    :goto_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 183
    .line 184
    invoke-interface {p0, p2, p1, v0}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method public final privacyAgreementDialogShow(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 23
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "showLogo"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "title"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "titleMaxLine"
            }
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "baseContent"
            }
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyPolocyContent"
            }
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "userAgreementContent"
            }
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "buttonText"
            }
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyPolocyUrl"
            }
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "userAgreementUrl"
            }
        .end annotation
    .end param
    .param p10    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "showAddHome"
            }
        .end annotation
    .end param
    .param p11    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "showPrivacy"
            }
        .end annotation
    .end param
    .param p12    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "isNewUser"
            }
        .end annotation
    .end param
    .param p13    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "useCustomPrivacyContent"
            }
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "gdprNoticeContent"
            }
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyCancelTv"
            }
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyAgreeTv"
            }
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "addhomeCancelTv"
            }
        .end annotation
    .end param
    .param p18    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p19    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p18

    move-object/from16 v3, p19

    const-string v0, "gdprNoticeContent"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyCancelTv"

    move-object/from16 v14, p15

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyAgreeTv"

    move-object/from16 v13, p16

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addhomeCancelTv"

    move-object/from16 v12, p17

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_15

    .line 1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_d

    :cond_0
    if-eqz p11, :cond_6

    if-eqz p4, :cond_5

    .line 2
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_4

    .line 3
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p6, :cond_3

    .line 4
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "userAgreementContent is null or empty"

    invoke-interface {v1, v3, v2, v0}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    .line 6
    :cond_4
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "privacyPolocyContent is null or empty"

    invoke-interface {v1, v3, v2, v0}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    .line 7
    :cond_5
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "baseContent is null or empty"

    invoke-interface {v1, v3, v2, v0}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :cond_6
    if-eqz p7, :cond_14

    .line 8
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_c

    :cond_7
    const/4 v0, 0x1

    if-eqz p3, :cond_8

    .line 9
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v6, v4

    goto :goto_2

    :cond_8
    move v6, v0

    .line 10
    :goto_2
    :try_start_0
    sget-object v4, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    if-eqz v2, :cond_9

    invoke-interface/range {p18 .. p18}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_9
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v4, v5}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->addInterectMFAH(Ljava/lang/String;)V

    if-eqz v2, :cond_13

    .line 11
    invoke-interface/range {p18 .. p18}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 12
    iget-object v5, v1, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO00o:Ljava/lang/String;

    invoke-interface/range {p18 .. p18}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "privacyAgreementDialogShow -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v5, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface/range {p18 .. p18}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 14
    invoke-interface/range {p18 .. p18}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 15
    :cond_a
    invoke-interface/range {p18 .. p18}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_b
    new-instance v5, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    invoke-direct {v5, v4, v2, v3}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;-><init>(Landroid/content/Context;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, ""

    if-nez p4, :cond_c

    move-object v7, v4

    goto :goto_4

    :cond_c
    move-object/from16 v7, p4

    :goto_4
    if-nez p5, :cond_d

    move-object v8, v4

    goto :goto_5

    :cond_d
    move-object/from16 v8, p5

    :goto_5
    if-nez p6, :cond_e

    move-object v9, v4

    goto :goto_6

    :cond_e
    move-object/from16 v9, p6

    :goto_6
    if-nez p8, :cond_f

    move-object v11, v4

    goto :goto_7

    :cond_f
    move-object/from16 v11, p8

    :goto_7
    if-nez p9, :cond_10

    move-object/from16 v16, v4

    goto :goto_8

    :cond_10
    move-object/from16 v16, p9

    :goto_8
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v4, v5

    move-object/from16 v5, p2

    move-object/from16 v10, p7

    move-object/from16 v12, v16

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    .line 17
    :try_start_1
    invoke-virtual/range {v4 .. v22}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    sget-object v5, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 20
    const-string v6, "fpnav"

    .line 21
    invoke-virtual {v5, v6, v0}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 22
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    .line 23
    :try_start_3
    iget-object v5, v1, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO00o:Ljava/lang/String;

    const-string v6, "setNavigationBarColor error"

    invoke-static {v5, v6, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    :cond_11
    :goto_9
    sget-object v0, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface/range {p18 .. p18}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "app.appId"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_12

    .line 25
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 26
    const-string v2, "status"

    const-string v4, "show"

    invoke-virtual {v0, v2, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-interface {v3, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_12
    return-void

    .line 28
    :cond_13
    const-string v0, "app error"

    goto :goto_b

    .line 29
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 30
    :goto_b
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v3, v0, v2}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    .line 31
    :cond_14
    :goto_c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "buttonText is null or empty"

    invoke-interface {v1, v3, v2, v0}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    .line 32
    :cond_15
    :goto_d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "title is null or empty"

    invoke-interface {v1, v3, v2, v0}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final privacyAgreementSimpleDialogDismiss(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 1
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
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    :try_start_0
    sget-object p2, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO0OO:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :catchall_0
    :cond_1
    return-void
.end method

.method public final privacyAgreementSimpleDialogShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 20
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "title"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "baseContent"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyPolocyContent"
            }
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "userAgreementContent"
            }
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyPolocyUrl"
            }
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "userAgreementUrl"
            }
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyCancelTv"
            }
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyAgreeTv"
            }
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "titleMaxLine"
            }
        .end annotation
    .end param
    .param p10    # Ljava/lang/Boolean;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "useCustomPrivacyContent"
            }
        .end annotation
    .end param
    .param p11    # Ljava/lang/Boolean;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            booleanDefault = true
            value = {
                "onlyEnglish"
            }
        .end annotation
    .end param
    .param p12    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p13    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p10

    .line 4
    .line 5
    move-object/from16 v2, p12

    .line 6
    .line 7
    move-object/from16 v3, p13

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    if-eqz v2, :cond_12

    .line 12
    .line 13
    :try_start_0
    invoke-interface/range {p12 .. p12}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    if-eqz v5, :cond_12

    .line 18
    .line 19
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    if-eqz v5, :cond_12

    .line 24
    .line 25
    iget-object v6, v1, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO00o:Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface/range {p12 .. p12}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    new-instance v8, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v9, "privacyAgreementSimpleDialogShow -> "

    .line 37
    .line 38
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-static {v6, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v6, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO0OO:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    .line 53
    invoke-interface/range {p12 .. p12}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_1

    .line 62
    .line 63
    invoke-interface/range {p12 .. p12}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    check-cast v7, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;

    .line 72
    .line 73
    if-eqz v7, :cond_0

    .line 74
    .line 75
    invoke-virtual {v7}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto/16 :goto_c

    .line 81
    .line 82
    :cond_0
    :goto_0
    invoke-interface/range {p12 .. p12}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :cond_1
    if-nez p1, :cond_2

    .line 90
    .line 91
    move-object v9, v4

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    move-object/from16 v9, p1

    .line 94
    .line 95
    :goto_1
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-nez v6, :cond_3

    .line 100
    .line 101
    const-string v0, "title is empty"

    .line 102
    .line 103
    :goto_2
    move-object v4, v0

    .line 104
    goto/16 :goto_d

    .line 105
    .line 106
    :cond_3
    if-nez p5, :cond_4

    .line 107
    .line 108
    move-object v13, v4

    .line 109
    goto :goto_3

    .line 110
    :cond_4
    move-object/from16 v13, p5

    .line 111
    .line 112
    :goto_3
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-nez v6, :cond_5

    .line 117
    .line 118
    const-string v0, "privacyPolocyUrl is empty"

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_5
    if-nez p6, :cond_6

    .line 122
    .line 123
    move-object v14, v4

    .line 124
    goto :goto_4

    .line 125
    :cond_6
    move-object/from16 v14, p6

    .line 126
    .line 127
    :goto_4
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-nez v6, :cond_7

    .line 132
    .line 133
    const-string v0, "userAgreementUrl is empty"

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_7
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-eqz v6, :cond_a

    .line 143
    .line 144
    if-eqz p2, :cond_8

    .line 145
    .line 146
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-nez v6, :cond_8

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_8
    if-eqz p3, :cond_9

    .line 154
    .line 155
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-nez v6, :cond_9

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_9
    if-eqz p4, :cond_a

    .line 163
    .line 164
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    if-nez v6, :cond_a

    .line 169
    .line 170
    :goto_5
    const-string v0, "useCustomPrivacyContent, but baseContent OR privacyPolocyContent OR userAgreementContent is empty"

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_a
    new-instance v8, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;

    .line 174
    .line 175
    invoke-direct {v8, v5, v2, v3}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;-><init>(Landroid/content/Context;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 176
    .line 177
    .line 178
    if-nez p3, :cond_b

    .line 179
    .line 180
    move-object v11, v4

    .line 181
    goto :goto_6

    .line 182
    :cond_b
    move-object/from16 v11, p3

    .line 183
    .line 184
    :goto_6
    if-nez p4, :cond_c

    .line 185
    .line 186
    move-object v12, v4

    .line 187
    goto :goto_7

    .line 188
    :cond_c
    move-object/from16 v12, p4

    .line 189
    .line 190
    :goto_7
    const/4 v4, 0x1

    .line 191
    if-eqz p9, :cond_d

    .line 192
    .line 193
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Integer;->intValue()I

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    move/from16 v17, v5

    .line 198
    .line 199
    goto :goto_8

    .line 200
    :cond_d
    move/from16 v17, v4

    .line 201
    .line 202
    :goto_8
    const/4 v5, 0x0

    .line 203
    if-eqz v0, :cond_e

    .line 204
    .line 205
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    move/from16 v18, v0

    .line 210
    .line 211
    goto :goto_9

    .line 212
    :cond_e
    move/from16 v18, v5

    .line 213
    .line 214
    :goto_9
    if-eqz p11, :cond_f

    .line 215
    .line 216
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    move/from16 v19, v0

    .line 221
    .line 222
    goto :goto_a

    .line 223
    :cond_f
    move/from16 v19, v5

    .line 224
    .line 225
    :goto_a
    move-object/from16 v10, p2

    .line 226
    .line 227
    move-object/from16 v15, p7

    .line 228
    .line 229
    move-object/from16 v16, p8

    .line 230
    .line 231
    invoke-virtual/range {v8 .. v19}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Lcom/cloud/tmc/miniapp/dialog/o0O0O00;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .line 237
    .line 238
    :try_start_1
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 239
    .line 240
    const-string v6, "fpnav"

    .line 241
    .line 242
    invoke-virtual {v0, v6, v4}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_10

    .line 247
    .line 248
    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0Oo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 249
    .line 250
    .line 251
    goto :goto_b

    .line 252
    :catchall_1
    move-exception v0

    .line 253
    :try_start_2
    iget-object v4, v1, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO00o:Ljava/lang/String;

    .line 254
    .line 255
    const-string v6, "setNavigationBarColor error"

    .line 256
    .line 257
    invoke-static {v4, v6, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    .line 259
    .line 260
    :cond_10
    :goto_b
    sget-object v0, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO0OO:Ljava/util/concurrent/ConcurrentHashMap;

    .line 261
    .line 262
    invoke-interface/range {p12 .. p12}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    const-string v4, "app.appId"

    .line 267
    .line 268
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    if-eqz v3, :cond_11

    .line 275
    .line 276
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 277
    .line 278
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 279
    .line 280
    .line 281
    const-string v2, "status"

    .line 282
    .line 283
    const-string v4, "show"

    .line 284
    .line 285
    invoke-virtual {v0, v2, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-interface {v3, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    .line 290
    .line 291
    :cond_11
    return-void

    .line 292
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    :cond_12
    :goto_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 301
    .line 302
    invoke-interface {v1, v3, v4, v0}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 303
    .line 304
    .line 305
    return-void
.end method

.method public final privacyAgreementTwoInOneDialogShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 29
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyDialogType"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "title"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyTitle"
            }
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "baseContent"
            }
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyPolocyContent"
            }
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "userAgreementContent"
            }
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyPolocyUrl"
            }
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "userAgreementUrl"
            }
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "secondPrivacyTitle"
            }
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "secondBaseContent"
            }
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "secondPrivacyPolocyContent"
            }
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "secondUserAgreementContent"
            }
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "secondPrivacyPolocyUrl"
            }
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "secondUserAgreementUrl"
            }
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "gdprNoticeContent"
            }
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "highlightContent"
            }
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyCancelTv"
            }
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyAgreeTv"
            }
        .end annotation
    .end param
    .param p19    # Ljava/lang/Integer;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "titleMaxLine"
            }
        .end annotation
    .end param
    .param p20    # Ljava/lang/Boolean;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "useCustomPrivacyContent"
            }
        .end annotation
    .end param
    .param p21    # Ljava/lang/Boolean;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            booleanDefault = true
            value = {
                "onlyEnglish"
            }
        .end annotation
    .end param
    .param p22    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p23    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p22

    move-object/from16 v3, p23

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    if-eqz v2, :cond_0

    invoke-interface/range {p22 .. p22}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_18

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->addInterectMFAH(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, ""

    if-eqz v2, :cond_1a

    .line 2
    :try_start_1
    invoke-interface/range {p22 .. p22}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 3
    iget-object v5, v1, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO00o:Ljava/lang/String;

    invoke-interface/range {p22 .. p22}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "privacyAgreementDialogShow -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v5, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface/range {p22 .. p22}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5
    invoke-interface/range {p22 .. p22}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 6
    :cond_1
    invoke-interface/range {p22 .. p22}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_2
    new-instance v7, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    invoke-direct {v7, v4, v2, v3}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;-><init>(Landroid/content/Context;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    if-nez p1, :cond_3

    .line 8
    const-string v4, "1"

    move-object v8, v4

    goto :goto_1

    :cond_3
    move-object/from16 v8, p1

    :goto_1
    if-nez p2, :cond_4

    move-object v9, v0

    goto :goto_2

    :cond_4
    move-object/from16 v9, p2

    :goto_2
    if-nez p3, :cond_5

    move-object v10, v0

    goto :goto_3

    :cond_5
    move-object/from16 v10, p3

    :goto_3
    if-nez p4, :cond_6

    move-object v11, v0

    goto :goto_4

    :cond_6
    move-object/from16 v11, p4

    :goto_4
    if-nez p5, :cond_7

    move-object v12, v0

    goto :goto_5

    :cond_7
    move-object/from16 v12, p5

    :goto_5
    if-nez p6, :cond_8

    move-object v13, v0

    goto :goto_6

    :cond_8
    move-object/from16 v13, p6

    :goto_6
    if-nez p7, :cond_9

    move-object v14, v0

    goto :goto_7

    :cond_9
    move-object/from16 v14, p7

    :goto_7
    if-nez p8, :cond_a

    move-object v15, v0

    goto :goto_8

    :cond_a
    move-object/from16 v15, p8

    :goto_8
    if-nez p9, :cond_b

    move-object/from16 v16, v0

    goto :goto_9

    :cond_b
    move-object/from16 v16, p9

    :goto_9
    if-nez p10, :cond_c

    move-object/from16 v17, v0

    goto :goto_a

    :cond_c
    move-object/from16 v17, p10

    :goto_a
    if-nez p11, :cond_d

    move-object/from16 v18, v0

    goto :goto_b

    :cond_d
    move-object/from16 v18, p11

    :goto_b
    if-nez p12, :cond_e

    move-object/from16 v19, v0

    goto :goto_c

    :cond_e
    move-object/from16 v19, p12

    :goto_c
    if-nez p13, :cond_f

    move-object/from16 v20, v0

    goto :goto_d

    :cond_f
    move-object/from16 v20, p13

    :goto_d
    if-nez p14, :cond_10

    move-object/from16 v21, v0

    goto :goto_e

    :cond_10
    move-object/from16 v21, p14

    :goto_e
    if-nez p15, :cond_11

    move-object/from16 v22, v0

    goto :goto_f

    :cond_11
    move-object/from16 v22, p15

    :goto_f
    if-nez p16, :cond_12

    move-object/from16 v23, v0

    goto :goto_10

    :cond_12
    move-object/from16 v23, p16

    :goto_10
    if-nez p17, :cond_13

    move-object/from16 v24, v0

    goto :goto_11

    :cond_13
    move-object/from16 v24, p17

    :goto_11
    if-nez p18, :cond_14

    move-object/from16 v25, v0

    goto :goto_12

    :cond_14
    move-object/from16 v25, p18

    :goto_12
    const/4 v0, 0x1

    if-eqz p19, :cond_15

    .line 9
    invoke-virtual/range {p19 .. p19}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v26, v4

    goto :goto_13

    :cond_15
    move/from16 v26, v0

    :goto_13
    if-eqz p20, :cond_16

    .line 10
    invoke-virtual/range {p20 .. p20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_14
    move/from16 v27, v4

    goto :goto_15

    :cond_16
    const/4 v4, 0x0

    goto :goto_14

    :goto_15
    if-eqz p21, :cond_17

    .line 11
    invoke-virtual/range {p21 .. p21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move/from16 v28, v4

    goto :goto_16

    :cond_17
    move/from16 v28, v0

    .line 12
    :goto_16
    invoke-virtual/range {v7 .. v28}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    move-result-object v4

    .line 13
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    sget-object v5, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 15
    const-string v6, "fpnav"

    .line 16
    invoke-virtual {v5, v6, v0}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 17
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_17

    :catchall_1
    move-exception v0

    .line 18
    :try_start_3
    iget-object v5, v1, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO00o:Ljava/lang/String;

    const-string v6, "setNavigationBarColor error"

    invoke-static {v5, v6, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :cond_18
    :goto_17
    sget-object v0, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface/range {p22 .. p22}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "app.appId"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_19

    .line 20
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 21
    const-string v2, "status"

    const-string v4, "show"

    invoke-virtual {v0, v2, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-interface {v3, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_19
    return-void

    .line 23
    :goto_18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 24
    :cond_1a
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v3, v0, v2}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final syncMfahStatus(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 6
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
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->reportAthenaData(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 43
    .line 44
    const-string v3, "100000"

    .line 45
    .line 46
    const-string v4, "isNewUser"

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    invoke-interface {v2, v1, v3, v4, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->getInterceptRealMFAHMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    const-string v1, ""

    .line 63
    .line 64
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    const-class v0, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;

    .line 74
    .line 75
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;->reportCacheData(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    :catchall_0
    :cond_1
    if-eqz p2, :cond_2

    .line 83
    .line 84
    :try_start_1
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_1
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_0
    return-void
.end method

.method public final syncUserAllowStatus(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 4
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "appId"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "isClick"
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
    const/4 p2, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v1, p2

    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->noticeClickAllowBtn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 27
    .line 28
    .line 29
    :cond_1
    :try_start_1
    const-class v0, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    :cond_2
    invoke-interface {v0, p2}, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;->reportAllCacheData(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    :catchall_0
    if-eqz p1, :cond_5

    .line 47
    .line 48
    :try_start_2
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-eqz p2, :cond_5

    .line 53
    .line 54
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-eqz p2, :cond_5

    .line 59
    .line 60
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 67
    .line 68
    const-string v1, "100000"

    .line 69
    .line 70
    const-string v2, "isNewUser"

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    invoke-interface {v0, p2, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    sget-object p2, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    .line 78
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    if-eqz p3, :cond_5

    .line 95
    .line 96
    :cond_3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    if-eqz p4, :cond_4

    .line 104
    .line 105
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 106
    .line 107
    .line 108
    :cond_4
    const-class p2, Lcom/cloud/tmc/integration/point/PermissionDialogPoint;

    .line 109
    .line 110
    invoke-static {p2}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    check-cast p2, Lcom/cloud/tmc/integration/point/PermissionDialogPoint;

    .line 119
    .line 120
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    const-string v0, "app.appId"

    .line 125
    .line 126
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getStartToken()J

    .line 130
    .line 131
    .line 132
    move-result-wide v0

    .line 133
    invoke-interface {p2, p3, v0, v1}, Lcom/cloud/tmc/integration/point/PermissionDialogPoint;->privacyDialogDismiss(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :catchall_1
    :cond_5
    if-eqz p4, :cond_6

    .line 138
    .line 139
    :try_start_3
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :catchall_2
    if-eqz p4, :cond_6

    .line 144
    .line 145
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 146
    .line 147
    .line 148
    :cond_6
    :goto_1
    return-void
.end method

.method public final updatePrivacyDialogUI(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 23
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "title"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "titleMaxLine"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "baseContent"
            }
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyPolocyContent"
            }
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "userAgreementContent"
            }
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "buttonText"
            }
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyPolocyUrl"
            }
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "userAgreementUrl"
            }
        .end annotation
    .end param
    .param p9    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "showAddHome"
            }
        .end annotation
    .end param
    .param p10    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "showPrivacy"
            }
        .end annotation
    .end param
    .param p11    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "isNewUser"
            }
        .end annotation
    .end param
    .param p12    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "useCustomPrivacyContent"
            }
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "gdprNoticeContent"
            }
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyCancelTv"
            }
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyAgreeTv"
            }
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "addhomeCancelTv"
            }
        .end annotation
    .end param
    .param p17    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p18    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p18

    const-string v0, "gdprNoticeContent"

    move-object/from16 v15, p13

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyCancelTv"

    move-object/from16 v14, p14

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyAgreeTv"

    move-object/from16 v13, p15

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addhomeCancelTv"

    move-object/from16 v12, p16

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p17, :cond_0

    .line 1
    :try_start_0
    invoke-interface/range {p17 .. p17}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_15

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_c

    :cond_1
    if-eqz p1, :cond_14

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_b

    :cond_2
    if-eqz p10, :cond_8

    if-eqz p3, :cond_7

    .line 4
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p4, :cond_6

    .line 5
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p5, :cond_5

    .line 6
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 7
    :cond_5
    const-string v0, "userAgreementContent is null or empty"

    .line 8
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v0, v3}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    .line 9
    :cond_6
    :goto_1
    const-string v0, "privacyPolocyContent is null or empty"

    .line 10
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v0, v3}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    .line 11
    :cond_7
    :goto_2
    const-string v0, "baseContent is null or empty"

    .line 12
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v0, v3}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :cond_8
    if-eqz p6, :cond_13

    .line 13
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_a

    :cond_9
    if-eqz p2, :cond_a

    .line 14
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_3
    move v5, v3

    goto :goto_4

    :cond_a
    const/4 v3, 0x1

    goto :goto_3

    .line 15
    :goto_4
    sget-object v3, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 16
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_10

    const-string v0, ""

    if-nez p3, :cond_b

    move-object v6, v0

    goto :goto_5

    :cond_b
    move-object/from16 v6, p3

    :goto_5
    if-nez p4, :cond_c

    move-object v7, v0

    goto :goto_6

    :cond_c
    move-object/from16 v7, p4

    :goto_6
    if-nez p5, :cond_d

    move-object v8, v0

    goto :goto_7

    :cond_d
    move-object/from16 v8, p5

    :goto_7
    if-nez p7, :cond_e

    move-object v10, v0

    goto :goto_8

    :cond_e
    move-object/from16 v10, p7

    :goto_8
    if-nez p8, :cond_f

    move-object v11, v0

    goto :goto_9

    :cond_f
    move-object/from16 v11, p8

    :goto_9
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v4, p1

    move-object/from16 v9, p6

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    .line 17
    :try_start_1
    invoke-virtual/range {v3 .. v22}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;ZZ)V

    :cond_10
    if-eqz v2, :cond_11

    .line 18
    invoke-interface/range {p18 .. p18}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    :cond_11
    return-void

    .line 19
    :cond_12
    const-string v0, "dialog is not showing"

    goto :goto_e

    .line 20
    :cond_13
    :goto_a
    const-string v0, "buttonText is null or empty"

    .line 21
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v0, v3}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    .line 22
    :cond_14
    :goto_b
    const-string v0, "title is null or empty"

    .line 23
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v0, v3}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    .line 24
    :cond_15
    :goto_c
    const-string v0, "appId is null or empty"

    .line 25
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v0, v3}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 26
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 27
    :goto_e
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v0, v3}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final updateTwoInOnePrivacyDialogUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 20
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyDialogType"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "title"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "baseContent"
            }
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyPolocyContent"
            }
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "userAgreementContent"
            }
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyPolocyUrl"
            }
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "userAgreementUrl"
            }
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "gdprNoticeContent"
            }
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyCancelTv"
            }
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "privacyAgreeTv"
            }
        .end annotation
    .end param
    .param p11    # Ljava/lang/Integer;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "titleMaxLine"
            }
        .end annotation
    .end param
    .param p12    # Ljava/lang/Boolean;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "useCustomPrivacyContent"
            }
        .end annotation
    .end param
    .param p13    # Ljava/lang/Boolean;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            booleanDefault = true
            value = {
                "onlyEnglish"
            }
        .end annotation
    .end param
    .param p14    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p15    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p15

    .line 4
    .line 5
    if-eqz p14, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-interface/range {p14 .. p14}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto/16 :goto_b

    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_f

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    goto/16 :goto_a

    .line 25
    .line 26
    :cond_1
    sget-object v3, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_e

    .line 33
    .line 34
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v3, v0

    .line 39
    check-cast v3, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    .line 40
    .line 41
    if-eqz v3, :cond_c

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    const-string v0, "2"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    move-object v4, v0

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move-object/from16 v4, p1

    .line 50
    .line 51
    :goto_1
    const-string v0, ""

    .line 52
    .line 53
    if-nez p2, :cond_3

    .line 54
    .line 55
    move-object v5, v0

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    move-object/from16 v5, p2

    .line 58
    .line 59
    :goto_2
    const/4 v6, 0x1

    .line 60
    if-eqz p11, :cond_4

    .line 61
    .line 62
    :try_start_1
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    goto :goto_3

    .line 67
    :cond_4
    move v7, v6

    .line 68
    :goto_3
    if-nez p3, :cond_5

    .line 69
    .line 70
    move-object v8, v0

    .line 71
    goto :goto_4

    .line 72
    :cond_5
    move-object/from16 v8, p3

    .line 73
    .line 74
    :goto_4
    if-nez p4, :cond_6

    .line 75
    .line 76
    move-object v9, v0

    .line 77
    goto :goto_5

    .line 78
    :cond_6
    move-object/from16 v9, p4

    .line 79
    .line 80
    :goto_5
    if-nez p5, :cond_7

    .line 81
    .line 82
    move-object v10, v0

    .line 83
    goto :goto_6

    .line 84
    :cond_7
    move-object/from16 v10, p5

    .line 85
    .line 86
    :goto_6
    const-string v11, ""

    .line 87
    .line 88
    if-nez p6, :cond_8

    .line 89
    .line 90
    move-object v12, v0

    .line 91
    goto :goto_7

    .line 92
    :cond_8
    move-object/from16 v12, p6

    .line 93
    .line 94
    :goto_7
    if-nez p7, :cond_9

    .line 95
    .line 96
    goto :goto_8

    .line 97
    :cond_9
    move-object/from16 v0, p7

    .line 98
    .line 99
    :goto_8
    if-eqz p12, :cond_a

    .line 100
    .line 101
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    goto :goto_9

    .line 106
    :cond_a
    const/4 v13, 0x0

    .line 107
    :goto_9
    const-string v17, ""

    .line 108
    .line 109
    if-eqz p13, :cond_b

    .line 110
    .line 111
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    :cond_b
    move/from16 v18, v6

    .line 116
    .line 117
    move v6, v7

    .line 118
    move-object v7, v8

    .line 119
    move-object v8, v9

    .line 120
    move-object v9, v10

    .line 121
    move-object v10, v11

    .line 122
    move-object v11, v12

    .line 123
    move-object v12, v0

    .line 124
    move-object/from16 v14, p8

    .line 125
    .line 126
    move-object/from16 v15, p9

    .line 127
    .line 128
    move-object/from16 v16, p10

    .line 129
    .line 130
    move-object/from16 v19, p14

    .line 131
    .line 132
    invoke-virtual/range {v3 .. v19}, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/cloud/tmc/integration/structure/App;)V

    .line 133
    .line 134
    .line 135
    :cond_c
    if-eqz v2, :cond_d

    .line 136
    .line 137
    invoke-interface/range {p15 .. p15}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 138
    .line 139
    .line 140
    :cond_d
    return-void

    .line 141
    :cond_e
    const-string v0, "dialog is not showing"

    .line 142
    .line 143
    goto :goto_c

    .line 144
    :cond_f
    :goto_a
    const-string v0, "appId is null or empty"

    .line 145
    .line 146
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 147
    .line 148
    invoke-interface {v1, v2, v0, v3}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    :goto_c
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 161
    .line 162
    invoke-interface {v1, v2, v0, v3}, Lcom/cloud/tmc/kernel/extension/BridgeExtension;->callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method
