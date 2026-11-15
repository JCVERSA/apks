.class public Lcom/cloud/tmc/integration/bridge/FrameworkStorageBridge;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# static fields
.field public static final FRAMEWORK_STORAGE_KEY:Ljava/lang/String; = "100000_web"

.field private static final TAG:Ljava/lang/String; = "FrameworkStorageBridge"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getJsonResponse(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "data"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
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

.method public clearFrameworkStorage(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
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
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v1, "100000_web"

    .line 37
    .line 38
    invoke-interface {v0, p1, v1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->clear(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public getFrameworkStorage(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "key"
            }
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    invoke-interface {p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 34
    .line 35
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const-string v1, "100000_web"

    .line 44
    .line 45
    invoke-interface {v0, p2, v1, p1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p3, :cond_3

    .line 50
    .line 51
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/bridge/FrameworkStorageBridge;->getJsonResponse(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 56
    .line 57
    .line 58
    :cond_3
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

.method public removeFrameworkStorage(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "key"
            }
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 27
    .line 28
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const-string v1, "100000_web"

    .line 37
    .line 38
    invoke-interface {v0, p2, v1, p1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    if-eqz p3, :cond_1

    .line 42
    .line 43
    invoke-interface {p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public setFrameworkStorage(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "key"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "data"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p3, :cond_2

    .line 2
    .line 3
    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 27
    .line 28
    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "100000_web"

    .line 37
    .line 38
    invoke-interface {v0, v1, v2, p1, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "dlt-privacy-aggrement"

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    const-string p1, "true"

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    sget-object p1, Lcom/cloud/tmc/integration/utils/PrivacyUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/PrivacyUtils;

    .line 58
    .line 59
    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/utils/PrivacyUtils;->tryUpdateNewUserToOldUser(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    if-eqz p4, :cond_2

    .line 71
    .line 72
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_0
    return-void
.end method
